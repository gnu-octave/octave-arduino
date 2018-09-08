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
#include <LiquidCrystal.h> // arduino liquid crystal library

static const char LCD_MSG_ALREADY_INITIALIZED[] PROGMEM = "Already initialized";
static const char LCD_MSG_NOT_INITIALIZED[] PROGMEM = "LCD not initialized";

#define LCD_INIT        0x00
#define LCD_FREE        0x01
#define LCD_CLEAR       0x02
#define LCD_PRINT       0x03
#define LCD_SETCURSOR   0x04

class LCD : public LibraryBase
{
private:
  LiquidCrystal *lcd;
public:
  LCD(OctaveArduinoClass& a)
  {
    libName = "ExampleLCD/LCD";
    a.registerLibrary(this);
  }
  void setup()
  {
    lcd = 0;
  }
  void commandHandler(uint8_t cmdId, uint8_t* data, uint8_t datasz)
  {
    switch(cmdId)
    {
      case LCD_INIT:
      {
         // 0 - 5 = pins to use
         if (lcd)
         {
	    sendErrorMsg_P(LCD_MSG_ALREADY_INITIALIZED);
         }
         else if(datasz != 6)
         {
	   sendInvalidNumArgsMsg();
         }
         else
         {
	    // rs enable, d0, d1, d2, d3
	    lcd = new LiquidCrystal(data[0], data[1], data[2], data[3], data[4], data[5]);
	    lcd->begin(16, 2);
	    lcd->clear();

	    sendResponseMsg(cmdId, data, 1);
	 }
	 break;
      }
      case LCD_FREE:
      {
	 if (!lcd)
	 {
	    sendErrorMsg_P(LCD_MSG_NOT_INITIALIZED);
	 }
	 else {
	   delete lcd;
	   lcd = 0;
	   sendResponseMsg(cmdId, 0, 0);
	 }
	 break;
      }
      case LCD_CLEAR:
      {
	 if (!lcd)
	 {
	    sendErrorMsg_P(LCD_MSG_NOT_INITIALIZED);
	 }
	 else
	 {
	    lcd->clear();
	    sendResponseMsg(cmdId, 0, 0);
	 }
	 break;
      }
      case LCD_PRINT:
      {
	 if (!lcd)
	 {
	    sendErrorMsg_P(LCD_MSG_NOT_INITIALIZED);
	 }
	 else if(datasz > 0)
	 {
	    lcd->print((const char *)data);
	    sendResponseMsg(cmdId, 0, 0);
	 }
	 else
	 {
	   sendInvalidNumArgsMsg();
	 }
	 break;
      }
      case LCD_SETCURSOR:
      {
	 if (!lcd)
	 {
	    sendErrorMsg_P(LCD_MSG_NOT_INITIALIZED);
	 }
	 else if(datasz == 2)
	 {
	    lcd->setCursor(data[0], data[1]);
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
