/*
 * Octave arduino encoder interface
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
#include "OctaveRotaryEncoderLibrary.h"

#define ARDUINO_RESET_ENCODER      0
#define ARDUINO_CONFIG_ENCODER     1
#define ARDUINO_READPOS_ENCODER    2
#define ARDUINO_READSPEED_ENCODER  3

static const char ERRORMSG_INVALID_ARGS[] PROGMEM = "Invalid args";
static const char ERRORMSG_CANT_READ[] PROGMEM = "Max encoder reached";

static int8_t enc_states[] = {0,-1,1,0,1,0,0,-1,-1,0,0,1,0,1,-1,0};

#ifdef USE_ROTARYENCODER

#define MAX_ROTARYENCODERS 8
class RotaryEncoder
{
  #define USED 1
  #define POLL 2
public:
  uint8_t flags;
  uint8_t pins[2];
  int16_t cnt;
  int16_t oldcnt;
  uint16_t speed;
  uint8_t state;

  RotaryEncoder();
  uint8_t init (uint8_t p1, uint8_t p2);
  uint8_t free() { flags = 0; return 0;}
  uint16_t readCount ();
  uint16_t readSpeed ();
  uint8_t resetCount (uint8_t h=0, uint8_t l=0);

  void poll ();
  void process (unsigned long diff);
};

RotaryEncoder::RotaryEncoder ()
{
  flags = 0;
}

uint8_t
RotaryEncoder::init (uint8_t p1, uint8_t p2)
{
  flags = USED | POLL;
  state = 0;
  cnt = 0;
  oldcnt = 0;

  pins[0] = p1;
  pins[1] = p2;
  
  pinMode (pins[0], INPUT); 
  digitalWrite (pins[0], HIGH);
  pinMode (pins[1], INPUT);
  digitalWrite (pins[1], HIGH);
    
  return 0;
}

uint16_t
RotaryEncoder::readCount ()
{
  return cnt;
}

uint16_t
RotaryEncoder::readSpeed ()
{
  return speed;
}

uint8_t
RotaryEncoder::resetCount (uint8_t h, uint8_t l)
{
  uint16_t v= ((uint16_t)h)<<8 | l;
  cnt = (int16_t)v;
  oldcnt = cnt;
  return 0;
}

void
RotaryEncoder::poll ()
{
  // get curr state and prev state - gives 16 possible outcomes
  // wheich can then do a lookup table for detection
  state = (state<<2) | (digitalRead(pins[1]) ? 2 : 0) | (digitalRead(pins[0]) ? 1 : 0);
  int8_t dir = enc_states[state&0xf];
  if(dir < 0 && cnt > -32000) cnt += dir;
  if(dir > 0 && cnt < 32000) cnt += dir;
}

void
RotaryEncoder::process (unsigned long t)
{
  //input millis

  long s = ((cnt - oldcnt) * 1000) / t;
  if(s < 0) s = -s;

  if(s > 32000) s = 32000;

  if(s != 0)
    speed = s;
  else if(speed > 0)
    speed --;
  
  oldcnt = cnt;
}

static RotaryEncoder encoders[MAX_ROTARYENCODERS];

RotaryEncoder *
getRotaryEncoder (uint8_t id)
{
  uint8_t i;
  RotaryEncoder * unused = 0;

  for (i=0;i<MAX_ROTARYENCODERS;i++) 
    {
      if (encoders[i].flags) 
        {
          if (encoders[i].pins[0] == id)
            return &encoders[i];
        }
      else if (!unused)
        {
          unused = &encoders[i];
        }
    }
  return unused;
}

#endif

OctaveRotaryEncoderLibrary::OctaveRotaryEncoderLibrary (OctaveArduinoClass &oc) 
{
  libName = "RotaryEncoder";

  oc.registerLibrary (this);
}

void
OctaveRotaryEncoderLibrary::commandHandler (uint8_t cmdID, uint8_t* data, uint8_t datasz)
{
  int val;
    
  switch (cmdID) 
    {
#ifdef USE_ROTARYENCODER
    case ARDUINO_CONFIG_ENCODER:
      {
        // 0 = id/pina
        // 1 - enable/alloc
        // 2 = pinb
        RotaryEncoder * reg = getRotaryEncoder (data[0]);
        if (reg) 
          {
            // alloc
            if (data[1] == 1 && datasz == 3)
              {
                reg->init(data[0], data[2]);
        
                sendResponseMsg (cmdID, data, 2);
              }
            // free
            else if (data[1] == 0 && reg->flags && datasz == 2)
              {
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
    case ARDUINO_RESET_ENCODER:
      {
        // 0 = id (currently using the datapin id)
        RotaryEncoder * reg = getRotaryEncoder(data[0]);
        if(reg && reg->flags)
          {
            data[1] = reg->resetCount (data[1], data[2]);
            sendResponseMsg (cmdID,data, 2);
          }
        else 
          {
            sendErrorMsg_P (ERRORMSG_INVALID_ARGS);
          }
        break;
      }
    case ARDUINO_READPOS_ENCODER:
      {
        // 0 = id
        // 1 = reset flag
        RotaryEncoder * reg = getRotaryEncoder (data[0]);
        if(reg && reg->flags && datasz == 2) 
          {
            uint16_t v = reg->readCount ();

            if (data[1] == 1)
              reg->resetCount();

            data[1] = (v>>8)&0xff;
            data[2] = (v)&0xff;

	    unsigned long t = millis ();

            data[3] = (t>>24)&0xff;
            data[4] = (t>>16)&0xff;
            data[5] = (t>>8)&0xff;
            data[6] = (t)&0xff;

            datasz = 7;

            sendResponseMsg (cmdID, data, datasz);
          }
        else 
          {
            sendErrorMsg_P (ERRORMSG_INVALID_ARGS);
          }
 
        break;
      }
    case ARDUINO_READSPEED_ENCODER:
      {
        // 0 = id
        RotaryEncoder * reg = getRotaryEncoder (data[0]);
        if(reg && reg->flags && datasz == 1) 
          {
            uint16_t v = reg->readSpeed ();

            datasz = 3;
            data[1] = (v>>8)&0xff;
            data[2] = (v)&0xff;

            sendResponseMsg (cmdID, data, datasz);
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

void
OctaveRotaryEncoderLibrary::loop ()
{
#ifdef USE_ROTARYENCODER
  static unsigned long speedtime = 0;
  unsigned long newtime;

  // any thing that needs poll
  for (int i=0; i<MAX_ROTARYENCODERS; i++)
    {
       RotaryEncoder *enc = &encoders[i];
       if(enc->flags & POLL)
         {
           enc->poll();
         }
    }

  // do any periodic processing
  newtime = millis();
  if (speedtime < newtime)
    {
      unsigned long diff = (newtime - speedtime);
    
      if (diff > 50)
        {
          speedtime = newtime;

          for (int i=0; i<MAX_ROTARYENCODERS; i++)
            {
              RotaryEncoder *enc = &encoders[i];
              if (enc->flags)
                enc->process(diff); 
	    }
        }
    }
  else if (speedtime > newtime)
    {
      speedtime = newtime;
    }
#endif
}
