################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/examples/others/snapshot/lv_example_snapshot_1.c 

C_DEPS += \
./Drivers/lvgl/examples/others/snapshot/lv_example_snapshot_1.d 

OBJS += \
./Drivers/lvgl/examples/others/snapshot/lv_example_snapshot_1.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/examples/others/snapshot/%.o Drivers/lvgl/examples/others/snapshot/%.su Drivers/lvgl/examples/others/snapshot/%.cyclo: ../Drivers/lvgl/examples/others/snapshot/%.c Drivers/lvgl/examples/others/snapshot/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I"C:/Users/Emrec/STM32CubeIDE/workspace_1.16.0/STM32H743_LVGL/Drivers/UI" -I"C:/Users/Emrec/STM32CubeIDE/workspace_1.16.0/STM32H743_LVGL/Drivers/lvgl" -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-examples-2f-others-2f-snapshot

clean-Drivers-2f-lvgl-2f-examples-2f-others-2f-snapshot:
	-$(RM) ./Drivers/lvgl/examples/others/snapshot/lv_example_snapshot_1.cyclo ./Drivers/lvgl/examples/others/snapshot/lv_example_snapshot_1.d ./Drivers/lvgl/examples/others/snapshot/lv_example_snapshot_1.o ./Drivers/lvgl/examples/others/snapshot/lv_example_snapshot_1.su

.PHONY: clean-Drivers-2f-lvgl-2f-examples-2f-others-2f-snapshot

