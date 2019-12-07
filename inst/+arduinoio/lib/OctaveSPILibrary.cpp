/*
 * Octave arduino spi interface
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
#include "OctaveSPILibrary.h"

#define ARDUINO_CONFIGSPI   1
#define ARDUINO_READ_WRITE_SPI 2

#ifdef USE_SPI
#include <SPI.h>
uint8_t spi_enabled = false;
uint8_t spi_bitorder = 0;
uint8_t spi_mode = 0;
#endif

OctaveSPILibrary::OctaveSPILibrary (OctaveArduinoClass &oc) 
{

  libName = "SPI";

  oc.registerLibrary (this);
}

void
OctaveSPILibrary::commandHandler (uint8_t cmdID, uint8_t* data, uint8_t datasz)
{
  switch (cmdID)
    {
#ifdef USE_SPI        
      case ARDUINO_CONFIGSPI:
        {
          if (datasz == 4)
            {
              // spi id   0 (cs pin)
              // enable   1
              // mode ?   2
              // byte order 3
              // TODO: bit rate

              if (data[1] == 1)
                {
                  spi_mode = data[2];
                  spi_bitorder = data[3];
                  spi_enabled = 1;

                  if (spi_mode == 0) spi_mode = SPI_MODE0;
                  else if (spi_mode == 1) spi_mode = SPI_MODE1;
                  else if (spi_mode == 2) spi_mode = SPI_MODE2;
                  else if (spi_mode == 3) spi_mode = SPI_MODE3;
                  else spi_mode = SPI_MODE0;

                  SPI.begin ();
                  digitalWrite (data[0], HIGH); 
                }
              else
                {
                  SPI.end ();
                  spi_enabled = 0;
                }
              sendResponseMsg (cmdID,data, 2);
            }
          else if (datasz == 2)
            {
              if (data[1] == 1)
                {
                  spi_enabled = 1;
                  SPI.begin ();
                  digitalWrite (data[0], HIGH); 
                }
              else
                {
                  SPI.end ();
                  spi_enabled = 0;
                }
              sendResponseMsg (cmdID, data, 2);
            }
          else if(datasz == 1)
            {
              // spi id (cs)
              // enable
              // mode ?
              // byte order
              data[1] = spi_enabled;
              data[2] = spi_mode;
              data[3] = spi_bitorder;
              sendResponseMsg (cmdID, data, 4);
            }
          else
            {
              sendInvalidNumArgsMsg ();
            }
          break;
        }
      case ARDUINO_READ_WRITE_SPI:
      
        if (datasz >= 2)
          {
            uint8_t cs_pin = data[0];
            // begin transaction
            SPI.beginTransaction (SPISettings(4000000, spi_bitorder==0 ? MSBFIRST : LSBFIRST , spi_mode));

            // set CS low
            digitalWrite (cs_pin, LOW); 
            delay (1);

            // transfer the bytes
	    SPI.transfer (&data[1], datasz-1);

            // set CS hi
            digitalWrite (cs_pin, HIGH); 
            delay (1);
            // endtransaction
            SPI.endTransaction ();

            sendResponseMsg (cmdID, data, datasz);
          }
        else
          {
            sendInvalidNumArgsMsg ();
          }
        break;  
#endif

      default:
        sendUnknownCmdIDMsg ();
        break;
    }
}
