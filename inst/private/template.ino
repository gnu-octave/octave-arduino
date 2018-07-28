/*
 * Octave arduino interface
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

// TODO:    need query on connect any required /used addons
// on 1st talk to a device, if dont have the libid yet, try get it
// or set to -1 if not there and error ?
// OR
// on start up, just query each index till is none for each library to store
// and use that idx

#include "settings.h"


#include "LibraryBase.h"

// TODO should be a singleton instance
static OctaveArduinoClass octavearduino;

// include the base librart
#include "OctaveCoreLibrary.h"
OctaveCoreLibrary lib0(octavearduino);

#ifdef USE_SPI
#include "OctaveI2CLibrary.h"
OctaveI2CLibrary lib1(octavearduino);
#endif

#ifdef USE_SPI
#include "OctaveSPILibrary.h"
OctaveSPILibrary lib2(octavearduino);
#endif

#ifdef USE_SERVO
#include "OctaveServoLibrary.h"
OctaveServoLibrary lib3(octavearduino);
#endif


// include all the requested addon libs

void setup() {
  // clear watchdog
  //clear all flags
  MCUSR = 0;
 
  /* Write logical one to WDCE and WDE */
  /* Keep old prescaler setting to prevent unintentional time-out */
  WDTCSR |= _BV(WDCE) | _BV(WDE);
  WDTCSR = 0;

  Serial.begin(9600); //set up serial library baud rate to 9600
}

void loop() {
   octavearduino.runLoop();
}
