################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/ARTERY/project/at_surf_f437_board/at_surf_f437_board_delay.c \
C:/ARTERY/project/at_surf_f437_board/at_surf_f437_board_dvp.c \
C:/ARTERY/project/at_surf_f437_board/at_surf_f437_board_font.c \
C:/ARTERY/project/at_surf_f437_board/at_surf_f437_board_lcd.c \
C:/ARTERY/project/at_surf_f437_board/at_surf_f437_board_ov2640.c \
C:/ARTERY/project/at_surf_f437_board/at_surf_f437_board_ov5640.c \
C:/ARTERY/middlewares/i2c_application_library/i2c_application.c 

OBJS += \
./bsp/at_surf_f437_board_delay.o \
./bsp/at_surf_f437_board_dvp.o \
./bsp/at_surf_f437_board_font.o \
./bsp/at_surf_f437_board_lcd.o \
./bsp/at_surf_f437_board_ov2640.o \
./bsp/at_surf_f437_board_ov5640.o \
./bsp/i2c_application.o 

C_DEPS += \
./bsp/at_surf_f437_board_delay.d \
./bsp/at_surf_f437_board_dvp.d \
./bsp/at_surf_f437_board_font.d \
./bsp/at_surf_f437_board_lcd.d \
./bsp/at_surf_f437_board_ov2640.d \
./bsp/at_surf_f437_board_ov5640.d \
./bsp/i2c_application.d 


# Each subdirectory must supply rules for building sources it contributes
bsp/at_surf_f437_board_delay.o: C:/ARTERY/project/at_surf_f437_board/at_surf_f437_board_delay.c bsp/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections  -g -DAT32F437ZMT7 -DUSE_STDPERIPH_DRIVER -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"../../../../../at_surf_f437_board" -I"../../../../../../libraries/drivers/inc" -I"../../../../../../libraries/cmsis/cm4/core_support" -I"../../../../../../libraries/cmsis/cm4/device_support" -I"../../inc" -I"../../../../../../middlewares/i2c_application_library" -I"../../../../../at_surf_f437_board" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/at_surf_f437_board_dvp.o: C:/ARTERY/project/at_surf_f437_board/at_surf_f437_board_dvp.c bsp/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections  -g -DAT32F437ZMT7 -DUSE_STDPERIPH_DRIVER -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"../../../../../at_surf_f437_board" -I"../../../../../../libraries/drivers/inc" -I"../../../../../../libraries/cmsis/cm4/core_support" -I"../../../../../../libraries/cmsis/cm4/device_support" -I"../../inc" -I"../../../../../../middlewares/i2c_application_library" -I"../../../../../at_surf_f437_board" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/at_surf_f437_board_font.o: C:/ARTERY/project/at_surf_f437_board/at_surf_f437_board_font.c bsp/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections  -g -DAT32F437ZMT7 -DUSE_STDPERIPH_DRIVER -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"../../../../../at_surf_f437_board" -I"../../../../../../libraries/drivers/inc" -I"../../../../../../libraries/cmsis/cm4/core_support" -I"../../../../../../libraries/cmsis/cm4/device_support" -I"../../inc" -I"../../../../../../middlewares/i2c_application_library" -I"../../../../../at_surf_f437_board" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/at_surf_f437_board_lcd.o: C:/ARTERY/project/at_surf_f437_board/at_surf_f437_board_lcd.c bsp/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections  -g -DAT32F437ZMT7 -DUSE_STDPERIPH_DRIVER -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"../../../../../at_surf_f437_board" -I"../../../../../../libraries/drivers/inc" -I"../../../../../../libraries/cmsis/cm4/core_support" -I"../../../../../../libraries/cmsis/cm4/device_support" -I"../../inc" -I"../../../../../../middlewares/i2c_application_library" -I"../../../../../at_surf_f437_board" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/at_surf_f437_board_ov2640.o: C:/ARTERY/project/at_surf_f437_board/at_surf_f437_board_ov2640.c bsp/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections  -g -DAT32F437ZMT7 -DUSE_STDPERIPH_DRIVER -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"../../../../../at_surf_f437_board" -I"../../../../../../libraries/drivers/inc" -I"../../../../../../libraries/cmsis/cm4/core_support" -I"../../../../../../libraries/cmsis/cm4/device_support" -I"../../inc" -I"../../../../../../middlewares/i2c_application_library" -I"../../../../../at_surf_f437_board" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/at_surf_f437_board_ov5640.o: C:/ARTERY/project/at_surf_f437_board/at_surf_f437_board_ov5640.c bsp/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections  -g -DAT32F437ZMT7 -DUSE_STDPERIPH_DRIVER -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"../../../../../at_surf_f437_board" -I"../../../../../../libraries/drivers/inc" -I"../../../../../../libraries/cmsis/cm4/core_support" -I"../../../../../../libraries/cmsis/cm4/device_support" -I"../../inc" -I"../../../../../../middlewares/i2c_application_library" -I"../../../../../at_surf_f437_board" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/i2c_application.o: C:/ARTERY/middlewares/i2c_application_library/i2c_application.c bsp/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections  -g -DAT32F437ZMT7 -DUSE_STDPERIPH_DRIVER -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"../../../../../at_surf_f437_board" -I"../../../../../../libraries/drivers/inc" -I"../../../../../../libraries/cmsis/cm4/core_support" -I"../../../../../../libraries/cmsis/cm4/device_support" -I"../../inc" -I"../../../../../../middlewares/i2c_application_library" -I"../../../../../at_surf_f437_board" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


