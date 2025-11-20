#include "at_surf_f437_board_ov2640.h"   // <-- contains camera_identify()
#include "at_surf_f437_board_ov5640.h"   // camera IDs
#include "at_surf_f437_board_dvp.h"
#include "at_surf_f437_board_delay.h"
#include "i2c_application.h"
#include <string.h>
#include <stdio.h>

#define IMAGE_WIDTH       160U
#define IMAGE_HEIGHT      120U
#define BYTES_PER_PIXEL   2U
#define IMAGE_SIZE        (IMAGE_WIDTH * IMAGE_HEIGHT * BYTES_PER_PIXEL)
#define CHUNK_SIZE 512U

static uint16_t captured_image_buffer[(IMAGE_SIZE) / 2] __attribute__((aligned(4)));

#define DVP_FRAME_BUFFER  ((uint32_t)captured_image_buffer)
#define DVP_DMA_COUNT_HALFWORDS  (IMAGE_SIZE / 2U)

#define   I2C_TIMEOUT                      0xFFFFFFF
//#define I2Cx_CLKCTRL                     0x80504C4E   // 100kHz
//#define I2Cx_CLKCTRL                     0x30F03C6B   //200K
#define   I2Cx_CLKCTRL			           0x30F0182B   //400k

#define   I2Cx_ADDRESS                     0x35

/* I2C1 configuration for data transferring from ARTERY to GPX10 */
#define I2Cx_PORT                        I2C1
#define I2Cx_CLK                         CRM_I2C1_PERIPH_CLOCK
#define I2Cx_SCL_GPIO_CLK                CRM_GPIOB_PERIPH_CLOCK
#define I2Cx_SCL_GPIO_PIN                GPIO_PINS_6
#define I2Cx_SCL_GPIO_PinsSource         GPIO_PINS_SOURCE6
#define I2Cx_SCL_GPIO_PORT               GPIOB
#define I2Cx_SCL_GPIO_MUX                GPIO_MUX_4

#define I2Cx_SDA_GPIO_CLK                CRM_GPIOB_PERIPH_CLOCK
#define I2Cx_SDA_GPIO_PIN                GPIO_PINS_7
#define I2Cx_SDA_GPIO_PinsSource         GPIO_PINS_SOURCE7
#define I2Cx_SDA_GPIO_PORT               GPIOB
#define I2Cx_SDA_GPIO_MUX                GPIO_MUX_4

extern i2c_handle_type hi2cx;
extern i2c_handle_type hi1cx;
void i2c_lowlevel_init_1(i2c_handle_type *hi2c);
extern volatile uint8_t ov_frame;

uint16_t camera_id = 0;
uint16_t camera_identify(void) {
	uint8_t temp = 0;
	uint16_t reg;
	gpio_init_type gpio_initure;

	crm_periph_clock_enable(OV_RST_GPIO_CLK, TRUE);

	gpio_default_para_init(&gpio_initure);
	gpio_initure.gpio_mode = GPIO_MODE_OUTPUT;
	gpio_initure.gpio_out_type = GPIO_OUTPUT_PUSH_PULL;
	gpio_initure.gpio_pull = GPIO_PULL_UP;
	gpio_initure.gpio_drive_strength = GPIO_DRIVE_STRENGTH_STRONGER;

	gpio_initure.gpio_pins = OV_RST_GPIO_PIN;
	gpio_init(OV_RST_GPIO_PORT, &gpio_initure);

	/* Try OV5640 */
	OV5640_RST_LOW
	;
	delay_ms(100);
	OV5640_RST_HIGH
	;
	delay_ms(20);
	ov5640_i2c_init();
	delay_ms(5);
	ov5640_reg_read(OV5640_CHIPIDH, &temp);
	reg = (uint16_t) temp << 8;
	ov5640_reg_read(OV5640_CHIPIDL, &temp);
	reg |= temp;
	if (reg == OV5640_ID)
		return reg;
	/* Try OV2640 */
	OV2640_RST_LOW();
	delay_ms(10);
	OV2640_PWRON_LOW();
	delay_ms(10);
	OV2640_RST_HIGH();
	delay_ms(10);
	ov2640_i2c_init();
	ov2640_reg_write(OV2640_DSP_RA_DLMT, 0x01);
	ov2640_reg_write(OV2640_SENSOR_COM7, 0x80);
	delay_ms(50);
	ov2640_reg_read(OV2640_SENSOR_MIDH, &temp);
	reg = (uint16_t) temp << 8;
	ov2640_reg_read(OV2640_SENSOR_MIDL, &temp);
	reg |= temp;
	if (reg != OV2640_MID)
		return 0;
	ov2640_reg_read(OV2640_SENSOR_PIDH, &temp);
	reg = (uint16_t) temp << 8;
	ov2640_reg_read(OV2640_SENSOR_PIDL, &temp);
	reg |= temp;
	if (reg == OV2640_PID)
		return reg;

	return 0;
}

int main(void) {

	/* core init */
	system_clock_config();
	nvic_priority_group_config(NVIC_PRIORITY_GROUP_4);
	delay_init();

	camera_id = camera_identify();

	if (camera_id != OV2640_PID && camera_id != OV5640_ID) {
		while (1) {
			delay_ms(200);
		}
	}

	if (ov2640_init() != SUCCESS) {
		/* init failed */
		while (1) {
			delay_ms(200);
		}
	}

	/* clear frame flag then start capture */
	ov_frame = 0;
	ov2640_capture();
	while (ov_frame == 0) {
		delay_ms(5);
	}
	// after capture complete (in interrupt set ov_frame=1)
	dvp_stop();                      // stop DVP peripheral

	ov_frame = 0;
	/* I2C configuration */
	hi1cx.i2cx = I2Cx_PORT;
	i2c_config(&hi1cx);
	i2c_status_type i2c_status;

	for (uint32_t i = 0; i < IMAGE_SIZE; i += CHUNK_SIZE)
	{
		uint16_t len =
				(IMAGE_SIZE - i > CHUNK_SIZE) ?
						(uint16_t) CHUNK_SIZE : (uint16_t) (IMAGE_SIZE - i);

		i2c_status = i2c_master_transmit(&hi1cx,
		I2Cx_ADDRESS, (uint8_t*) ((uint8_t*) captured_image_buffer + i), // cast to byte pointer + offset i
				len,
				I2C_TIMEOUT);
	}
	delay_sec(1);

	while (1) {
		dvp_start();

		while (ov_frame == 0) {
			delay_ms(5);
		}
		// after capture complete (in interrupt set ov_frame=1)
		dvp_stop();
		ov_frame = 0;

		i2c_status = i2c_master_transmit(&hi1cx,
		I2Cx_ADDRESS, (uint8_t*) ((uint8_t*) captured_image_buffer), // cast to byte pointer + offset i
				IMAGE_SIZE,
				I2C_TIMEOUT);

		delay_ms(150);

	}
}

void i2c_lowlevel_init_1(i2c_handle_type *hi2c) {
	gpio_init_type gpio_init_structure;

	if (hi2c->i2cx == I2Cx_PORT) {
		crm_periph_clock_enable(I2Cx_CLK, TRUE);
		crm_periph_clock_enable(I2Cx_SCL_GPIO_CLK, TRUE);
		crm_periph_clock_enable(I2Cx_SDA_GPIO_CLK, TRUE);

		gpio_pin_mux_config(I2Cx_SCL_GPIO_PORT, I2Cx_SCL_GPIO_PinsSource,
		I2Cx_SCL_GPIO_MUX);
		gpio_pin_mux_config(I2Cx_SDA_GPIO_PORT, I2Cx_SDA_GPIO_PinsSource,
		I2Cx_SDA_GPIO_MUX);

		gpio_init_structure.gpio_drive_strength = GPIO_DRIVE_STRENGTH_STRONGER;
		gpio_init_structure.gpio_mode = GPIO_MODE_MUX;
		gpio_init_structure.gpio_out_type = GPIO_OUTPUT_OPEN_DRAIN;
		gpio_init_structure.gpio_pull = GPIO_PULL_NONE;

		gpio_init_structure.gpio_pins = I2Cx_SCL_GPIO_PIN;
		gpio_init(I2Cx_SCL_GPIO_PORT, &gpio_init_structure);

		gpio_init_structure.gpio_pins = I2Cx_SDA_GPIO_PIN;
		gpio_init(I2Cx_SDA_GPIO_PORT, &gpio_init_structure);

		i2c_init(hi2c->i2cx, 0x0F, I2Cx_CLKCTRL);
		i2c_own_address1_set(hi2c->i2cx, I2C_ADDRESS_MODE_7BIT, I2Cx_ADDRESS);
	}
}

void ov2640_capture(void) {
	delay_ms(100);

	ov2640_rgb565_mode();
	ov2640_light_mode(3);
	ov2640_color_saturation(2);
	ov2640_brightness(4);
	ov2640_contrast(2);

	dvp_config(camera_id);

	// FORCE 16-bit pixel mode
	DVP->ctrl |= (1 << 5);

	dvp_dma_init((uint32_t) DVP_FRAME_BUFFER, 0, (uint16_t) (IMAGE_SIZE / 2));

	delay_ms(100);

	ov2640_outsize_set(IMAGE_WIDTH, IMAGE_HEIGHT);

	dvp_start();
}

