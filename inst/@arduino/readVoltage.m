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
## @deftypefn {} {@var{voltage} =} readVoltage (@var{ar}, @var{pin})
## Read analog voltage of a pin.
##
## @subsubheading Inputs
## @var{ar} - connected arduino.
##
## @var{pin} - pin name or number to query for voltage
##
## @subsubheading Outputs
## @var{voltage} - scaled pin value as a voltage
##
## @subsubheading Example
## @example
## @code{
## ar = arduino ();
## readVoltage(ar, "A4");
## ans = 
##     1.401
## }
## @end example
## @seealso{arduino, readAnalogPin}
## @end deftypefn

function voltage = readVoltage (ar, pin)
  if nargin != 2
    error ("@arduino.readVoltage: expected pin name and value");
  endif
  if !ischar(pin)
    error ("@arduino.readVoltage: expected pin name as string");
  endif
  
  voltage = double(readAnalogPin(ar,pin)) * (ar.board_voltage() / 1023.0);
endfunction

%!shared ar
%! ar = arduino();

%!test
%! readVoltage(ar,"a0");
%! readVoltage(ar,"a1");
%! readVoltage(ar,"a2");
%! readVoltage(ar,"a3");
%! readVoltage(ar,"a4");
%! readVoltage(ar,"a5");
%! val = readVoltage(ar,"a0");
%! assert(isnumeric(val));
%! assert(val <= 5.0);
%! assert(val >= 0);

%!error <invalid mode> readVoltage(ar,"d2");

%!error <undefined> readVoltage()

%!error <expected pin name> readVoltage(ar)

%!error <expected pin name> readVoltage(ar, "a0", 2)

%!error <unknown pin nopin> readVoltage(ar, "nopin")
