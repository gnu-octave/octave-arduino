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
## @deftypefn {} write (@var{register}, @var{dataIn})
## @deftypefnx {} {@var{retval} =} write (@var{register}, @var{dataIn}, @var{precision})
## Write a value to the shift register.
##
## @var{register} - shift register created from shiftRegister call.
##
## @var{dataIn} - data to clock into the shiftRegister.
##
## @var{precision} - optional precision of the data, where precision can be a 
## number in a multipe of 8 (ie: 8,16,32) or can be a named integer type:     8
## of 'uint8', 'uint16', 'uint32'.  The default  precision is 8.
##
## @seealso{shiftRegister, read}
## @end deftypefn

function write(register, dataIn, precision)

  persistent ARDUINO_SHIFTREG_WRITE = 2;
  persistent endian;
  if isempty(endian)
    [~, ~, endian] = computer ();
  endif

  if nargin < 2 || nargin > 3
    print_usage ();
  endif

  if nargin == 3
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

  switch (precision)
    case 8
      dataIn = uint8(dataIn);
    case 16
      dataIn = uint16(dataIn);
      if (endian == 'L')
        dataIn = swapbytes (dataIn); 
      endif
      dataIn = typecast(dataIn, 'uint8');
    case 32 
      dataIn = uint32(dataIn);
      if (endian == 'L')
        dataIn = swapbytes (dataIn); 
      endif
      dataIn = typecast(dataIn, 'uint8');
  endswitch

  [tmp, sz] = sendCommand(register.parent, "shiftregister", ARDUINO_SHIFTREG_WRITE, [register.id dataIn]);
endfunction
