# Relay Control Using NodeMCU

This paragraph is designed to control a 4 channel relay using a web interface, each relay can be turned on or off using the buttons on the web interface.

## Getting Started

### Download

[ESPlorer](https://esp8266.ru/esplorer/)

The [latest firmware](https://github.com/nodemcu/nodemcu-firmware/releases)

[NodeMCU flasher](https://github.com/nodemcu/nodemcu-flasher)

### Updating The Firmware

Download the latest firmware from the link above

```
nodemcu_float_0.9.6-dev_20150704.bin
```
Download NodeMCU Flasher and open the program.

Navigate to Advanced and make sure the Flash size is 4MByte, Flash rate is 80MHz, and SPI Mode is DIO.

Navigate to Config, click the first cog and find the firmware you downloaded, make sure there is a small x in the box on the left. 

Navigate to Operation and select the COM port your NodeMCU is connected to, then flash the image.

A small tick will appear in the bottom left if everything has gone according to plan, if not, try googling for a solution.

### Hardware Wiring Diagram
  
![Wiring  Diagram](https://github.com/CJ0206/NodeMCU-ESP8266-RelayControl/blob/master/Circuit%20Diagram.png?raw=true)

## Uploading The Code

Download ESPlorer from the link above and open the program.

Select the COM prot from the dropdown menu on the right.

Click open in the right panel to start communicating with the NodeMCU.

Paste the code from [init.lua](init.lua) into the left panel.

Click "Save to ESP"


Navigate to your NodeMCU's IP and you should be faced with the relay controls.

## Version

* V1 

## Author

**Christian James-Watkins**
