/*
 * Octave arduino shift register interface
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
#include "OctaveShiftRegisterLibrary.h"

#define ARDUINO_RESET_SHIFTREG  0
#define ARDUINO_CONFIG_SHIFTREG 1
#define ARDUINO_WRITE_SHIFTREG  2
#define ARDUINO_READ_SHIFTREG   3

#define TYPE_74HC164 0
// input p2s
#define TYPE_74HC165 1
// output s2p
#define TYPE_74HC595 2


#define SER_74HC595_DATA   0
#define SER_74HC595_CLK    1
#define SER_74HC595_LATCH  2
#define SER_74HC595_RESET  3

#define SER_74HC165_DATA   0
#define SER_74HC165_CLK    1
#define SER_74HC165_LOAD   2
#define SER_74HC165_CLOCKEN  3

#define SER_74HC164_DATA   0
#define SER_74HC164_CLK    1
#define SER_74HC164_RESET  2

static const char ERRORMSG_INVALID_ARGS[] PROGMEM = "Invalid args";
static const char ERRORMSG_CANT_READ[] PROGMEM = "This register cant not read";
static const char ERRORMSG_CANT_WRITE[] PROGMEM = "This register can not write";

#ifdef USE_SHIFTREG

#define MAX_SHIFT_REGISTERS 8
class ShiftRegister
{
public:
  uint8_t used;
  uint8_t type;
  uint8_t pins[6];

  ShiftRegister ();
  bool canread ();
  bool canwrite ();
  uint8_t init ();
  uint8_t csenable (bool en);
  uint8_t latch ();
  uint8_t read ();
  uint8_t free () { used = 0; return 0;}
  uint8_t write (uint8_t);
  uint8_t reset ();
};

ShiftRegister::ShiftRegister ()
{
  used = 0;
}

bool
ShiftRegister::canread ()
{
  return (type == TYPE_74HC165);
}

bool
ShiftRegister::canwrite ()
{
  return (type == TYPE_74HC164 || type == TYPE_74HC595);
}

uint8_t
ShiftRegister::init ()
{
  // depends on type of what need do
  if (type == TYPE_74HC164)
    {
      pinMode (pins[SER_74HC164_DATA], OUTPUT); 
      pinMode (pins[SER_74HC164_CLK], OUTPUT);
    
      // have reset pin
      if (used  > SER_74HC164_RESET) 
        {  
          pinMode (pins[SER_74HC164_RESET], OUTPUT); 
          digitalWrite (pins[SER_74HC164_RESET], LOW); 
        }

      digitalWrite (pins[SER_74HC595_CLK], LOW);

      if (used > SER_74HC164_RESET)
        {
          // have reset pin - so unset clr
          digitalWrite (pins[SER_74HC164_RESET], HIGH);
        } 
    }
  
  if (type == TYPE_74HC165) 
    {
      // serial data is input
      pinMode (pins[SER_74HC165_DATA], INPUT);
      // init with clock and load high
      pinMode (pins[SER_74HC165_CLK], OUTPUT);
      pinMode (pins[SER_74HC165_LOAD], OUTPUT);

      digitalWrite (pins[SER_74HC165_CLK], HIGH);
      digitalWrite (pins[SER_74HC165_LOAD], HIGH);
    }

  if (type == TYPE_74HC595) 
    {
      pinMode (pins[SER_74HC595_DATA], OUTPUT); 
      pinMode (pins[SER_74HC595_CLK], OUTPUT); // clk
      pinMode (pins[SER_74HC595_LATCH], OUTPUT); // latch
    
      // have reset pin
      if (used  > SER_74HC595_RESET) 
        {  
          pinMode (pins[SER_74HC595_RESET], OUTPUT); // reset (optional)
          digitalWrite (pins[SER_74HC595_RESET], LOW); 
        }
      // clock start high
      digitalWrite (pins[SER_74HC595_CLK], LOW);
      // latch
      digitalWrite (pins[SER_74HC595_LATCH], LOW);

      // have reset pin - so unset clr
      if (used > SER_74HC595_RESET) 
        { 
          digitalWrite (pins[SER_74HC595_RESET], HIGH);
        } 
    }

  return 0;
}

uint8_t
ShiftRegister::csenable (bool en)
{
  if (type == TYPE_74HC164) 
    {
      // nothing to do
    } 
  else if (type == TYPE_74HC165) 
    {
      // enable the clock with clockenalepin
      digitalWrite (pins[SER_74HC165_CLOCKEN], en ? LOW : HIGH); 
    }
  else if (type == TYPE_74HC595)
    {
      // nothing to do
    }

  return 0;
}

uint8_t
ShiftRegister::latch ()
{
  if (type == TYPE_74HC164) 
    {
      // no latch
    }
  else if (type == TYPE_74HC165) 
    {
      // trigger loading, by toggle on loadpin
      digitalWrite (pins[SER_74HC165_LOAD], LOW);
      delayMicroseconds (5);

      digitalWrite (pins[SER_74HC165_LOAD], HIGH);
      delayMicroseconds (5);
  }
  else if (type == TYPE_74HC595) 
    {
      // latches on rising edge
      digitalWrite (pins[SER_74HC595_LATCH], HIGH);
      delayMicroseconds (5);

      digitalWrite (pins[SER_74HC595_LATCH], LOW);
      delayMicroseconds (5);
    }

  return 0;
}

uint8_t
ShiftRegister::read ()
{
  uint8_t val = 0;

  if (type == TYPE_74HC165) 
    {
      val = shiftIn(pins[SER_74HC165_DATA], pins[SER_74HC165_CLK], MSBFIRST);
    }

  return val;
}

uint8_t
ShiftRegister::write (uint8_t d)
{
  if (type == TYPE_74HC595) 
    {
      shiftOut (pins[SER_74HC595_DATA], pins[SER_74HC595_CLK], MSBFIRST, d);
      return 1;
    }
  if (type == TYPE_74HC164) 
    {
      shiftOut (pins[SER_74HC164_DATA], pins[SER_74HC164_CLK], MSBFIRST, d);
      return 1;
    }

  return 0;
}

uint8_t
ShiftRegister::reset ()
{
  if (type == TYPE_74HC595)
    {
      // have reset pin - so unset clr
      if (used > SER_74HC595_RESET) 
      { 
        digitalWrite (pins[SER_74HC595_RESET], LOW);
        delayMicroseconds (5);

        digitalWrite (pins[SER_74HC595_RESET], HIGH);
        delayMicroseconds (5);
 
        return 1;
      } 
    }
  else if (type == TYPE_74HC164) 
    {
      if (used > SER_74HC164_RESET)
      {
        digitalWrite (pins[SER_74HC164_RESET], LOW);
        delayMicroseconds (5);

        digitalWrite (pins[SER_74HC164_RESET], HIGH);
        delayMicroseconds (5);
 
        return 1;
      } 
    }

  return 0;
}

static ShiftRegister shiftregs[MAX_SHIFT_REGISTERS];

ShiftRegister *
getShiftRegister (uint8_t id)
{
  uint8_t i;
  ShiftRegister * unused = 0;

  for (i=0; i<MAX_SHIFT_REGISTERS; i++) 
    {
      if (shiftregs[i].used > 0) 
      {
        if (shiftregs[i].pins[0] == id)
          return &shiftregs[i];
      }
    else if (!unused)
      {
        unused = &shiftregs[i];
      }
  }
  return unused;
}

#endif

OctaveShiftRegisterLibrary::OctaveShiftRegisterLibrary(OctaveArduinoClass &oc) 
{
  libName = "ShiftRegister";

  oc.registerLibrary (this);
}

void
OctaveShiftRegisterLibrary::commandHandler (uint8_t cmdID, uint8_t* data, uint8_t datasz)
{
  switch (cmdID) 
    {
#ifdef USE_SHIFTREG
      case ARDUINO_CONFIG_SHIFTREG:
        {
          // 0 = id/datapin
          // 1 - enable/alloc
          // [ 2 = type
          // 3 = pins []
          // 4 ... ]
          ShiftRegister * reg = getShiftRegister (data[0]);
          if (reg) 
            {
              // alloc
              if (data[1] == 1 && datasz >= 4)
                {
                  // data = DATAPIN E T CLK PIN? PIN? ...
                  //
                  // DATAPIN (doubles as ID)
                  // E = enable (1 vs 0) ie: alloc/free
                  // T = type 0 = 74HC164, ...
                  // CLK clock pin
                  // otherpins

                  // pins used  = pins defined
                  reg->used = datasz - 2;
            
                  // 1st pin is the register id
                  reg->pins[0] = data[0];
                  reg->type = data[2];

                  byte c = 0;
                  for  (c=0; c<reg->used-1; c++) 
                    {
                      reg->pins[c+1] = data[3+c];
                    }
                  reg->init ();
        
	          sendResponseMsg (cmdID, data, 2);
                }
              // free
              else if (data[1] == 0 && reg->used > 0 && datasz == 2)
                {
                  reg->used = 0;
                  reg->free ();

	          sendResponseMsg (cmdID, data, 2);
                }
              else
                {
                  sendErrorMsg_P (ERRORMSG_INVALID_ARGS);
                }
            }
          else 
            {
              sendErrorMsg_P (ERRORMSG_INVALID_ARGS);
            }
          break;
        }
      case ARDUINO_RESET_SHIFTREG:
        {
          // 0 = id (currently using the datapin id)
          ShiftRegister * reg = getShiftRegister (data[0]);
          if (reg && reg->used > 0)
            {
              data[1] = reg->reset ();
              sendResponseMsg (cmdID, data, 2);
            }
          else 
            {
              sendErrorMsg_P (ERRORMSG_INVALID_ARGS);
            }
          break;
        }
      case ARDUINO_WRITE_SHIFTREG:
        {
          // 0 = id
          // byte 0
          // [byte1....]
          ShiftRegister * reg = getShiftRegister(data[0]);
          if  (reg && reg->used > 0 && datasz >= 2)
            {
              if (reg->canwrite())
                {
                  reg->csenable (true);
                  byte c = 0;
                  for (c=1; c<datasz; c++)
                    {
                      reg->write (data[c]);
                    }
                  // num bytes wrote
                  data[1] = datasz-1;
                  datasz = 2;

                  reg->latch ();
                  reg->csenable (false);

                  sendResponseMsg (cmdID, data, datasz);
                }
              else 
                { 
                  // chip cant do write
                 sendErrorMsg_P (ERRORMSG_CANT_WRITE);
                }
            }
          else 
            {
              sendErrorMsg_P (ERRORMSG_INVALID_ARGS);
            }
          break;
        }
      case ARDUINO_READ_SHIFTREG:
        {
          // 0 = id
          // 1 = numbytes
          ShiftRegister * reg = getShiftRegister (data[0]);
          if (reg && reg->used > 0 && datasz == 2) 
            {
              if (reg->canread ()) 
                {
                  reg->csenable (true);
                  reg->latch ();
                  byte c = 0;
                  datasz = data[1];
                  for (c=1; c<datasz; c++)
                    {
                      data[c] = reg->read ();
                    }
                  reg->csenable (false);
        
	          sendResponseMsg (cmdID, data, datasz);
                }
              else
                {
                  // cant read
                  sendErrorMsg_P( ERRORMSG_CANT_READ);
                }
            }
          else 
            {
              sendErrorMsg_P (ERRORMSG_INVALID_ARGS);
            }
 
          break;
        }
#endif
      default:
        sendUnknownCmdIDMsg ();
        break;
    }
}
