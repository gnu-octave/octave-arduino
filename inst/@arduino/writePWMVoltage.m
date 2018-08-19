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
## GNU General Public License for more details.

## -*- texinfo -*- 
## @deftypefn {} {} writePWMVoltage (@var{ar}, @var{pin}, @var{voltage})
## Emulate an approximate voltage out of a pin using PWM.
##
## @var{ar} - connected arduino object
##
## @var{pin} - pin to write to.
##
## @var{voltage} - voltage to emulate with PWM, between 0 - 5.0
##
## Example usage:
## @example
## @code{
## a = arduino();
## writePWMVoltage(a,'D5',1.0);
## }
## @end example
##
## @seealso{arduino, writePWMDutyCycle}
## @end deftypefn

function writePWMVoltage (obj, pin, value)
  if nargin < 3
    error ("@arduino.writePWMVoltage: expected pin name and value");
  endif

  # TODO: need look at board type for what voltage range is allowed
  # and convert
  maxvolts = obj.board_voltage();
  if !isnumeric(value) || value < 0 || value > maxvolts
    error('writePWMVoltage: value must be between 0 and %f', maxvolts);
  endif

  # assuming here for now 0 .. 5V is linear to 0 - 100% pwm
  val = value/maxvolts;
  writePWMDutyCycle(obj, pin, val);
  
endfunction

%!shared ar, pwmpin
%! ar = arduino();
%! pwmpin = getPinsFromTerminals(ar, getPWMTerminals(ar)){1};

%!test
%! writePWMVoltage(ar, pwmpin, 5.0);

%!error <undefined> writePWMVoltage();

%!error <expected> writePWMVoltage(ar)

%!error <expected pin> writePWMVoltage(ar, pwmpin)

%!error <unknown pin> writePWMVoltage(ar, "xd1", 1)

%!error <value must be between> writePWMVoltage(ar, pwmpin, -1)

%!error <value must be between> writePWMVoltage(ar, pwmpin, 5.1)

%!test
%! writePWMVoltage(ar, pwmpin, 0.0);
