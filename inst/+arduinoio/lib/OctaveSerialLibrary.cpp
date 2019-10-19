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
    
  switch (cmdID)
  {
#ifdef USE_SERIAL
    case ARDUINO_WRITESERIAL:
      {
        if(datasz < 2 || datasz > 32)
        {
          // id
          // data
	  sendInvalidNumArgsMsg();
        }
        else if(data[0] < 1 || data[0] > NUM_SERIAL_PORTS)
        { 
            sendErrorMsg_P(ERRORMSG_INVALID_SERIALID);
        }
        else
        {
          uint8_t id = data[0]-1;
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
        else if(data[0] < 1 || data[0] > NUM_SERIAL_PORTS)
        { 
          sendErrorMsg_P(ERRORMSG_INVALID_SERIALID);
        }
        else
        {
          uint8_t id = data[0]-1;

          byte c = 0;
          byte l = data[1];
          datasz = 1;
          for(c=0;c<l;c++)
          {
            if(serial[id]->available())
            {
              data[datasz] = serial[id]->read();
              datasz ++;
            }
          }
          sendResponseMsg(cmdID,data, datasz);
        }
        break;
      }
    case ARDUINO_CONFIGSERIAL:
      {
        if(datasz > 0 && data[0] < 1 || data[0] > NUM_SERIAL_PORTS)
        { 
           sendErrorMsg_P(ERRORMSG_INVALID_SERIALID);
        }
        // enable
        else if(datasz == 9 && data[1] == 1)
        {
          uint8_t id = data[0]-1;
          // data[1] = enable
          uint32_t baud = ((uint32_t)data[2]<<24) | ((uint32_t)data[3]<<16) | ((uint32_t)data[4]<<8) | data[5];
          uint8_t conf = 0;
          // data[6] = databits
          // data[7] = stopbits
          // data[8] = parity
          if(data[8] == 2) // parity event
          {
            if(data[7] == 1)
            {
              switch(data[6])
              {
	        case 5: conf = SERIAL_5E1; break;
	        case 6: conf = SERIAL_6E1; break;
	        case 7: conf = SERIAL_7E1; break;
	        default: conf = SERIAL_8E1; break;
              }
            }
            else // 2 stop bits
            {
              switch(data[6])
              {
	        case 5: conf = SERIAL_5E2; break;
	        case 6: conf = SERIAL_6E2; break;
	        case 7: conf = SERIAL_7E2; break;
	        default: conf = SERIAL_8E2; break;
              }
            }
          }
          else if(data[8] == 1) // parity odd
          {
            if(data[7] == 1)
            {
              switch(data[6])
              {
	        case 5: conf = SERIAL_5O1; break;
	        case 6: conf = SERIAL_6O1; break;
	        case 7: conf = SERIAL_7O1; break;
	        default: conf = SERIAL_8O1; break;
              }
            }
            else // 2 stop bits
            {
              switch(data[6])
              {
	        case 5: conf = SERIAL_5O2; break;
	        case 6: conf = SERIAL_6O2; break;
	        case 7: conf = SERIAL_7O2; break;
	        default: conf = SERIAL_8O2; break;
              }
            }
          }
          else // parity none
          {
            if(data[7] == 1)
            {
              switch(data[6])
              {
	        case 5: conf = SERIAL_5N1; break;
	        case 6: conf = SERIAL_6N1; break;
	        case 7: conf = SERIAL_7N1; break;
	        default: conf = SERIAL_8N1; break;
              }
            }
            else // 2 stop bits
            {
              switch(data[6])
              {
	        case 5: conf = SERIAL_5N2; break;
	        case 6: conf = SERIAL_6N2; break;
	        case 7: conf = SERIAL_7N2; break;
	        default: conf = SERIAL_8N2; break;
              }
            }
          }

          serial[id]->begin(baud, conf);
          sendResponseMsg(cmdID,data, 2);
        }
        // disable
        else if(datasz == 2 && data[1] == 0)
        {
          uint8_t id = data[0]-1;
          serial[id]->end();
          sendResponseMsg(cmdID,data, 2);
        }
        else
        {
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
