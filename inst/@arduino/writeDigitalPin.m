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
## @deftypefn {} {} writeDigitalPin (@var{ar}, @var{pin}, @var{value})
## Write digital value @var{value} to digital I/O @var{pin}.
##
## @var{ar} - connected arduino object.
## @var{pin} - string name of the pin to write to.
## @var{value} - the logical value (0, 1, true false) to write to the pin.
##
## If pin was unconfigured beore using, pin is set into digital mode.
##
## Example usage
## @example
## a = arduino();
## writeDigitalPin(a,'D5',1);
## @end example
## @seealso{arduino, readDigitalPin}
## @end deftypefn

function writeDigitalPin (obj, pin, value)
  if nargin != 3
    error ("@arduino.writeDigitalPin: expected pin name and value");
  endif
  if !ischar(pin) && !isnumeric(pin)
    error ("@arduino.writeDigitalPin: expected pin name as string");
  endif
  if (!isnumeric(value) && !islogical(value)) || (value != 1 && value != 0)
    error ("@arduino.writeDigitalPin: expected value as logical or 0 or 1");
  endif  

  __digitalPin__(obj,pin,value);
  
endfunction

%!shared ar
%! ar = arduino();

%!test
%! writeDigitalPin(ar,"d2", 1);
%! writeDigitalPin(ar,"d2", 0);
%! writeDigitalPin(ar,"d2", false);
%! writeDigitalPin(ar,"d2", true);
%! writeDigitalPin(ar,2, true);

%!error <undefined> writeDigitalPin()

%!error <expected pin name and value> writeDigitalPin(ar)

%!error <expected pin name and value> writeDigitalPin(ar, "d2", 1, 1)

%!error <unknown pin nopin> writeDigitalPin(ar, "nopin", 1)
