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
## @deftypefn {} {@var{sec} =} uptime (@var{ar})
## Get the number of seconds the arduino board has been running concurrently.
##
##
## @subsubheading Inputs
## @var{ar} - the arduino object of the connection to an arduino board.
##
## @subsubheading Outputs
## @var{sec} - the number seconds the board has been running. Note that the count will wrap around after
## approximately 50 days.
##
## @seealso{arduino}
##
## @end deftypefn

function retval = uptime (obj)

  persistent ARDUINO_UPTIME = 21;

  if nargin != 1
    error ("@arduino.version expects no arguments");
  endif

  [dataout, status] = __sendCommand__ (obj, 0, ARDUINO_UPTIME, []);
    
  if status != 0
    error ("@arduino.uptime: failed err=%d - %s", status, char(dataout));
  else
    value = uint32(dataout(1))*256*256*256 + uint32(dataout(2))*256*256 + uint32(dataout(3))*256 + uint32(dataout(4));
    retval = double(value)/1000.0;
  endif
  
endfunction

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%! t1 = uptime(ar);
%! pause (1);
%! t2 = uptime(ar);
%! assert(t1 < t2);

