/*
 * Copyright (C) 2022 John Donoghue <john.donoghue@ieee.org>
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

#include "SimpleStepperAddon.h"

class AddonStepper
{
public:
  uint8_t id;
  uint8_t curr_step;
  int8_t direction;

  uint8_t num_pins;
  uint8_t pins[5];

  unsigned long steps_to_do;

  unsigned long ticksperstep;
  unsigned long laststeptick;

  AddonStepper() { num_pins=0; id=0;}

  uint8_t status() const
  {
    uint8_t s = 0;
    if (num_pins)
      {
        if (direction)
          s = 2;
        if (steps_to_do)
	  s = 1;
      }
    return s;
  }

  unsigned getStepsLeft() const
  {
    return steps_to_do;
  }

  void setTicksPerStep(unsigned long ticks)
  {
    if(ticks == 0)
      {
        direction = 0;
        steps_to_do = 0;
      }
    else
      {
        ticksperstep = ticks;    
      }
  }
  unsigned long getTicksPerStep() const
  {
    return ticksperstep;
  }

  bool attach(uint8_t id, uint8_t pin1, uint8_t pin2, uint8_t pin3, uint8_t pin4)
  {
    detach();

    this->id = id;

    num_pins = 4;

    pins[0] = pin1;
    pins[1] = pin2;
    pins[2] = pin3;
    pins[3] = pin4;

    pinMode(pins[0], OUTPUT);
    pinMode(pins[1], OUTPUT);
    pinMode(pins[2], OUTPUT);
    pinMode(pins[3], OUTPUT);
    
    direction = 0;
    laststeptick = 0;
    curr_step = 0;

    ticksperstep = 1000000L;
    steps_to_do = 0;

    return true;
  }

  bool attach(uint8_t id, uint8_t pin1, uint8_t pin2, uint8_t pin3, uint8_t pin4, uint8_t pin5)
  {
    detach();

    this->id = id;

    num_pins = 5;

    pins[0] = pin1;
    pins[1] = pin2;
    pins[2] = pin3;
    pins[3] = pin4;
    pins[4] = pin5;

    pinMode(pins[0], OUTPUT);
    pinMode(pins[1], OUTPUT);
    pinMode(pins[2], OUTPUT);
    pinMode(pins[3], OUTPUT);
    pinMode(pins[4], OUTPUT);
    
    direction = 0;
    laststeptick = 0;
    curr_step = 0;

    ticksperstep = 1000000L;
    steps_to_do = 0;

    return true;
  }

  void detach()
  {
    if (num_pins)
      {
        digitalWrite(pins[0], LOW);
        digitalWrite(pins[1], LOW);
        digitalWrite(pins[2], LOW);
        digitalWrite(pins[3], LOW);
        if (num_pins > 4)
          digitalWrite(pins[4], LOW);
      }
    num_pins = 0;
  }

  void move(long steps)
  {
    direction = 0;

    steps_to_do = abs(steps);
    if (steps < 0)
      {
        direction = -1;
      }
    else 
      {
        direction = 1;
      }
  }

  void rotate(int8_t dir)
  {
    steps_to_do = 0;
    direction = dir;
  }

  void poll()
  {
    if (num_pins)
      {
        unsigned long now = micros();

        if (now - laststeptick >= ticksperstep)
          {
            laststeptick = now;
            if (direction > 0)
              {
                curr_step ++;
              }
            else if (direction < 0)
              {
                if (curr_step == 0)
                  {
                    // dependant on num pins
                    if (num_pins == 4)
                      curr_step = 4;
                    else
                      curr_step = 10;
                  }
                curr_step --;
              }
            else
              {
                // no change in step num
              }

            // mod based on num pins
            if (num_pins == 4)
              {
                curr_step = curr_step % 4;
                step4(curr_step);
              }
            if (num_pins == 5)
              {
                curr_step = curr_step % 10;
                step5(curr_step);
              }

            // moving X steps
            if (direction != 0 && steps_to_do)
              {
                steps_to_do --;
                if (steps_to_do == 0)
                  direction = 0;
              }
          }
      }
  }

  void step5(int step)
  {
    // 5 pin

    switch(step)
      {
        case 0:  // 01101
          digitalWrite(pins[0], LOW);
          digitalWrite(pins[1], HIGH);
          digitalWrite(pins[2], HIGH);
          digitalWrite(pins[3], LOW);
          digitalWrite(pins[4], HIGH);
          break;
        case 1:  // 01001
          digitalWrite(pins[0], LOW);
          digitalWrite(pins[1], HIGH);
          digitalWrite(pins[2], LOW);
          digitalWrite(pins[3], LOW);
          digitalWrite(pins[4], HIGH);
          break;
        case 2:  // 01011
          digitalWrite(pins[0], LOW);
          digitalWrite(pins[1], HIGH);
          digitalWrite(pins[2], LOW);
          digitalWrite(pins[3], HIGH);
          digitalWrite(pins[4], HIGH);
          break;
        case 3:  // 01010
          digitalWrite(pins[0], LOW);
          digitalWrite(pins[1], HIGH);
          digitalWrite(pins[2], LOW);
          digitalWrite(pins[3], HIGH);
          digitalWrite(pins[4], LOW);
          break;
        case 4:  // 11010
          digitalWrite(pins[0], HIGH);
          digitalWrite(pins[1], HIGH);
          digitalWrite(pins[2], LOW);
          digitalWrite(pins[3], HIGH);
          digitalWrite(pins[4], LOW);
          break;
        case 5:  // 10010
          digitalWrite(pins[0], HIGH);
          digitalWrite(pins[1], LOW);
          digitalWrite(pins[2], LOW);
          digitalWrite(pins[3], HIGH);
          digitalWrite(pins[4], LOW);
          break;
        case 6:  // 10110
          digitalWrite(pins[0], HIGH);
          digitalWrite(pins[1], LOW);
          digitalWrite(pins[2], HIGH);
          digitalWrite(pins[3], HIGH);
          digitalWrite(pins[4], LOW);
          break;
        case 7:  // 10100
          digitalWrite(pins[0], HIGH);
          digitalWrite(pins[1], LOW);
          digitalWrite(pins[2], HIGH);
          digitalWrite(pins[3], LOW);
          digitalWrite(pins[4], LOW);
          break;
        case 8:  // 10101
          digitalWrite(pins[0], HIGH);
          digitalWrite(pins[1], LOW);
          digitalWrite(pins[2], HIGH);
          digitalWrite(pins[3], LOW);
          digitalWrite(pins[4], HIGH);
          break;
        case 9:  // 00101
          digitalWrite(pins[0], LOW);
          digitalWrite(pins[1], LOW);
          digitalWrite(pins[2], HIGH);
          digitalWrite(pins[3], LOW);
          digitalWrite(pins[4], HIGH);
          break;
      }
  }

  void step4(int step)
  {
    // 4 pin
    switch(step)
      {
        case 0:  // 1010
          digitalWrite(pins[0], HIGH);
          digitalWrite(pins[1], LOW);
          digitalWrite(pins[2], HIGH);
          digitalWrite(pins[3], LOW);
          break;
        case 1:  // 0110
          digitalWrite(pins[0], LOW);
          digitalWrite(pins[1], HIGH);
          digitalWrite(pins[2], HIGH);
          digitalWrite(pins[3], LOW);
          break;
        case 2:  //0101
          digitalWrite(pins[0], LOW);
          digitalWrite(pins[1], HIGH);
          digitalWrite(pins[2], LOW);
          digitalWrite(pins[3], HIGH);
          break;
        case 3:  //1001
          digitalWrite(pins[0], HIGH);
          digitalWrite(pins[1], LOW);
          digitalWrite(pins[2], LOW);
          digitalWrite(pins[3], HIGH);
          break;
      }
  }
};

#ifndef MAX_SIMPLESTEPPERS
#  define MAX_SIMPLESTEPPERS 4
#endif

static AddonStepper steppers[MAX_SIMPLESTEPPERS];

static AddonStepper *
getStepper (uint8_t id)
{
  uint8_t i;
  AddonStepper * unused = 0;

  for (i=0;i<MAX_SIMPLESTEPPERS;i++) 
    {
      if (steppers[i].num_pins) 
        {
          if (steppers[i].id == id)
            return &steppers[i];
        }
      else if (!unused)
        {
          unused = &steppers[i];
        }
    }
  return unused;
}


#define SIMPLESTEPPERADDON_INIT    0x00
#define SIMPLESTEPPERADDON_MOVE    0x01
#define SIMPLESTEPPERADDON_ROTATE  0x02
#define SIMPLESTEPPERADDON_TICKSPERSTEP 0x03
#define SIMPLESTEPPERADDON_STATUS  0x04
#define SIMPLESTEPPERADDON_RELEASE 0x10
#define SIMPLESTEPPERADDON_STATE   0x20

SimpleStepperAddon::SimpleStepperAddon(OctaveArduinoClass& a)
{
  libName = "SimpleStepper/SimpleStepper";
  a.registerLibrary(this);
}

void SimpleStepperAddon::commandHandler(uint8_t cmdID, uint8_t* data, uint8_t datasz)
{
  switch (cmdID)
    {
      case SIMPLESTEPPERADDON_INIT:
        {
          AddonStepper * stepper = getStepper (data[0]);
          // id + X pins
          if(stepper && datasz == 5)
            {
              stepper->attach(data[0], data[1], data[2], data[3], data[4]);
              sendResponseMsg(cmdID, data, 1);
            }
	  else if(stepper && datasz == 6)
            {
              stepper->attach(data[0], data[1], data[2], data[3], data[4], data[5]);
              sendResponseMsg(cmdID, data, 1);
            }
          else
            {
              // really should be a run out resources error
              sendErrorMsg_P (ERRORMSG_INVALID_ARGS);
            }
          break;
        }
      case SIMPLESTEPPERADDON_RELEASE:
        {
          AddonStepper * stepper = getStepper (data[0]);
          if(stepper && datasz == 1)
            {
              stepper->detach();
              sendResponseMsg(cmdID, data, 1);
            }
          else
            {
              sendErrorMsg_P (ERRORMSG_INVALID_ARGS);
            }

          break;
        }
      case SIMPLESTEPPERADDON_MOVE:
        {
          AddonStepper * stepper = getStepper (data[0]);
          if (stepper && datasz == 5)
            {
              long steps = ((long)data[1] << 24) | ((long)data[2] << 16) | ((long)data[3] << 8) | (long)data[4];
              stepper->move(steps);
              sendResponseMsg(cmdID, data, 1);
             }
          else
            {
              sendErrorMsg_P (ERRORMSG_INVALID_ARGS);
            }
          break;
        }
      case SIMPLESTEPPERADDON_ROTATE:
        {
          AddonStepper * stepper = getStepper (data[0]);
          if (stepper && datasz == 2)
            {
              stepper->rotate((int8_t)data[1]);
              sendResponseMsg(cmdID, data, 1);
            }
          else
            {
              sendErrorMsg_P (ERRORMSG_INVALID_ARGS);
            }
          break;
        }
      case SIMPLESTEPPERADDON_TICKSPERSTEP:
        {
          AddonStepper * stepper = getStepper (data[0]);
          if (stepper && datasz == 5)
            {
              unsigned long ticks = (
                (unsigned long)data[1] << 24) | ((unsigned long)data[2] << 16) |
                ((unsigned long)data[3] << 8) | (unsigned long)data[4];

              stepper->setTicksPerStep(ticks);
              sendResponseMsg(cmdID, data, 1);
            }
          else if(stepper && datasz == 1)
            {
              unsigned long t = stepper->getTicksPerStep();

              data[1] = (t>>24)&0xff;
              data[2] = (t>>16)&0xff;
              data[3] = (t>>8)&0xff;
              data[4] = (t)&0xff;

              datasz = 5;

              sendResponseMsg (cmdID, data, datasz);
 
            }
          else
            {
              sendErrorMsg_P (ERRORMSG_INVALID_ARGS);
            }
          break;
        }

      case SIMPLESTEPPERADDON_STATUS:
        {
          AddonStepper * stepper = getStepper (data[0]);
          if (stepper && datasz == 1)
            {
              data[1] = stepper->status();

              sendResponseMsg (cmdID, data, 2);
            }
          else
            {
              sendErrorMsg_P (ERRORMSG_INVALID_ARGS);
            }
          break;
        }

      case SIMPLESTEPPERADDON_STATE:
        {
          AddonStepper * stepper = getStepper (data[0]);
          if (stepper && datasz == 1)
            {
              data[1] = stepper->num_pins;
              data[2] = stepper->pins[0];
              data[3] = stepper->pins[1];
              data[4] = stepper->pins[2];
              data[5] = stepper->pins[3];
              data[6] = stepper->pins[4];
              data[7] = stepper->status();
              data[8] = stepper->direction;

             unsigned long t = stepper->steps_to_do;
             data[9] = (t>>24)&0xff;
             data[10] = (t>>16)&0xff;
             data[11] = (t>>8)&0xff;
             data[12] = (t)&0xff;

             t = stepper->ticksperstep;
             data[13] = (t>>24)&0xff;
             data[14] = (t>>16)&0xff;
             data[15] = (t>>8)&0xff;
             data[16] = (t)&0xff;

             t = stepper->laststeptick;
             data[17] = (t>>24)&0xff;
             data[18] = (t>>16)&0xff;
             data[19] = (t>>8)&0xff;
             data[20] = (t)&0xff;

             sendResponseMsg (cmdID, data, 21);
           }
         else
           {
             sendErrorMsg_P (ERRORMSG_INVALID_ARGS);
           }

          break;
        }

      default:
        {
          // notify of invalid cmd
          sendUnknownCmdIDMsg();
        }
    }
}

void SimpleStepperAddon::loop()
{
  for (int i = 0;i<MAX_SIMPLESTEPPERS;i++)
    {
      steppers[i].poll();
    }
}
