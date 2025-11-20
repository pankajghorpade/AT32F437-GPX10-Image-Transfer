################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/ARTERY/libraries/drivers/src/at32f435_437_crm.c \
C:/ARTERY/libraries/drivers/src/at32f435_437_dma.c \
C:/ARTERY/libraries/drivers/src/at32f435_437_dvp.c \
C:/ARTERY/libraries/drivers/src/at32f435_437_edma.c \
C:/ARTERY/libraries/drivers/src/at32f435_437_gpio.c \
C:/ARTERY/libraries/drivers/src/at32f435_437_i2c.c \
C:/ARTERY/libraries/drivers/src/at32f435_437_misc.c \
C:/ARTERY/libraries/drivers/src/at32f435_437_xmc.c 

OBJS += \
./firmware/at32f435_437_crm.o \
./firmware/at32f435_437_dma.o \
./firmware/at32f435_437_dvp.o \
./firmware/at32f435_437_edma.o \
./firmware/at32f435_437_gpio.o \
./firmware/at32f435_437_i2c.o \
./firmware/at32f435_437_misc.o \
./firmware/at32f435_437_xmc.o 

C_DEPS += \
./firmware/at32f435_437_crm.d \
./firmware/at32f435_437_dma.d \
./firmware/at32f435_437_dvp.d \
./firmware/at32f435_437_edma.d \
./firmware/at32f435_437_gpio.d \
./firmware/at32f435_437_i2c.d \
./firmware/at32f435_437_misc.d \
./firmware/at32f435_437_xmc.d 


# Each subdirectory must supply rules for building sources it contributes
firmware/at32f435_437_crm.o: C:/ARTERY/libraries/drivers/src/at32f435_437_crm.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections  -g -DAT32F437ZMT7 -DUSE_STDPERIPH_DRIVER -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"../../../../../at_surf_f437_board" -I"../../../../../../libraries/drivers/inc" -I"../../../../../../libraries/cmsis/cm4/core_support" -I"../../../../../../libraries/cmsis/cm4/device_support" -I"../../inc" -I"../../../../../../middlewares/i2c_application_library" -I"../../../../../at_surf_f437_board" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f435_437_dma.o: C:/ARTERY/libraries/drivers/src/at32f435_437_dma.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections  -g -DAT32F437ZMT7 -DUSE_STDPERIPH_DRIVER -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"../../../../../at_surf_f437_board" -I"../../../../../../libraries/drivers/inc" -I"../../../../../../libraries/cmsis/cm4/core_support" -I"../../../../../../libraries/cmsis/cm4/device_support" -I"../../inc" -I"../../../../../../middlewares/i2c_application_library" -I"../../../../../at_surf_f437_board" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f435_437_dvp.o: C:/ARTERY/libraries/drivers/src/at32f435_437_dvp.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections  -g -DAT32F437ZMT7 -DUSE_STDPERIPH_DRIVER -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"../../../../../at_surf_f437_board" -I"../../../../../../libraries/drivers/inc" -I"../../../../../../libraries/cmsis/cm4/core_support" -I"../../../../../../libraries/cmsis/cm4/device_support" -I"../../inc" -I"../../../../../../middlewares/i2c_application_library" -I"../../../../../at_surf_f437_board" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f435_437_edma.o: C:/ARTERY/libraries/drivers/src/at32f435_437_edma.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections  -g -DAT32F437ZMT7 -DUSE_STDPERIPH_DRIVER -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"../../../../../at_surf_f437_board" -I"../../../../../../libraries/drivers/inc" -I"../../../../../../libraries/cmsis/cm4/core_support" -I"../../../../../../libraries/cmsis/cm4/device_support" -I"../../inc" -I"../../../../../../middlewares/i2c_application_library" -I"../../../../../at_surf_f437_board" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f435_437_gpio.o: C:/ARTERY/libraries/drivers/src/at32f435_437_gpio.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections  -g -DAT32F437ZMT7 -DUSE_STDPERIPH_DRIVER -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"../../../../../at_surf_f437_board" -I"../../../../../../libraries/drivers/inc" -I"../../../../../../libraries/cmsis/cm4/core_support" -I"../../../../../../libraries/cmsis/cm4/device_support" -I"../../inc" -I"../../../../../../middlewares/i2c_application_library" -I"../../../../../at_surf_f437_board" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f435_437_i2c.o: C:/ARTERY/libraries/drivers/src/at32f435_437_i2c.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections  -g -DAT32F437ZMT7 -DUSE_STDPERIPH_DRIVER -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"../../../../../at_surf_f437_board" -I"../../../../../../libraries/drivers/inc" -I"../../../../../../libraries/cmsis/cm4/core_support" -I"../../../../../../libraries/cmsis/cm4/device_support" -I"../../inc" -I"../../../../../../middlewares/i2c_application_library" -I"../../../../../at_surf_f437_board" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f435_437_misc.o: C:/ARTERY/libraries/drivers/src/at32f435_437_misc.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections  -g -DAT32F437ZMT7 -DUSE_STDPERIPH_DRIVER -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"../../../../../at_surf_f437_board" -I"../../../../../../libraries/drivers/inc" -I"../../../../../../libraries/cmsis/cm4/core_support" -I"../../../../../../libraries/cmsis/cm4/device_support" -I"../../inc" -I"../../../../../../middlewares/i2c_application_library" -I"../../../../../at_surf_f437_board" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f435_437_xmc.o: C:/ARTERY/libraries/drivers/src/at32f435_437_xmc.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections  -g -DAT32F437ZMT7 -DUSE_STDPERIPH_DRIVER -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"../../../../../at_surf_f437_board" -I"../../../../../../libraries/drivers/inc" -I"../../../../../../libraries/cmsis/cm4/core_support" -I"../../../../../../libraries/cmsis/cm4/device_support" -I"../../inc" -I"../../../../../../middlewares/i2c_application_library" -I"../../../../../at_surf_f437_board" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


