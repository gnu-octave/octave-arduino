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
## @deftypefn {} reset (@var{register})
## clear the shift register value.
##
## @var{register} - shift register created from shiftRegister call.
##
## @seealso{shiftRegister, read, write}
## @end deftypefn

function reset(register)
  persistent ARDUINO_SHIFTREG_RESET = 0;
  # TODO: see if we have a reset pin ?
  [tmp, sz] = sendCommand(register.parent, "shiftregister", ARDUINO_SHIFTREG_RESET, [register.id]);
endfunction
