################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/src/extra/others/fragment/lv_fragment.c \
../Drivers/lvgl/src/extra/others/fragment/lv_fragment_manager.c 

C_DEPS += \
./Drivers/lvgl/src/extra/others/fragment/lv_fragment.d \
./Drivers/lvgl/src/extra/others/fragment/lv_fragment_manager.d 

OBJS += \
./Drivers/lvgl/src/extra/others/fragment/lv_fragment.o \
./Drivers/lvgl/src/extra/others/fragment/lv_fragment_manager.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/src/extra/others/fragment/%.o Drivers/lvgl/src/extra/others/fragment/%.su Drivers/lvgl/src/extra/others/fragment/%.cyclo: ../Drivers/lvgl/src/extra/others/fragment/%.c Drivers/lvgl/src/extra/others/fragment/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I"C:/Users/Emrec/STM32CubeIDE/workspace_1.16.0/STM32H743_LVGL/Drivers/UI" -I"C:/Users/Emrec/STM32CubeIDE/workspace_1.16.0/STM32H743_LVGL/Drivers/lvgl" -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-src-2f-extra-2f-others-2f-fragment

clean-Drivers-2f-lvgl-2f-src-2f-extra-2f-others-2f-fragment:
	-$(RM) ./Drivers/lvgl/src/extra/others/fragment/lv_fragment.cyclo ./Drivers/lvgl/src/extra/others/fragment/lv_fragment.d ./Drivers/lvgl/src/extra/others/fragment/lv_fragment.o ./Drivers/lvgl/src/extra/others/fragment/lv_fragment.su ./Drivers/lvgl/src/extra/others/fragment/lv_fragment_manager.cyclo ./Drivers/lvgl/src/extra/others/fragment/lv_fragment_manager.d ./Drivers/lvgl/src/extra/others/fragment/lv_fragment_manager.o ./Drivers/lvgl/src/extra/others/fragment/lv_fragment_manager.su

.PHONY: clean-Drivers-2f-lvgl-2f-src-2f-extra-2f-others-2f-fragment

