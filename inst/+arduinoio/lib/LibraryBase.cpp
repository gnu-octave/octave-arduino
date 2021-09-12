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
#include <stdarg.h>

#define ARDUINO_SOH         0xA5

#define STATE_SOH  0
#define STATE_EXT  1
#define STATE_CMD  2
#define STATE_SIZE 3
#define STATE_DATA 4
#define STATE_EOM  5

// some standard(ish) error messages used throughout the addons
const char ERRORMSG_INVALID_NUMBER_OF_ARGS[] PROGMEM = "Invalid number of args";
const char ERRORMSG_UNIMPLEMENTED[] PROGMEM = "Unimplemented feature";
const char ERRORMSG_INVALID_ARGS[] PROGMEM = "Invalid args";
const char ERRORMSG_INVALID_MODE[] PROGMEM = "Invalid mode";
const char ERRORMSG_INVALID_PIN[] PROGMEM = "Invalid pin";
const char ERRORMSG_INVALID_DEVICE[] PROGMEM = "Invalid device id";

static const char ERRORMSG_UNKNOWN_CMDID[] PROGMEM = "Unknown cmdID";

const char *
OctaveLibraryBase::getLibraryName () const
{
  return libName.c_str ();
}

void
OctaveLibraryBase::setup ()
{
}

void
OctaveLibraryBase::loop ()
{
}

void OctaveLibraryBase::commandHandler(byte cmdID, byte* inputs, unsigned int payload_size)
{
  commandHandler((uint8_t)cmdID, (uint8_t*)inputs, (uint8_t)payload_size);
}

void OctaveLibraryBase::commandHandler(uint8_t cmdID, uint8_t* inputs, uint8_t payload_size)
{
  sendErrorMsg_P(ERRORMSG_UNIMPLEMENTED);
}

void
OctaveLibraryBase::sendResponseMsg (uint8_t cmdID, const uint8_t *data, uint8_t sz)
{
  OCTAVE_COMMS_PORT.write ((uint8_t)ARDUINO_SOH);
  OCTAVE_COMMS_PORT.write ((uint8_t)id);
  OCTAVE_COMMS_PORT.write (cmdID);
  OCTAVE_COMMS_PORT.write (sz);
  if(sz)
    {
      OCTAVE_COMMS_PORT.write (data, sz);
    }
  // flush appears to lockup port in some devices
  //OCTAVE_COMMS_PORT.flush ();
}

void
OctaveLibraryBase::sendWaitMsg ()
{
  sendResponseMsg (ARDUINO_WAIT, NULL, 0);
}

void
OctaveLibraryBase::sendErrorMsg (const char *err)
{
  // work out len to max 200
  int len = 0;
  while(err[len] != '\0' && len < 200) len++;

  sendResponseMsg (ARDUINO_ERROR, (uint8_t *)err, len);
}

void
OctaveLibraryBase::debugPrint (const char *err, ...)
{
  char buffer[201];
  va_list args;
  va_start (args, err);
  vsnprintf (buffer,200,err, args);
  va_end (args);

  // work out len to max 200
  int len = 0;
  while(buffer[len] != '\0' && len < 200) len++;

  sendResponseMsg (ARDUINO_DEBUG, (uint8_t *)buffer, len);
}

void
OctaveLibraryBase::sendResponseMsg_P (uint8_t cmdID, const uint8_t *data PROGMEM, uint8_t sz)
{
  char tmp[256];

  for (int i=0;i<sz;i++) 
    {
      tmp[i] = pgm_read_byte_near (data+i);
    }

  sendResponseMsg (cmdID, (uint8_t *)tmp, sz);
}


void
OctaveLibraryBase::sendErrorMsg_P (const char *err PROGMEM)
{
  // work out len to max 200
  char tmp[200];
  int ch;
  int len = 0;

  ch = pgm_read_byte_near (err);
  while (ch != '\0' && len < 200) 
    {
      tmp[len] = ch;
      len ++;
      ch = pgm_read_byte_near(err+len);
    }

  sendResponseMsg (ARDUINO_ERROR, (uint8_t *)tmp, len);
}

void
OctaveLibraryBase::sendUnknownCmdIDMsg ()
{
  sendErrorMsg_P (ERRORMSG_UNKNOWN_CMDID);
}

void
OctaveLibraryBase::sendInvalidNumArgsMsg ()
{
  sendErrorMsg_P (ERRORMSG_INVALID_NUMBER_OF_ARGS);
}

OctaveArduinoClass::OctaveArduinoClass ()
{
  for (int i=0;i<MAX_ARDUINO_LIBS;i++)
    libs[i] = 0;

  libcount = 0;
  msg_state = STATE_SOH;
}

const char *
OctaveArduinoClass::getLibName (uint8_t idx) const
{
  if (idx >= 0 && idx < libcount)
    {
      return libs[idx]->libName.c_str ();
    }
  return "";
}

uint8_t
OctaveArduinoClass::registerLibrary (LibraryBase *lib)
{
  if (libcount < MAX_ARDUINO_LIBS)
    {
      lib->id = libcount;
      libs[libcount] = lib;
      libcount ++;
      return libcount-1;
    }
  return 255;
}

uint8_t
OctaveArduinoClass::processMessage (uint8_t libid, uint8_t cmd, uint8_t *data, uint8_t sz)
{
  if (libid >= MAX_ARDUINO_LIBS || libs[libid] == 0)
    {
      if(libcount > 0)
        libs[0]->sendErrorMsg_P(ERRORMSG_UNIMPLEMENTED);
    }
  else
    {
      libs[libid]->commandHandler((byte)cmd, (byte *)data, (unsigned int)sz);
      return 1;
    }
  return 0; 
}

void
OctaveArduinoClass::init () 
{
  OCTAVE_COMMS_PORT.begin (9600);

  for (int i=0; i<libcount; i++)
  {
    libs[i]->setup ();
  }
}

void
OctaveArduinoClass::runLoop()
{
  int ch;

  if (OCTAVE_COMMS_PORT.available())
    {
    
      ch = OCTAVE_COMMS_PORT.read();

      switch (msg_state)
        {
          case STATE_SOH: 
            msg_hdr[STATE_SOH] = ch;
            if (ch == ARDUINO_SOH)
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
            if (ch > 0)
              msg_state = STATE_DATA;
            else
              msg_state = STATE_EOM;
            break;
          case STATE_DATA:
            if (msg_datapos < sizeof(msg_data))
              msg_data[msg_datapos] = ch;
            msg_datapos ++;  
            if (msg_datapos == msg_hdr[STATE_SIZE])
              msg_state = STATE_EOM;
            break;
          default:
            msg_state = STATE_SOH;
            break;  
        }   
   
      if(msg_state == STATE_EOM)
        {
          msg_state = STATE_SOH;
       
          processMessage (msg_hdr[STATE_EXT], msg_hdr[STATE_CMD], msg_data, msg_hdr[STATE_SIZE]);
        }
    }

  for (int i=0; i<libcount; i++)
    {
      libs[i]->loop();
    }
}

