# STM32H743 Touch GUI Project with LVGL

## Overview

This project uses **LVGL** (Light and Versatile Graphics Library) on an STM32H743 microcontroller to create a graphical user interface (GUI) for controlling an air conditioning system. The system includes features for adjusting fan speed, setting target temperatures, and toggling the power.

![Sample](https://github.com/Emrecanbl/STM32H743-Touch-GUI/blob/main/IMG.jpg?raw=true)

### Features

- **Air Conditioning Control**: Power the AC on or off.
- **Fan Speed Adjustment**: Control fan speed with an arc widget.
- **Temperature Setting**: Adjust the target temperature using another arc widget.
- **System Power Toggle**: A button to turn the entire system on or off.
- **USB Communication**: Transmit commands via USB to a host device.

## Event Handling

The functionality of the interface is driven by event handlers, which respond to user interactions with the GUI elements.

### `fan_on_1(lv_event_t * e)`

```cpp
void fan_on_1(lv_event_t * e)
{
    if (lv_obj_has_state(ui_Switch1, LV_STATE_CHECKED))
    {
        CDC_Transmit_FS("FAN ON\n", strlen("FAN ON\n"));
    }
    else
    {
        CDC_Transmit_FS("FAN OFF\n", strlen("FAN OFF\n"));
    }
}
```

### `AC_ON_OFF(lv_event_t * e)`

```cpp
void AC_ON_OFF(lv_event_t * e)
{
    if (lv_obj_has_state(ui_Switch2, LV_STATE_CHECKED))
    {
        CDC_Transmit_FS("AC ON\n", strlen("AC ON\n"));
    }
    else
    {
        CDC_Transmit_FS("AC OFF\n", strlen("AC OFF\n"));
    }
}
```

### `ONOFFBTNclicked(lv_event_t * e)`

```cpp
void ONOFFBTNclicked(lv_event_t * e)
{
    Toggle++;
    if(Toggle==1){
        CDC_Transmit_FS("CLIMATE ON\n", strlen("CLIMATE ON\n"));
        lv_label_set_text(ui_ONOFFTXT, "ON");
    }
    else if(Toggle==2){
        CDC_Transmit_FS("CLIMATE OFF\n", strlen("CLIMATE OFF\n"));
        lv_label_set_text(ui_ONOFFTXT, "OFF");
        Toggle=0;
    }
}
```

### `FAN_SPD_CHAN(lv_event_t * e)`

```cpp
void FAN_SPD_CHAN(lv_event_t * e)
{
    FAN_SPD = lv_arc_get_value(ui_Arc1);
    char str[] = "FAN SPEED: 100\n";
    sprintf(str,"FAN SPEED: %d\n", FAN_SPD);
    CDC_Transmit_FS(str, strlen(str));
}
```

### `HEAT_CHANGE(lv_event_t * e)`

```cpp
void HEAT_CHANGE(lv_event_t * e)
{
    HEAT_TAR = lv_arc_get_value(ui_Arc2);
    char str[] = "HEAT: 25\n";
    sprintf(str,"HEAT: %d\n", HEAT_TAR);
    CDC_Transmit_FS(str, strlen(str));
}
```

## USB Data Handling

The project uses USB communication for exchanging commands between the microcontroller and a host device.

### `usbd_cdc_if.c`

This file handles USB communication, particularly for a virtual COM port.

#### Key Sections

- **Initialization**: USB device initialization and CDC interface setup.
- **Data Reception**:
  
  ```cpp
  extern uint8_t Raw_VCP_Data[64];
  extern uint8_t Vcp_Data_Available;
  extern uint16_t Data_recv[4];
  ```

- **Data Transmission**:
  
  ```cpp
  CDC_Transmit_FS("Command String\n", strlen("Command String\n"));
  ```

![Sample](https://github.com/Emrecanbl/STM32H743-Touch-GUI/blob/main/ScreenShot_1.png?raw=true)

### Example Flow

1. **User Interaction**: User adjusts the fan speed via the GUI.
2. **Event Trigger**: `FAN_SPD_CHAN()` event handler is triggered.
3. **Data Formatting**: The fan speed value is formatted into a string.
4. **Data Transmission**: The formatted string is sent to the host via USB.

## Repository Structure

The repository includes all the necessary files for the project, with a focus on UI and USB handling:

- `ui_events.c`: Contains the event handlers.
- `usbd_cdc_if.c`: Manages USB communication.
- `main.c`: System initialization and main loop (not covered here).

## How to Run

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/Emrecanbl/STM32H743-Touch-GUI.git
   ```
2. **Open the Project in Your IDE**: Recommended IDE is STM32CubeIDE.
3. **Compile and Flash**: Compile the code and flash it to your STM32H743 microcontroller.
4. **Connect via USB**: Use a USB cable to connect the device to a host and observe the communication.

## Future Work

- **Add Error Handling**: Improve robustness by adding error handling in USB communication.
- **Enhance UI**: Further improve the GUI with more features or visual enhancements.
