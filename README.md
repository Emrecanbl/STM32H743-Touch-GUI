STM32H743 Touch GUI Project with LVGL
Overview
This project involves developing a graphical user interface (GUI) using the LVGL (Light and Versatile Graphics Library) on an STM32H743 microcontroller. The interface is designed for controlling an air conditioning system, including functionality for adjusting fan speed, setting target temperatures, and toggling the system on and off.

Features
Air Conditioning Control: Turn the air conditioning system on or off.
Fan Speed Adjustment: Control the fan speed with an intuitive arc widget.
Temperature Setting: Adjust the target temperature with another arc widget.
System Power Toggle: A button to power the entire climate control system on or off.
USB Communication: Transmit commands to a host device via USB.
Event Handling
The core of the interface’s functionality is driven by event handlers, which are triggered by user interactions with the GUI elements.

fan_on_1(lv_event_t * e)
Purpose: Toggles the fan on or off.
Details:
If the switch ui_Switch1 is checked, a "FAN ON" message is sent via USB.
If unchecked, a "FAN OFF" message is transmitted.
AC_ON_OFF(lv_event_t * e)
Purpose: Controls the air conditioning power.
Details:
A checked state on ui_Switch2 triggers the "AC ON" message.
An unchecked state triggers "AC OFF".
ONOFFBTNclicked(lv_event_t * e)
Purpose: Toggles the climate control system power.
Details:
First click sends "CLIMATE ON" and updates the button label to "ON".
Second click sends "CLIMATE OFF", updates the label to "OFF", and resets the toggle.
FAN_SPD_CHAN(lv_event_t * e)
Purpose: Changes fan speed.
Details:
The fan speed is read from the ui_Arc1 widget.
The value is formatted into a string and transmitted as "FAN SPEED: X".
HEAT_CHANGE(lv_event_t * e)
Purpose: Adjusts the target temperature.
Details:
The temperature value is obtained from ui_Arc2.
It is formatted and sent as "HEAT: X".
USB Data Handling
The project uses USB communication for sending and receiving commands between the microcontroller and a connected host device.

usbd_cdc_if.c
This file manages the USB communication, particularly for a virtual COM port.

Key Sections
Initialization: Standard USB device initialization, setting up the USB CDC interface.

Data Reception:

Raw_VCP_Data[]: Buffer for raw data received via USB.
Data_recv[]: Buffer for processed data.
Vcp_Data_Available: Flag indicating the availability of new data.
Data Transmission:

Functions like CDC_Transmit_FS() are used to send formatted strings to the host device based on user interactions captured by the event handlers.
Example Flow
User Interaction: User adjusts the fan speed via the GUI.
Event Trigger: FAN_SPD_CHAN() event handler is called.
Data Formatting: The fan speed value is formatted into a string.
Data Transmission: The string is sent to the host via USB.
Repository Structure
The repository includes all the necessary files for the project, with specific focus on the UI and USB handling:

ui_events.c: Contains the event handlers.
usbd_cdc_if.c: Manages USB communication.
main.c: System initialization and main loop (not covered here).
How to Run
Clone the Repository:
bash
Kodu kopyala
git clone https://github.com/Emrecanbl/STM32H743-Touch-GUI.git
Open the Project in Your IDE: Recommended IDE is STM32CubeIDE.
Compile and Flash: Compile the code and flash it to your STM32H743 microcontroller.
Connect via USB: Use a USB cable to connect the device to a host and observe the communication.
Future Work
Add Error Handling: Improve robustness by adding error handling in USB communication.
Enhance UI: Further improve the GUI with more features or visual enhancements.
