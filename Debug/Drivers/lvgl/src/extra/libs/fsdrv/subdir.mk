################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_fatfs.c \
../Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_littlefs.c \
../Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_posix.c \
../Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_stdio.c \
../Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_win32.c 

C_DEPS += \
./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_fatfs.d \
./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_littlefs.d \
./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_posix.d \
./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_stdio.d \
./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_win32.d 

OBJS += \
./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_fatfs.o \
./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_littlefs.o \
./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_posix.o \
./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_stdio.o \
./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_win32.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/src/extra/libs/fsdrv/%.o Drivers/lvgl/src/extra/libs/fsdrv/%.su Drivers/lvgl/src/extra/libs/fsdrv/%.cyclo: ../Drivers/lvgl/src/extra/libs/fsdrv/%.c Drivers/lvgl/src/extra/libs/fsdrv/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I"C:/Users/Emrec/STM32CubeIDE/workspace_1.16.0/STM32H743_LVGL/Drivers/UI" -I"C:/Users/Emrec/STM32CubeIDE/workspace_1.16.0/STM32H743_LVGL/Drivers/lvgl" -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-src-2f-extra-2f-libs-2f-fsdrv

clean-Drivers-2f-lvgl-2f-src-2f-extra-2f-libs-2f-fsdrv:
	-$(RM) ./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_fatfs.cyclo ./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_fatfs.d ./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_fatfs.o ./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_fatfs.su ./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_littlefs.cyclo ./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_littlefs.d ./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_littlefs.o ./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_littlefs.su ./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_posix.cyclo ./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_posix.d ./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_posix.o ./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_posix.su ./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_stdio.cyclo ./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_stdio.d ./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_stdio.o ./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_stdio.su ./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_win32.cyclo ./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_win32.d ./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_win32.o ./Drivers/lvgl/src/extra/libs/fsdrv/lv_fs_win32.su

.PHONY: clean-Drivers-2f-lvgl-2f-src-2f-extra-2f-libs-2f-fsdrv

