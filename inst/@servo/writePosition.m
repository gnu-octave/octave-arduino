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
## @deftypefn {} {} writePosition (@var{servo}, @var{position})
## Write the position to a servo.
##
## @var{servo} - servo object created from arduino.servo.
##
## @var{position} - value between 0 .. 1 for the current servo position,
## where 0 is the servo min position, 1 is the servo maximum position.
##
## @seealso{servo, readPosition}
## @end deftypefn

function writePosition (obj, value)
  if nargin != 2
    error ("@servo.writePosition: expected value");
  endif

  __servoPosition__(obj, value);

endfunction

%!shared ar, s
%! ar = arduino();
%! s = servo(ar, "d9", "minpulseduration", 1.0e-3, "maxpulseduration", 2e-3);

%!test
%! writePosition(s, 1);
%! assert(readPosition(s), 1);
%! writePosition(s, 0);
%! assert(readPosition(s), 0);

%!error <undefined> writePosition();

%! error <expected value> writePosition(s);

