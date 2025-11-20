/**
  **************************************************************************
  * @file     readme.txt 
  * @brief    readme
  **************************************************************************
  */
  
 Project: AT32F437 ? GPX10 Real-Time Image Transfer
Camera: OV2640 (RGB565)
Interface: DVP + DMA (Capture), I2C 400 kHz (Transfer)

Description:
This project captures image frames from the OV2640 camera using the
AT32F437 DVP interface with DMA and sends the complete frame data
to the GPX10 MCU over the I2C bus. The GPX10 receives the image
buffer and displays it on its screen.

Features:
- Real-time frame capture using DVP + DMA
- Frame-ready interrupt using ov_frame flag
- RGB565 format (16-bit)
- Configurable resolutions (e.g., 160x120, 160x160)
- 4-byte aligned DMA buffer
- Single-chunk or multi-chunk I2C transfer
- Supports 400 kHz I2C speed

Key Files:
- main.c – core application, capture + transmit loop
- dvp.c / dvp.h – DVP configuration and DMA handling
- at_surf_f437_board_ov2640.c – OV2640 sensor configuration
- i2c_application.c – I2C transmit functions

How It Works:
1. AT32 initializes the OV2640 camera.
2. DVP + DMA captures a complete frame into a buffer.
3. ov_frame interrupt flag indicates capture completion.
4. The frame data is sent to GPX10 using I2C.
5. The loop repeats for continuous streaming.

Notes:
- Debug/Release folders should not be committed to Git.
- Ensure GPX10 I2C clock = 400 kHz for fastest performance.
- Image size = width × height × 2 bytes.

