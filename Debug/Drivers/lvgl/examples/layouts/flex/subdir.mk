################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/examples/layouts/flex/lv_example_flex_1.c \
../Drivers/lvgl/examples/layouts/flex/lv_example_flex_2.c \
../Drivers/lvgl/examples/layouts/flex/lv_example_flex_3.c \
../Drivers/lvgl/examples/layouts/flex/lv_example_flex_4.c \
../Drivers/lvgl/examples/layouts/flex/lv_example_flex_5.c \
../Drivers/lvgl/examples/layouts/flex/lv_example_flex_6.c 

C_DEPS += \
./Drivers/lvgl/examples/layouts/flex/lv_example_flex_1.d \
./Drivers/lvgl/examples/layouts/flex/lv_example_flex_2.d \
./Drivers/lvgl/examples/layouts/flex/lv_example_flex_3.d \
./Drivers/lvgl/examples/layouts/flex/lv_example_flex_4.d \
./Drivers/lvgl/examples/layouts/flex/lv_example_flex_5.d \
./Drivers/lvgl/examples/layouts/flex/lv_example_flex_6.d 

OBJS += \
./Drivers/lvgl/examples/layouts/flex/lv_example_flex_1.o \
./Drivers/lvgl/examples/layouts/flex/lv_example_flex_2.o \
./Drivers/lvgl/examples/layouts/flex/lv_example_flex_3.o \
./Drivers/lvgl/examples/layouts/flex/lv_example_flex_4.o \
./Drivers/lvgl/examples/layouts/flex/lv_example_flex_5.o \
./Drivers/lvgl/examples/layouts/flex/lv_example_flex_6.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/examples/layouts/flex/%.o Drivers/lvgl/examples/layouts/flex/%.su Drivers/lvgl/examples/layouts/flex/%.cyclo: ../Drivers/lvgl/examples/layouts/flex/%.c Drivers/lvgl/examples/layouts/flex/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I"C:/Users/Emrec/STM32CubeIDE/workspace_1.16.0/STM32H743_LVGL/Drivers/UI" -I"C:/Users/Emrec/STM32CubeIDE/workspace_1.16.0/STM32H743_LVGL/Drivers/lvgl" -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-examples-2f-layouts-2f-flex

clean-Drivers-2f-lvgl-2f-examples-2f-layouts-2f-flex:
	-$(RM) ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_1.cyclo ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_1.d ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_1.o ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_1.su ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_2.cyclo ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_2.d ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_2.o ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_2.su ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_3.cyclo ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_3.d ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_3.o ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_3.su ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_4.cyclo ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_4.d ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_4.o ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_4.su ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_5.cyclo ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_5.d ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_5.o ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_5.su ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_6.cyclo ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_6.d ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_6.o ./Drivers/lvgl/examples/layouts/flex/lv_example_flex_6.su

.PHONY: clean-Drivers-2f-lvgl-2f-examples-2f-layouts-2f-flex

