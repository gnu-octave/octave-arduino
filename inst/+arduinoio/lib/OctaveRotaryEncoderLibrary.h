/*
 * Octave arduino shift register interface
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

class OctaveRotaryEncoderLibrary : public LibraryBase
{
public:
   OctaveRotaryEncoderLibrary(OctaveArduinoClass &oc);
   void commandHandler(uint8_t cmdID, uint8_t* inputs, uint8_t payload_size);

   virtual void loop();
};


