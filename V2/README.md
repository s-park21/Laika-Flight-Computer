# Laika-Flight-Computer
Kicad PCB files for the Liaka flight computer

PCB Ordering Information:

Export the PCB files as Gerber. See online tutorial for details. Upload drill files, gerber files, BOM and .pos file to JLCPCB for PCB manufacture and assembly. 
JLC can assemble most of the components other than RFM95W, GPS, Baro and various other minor parts. I highly reccomend to have JLC assemble the ESP32 chip for you.

For code to run on the board, see my rocket-software repository.

Errata List:

- PWR and GND for XT-30 connector are reversed. 
- Round edges of PCB to minimise stress concentrations.


Areas for improvement:
- MPU6050 locks out after 15g. Consider higher range accelerometer.
- Consider the use of a flash chip rather than a micro SD card.
