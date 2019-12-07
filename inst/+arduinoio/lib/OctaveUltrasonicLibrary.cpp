/*
 * Octave arduino ultrasonic interface
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
#include "OctaveUltrasonicLibrary.h"

#define ARDUINO_CONFIG_ULTRASONIC     1
#define ARDUINO_READ_ULTRASONIC       2

static const char ERRORMSG_INVALID_ARGS[] PROGMEM = "Invalid args";
static const char ERRORMSG_CANT_READ[] PROGMEM = "Max ultrasonics reached";

#ifdef USE_ULTRASONIC

#define MAX_ULTRASONICS 4
class Ultrasonic
{
  #define USED 1
public:
  uint8_t flags;
  uint8_t pins[2];
  uint8_t state;

  Ultrasonic ();
  uint8_t init (uint8_t p1, uint8_t p2);
  uint8_t free () { flags = 0; return 0;}
  uint32_t read ();
};

Ultrasonic::Ultrasonic ()
{
  flags = 0;
}

uint8_t
Ultrasonic::init (uint8_t p1, uint8_t p2=0xff)
{
  flags = USED;

  pins[0] = p1;
  pins[1] = p2;

  if(p1 == p2)
    pins[1] = 0xff;
  
  pinMode (pins[0], OUTPUT); 
  digitalWrite (pins[0], LOW);

  if (pins[1] != 0xff)
    {
      pinMode (pins[1], INPUT);
      digitalWrite (pins[1], LOW);
    }

  return 0;
}

uint32_t
Ultrasonic::read ()
{
  uint32_t duration;

  digitalWrite (pins[0], LOW);
  delayMicroseconds (5);

  // Sets the trigPin on HIGH state for 10 micro seconds
  digitalWrite (pins[0], HIGH);
  delayMicroseconds (10);
  digitalWrite (pins[0], LOW);

  if (pins[1] == 0xff)
    {
      pinMode (pins[0], INPUT); 
      duration = pulseIn(pins[0], HIGH, 250);
      pinMode (pins[0], OUTPUT); 
    }
  else
    {
      // Reads the echoPin, returns the sound wave travel time in microseconds
      duration = pulseIn (pins[1], HIGH); //, 250);
    }

  return duration;
}

static Ultrasonic ultrasonics[MAX_ULTRASONICS];

Ultrasonic *
getUltrasonic (uint8_t id)
{
  uint8_t i;
  Ultrasonic * unused = 0;

  for (i=0; i<MAX_ULTRASONICS; i++) 
    {
      if (ultrasonics[i].flags) 
        {
          if (ultrasonics[i].pins[0] == id)
            return &ultrasonics[i];
        }
      else if (!unused)
        {
          unused = &ultrasonics[i];
        }
    }
  return unused;
}

#endif

OctaveUltrasonicLibrary::OctaveUltrasonicLibrary (OctaveArduinoClass &oc) 
{
  libName = "Ultrasonic";

  oc.registerLibrary (this);
}

void
OctaveUltrasonicLibrary::commandHandler (uint8_t cmdID, uint8_t* data, uint8_t datasz)
{
  switch (cmdID) 
    {
#ifdef USE_ULTRASONIC
      case ARDUINO_CONFIG_ULTRASONIC:
        {
          // 0 = id/triggerpin
          // 1 - enable/alloc
          // 2 = echo pin (optional)
          Ultrasonic * reg = getUltrasonic (data[0]);
          if (reg) 
            {
              // alloc
              if (data[1] == 1 && datasz == 2)
                {
                  reg->init (data[0]);
        
	          sendResponseMsg (cmdID,data, 2);
                }
	      else if(data[1] == 1 && datasz == 3)
                {
                  reg->init (data[0], data[2]);
        
	          sendResponseMsg (cmdID,data, 2);
                }
              // free
              else if (data[1] == 0 && reg->flags && datasz == 2)
                {
                  reg->free ();

	          sendResponseMsg(cmdID,data, 2);
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
      case ARDUINO_READ_ULTRASONIC:
        {
          // 0 = id
          Ultrasonic * reg = getUltrasonic (data[0]);
          if (reg && datasz == 1) 
            {
              uint32_t v = reg->read ();

              data[1] = (v>>24)&0xff;
              data[2] = (v>>16)&0xff;
              data[3] = (v>>8)&0xff;
              data[4] = (v)&0xff;

	      datasz = 5;

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

