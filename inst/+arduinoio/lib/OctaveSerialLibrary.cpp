/*
 * Octave arduino serial interface
 * Copyright (C) 2019 John Donoghue <john.donoghue@ieee.org>
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
#include "OctaveSerialLibrary.h"

static const char ERRORMSG_INVALID_SERIALID[] PROGMEM = "Invalid serial id";

#define ARDUINO_CONFIGSERIAL   1
#define ARDUINO_WRITESERIAL    2
#define ARDUINO_READSERIAL     3

#ifndef SERIAL_PORT_HARDWARE_OPEN
  #error "This device does not support the serial octave serial interface"
#endif

static HardwareSerial * serial[] = {
#ifdef SERIAL_PORT_HARDWARE_OPEN1
 0,
#endif
#ifdef SERIAL_PORT_HARDWARE_OPEN2
 0,
#endif
#ifdef SERIAL_PORT_HARDWARE_OPEN3
 0,
#endif
 0
};
#define NUM_SERIAL_PORTS (sizeof(serial)/sizeof(HardwareSerial*))

OctaveSerialLibrary::OctaveSerialLibrary(OctaveArduinoClass &oc) 
{
  libName = "Serial";

  oc.registerLibrary(this);
}
void OctaveSerialLibrary::setup() 
{
  serial[0] = &SERIAL_PORT_HARDWARE_OPEN;
#ifdef SERIAL_PORT_HARDWARE_OPEN1
  serial[1] = &SERIAL_PORT_HARDWARE_OPEN1;
#endif
#ifdef SERIAL_PORT_HARDWARE_OPEN2
  serial[2] = &SERIAL_PORT_HARDWARE_OPEN2;
#endif
#ifdef SERIAL_PORT_HARDWARE_OPEN3
  serial[3] = &SERIAL_PORT_HARDWARE_OPEN3;
#endif
  OctaveLibraryBase::setup();
}
void OctaveSerialLibrary::commandHandler(uint8_t cmdID, uint8_t* data, uint8_t datasz)
{
  int val;
    
  switch (cmdID) {
#ifdef USE_SERIAL
      case ARDUINO_WRITESERIAL:
       {
        if(datasz < 2 || datasz > 32)
        {
          // id
          // data
	  sendInvalidNumArgsMsg();
        }
        else if(data[0] < 1 || data[0] > NUM_SERIAL_PORTS) { 
            sendErrorMsg_P(ERRORMSG_INVALID_SERIALID);
        }
        else {
	  uint8_t id = data[0]-1;
          // TODO:
	  //byte c;
	  //for(c=1;c<datasz;c++)
          //  serial[id]->write(data[c]);
	  serial[id]->write(&data[1], datasz-1);

          data[1] = 1;

          sendResponseMsg(cmdID,data, 2);
        }
        break;
       }
      case ARDUINO_READSERIAL:
       {
        if(datasz != 2)
        {
          // port
          // numbytes
	  sendInvalidNumArgsMsg();
        }
        else if(data[0] < 1 || data[0] > NUM_SERIAL_PORTS) { 
            sendErrorMsg_P(ERRORMSG_INVALID_SERIALID);
        }
        else {
	  uint8_t id = data[0]-1;

          byte c = 0;
          byte l = data[1];
          datasz = 1;
          for(c=0;c<l;c++)
          {
            if(serial[id]->available()) {
              data[datasz] = serial[id]->read();
              datasz ++;
            }
          }

	  // TODO
          sendResponseMsg(cmdID,data, datasz);
        }
        break;
       }
      case ARDUINO_CONFIGSERIAL:
       {
         if(datasz == 2) {
           // serial id   0
           // enable      1
	   if(data[0] < 1 || data[0] > NUM_SERIAL_PORTS) { 
            sendErrorMsg_P(ERRORMSG_INVALID_SERIALID);
           }
	   else {
	     uint8_t id = data[0]-1;
             // enable
	     if(data[1] == 1) {
	       serial[id]->begin(9600, SERIAL_8N1);
             } else {
	       serial[id]->end();
             }
             sendResponseMsg(cmdID,data, datasz);
	   }
         }
         else {
	  sendInvalidNumArgsMsg();
         }
         break;
       }
#endif
      default:
        sendUnknownCmdIDMsg();
        break;
    }
}
