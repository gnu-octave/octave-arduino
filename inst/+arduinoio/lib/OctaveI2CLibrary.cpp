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
// replaces below as diff data format
//#define ARDUINO_WRITEI2C    2
//#define ARDUINO_READI2C     3
//#define ARDUINO_WRITEI2CREG 4
//#define ARDUINO_READI2CREG  5
// new ids as new data
#define ARDUINO_WRITEI2C    6
#define ARDUINO_READI2C     7
#define ARDUINO_WRITEI2CREG 8
#define ARDUINO_READI2CREG  9

#ifdef USE_I2C
#include <Wire.h>
static uint8_t i2c_enabled[2] = { false, false };
static uint8_t i2c_address = 0;

#if !defined(WIRE_INTERFACES_COUNT)
#  if defined(ARDUINO_ARDUINO_NANO33BLE)
#    define WIRE_INTERFACES_COUNT 2
#  else
#    define WIRE_INTERFACES_COUNT 1
#  endif
#endif

#if !defined(ARDUINO_ARCH_ESP32)
 #define I2C_SUPPORTS_ENDCALL 1
#endif

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
          if (datasz < 3 || datasz > 32)
            {
              // bus
              // address
              // data
              sendInvalidNumArgsMsg ();
            }
          else
            {
              if (data[0] >= WIRE_INTERFACES_COUNT || data[0] > 1)
                {
                  sendErrorMsg_P (ERRORMSG_INVALID_DEVICE);
                  return;
                }

              if (data[0] == 0) 
                {
                  Wire.beginTransmission (data[1]); // should be i2c_address
                  byte c;

                  for(c=2;c<datasz;c++)
                    Wire.write (data[c]);

                  Wire.endTransmission ();
                }
#if WIRE_INTERFACES_COUNT > 1
              if (data[0] == 1) 
                {
                  Wire1.beginTransmission (data[1]); // should be i2c_address
                  byte c;

                  for(c=2;c<datasz;c++)
                    Wire1.write (data[c]);

                  Wire1.endTransmission ();
                }
#endif

              data[1] = 1;
              sendResponseMsg (cmdID,data, 2);
            }
          break;
        }
      case ARDUINO_READI2C:
        {
          if (datasz != 3)
            {
              // bus
              // address
              // numbytes
              sendInvalidNumArgsMsg ();
            }
          else
            {
              if (data[0] >= WIRE_INTERFACES_COUNT || data[0] > 1)
                {
                  sendErrorMsg_P (ERRORMSG_INVALID_DEVICE);
                  return;
                }

              if (data[0] == 0)
                {
                  Wire.requestFrom (data[1], (size_t)data[2]);
                  byte c = 0;
                  byte l = data[2];

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
                  }
#if WIRE_INTERFACES_COUNT > 1
              if (data[0] == 1)
                {
                  Wire1.requestFrom (data[1], (size_t)data[2]);
                  byte c = 0;
                  byte l = data[2];

                  if (l > 5) sendWaitMsg ();

                  datasz = 1;
                  for (c=0;c<=l;c++)
                    {
                      if (Wire1.available ())
                        {
                          data[datasz] = Wire1.read ();
                          datasz ++;
                        }
		    }
                  }
#endif

              sendResponseMsg (cmdID,data, datasz);
            }
          break;
        }
      case ARDUINO_READI2CREG:
        {
          if (datasz < 5)
            {
              // bus
              // address
              // regsz
              // reg
              // numbytes
              sendInvalidNumArgsMsg ();
            }
          else if (datasz != data[2]+4)
            {
              sendInvalidNumArgsMsg ();
            }
          else
            {
              if (data[0] >= WIRE_INTERFACES_COUNT || data[0] > 1)
                {
                  sendErrorMsg_P (ERRORMSG_INVALID_DEVICE);
                  return;
                }


               if (data[0] == 0)
                 {
                   Wire.beginTransmission (data[1]);
                   byte c = 0;
                   for (c=0;c<data[2];c++)
                   {
                     Wire.write (data[3+c]);
                   }
                   Wire.endTransmission (false);

                   byte l = data[3+data[2]];
                   Wire.requestFrom (data[1], (size_t)l);

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
                 }
#if WIRE_INTERFACES_COUNT > 1
               if (data[0] == 1)
                 {
                   Wire1.beginTransmission (data[1]);
                   byte c = 0;
                   for (c=0;c<data[2];c++)
                   {
                     Wire1.write (data[3+c]);
                   }
                   Wire1.endTransmission (false);

                   byte l = data[3+data[2]];
                   Wire1.requestFrom (data[1], (size_t)l);

                   if(l > 5) sendWaitMsg ();

                   datasz = 2;
                   for (c=0;c<=l;c++)
                     {
                       if (Wire1.available ())
                         {
                           data[datasz] = Wire1.read ();
                           datasz ++;
                         }
                     }
                 }
#endif
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
              byte error = 1;
              // bus 0
              // address
              if (data[0] >= WIRE_INTERFACES_COUNT || data[0] > 1)
                {
                  sendErrorMsg_P (ERRORMSG_INVALID_DEVICE);
                  return;
                }

              if (!i2c_enabled[data[0]])
	        {
                  if(data[0] == 0) Wire.begin ();
#if WIRE_INTERFACES_COUNT > 1
                  if(data[0] == 1) Wire1.begin ();
#endif
		}

	      if (data[0] == 0)
	        {
                  Wire.beginTransmission (data[1]);
                  error = Wire.endTransmission ();
                }
#if WIRE_INTERFACES_COUNT > 1
	      if (data[0] == 1)
	        {
                  Wire1.beginTransmission (data[1]);
                  error = Wire1.endTransmission ();
                }
#endif
              if (error == 0)
                data[2] = 1;
              else
                data[2] = 0;

              if (!i2c_enabled[data[0]])
	        {
#if defined (I2C_SUPPORTS_ENDCALL)
                  if(data[0] == 0) Wire.end ();
# if WIRE_INTERFACES_COUNT > 1
                  if(data[0] == 1) Wire1.end ();
# endif
#endif
                }
              sendResponseMsg (cmdID, data, 3);
            }

          break;
        }
      case ARDUINO_CONFIGI2C:
        {
          if (datasz == 2 || datasz == 3 || datasz == 5)
            {
              // i2c bus  0 
              // enable   1
              // i2caddress (optional)
              // bitratehi 
              // birtarelo
	      
              if (data[0] >= WIRE_INTERFACES_COUNT || data[0] > 1)
                {
                  sendErrorMsg_P (ERRORMSG_INVALID_DEVICE);
                  return;
                }

              // enable
              if (data[1] == 1) 
                {
                  i2c_enabled[data[0]] = 1;

                  if (data[0] == 0)
                    {
// TODO: i dont think need any more as setting i2c as pullup inputs before making it i2c
#if defined(ARDUINO_AVR_NANO_EVERY) || defined (ARDUINO_NANO_RP2040_CONNECT)
                      // arduino every A4,A5 pin is connected to 2 pins each on the micro controller
                      // so need ensure that the non I2C pins are pulled hi so doesnt effect the i2c pins
                      pinMode(18, INPUT_PULLUP);
                      pinMode(19, INPUT_PULLUP);
#endif
                    }

                  if (datasz>= 3)
                    i2c_address = data[2];
                  else
                    i2c_address = 0;

                  if (data[0] == 0)
                    {
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
#if WIRE_INTERFACES_COUNT > 1
                  if (data[0] == 1)
                    {
                      if (i2c_address > 0)
                        Wire1.begin (i2c_address);
                      else
                        Wire1.begin ();

                      if (datasz == 5) 
                        {
                          int32_t bitrate = (((uint32_t)data[3])<<8) | ((uint32_t)data[4]);
                          Wire1.setClock (bitrate*1000L);
                        }
                    }
#endif
                }
              else 
                {
                  // disable
#if defined (I2C_SUPPORTS_ENDCALL)
                  if (data[0] == 0) Wire.end ();
# if WIRE_INTERFACES_COUNT > 1
                  if (data[0] == 1) Wire1.end ();
# endif
#endif
                  i2c_enabled[data[0]] = 0;
                }

              sendResponseMsg (cmdID, data, datasz);
            }
          else if (datasz == 1)
            {
              // query config of device
              // i2c id
              // enable
              // address
              if (data[0] >= WIRE_INTERFACES_COUNT || data[0] > 1)
                {
                  sendErrorMsg_P (ERRORMSG_INVALID_DEVICE);
                  return;
                }

              data[1] = i2c_enabled[data[0]];
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
