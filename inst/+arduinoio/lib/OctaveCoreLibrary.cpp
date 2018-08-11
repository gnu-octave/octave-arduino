/*
 * Octave arduino core interface
 * Copyright (C) 2018 John Donoghue <john.donoghue@ieee.org>
 *
 * This program is free software: you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

#include "settings.h"
#include "OctaveCoreLibrary.h"

#define ARDUINO_RESET       0
#define ARDUINO_INIT        1
#define ARDUINO_CONFIGPIN   2
#define ARDUINO_DIGITAL     3
#define ARDUINO_ANALOG      4
#define ARDUINO_PWM         5

#define ARDUINO_GETLIB      8

// TODO: how know what board we are ???
//compiler provides something like:
// -DF_CPU=16000000L -DARDUINO=10805 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR
//  freq              ide ver         board             arch
#if defined(ARDUINO_AVR_UNO)
  #define BOARD_ID  0
#elif defined(ARDUINO_AVR_MEGA2560)
  #define BOARD_ID  1
#else
  #error "Unknown board type"
#endif

// board voltage = actualV*10
#define BOARD_VOLTAGE 50


static const uint8_t map_config_mode[] PROGMEM = {
  INPUT, // unset
  INPUT, // analoginput
  INPUT, // dig in
  OUTPUT, // dig out
  INPUT_PULLUP, // pullup
  OUTPUT, // i2c TODO: ??
  OUTPUT, // pwm
  OUTPUT, // servo
  OUTPUT, // spi TODO ?
};

#define pinToAnalog(a) (a < PIN_A0 ? 0 : a-PIN_A0)
   
static uint8_t pinconfig[NUM_DIGITAL_PINS];

//void (*reset)(void) = 0;
#include <avr/wdt.h>
void  reset()
{ 
  wdt_enable(WDTO_1S);
  while(1) {}
}

OctaveCoreLibrary::OctaveCoreLibrary(OctaveArduinoClass &oc) 
  : occlass(oc)
{

  libName = "Core";

  oc.registerLibrary(this);

  // set pins as not set
  for(int i = 0;i<NUM_DIGITAL_PINS;i++) {
    pinconfig[i] = 0xff;
  }
}
void OctaveCoreLibrary::commandHandler(uint8_t cmdID, uint8_t* data, uint8_t datasz)
{
  int val;
    
  switch (cmdID) {
    case ARDUINO_RESET:
        sendResponseMsg(cmdID,0,0);
        reset();
        break;
        
    case ARDUINO_INIT:
        data[0] =  SIGNATURE_0;
        data[1] =  SIGNATURE_1;
        data[2] =  SIGNATURE_2;
        data[3] = BOARD_ID;
        data[4] = BOARD_VOLTAGE;
	data[5] = occlass.getLibCount();
        sendResponseMsg(cmdID,data, 6);
        break;  
    case ARDUINO_GETLIB:
      {
        if(datasz != 1)
          sendInvalidNumArgsMsg();
	else
	{
	  // lib idx
	  // populate data[1]... with lib name
	  datasz = 0;
	  const char * name = occlass.getLibName(data[0]);
	  while(name[datasz] != '\0' && datasz < 254)
	  {
	    data[datasz+1] = name[datasz];
	    datasz++;
	  }
	  //strcpy((char*)&data[1], name)
          sendResponseMsg(cmdID,data, datasz+1);
	}
	break;
      }
      case ARDUINO_CONFIGPIN:
        if (datasz == 1 && data[0] < NUM_DIGITAL_PINS) {
          data[1] = pinconfig[data[0]]; // TODO: get mode somehow ????
          sendResponseMsg(cmdID,data, 2);
        } else if (datasz == 2 && data[0] < NUM_DIGITAL_PINS && data[1] >= 0 && data[1] < sizeof(map_config_mode)) {
          int mode = map_config_mode[data[1]];
          pinconfig[data[0]] = data[1];
          pinMode(data[0], mode);
          sendResponseMsg(cmdID,data, 0);
        } else {
          sendInvalidNumArgsMsg();
        }
        break; 
        
      case ARDUINO_DIGITAL:
      
        if(datasz == 1) {
          val = digitalRead(data[0]);
          if(val == HIGH)
            data[1] = 1;
          else
            data[1] = 0;
          sendResponseMsg(cmdID,data, 2);
        } else if(datasz == 2) {
          digitalWrite(data[0], data[1]); 
          sendResponseMsg(cmdID,data, 0);
        } else {
          sendInvalidNumArgsMsg();
        }
        break;  

      case ARDUINO_ANALOG:
      
        if(datasz == 1) {
          val = analogRead(pinToAnalog(data[0]));
          data[1] = (val>>8)&0xff;
          data[2] = (val)&0xff;
          sendResponseMsg(cmdID,data, 3);
        } else {
          sendInvalidNumArgsMsg();
        }
        break;  

      case ARDUINO_PWM:
      
        if(datasz == 2) {
          analogWrite(data[0], data[1]);
          sendResponseMsg(cmdID,data, 0);
        } else {
          sendInvalidNumArgsMsg();
        }
        break;  
      default:
        sendUnknownCmdIDMsg();
        break;
    }
}
