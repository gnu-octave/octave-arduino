## Copyright (C) 2018 John Donoghue <john.donoghue@ieee.org>
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
## @deftypefn {} {@var{retval} =} __servoPosition__ (@var{obj}, @var{value})
## Private function to get/set servo position
## @end deftypefn

function out = __servoPosition__ (obj, value)
  ARDUINO_SERVO_POSITION = 0;
  out = 0;

  ar = obj.arduinoobj;
  %pins = obj.pins
  %pininfo = ar.get_pin(pins{1});
  pininfo = obj.pins{1};

  diff = obj.maxpulseduration - obj.minpulseduration;
  assert(diff >= 0);

  if nargin == 2
    if !isnumeric(value) || value < 0 || value > 1.0
      error("@servo.writePosition: value must be between 0 and 1");
    endif

    # convert 0 - 1 to min - max pulse
    value = obj.minpulseduration + (diff*value);
    intval = uint16(value*1e6);

    datain = [ bitshift(intval,-8) bitand(intval, 255)];
    [tmp, sz] = sendCommand(ar, "servo", ARDUINO_SERVO_POSITION, [pininfo.id datain]);
  else
    [tmp, sz] = sendCommand(ar, "servo", ARDUINO_SERVO_POSITION, [pininfo.id]);
    value = uint16(tmp(2))*256 + uint16(tmp(3));
    value = double(value)/1e6;
    value = value - obj.minpulseduration;
    out = value/diff;
  endif
  
endfunction
