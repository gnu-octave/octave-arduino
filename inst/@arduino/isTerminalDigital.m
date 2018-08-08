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
## @deftypefn {} {@var{ret} = } isTerminalDigital(@var{obj}, @var{terminal})
## Return true if pin is capable of digital functions
##
## @var{ar} - the connected arduino object
##
## @var{terminal} is a terminal number ot check
##
## @var{ret} return 1 of is a digital pin, 0 otherwise
## @end deftypefn

function retvalue = isTerminalDigital (obj, terminal)
  if nargin != 2
    error ('@arduino.isTerminalDigital: expected single terminal value');
  endif

  pininfo = obj.get_pin (terminal);
  
  idx = find (cellfun(@(x) strcmpi (x, "digital"), pininfo.modes), 1);
  
  if isempty (idx)
    retvalue = false;
  else
   retvalue = true;
  endif
  
endfunction

%!shared ar
%! ar = arduino();

%!assert(isTerminalDigital(ar,"d0"), true);

%!assert(isTerminalDigital(ar,getTerminalsFromPins(ar, "d0")), true);

%!assert(isTerminalDigital(ar,"a0"), true);

%!error <undefined> isTerminalDigital()

%!error <expected single terminal value> isTerminalDigital(ar)

%!error <expected single terminal value> isTerminalDigital(ar, "d1", 1)

%!error <unknown pin> isTerminalDigital(ar, -1)


