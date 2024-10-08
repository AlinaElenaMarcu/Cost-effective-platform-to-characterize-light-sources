#!/usr/bin/python3
#This script uses a as7262 6 colour spectral scanner
#
#Prerequisites:
# *i2c enabled on Raspberry Pi in Raspbery Pi Config > Interfaces
# *pip3 install as7262
#
#Adapted from raspberryconnect.com

from as7262 import AS7262

as7262 = AS7262()

# gain: 1, 3.7, 16, 64
as7262.set_gain(1) 

#1 to 255 x 2.8ms exposure
as7262.set_integration_time(50) 

#mode 0 - bank 1 only continuous, mode 1 - bank 2 only continuous, 
#mode 2 - both banks continuous, mode 3 - both banks single read 
as7262.set_measurement_mode(3) 

#12.5mA 25mA 50mA 100mA
as7262.set_illumination_led_current(12.5) 

#as7262.set_illumination_led(1) # bulb led on

def main():

		while 1:
			values = as7262.get_calibrated_values() #get values from scan
			list_values=list(values)
			list_values.reverse()
			print(list_values)
			

if __name__ == '__main__':
    main()