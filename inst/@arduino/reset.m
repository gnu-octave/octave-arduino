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
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {} reset (@var{ar})
## Send reset command to arduino hardware to force a hardware reset.
##
## @var{ar} - connected arduino object.
##
## @seealso{arduino}
## @end deftypefn

function reset (ar)
  ARDUINO_RESET = 0;
    
  if nargin != 1 
    error ("@arduino.reset: expected ardiono object only");
  endif    
  
  [dataout, status] = __sendCommand__ (ar, 0, ARDUINO_RESET, [], 0);
  
endfunction

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%! reset(ar);
%! pause(1);
