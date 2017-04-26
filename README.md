# Relay Control Using NodeMCU

This paragraph is designed to control a 4 channel relay using a web interface, each relay can be turned on or off using the buttons on the web interface.

## Getting Started You Will Need

ESPlorer (https://esp8266.ru/esplorer/)

The latest firmware (https://github.com/nodemcu/nodemcu-firmware/releases)
Upade the firmware using the NodeMCU flasher (https://github.com/nodemcu/nodemcu-flasher)

### Prerequisites

Download the latest firmware from the link above

```
nodemcu_float_0.9.6-dev_20150704.bin
```
Download NodeMCU Flasher and open the program.

Navigate to Advanced and make sure the Flash size is 4MByte, Flash rate is 80MHz, and SPI Mode is DIO.

Navigate to Config, click the first cog and find the firmware you downloaded, make sure there is a small x in the box on the left. 

Navigate to Operation and select the COM port your NodeMCU is connected to, then flash the image.

A small tick will appear in the bottom left if everything has gone according to plan, if not, try googling for a solution.

### Prepairing The Hardware

Use a jumper cable between:

  VCC and 3.3V
  
  IN1 and GPIO5
  
  IN2 and GPIO4
  
  IN3 and GPIO0
  
  IN4 and GPIO2
  
  GND and GND

## Installing

Download ESPlorer from the link above.

Select the COM prot from the dropdown menu on the right.

Click open to start communicating with the NodeMCU.

Paste the code from init.lua into the left panel.

Click "Save to ESP"


Navigate to your NodeMCU's IP and you should be faced with the relay controls.

## Versioning

V1 

## Authors

**Christian James-Watkins**

## License

Feel free to tinker, no licences are attached to this work
