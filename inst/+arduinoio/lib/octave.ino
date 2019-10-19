/*
 * Octave arduino interface
 * Copyright (C) 2018-2019 John Donoghue <john.donoghue@ieee.org>
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


#include "LibraryBase.h"

// lib manager / processing
static OctaveArduinoClass octavearduino;

// include the base library
#include "OctaveCoreLibrary.h"
OctaveCoreLibrary lib0(octavearduino);

#ifdef USE_I2C
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

#ifdef USE_SHIFTREG
#include "OctaveShiftRegisterLibrary.h"
OctaveShiftRegisterLibrary lib4(octavearduino);
#endif

#ifdef USE_ROTARYENCODER
#include "OctaveRotaryEncoderLibrary.h"
OctaveRotaryEncoderLibrary lib5(octavearduino);
#endif

#ifdef USE_ULTRASONIC
#include "OctaveUltrasonicLibrary.h"
OctaveUltrasonicLibrary lib6(octavearduino);
#endif

#ifdef USE_SERIAL
#include "OctaveSerialLibrary.h"
OctaveSerialLibrary lib7(octavearduino);
#endif


// additional addons included from generated addons.h file
#include "addons.h"


void setup() {

#if defined(ARDUINO_ARCH_AVR)
  // clear watchdog
  //clear all flags
  MCUSR = 0;
 
  /* Write logical one to WDCE and WDE */
  /* Keep old prescaler setting to prevent unintentional time-out */
  WDTCSR |= _BV(WDCE) | _BV(WDE);
  WDTCSR = 0;
#endif

  octavearduino.init();
}

void loop() {
   octavearduino.runLoop();
}
