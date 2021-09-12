## Copyright (C) 2021 John Donoghue <john.donoghue@ieee.org>
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
## @deftypefn {} {@var{mcu} =} getEndian (@var{ar})
## Get the endian used by the connected arduino.
##
## @subsubheading Inputs
## @var{ar} - arduino object connected to a arduino board.
##
## @subsubheading Outputs
## @var{endian} - string representing the endian used by the arduino board.
##
## 'L' means little endian,
## 'B' means big endian
##
## @seealso{arduino, getMCU}
## @end deftypefn

function retval = getEndian (obj)
  retval = obj.get_endian ();  
endfunction

%!test
%! ar = arduino ();
%! assert (!isempty (ar));
%! mcu = getEndian (ar);
%! assert (ischar (mcu))
%! assert (mcu, ar.get_endian ())
