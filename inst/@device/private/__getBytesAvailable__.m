## Copyright (C) 2019 John Donoghue <john.donoghue@ieee.org>
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details. see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} __getBytesAvailable__ (@var{obj})
## Private function to get bytes available from serial port
## @end deftypefn

function out = __getBytesAvailable__ (obj)
  persistent ARDUINO_SERIAL_STAT = 4;
  out = 0;

  ar = obj.parent;

  [tmp, sz] = sendCommand (ar, "serial", ARDUINO_SERIAL_STAT, [obj.device.id]);
  out = uint16(tmp(2));
  
endfunction
