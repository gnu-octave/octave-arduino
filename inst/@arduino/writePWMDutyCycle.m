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
## @deftypefn {} {} writePWMDutyCyle (@var{ar}, @var{pin}, @var{value})
## Set pin to output a square wave with a duty cycle of @var{value}
##
## @var{ar} - connected arduino object
##
## @var{pin} - pin to write to.
##
## @var{value} - duty cycle value where 0 = off, 0.5 = 50% on, 1 = always on.
##
## Example usage:
## @example
## @code{
## a = arduino();
## writePWMDutyCycle(a,'D5',0.5);
## }
## @end example
##
## @seealso{arduino, writePWMVoltage}
##
## @end deftypefn

function writePWMDutyCycle (obj, pin, value)
  ARDUINO_PWM = 5;

  if nargin < 3
    error ("@arduino.writePWMDutyCycle: expected pin name and value");
  endif
  if !ischar(pin) && !isnumeric(pin)
    error ("@arduino.writeDigitalPin: expected pin name as string");
  endif
  if (!isnumeric(value) || value > 1.0 || value < 0)
    error ("@arduino.writeDigitalPin: expected value between 0 .. 1");
  endif  
  
  pininfo = obj.get_pin(pin);

  # first use ?
  if strcmp(pininfo.mode, "unset")
    configurePin(obj, pin, "pwm")
  else
    [pinstate, pinmode] = pinStateMode(pininfo.mode);
    if !strcmp(pinmode, "pwm")
      error ("writeDigitalPin: pin is in incompatable mode");
    endif
  endif

  val = 255*value;

  datain = uint8([pininfo.id val]);
  
  [dataout, status] = __sendCommand__ (obj, 0, ARDUINO_PWM, datain);
  
  if status != 0
    error ("writePWMDutyCycle: failed to set pin state err=%d", status);
  endif 
  
endfunction

%!shared ar, pwmpin
%! ar = arduino();
%! pwmpin = getPinsFromTerminals(ar, getPWMTerminals(ar)){1};

%!test
%! writePWMDutyCycle(ar, pwmpin, 0.5);

%!error <undefined> writePWMDutyCycle();

%!error <expected> writePWMDutyCycle(ar)

%!error <expected pin> writePWMDutyCycle(ar, pwmpin)

%!error <unknown pin> writePWMDutyCycle(ar, "xd1", 1)

%!error <expected value between> writePWMDutyCycle(ar, pwmpin, -1)

%!error <expected value between> writePWMDutyCycle(ar, pwmpin, 1.1)

%!test
%! writePWMDutyCycle(ar, pwmpin, 0.0);
