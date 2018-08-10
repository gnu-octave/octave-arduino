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
## @deftypefn {} {@var{mcu} =} getMCU (@var{ar})
## Get the MCU used by the connected arduino.
##
## @var{ar} - arduino object connected to a arduino board.
##
## @var{mcu} - string representing the mcu used by the arduino board.
##
## @seealso{arduino}
## @end deftypefn

function retval = getMCU (obj)
  retval = obj.get_mcu ();  
endfunction

%!test
%! ar = arduino ();
%! assert (!isempty (ar));
%! mcu = getMCU (ar);
%! assert (ischar (mcu))
%! assert (mcu, ar.get_mcu ())
