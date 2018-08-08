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
## @deftypefn {} {@var{ret} = } isTerminalAnalog (@var{obj}, @var{terminal})
## Return true if pin is capable of analog input
##
## @var{ar} - the connected arduino object
##
## @var{terminal} is a terminal number ot check
##
## @var{ret} return 1 of is a analog pin, 0 otherwise
##
## @end deftypefn

function retvalue = isTerminalAnalog (obj, terminal)
  if nargin != 2
    error ('@arduino.isTerminalAnalog: expected single terminal value');
  endif

  pininfo = obj.get_pin (terminal);
  
  idx = find (cellfun(@(x) strcmpi (x, "analog"), pininfo.modes), 1);
  
  if isempty (idx)
    retvalue = false;
  else
   retvalue = true;
  endif
  
endfunction

%!shared ar
%! ar = arduino();

%!assert(isTerminalAnalog(ar,"d0"), false);

%!assert(isTerminalAnalog(ar,"a0"), true);

%!assert(isTerminalAnalog(ar,getTerminalsFromPins(ar, "a0")), true);

%!error <undefined> isTerminalAnalog()

%!error <expected single terminal value> isTerminalAnalog(ar)

%!error <expected single terminal value> isTerminalAnalog(ar, "d1", 1)


