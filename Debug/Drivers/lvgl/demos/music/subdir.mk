################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/demos/music/lv_demo_music.c \
../Drivers/lvgl/demos/music/lv_demo_music_list.c \
../Drivers/lvgl/demos/music/lv_demo_music_main.c 

C_DEPS += \
./Drivers/lvgl/demos/music/lv_demo_music.d \
./Drivers/lvgl/demos/music/lv_demo_music_list.d \
./Drivers/lvgl/demos/music/lv_demo_music_main.d 

OBJS += \
./Drivers/lvgl/demos/music/lv_demo_music.o \
./Drivers/lvgl/demos/music/lv_demo_music_list.o \
./Drivers/lvgl/demos/music/lv_demo_music_main.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/demos/music/%.o Drivers/lvgl/demos/music/%.su Drivers/lvgl/demos/music/%.cyclo: ../Drivers/lvgl/demos/music/%.c Drivers/lvgl/demos/music/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I"C:/Users/Emrec/STM32CubeIDE/workspace_1.16.0/STM32H743_LVGL/Drivers/UI" -I"C:/Users/Emrec/STM32CubeIDE/workspace_1.16.0/STM32H743_LVGL/Drivers/lvgl" -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-demos-2f-music

clean-Drivers-2f-lvgl-2f-demos-2f-music:
	-$(RM) ./Drivers/lvgl/demos/music/lv_demo_music.cyclo ./Drivers/lvgl/demos/music/lv_demo_music.d ./Drivers/lvgl/demos/music/lv_demo_music.o ./Drivers/lvgl/demos/music/lv_demo_music.su ./Drivers/lvgl/demos/music/lv_demo_music_list.cyclo ./Drivers/lvgl/demos/music/lv_demo_music_list.d ./Drivers/lvgl/demos/music/lv_demo_music_list.o ./Drivers/lvgl/demos/music/lv_demo_music_list.su ./Drivers/lvgl/demos/music/lv_demo_music_main.cyclo ./Drivers/lvgl/demos/music/lv_demo_music_main.d ./Drivers/lvgl/demos/music/lv_demo_music_main.o ./Drivers/lvgl/demos/music/lv_demo_music_main.su

.PHONY: clean-Drivers-2f-lvgl-2f-demos-2f-music

