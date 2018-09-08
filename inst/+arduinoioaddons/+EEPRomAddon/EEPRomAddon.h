/*
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
 * along with this program.  If not, see
 * <https://www.gnu.org/licenses/>.
 */

#include "LibraryBase.h"
#include <EEPROM.h> // arduino liquid crystal library

#define EEPROM_INIT        0x00
#define EEPROM_ERASE       0x01
#define EEPROM_READ        0x02
#define EEPROM_WRITE       0x03

class EEPRom : public LibraryBase
{
public:
  EEPRom(OctaveArduinoClass& a)
  {
    libName = "EEPRomAddon/EEProm";
    a.registerLibrary(this);
  }
  void commandHandler(uint8_t cmdId, uint8_t* data, uint8_t datasz)
  {
    switch(cmdId)
    {
      case EEPROM_INIT:
      {
	 uint16_t sz = EEPROM.length();
	 data[0] = (sz>>8)&0xff;
	 data[1] = (sz)&0xff;
	 sendResponseMsg(cmdId, data, 2);
	 break;
      }
      case EEPROM_ERASE:
      {
	 for (int a=0;a<EEPROM.length();a++) {
	   EEPROM.update(a, 0xff);
	 }
	 sendResponseMsg(cmdId, 0, 0);
	 break;
      }
      case EEPROM_READ:
      {
	 if(datasz == 2)
	 {
	   uint16_t addr = (uint16_t(data[0])<<8) | data[1];
           data[0] = EEPROM.read(addr);
	   sendResponseMsg(cmdId, data, 1);
	 }
	 else
	 {
	   sendInvalidNumArgsMsg();
	 }
	 break;
      }
      case EEPROM_WRITE:
      {
	 if(datasz == 3)
	 {
	   uint16_t addr = (uint16_t(data[0])<<8) | data[1];
	   EEPROM.update(addr, data[2]);
	   sendResponseMsg(cmdId, 0, 0);
	 }
	 else
	 {
	   sendInvalidNumArgsMsg();
	 }
	 break;
      }
      default:
      {
        // notify of invalid cmd
        sendUnknownCmdIDMsg();
      }
      break;
    }
  }
};
