################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/ARTERY/project/at_surf_f437/examples/dvp/src/at32f435_437_clock.c \
C:/ARTERY/project/at_surf_f437/examples/dvp/src/at32f435_437_int.c \
C:/ARTERY/project/at_surf_f437/examples/dvp/src/main.c 

OBJS += \
./user/at32f435_437_clock.o \
./user/at32f435_437_int.o \
./user/main.o 

C_DEPS += \
./user/at32f435_437_clock.d \
./user/at32f435_437_int.d \
./user/main.d 


# Each subdirectory must supply rules for building sources it contributes
user/at32f435_437_clock.o: C:/ARTERY/project/at_surf_f437/examples/dvp/src/at32f435_437_clock.c user/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections  -g -DAT32F437ZMT7 -DUSE_STDPERIPH_DRIVER -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"../../../../../at_surf_f437_board" -I"../../../../../../libraries/drivers/inc" -I"../../../../../../libraries/cmsis/cm4/core_support" -I"../../../../../../libraries/cmsis/cm4/device_support" -I"../../inc" -I"../../../../../../middlewares/i2c_application_library" -I"../../../../../at_surf_f437_board" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

user/at32f435_437_int.o: C:/ARTERY/project/at_surf_f437/examples/dvp/src/at32f435_437_int.c user/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections  -g -DAT32F437ZMT7 -DUSE_STDPERIPH_DRIVER -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"../../../../../at_surf_f437_board" -I"../../../../../../libraries/drivers/inc" -I"../../../../../../libraries/cmsis/cm4/core_support" -I"../../../../../../libraries/cmsis/cm4/device_support" -I"../../inc" -I"../../../../../../middlewares/i2c_application_library" -I"../../../../../at_surf_f437_board" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

user/main.o: C:/ARTERY/project/at_surf_f437/examples/dvp/src/main.c user/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections  -g -DAT32F437ZMT7 -DUSE_STDPERIPH_DRIVER -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"../../../../../at_surf_f437_board" -I"../../../../../../libraries/drivers/inc" -I"../../../../../../libraries/cmsis/cm4/core_support" -I"../../../../../../libraries/cmsis/cm4/device_support" -I"../../inc" -I"../../../../../../middlewares/i2c_application_library" -I"../../../../../at_surf_f437_board" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


