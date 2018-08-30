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
## @deftypefn {} {@var{position} = } readPosition (@var{servo})
## Read the position of a servo
##
## @subsubheading Inputs
## @var{servo} - servo object created from arduino.servo.
##
## @subsubheading Outputs
## @var{position} - value between 0 .. 1 for the current servo position,
## where 0 is the servo min position, 1 is the servo maximum position.
##
## @seealso{servo, writePosition}
## @end deftypefn

function value = readPosition (obj)

  value = __servoPosition__(obj);
 
endfunction

%!shared ar
%! ar = arduino();

%!test
%! s = servo(ar, "d9", "minpulseduration", 1.0e-3, "maxpulseduration", 2e-3);
%! writePosition(s, 1);
%! assert(readPosition(s), 1);
%! writePosition(s, 0);
%! assert(readPosition(s), 0);

%!error <undefined> readPosition();

