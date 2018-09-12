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
## @deftypefn {} {@var{ver} =} version (@var{ar})
## Get version of library code installed on arduino board
##
## @subsubheading Inputs
## @var{ar} - the arduino object of the connection to an arduino board.
##
## @subsubheading Outputs
## @var{ver} - version string in format of X.Y.Z.
##
## @seealso{arduino}
##
## @end deftypefn

function retval = version (obj)

  persistent ARDUINO_VERSION = 20;

  if nargin != 1
    error ("@arduino.version expects no arguments");
  endif

  [dataout, status] = __sendCommand__ (obj, 0, ARDUINO_VERSION, []);
    
  if status != 0
    error ("@arduino.version: failed err=%d - %s", status, char(dataout));
  else
    retval = sprintf("%d.%d.%d", dataout(1), dataout(2), dataout(3));
  endif
  
endfunction

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%! assert(~isempty(version(ar)));
