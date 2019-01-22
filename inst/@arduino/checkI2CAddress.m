## Copyright (C) 2019 John Donoghue <john.donoghue@ieee.org>
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
## @deftypefn {} {@var{retval} =} checkI2CAddress (@var{ar}, @var{address})
## @deftypefnx {} {@var{retval} =} checkI2CAddress (@var{ar}, @var{address}, @var{bus})
## Check that an address of given address responds on the I2C bus
##
## @subsubheading Inputs
## @var{ar} - arduino object connected to a arduino board.
##
## @var{address} - I2C address number to check
##
## @var{bus} - bus number to check for I2C device, when multiple buses are available.
## If the bus is not specified, it will default to 0.
## 
## @subsubheading Outputs
## @var{retval} - boolean value of true if address responds on the I2C bus
##
## @subsubheading Example
## @example
## @code {
## # create arduino connection.
## ar = arduino();
## # scan for devices on the I2C bus
## checkI2CAddress (ar)
## # output if a device using that address is attached
## ans =
##   1
## }
## @end example
##
## @seealso{arduino, scanI2Cbus}
## @end deftypefn

function ret = checkI2CAddress (ar, address, bus)

  persistent ARDUINO_I2C_SCAN = 0;

  ret = false;

  if nargin < 2 || nargin > 3
    print_usage ();
  endif

  if nargin == 2
    bus = 0;
  elseif !isnumeric (bus) || bus < 0 || bus > 1
    error ('checkI2CAddress: expected bus to be numeric and 0 or 1');
  endif

  if (!isa (ar, "arduino"))
    error ("checkI2CAddress: expects arduino object as 1st argument");
  endif

  if !isnumeric (address) || address < 1 || address > 127
    error ('checkI2CAddress: expected address to be numeric 1 > address <= 127');
  endif
  
  # TODO: configure SPI pins if not already done??

  [tmp, sz] = sendCommand (ar, "i2c", ARDUINO_I2C_SCAN, [bus address]);
  if tmp(3) == 1
    ret = true;
  endif
endfunction

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%! checkI2CAddress(ar, 12);
