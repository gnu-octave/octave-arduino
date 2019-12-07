/*
 * Octave arduino i2c interface
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
#include "OctaveI2CLibrary.h"

#define ARDUINO_SCANI2C     0
#define ARDUINO_CONFIGI2C   1
#define ARDUINO_WRITEI2C    2
#define ARDUINO_READI2C     3
#define ARDUINO_WRITEI2CREG 4
#define ARDUINO_READI2CREG  5

#ifdef USE_I2C
#include <Wire.h>
static uint8_t i2c_enabled = false;
static uint8_t i2c_address = 0;
#endif

OctaveI2CLibrary::OctaveI2CLibrary (OctaveArduinoClass &oc) 
{
  libName = "I2C";

  oc.registerLibrary (this);
}

void
OctaveI2CLibrary::commandHandler (uint8_t cmdID, uint8_t* data, uint8_t datasz)
{
  switch (cmdID)
    {
#ifdef USE_I2C
      case ARDUINO_WRITEI2C:
      case ARDUINO_WRITEI2CREG:
        {
          if (datasz < 2 || datasz > 32)
            {
              // address
              // data
              sendInvalidNumArgsMsg ();
            }
          else
            {
              Wire.beginTransmission (data[0]); // should be i2c_address

              byte c;
              for(c=1;c<datasz;c++)
                Wire.write (data[c]);

              Wire.endTransmission ();

              data[1] = 1;
              sendResponseMsg (cmdID,data, 2);
            }
          break;
        }
      case ARDUINO_READI2C:
        {
          if (datasz != 2)
            {
              // address
              // numbytes
              sendInvalidNumArgsMsg ();
            }
          else
            {
              Wire.requestFrom (data[0], (size_t)data[1]);
              byte c = 0;
              byte l = data[1];

              if (l > 5) sendWaitMsg ();

              datasz = 1;
              for (c=0;c<=l;c++)
                {
                  if (Wire.available ())
                    {
                      data[datasz] = Wire.read ();
                      datasz ++;
                    }
                }
              sendResponseMsg (cmdID,data, datasz);
            }
          break;
        }
      case ARDUINO_READI2CREG:
        {
          if (datasz < 4)
            {
              // address
              // regsz
              // reg
              // numbytes
              sendInvalidNumArgsMsg ();
             }
           else if (datasz != data[1]+3)
             {
               sendInvalidNumArgsMsg ();
             }
           else
             {
               Wire.beginTransmission (data[0]);
               byte c = 0;
               for (c=0;c<data[1];c++)
                 {
                   Wire.write (data[2+c]);
                 }
               Wire.endTransmission (false);

               byte l = data[2+data[1]];
               Wire.requestFrom (data[0], (size_t)l);

	       if(l > 5) sendWaitMsg ();

               datasz = 2;
               for (c=0;c<=l;c++)
                 {
                   if (Wire.available ())
                     {
                       data[datasz] = Wire.read ();
                       datasz ++;
                     }
                 }
               sendResponseMsg (cmdID,data, datasz);
             }
           break;
        }
      case ARDUINO_SCANI2C:
        {
          if (datasz != 2)
            {
              sendInvalidNumArgsMsg ();
            }
          else
            {
              byte error;
              // bus 0
              // address

              if (!i2c_enabled)
                Wire.begin ();

              Wire.beginTransmission (data[1]);
              error = Wire.endTransmission ();

              if (error == 0)
                data[2] = 1;
              else
                data[2] = 0;

              if (!i2c_enabled)
                Wire.end ();

              sendResponseMsg (cmdID, data, 3);
            }

          break;
        }
      case ARDUINO_CONFIGI2C:
        {
          if (datasz == 2 || datasz == 3 || datasz == 5)
            {
              // i2c id   0
              // enable   1
              // i2caddress (optional)
              // bitratehi 
              // birtarelo

              // enable
              if (data[1] == 1) 
                {
                  i2c_enabled = 1;

#if defined(ARDUINO_AVR_NANO_EVERY)
                  // arduino every A4,A5 pin is connected to 2 pins each on the micro controller
                  // so need ensure that the non I2C pins are pulled hi so doesnt effect the i2c pins
                  pinMode(18, INPUT_PULLUP);
                  pinMode(19, INPUT_PULLUP);
#endif

                  if (datasz>= 3)
                    i2c_address = data[2];
                  else
                    i2c_address = 0;

                  if (i2c_address > 0)
                    Wire.begin (i2c_address);
                  else
                    Wire.begin ();

                  if (datasz == 5) 
                    {
                      int32_t bitrate = (((uint32_t)data[3])<<8) | ((uint32_t)data[4]);
                      Wire.setClock (bitrate*1000L);
                    }
                }
              else 
                {
                  Wire.end ();
                  i2c_enabled = 0;
                }

              sendResponseMsg (cmdID,data, datasz);
            }
          else if (datasz == 1)
            {
              // query config of device
              // spi id
              // enable
              // address
              data[1] = i2c_enabled;
              data[2] = i2c_address;
              sendResponseMsg (cmdID,data, 3);
            }
          else
            {
              sendInvalidNumArgsMsg ();
            }
          break;
        }
#endif
      default:
        sendUnknownCmdIDMsg ();
        break;
    }
}
