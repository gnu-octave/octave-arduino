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
## @deftypefn {} {@var{value} =} readAnalogPin (@var{ar}, @var{pin})
## Read analog voltage of  @var{pin}.
##
## @var{ar} - connected arduino object.
##
## @var{pin} - string name of the pin to read.
##
## @var{value} - analog value of the pin 
##
## Example usage:
## @example
## @code{
## ar = arduino ();
## readAnalogPin(ar, "A4");
## ans = 
##     87
## }
## @end example
## @seealso{arduino, readVoltage}
## @end deftypefn

function value = readAnalogPin (obj, pin)
  ARDUINO_ANALOG = 4;

  if nargin != 2
    error ("@arduino.readAnalogPin: expected pin name and value");
  endif
  if !ischar(pin)
    error ("@arduino.readAnalogPin: expected pin name as string");
  endif
   
  pininfo = obj.get_pin(pin);

  # first use ?
  if strcmp(pininfo.mode, "unset")
    configurePin(obj, pin, "analoginput")
  else
    [pinstate, pinmode] = pinStateMode(pininfo.mode);
    if !strcmp(pinmode, "analog")
      error ("readAnalogPin: pin is in incompatable mode");
    endif
  endif
 
  datain = uint8([pininfo.id]);
  
  [dataout, status] = __sendCommand__ (obj, 0, ARDUINO_ANALOG, datain);
 
  if status != 0
    error ("readVoltage: failed to set pin state err=%d", status);
  endif 
  
  value = (uint16(dataout(2))*256 + uint16(dataout(3)));
  
endfunction

%!shared ar
%! ar = arduino();

%!test
%! readAnalogPin(ar,"a0");
%! readAnalogPin(ar,"a1");
%! readAnalogPin(ar,"a2");
%! readAnalogPin(ar,"a3");
%! readAnalogPin(ar,"a4");
%! readAnalogPin(ar,"a5");

%!error <invalid mode> readAnalogPin(ar,"d2");

%!error <undefined> readAnalogPin()

%!error <expected pin name> readAnalogPin(ar)

%!error <expected pin name> readAnalogPin(ar, "a0", 2)

%!error <unknown pin nopin> readAnalogPin(ar, "nopin")
