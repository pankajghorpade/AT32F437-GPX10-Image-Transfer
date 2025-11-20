################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/ARTERY/libraries/cmsis/cm4/device_support/system_at32f435_437.c 

OBJS += \
./cmsis/system_at32f435_437.o 

C_DEPS += \
./cmsis/system_at32f435_437.d 


# Each subdirectory must supply rules for building sources it contributes
cmsis/system_at32f435_437.o: C:/ARTERY/libraries/cmsis/cm4/device_support/system_at32f435_437.c cmsis/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections  -g -DAT32F437ZMT7 -DUSE_STDPERIPH_DRIVER -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"../../../../../at_surf_f437_board" -I"../../../../../../libraries/drivers/inc" -I"../../../../../../libraries/cmsis/cm4/core_support" -I"../../../../../../libraries/cmsis/cm4/device_support" -I"../../inc" -I"../../../../../../middlewares/i2c_application_library" -I"../../../../../at_surf_f437_board" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


