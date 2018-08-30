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
## @deftypefn {} {@var{retval} =} read (@var{register})
## @deftypefnx {} {@var{retval} =} read (@var{register}, @var{precision})
## read a value from the shift register.
##
## @subsubheading Inputs
## @var{register} - shift register created from shiftRegister call.
##
## @var{precision} - optional precision of the data, where precision can be a 
## number in a multipe of 8 (ie: 8,16,32) or can be a named integer type:     8
## of 'uint8', 'uint16', 'uint32'.  The default  precision is 8.
##
## @subsubheading Outputs
## @var{retval} - returned data read from the register.
##
## @seealso{shiftRegister, write}
## @end deftypefn

function out = read(register, precision)
  persistent ARDUINO_SHIFTREG_READ = 3;
  persistent endian;
  if isempty(endian)
    [~, ~, endian] = computer ();
  endif

  if nargin < 1 || nargin > 2
    print_usage ();
  endif

  if nargin == 2
    if  ischar(precision)
      precision = tolower(precision);
      switch(precision)
        case "uint8"
          precision = 8;
        case "uint16"
          precision = 16;
        case "uint32"
          precision = 32;
        otherwise
          error ("unknown precsison value '%s'", precision)
      endswitch
    elseif isscalar(precision)
      if precision <= 0 || mod(precision, 8) != 0
        error ("precision should be positive number that is a muiltiple of 8");
      endif
    endif
  else
    precision = 8;
  endif

  # attempt to clock out precision bits
  [tmp, sz] = sendCommand(register.parent, "shiftregister", ARDUINO_SHIFTREG_READ, [register.id precision]);
  out = typecast(uint8(tmp(2:end)), ['uint' num2str(precision)]);
  if (endian == 'L')
      out = swapbytes (out); 
  endif
endfunction
