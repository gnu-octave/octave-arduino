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
## @deftypefn {} {@var{value} =} readDigitalPin (@var{obj}, @var{pin})
## Read digital value from a digital I/O pin.
##
## @var{ar} - connected arduino object.
##
## @var{pin} - string name of the pin to read.
##
## @var{value} - the logical value (0, 1, true false) of the current pin state.
##
## Example usage
## @example
## @code{
## a = arduino ();
## pinvalue = readDigitalPin (a, 'D5');
## }
## @end example
##
## @seealso{arduino, writeDigitalPin}
## @end deftypefn

function retval = readDigitalPin (obj, pin)
  if nargin != 2
    error ("@arduino.readDigitalPin: expected pin name");
  endif
  if !ischar(pin) && !isnumeric(pin)
    error ("@arduino.readDigitalPin: expected pin name as string");
  endif

  retval = __digitalPin__(obj, pin);
endfunction

%!shared ar
%! ar = arduino();

%!test
%! readDigitalPin(ar,"d2");

%! assert(readDigitalPin(ar,"d2"), readDigitalPin(ar,2));

%!error <undefined> readDigitalPin()

%!error <expected pin name> readDigitalPin(ar)

%!error <expected pin name> readDigitalPin(ar, "d2", 2)

%!error <unknown pin nopin> readDigitalPin(ar, "nopin")
