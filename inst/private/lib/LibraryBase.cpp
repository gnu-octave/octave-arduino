/*
 * Octave arduino base library
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

#include "LibraryBase.h"

#define ARDUINO_SOH         0xA5

#define STATE_SOH  0
#define STATE_EXT  1
#define STATE_CMD  2
#define STATE_SIZE 3
#define STATE_DATA 4
#define STATE_EOM  5

void OctaveLibraryBase::sendResponseMsg(uint8_t cmdID, uint8_t *data, uint8_t sz)
{
  Serial.write((uint8_t)ARDUINO_SOH);
  Serial.write((uint8_t)id);
  Serial.write(cmdID);
  Serial.write(sz);
  if(sz) {
    Serial.write(data, sz);
  }
  Serial.flush();
}

OctaveArduinoClass::OctaveArduinoClass()
{
  for(int i=0;i<MAX_ARDUINO_LIBS;i++)
    libs[i] = 0;

  libcount = 0;
  msg_state = STATE_SOH;
}

const char * OctaveArduinoClass::getLibName(uint8_t idx) const {
  if(idx >= 0 && idx < libcount) {
    return libs[idx]->libName.c_str();
  }
  return "";
}

uint8_t OctaveArduinoClass::registerLibrary(LibraryBase *lib)
{
  if(libcount < MAX_ARDUINO_LIBS) {
    lib->id = libcount;
    libs[libcount] = lib;
    libcount ++;
    return libcount-1;
  }
/*
  for(int i=0;i<libcount;i++)
  {
    if(libs[i] == 0)
    {
      libs[i] = lib;
      lib->id = i+1;
      // anything else to register/do ??
      
      return i;
    }
  }
 */
  return 255;
}

uint8_t OctaveArduinoClass::processMessage(uint8_t libid, uint8_t cmd, uint8_t *data, uint8_t sz)
{
  if(libid < 0 || libid >= MAX_ARDUINO_LIBS || libs[libid] == 0) {
    // error, send reply
  } else {
    libs[libid]->commandHandler(cmd, data,sz);
    return 1;
  }
  return 0; 
}

void OctaveArduinoClass::runLoop()
{
  int ch;

  if(Serial.available()) {
    
    ch = Serial.read();

    switch (msg_state) {
      case STATE_SOH: 
	msg_hdr[STATE_SOH] = ch;
        if(ch == ARDUINO_SOH)
          msg_state = STATE_EXT;
        break;
      case STATE_EXT:
	msg_hdr[STATE_EXT] = ch;
        msg_state = STATE_CMD;
        break;      
      case STATE_CMD:
	msg_hdr[STATE_CMD] = ch;
        msg_state = STATE_SIZE;
        break;
      case STATE_SIZE:
        msg_hdr[STATE_SIZE] = ch;
        msg_datapos = 0;
        if(ch > 0)
          msg_state = STATE_DATA;
        else
          msg_state = STATE_EOM;
        break;
      case STATE_DATA:
        if(msg_datapos < sizeof(msg_data))
          msg_data[msg_datapos] = ch;
        msg_datapos ++;  
        if(msg_datapos == msg_hdr[STATE_SIZE])
          msg_state = STATE_EOM;
        break;
      default:
        msg_state = STATE_SOH;
        break;  
    }   
   
    if(msg_state == STATE_EOM) {
       msg_state = STATE_SOH;
       
       processMessage(msg_hdr[STATE_EXT], msg_hdr[STATE_CMD], msg_data, msg_hdr[STATE_SIZE]);

    }

  }

}
