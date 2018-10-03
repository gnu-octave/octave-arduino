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
## @deftypefn {} {@var{data} =} readRegister (@var{dev}, @var{reg}, @var{numbytes})
## @deftypefnx {} {@var{data} =} readRegister (@var{dev}, @var{reg}, @var{numbytes}, @var{precision})
## Read a specified number of bytes from a register of an i2cdev object 
## using optional precision for bytesize.
##
## @subsubheading Inputs
## @var{dev} - connected i2c device opened using i2cdev
##
## @var{reg} - registry value number
##
## @var{numbytes} - number of bytes to read.
##
## @var{precision} - Optional precision for the output data read data.
## Currently known precision values are uint8 (default), int8, uint16, int16
##
## @subsubheading Output
## @var{data} - data read from device.
##
## @seealso{arduino, i2cdev}
## @end deftypefn

function out = readRegister(dev, reg, numbytes, precision)
  persistent endian;
  if isempty(endian)
    [~, ~, endian] = computer ();
  endif
  persistent ARDUINO_I2C_READREG = 5;

  if nargin < 3 || nargin > 4
    print_usage ();
  endif

  if ~isnumeric (reg)
    error ("@i2c.readRegister: expected reg to be a number");
  endif
  if ~isnumeric (numbytes)
    error ("@i2c.readRegister: expected numbytes to be a number");
  endif

  if nargin == 4
    if  !ischar (precision)
      error ("@i2c.readRegister: expected presision to be a string");
    endif
    precision = tolower (precision);
    if !strcmp (precision, "uint8") && !strcmp (precision, "int8") && !strcmp (precision, "uint16") && !strcmp(precision, "int16")
      error ("@i2c.readRegister: expected pression to be (u)int8 or (u)int16 string");
    endif
  else
    precision = 'uint8';
  endif

  if (strcmp (precision,'uint16'))
    reg = uint16(reg);
    if (endian == 'L' && strcmp (dev.bitorder,'msbfirst')) || (endian == 'B' && strcmp (dev.bitorder, 'lsbfirst'))
      reg = swapbytes (reg); 
    endif
    reg = typecast (reg, 'uint8');
    regsz = 2;
  elseif (strcmp (precision,'int16'))
    reg = int16(reg);
    if (endian == 'L' && strcmp (dev.bitorder,'msbfirst')) || (endian == 'B' && strcmp (dev.bitorder, 'lsbfirst'))
      reg = swabytes (reg); 
    endif
    reg = typecast (reg, 'uint8');
    regsz = 2;
  else
    if (strcmp (precision, 'int8'))
      reg = typecast (int8(reg), 'uint8');
    else
      reg = typecast (uint8(reg), 'uint8');
    endif
    regsz = 1;
  endif
  % read  reg
  [tmp, sz] = sendCommand (dev.arduinoobj, "i2c", ARDUINO_I2C_READREG, [dev.address regsz reg numbytes*regsz]);
  # skip address and and regsz and return the data
  out = tmp(3:end);

  % convert the outputs
  if (strcmp (precision,'uint16') || strcmp (precision,'int16'))
    sz = sz/2;
    out = typecast (out, precision);
    if (endian == 'L' && strcmp (dev.bitorder,'msbfirst')) || (endian == 'B' && strcmp (dev.bitorder, 'lsbfirst'))
      out = swapbytes (out); 
    endif
  else
    if (strcmp (precision, 'int8'))
      out = int8(out);
    else
      out = uint8(out);
    endif
  endif

endfunction
