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

class SPIDevice
{
  #define USED 1
  #define ENABLED 2
public:
  uint8_t flags;
  uint8_t cspin;
  uint8_t bitorder;
  uint8_t mode;

  SPIDevice();
  uint8_t init(uint8_t id, uint8_t mode, uint8_t order);
  uint8_t free();
  void set_cs(uint8_t state);

  int transfer(uint8_t *data, int sz);
  SPISettings settings();
};

SPIDevice::SPIDevice ()
{
  flags = 0;
}

uint8_t
SPIDevice::init (uint8_t id, uint8_t spi_mode, uint8_t spi_bitorder)
{
  flags = USED|ENABLED;
  cspin = id;

  if (spi_mode == 0) mode = SPI_MODE0;
  else if (spi_mode == 1) mode = SPI_MODE1;
  else if (spi_mode == 2) mode = SPI_MODE2;
  else if (spi_mode == 3) mode = SPI_MODE3;
  else mode = SPI_MODE0;

  bitorder = spi_bitorder;

  return 0;
}

uint8_t
SPIDevice::free ()
{
  flags = 0;
  return 0;
}

void SPIDevice::set_cs(uint8_t state)
{
  digitalWrite (cspin, state); 
}

SPISettings SPIDevice::settings()
{
  return SPISettings(4000000, bitorder==0 ? MSBFIRST : LSBFIRST , mode);
}

int
SPIDevice::transfer (uint8_t *data, int sz)
{
  SPI.transfer (data, sz);
  return 0;
}

#define MAX_SPI_DEVICES 5
static SPIDevice spidevs[MAX_SPI_DEVICES];

SPIDevice *
getSPI (uint8_t id)
{
  uint8_t i;
  SPIDevice * unused = 0;

  for (i=0; i<MAX_SPI_DEVICES; i++) 
    {
      if (spidevs[i].flags & USED) 
        {
          if (spidevs[i].cspin == id)
            return &spidevs[i];
        }
      else if (!unused)
        {
          unused = &spidevs[i];
        }
    }
  return unused;
}

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
              SPIDevice * dev = getSPI (data[0]);

	      if(dev == 0)
	        {
                  sendErrorMsg_P (ERRORMSG_INVALID_DEVICE);
		  return;
	        }

              if (data[1] == 1)
                {
                  //        cspin    mode     bitorder
		  dev->init(data[0], data[2], data[3]);

                  // TODO: first call only ?
                  SPI.begin ();

                  dev->set_cs(HIGH);
                }
              else
                {
                  // TODO: last call only
                  // SPI.end ();

		  dev->free();
                }
              sendResponseMsg (cmdID,data, 2);
            }
          else if(datasz == 1)
            {
              SPIDevice * dev = getSPI (data[0]);

	      if(dev == 0 || (dev->flags&USED)==0)
	        {
                  sendErrorMsg_P (ERRORMSG_INVALID_DEVICE);
		  return;
	        }

              // TODO: last call only
              // SPI.end ();

              dev->free();
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
            SPIDevice * dev = getSPI (data[0]);

            if(dev == 0 || (dev->flags&USED)==0)
              {
                sendErrorMsg_P (ERRORMSG_INVALID_DEVICE);
		return;
	      }

            // begin transaction
            SPI.beginTransaction (dev->settings());

            // set CS low
            dev->set_cs(LOW); 
            delay (1);

            // transfer the bytes
	    dev->transfer(&data[1], datasz-1);

            // set CS hi
            dev->set_cs(HIGH); 
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
