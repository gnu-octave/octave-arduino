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
## @deftypefn {} {@var{dev} =} read (@var{dev}, @var{numbytes})
## @deftypefnx {} {@var{dev} =} read (@var{dev}, @var{numbytes}, @var{precision})
## Read @var{numbytes} from i2cdev object @var{dev} 
## using option precision for bytesize.
##
## @var{dev} - connected i2c device opened using i2cdev
## @var{numbytes} - number of bytes to read.
## @var{precision} - Optional precision for the output data read data.
## Currently known precision values are uint8 (defualt), int8, uint16, int16
##
## @seealso{arduino, i2cdev}
## @end deftypefn

function out = read(dev, numbytes, precision)
  persistent ARDUINO_I2C_READ = 3;
  persistent endian;
  if isempty(endian)
    [~, ~, endian] = computer ();
  endif

  if nargin < 2 || nargin > 3
    print_usage ();
  endif
  if ~isnumeric(numbytes)
    error("expected numbytes to be a number");
  endif

  if nargin == 3
    if  !ischar(precision)
      error("expected presision to be a string");
    endif
    precision = tolower(precision);
    if !strcmp(precision, "uint8") && !strcmp(precision, "int8") && !strcmp(precision, "uint16") && !strcmp(precision, "int16")
      error("expected pression to be (u)int8 or (u)int16 string");
    endif
  else
    precision = 'uint8';
  endif

  datasize = 1;
  if (strcmp(precision,'uint16') || strcmp(precision,'int16'))
    datasize = 2;
  endif

  % read request
  [tmp, sz] = sendCommand(dev.arduinoobj, "i2c", ARDUINO_I2C_READ, [dev.address numbytes*datasize]);
  # skip address and return the data

  out = typecast(uint8(tmp(2:end)), precision);

  if (strcmp(precision,'uint16') || strcmp(precision,'int16'))
    sz = sz/2;
    if (endian == 'L' && strcmp(dev.bitorder,'msbfirst')) || (endian == 'B' && strcmp(dev.bitorder, 'lsbfirst'))
      out = swapbytes (out); 
    endif
  else
    if (strcmp(precision, 'int8'))
      out = int8(tmp(2:end))
    else
      out = tmp(2:end);
    endif
  endif
endfunction
