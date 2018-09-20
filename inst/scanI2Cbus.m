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
## @deftypefn {} {@var{retval} =} scanI2Cbus (@var{ar})
## @deftypefnx {} {@var{retval} =} scanI2Cbus (@var{ar}, @var{bus})
## Scan arduino for devices on the I2C bus.
##
## @subsubheading Inputs
## @var{ar} - arduino object connected to a arduino board.
##
## @var{bus} - bus number to scan I2C devices, when multiple buses are available.
## If the bus is not specified, it will default to 0.
## 
## @subsubheading Outputs
## @var{retval} - cell array of addresses as strings in format of "0xXX".
##
## @subsubheading Example
## @example
## @code {
## # create arduino connection.
## ar = arduino();
## # get the pins that will be used for I2C
## scanI2Cbus (ar)
## % output
## ans =
## @{
##  [1,1] = 0x50
## @}
## }
## @end example
##
## @seealso{arduino, i2cdev}
## @end deftypefn

function addr = scanI2Cbus (ar, bus)

  persistent ARDUINO_I2C_SCAN = 0;

  addr = {};

  if nargin < 1 || nargin > 2
    print_usage ();
  endif

  if nargin == 1
    bus = 0;
  elseif !isnumeric (bus) || bus < 0 || bus > 1
    error ('scanI2Cbus: expected bus to be numeric and 0 or 1');
  endif

  if (!isa (ar, "arduino"))
    error ("scanI2Cbus: expects arduino object as 1st argument");
  endif
  
  # TODO: configure SPI pins if not already done??

  # scan each address, and add any found to cell array
  for i = 1:127
     [tmp, sz] = sendCommand (ar, "i2c", ARDUINO_I2C_SCAN, [bus i]);
     if tmp(3) == 1
       addr{end+1} = [ "0x" dec2hex(i, 2) ];
     endif
  endfor

endfunction

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%! scanI2Cbus(ar);
