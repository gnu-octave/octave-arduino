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
## @deftypefn {} {@var{dev} =} writeRegister (@var{dev}, @var{reg}, @var{datain})
## @deftypefnx {} {@var{dev} =} writeRegister (@var{dev}, @var{dev}, @var{datain}, @var{precision})
## Write @var{datain} to i2cdev object @var{dev} at registry position @var{reg}
## using optional precision for the data byte used for the data.
##
## @var{dev} - connected i2c device opened using i2cdev
##
## @var{reg} - registry position to write to.
##
## @var{datain} - data to write to device. Datasize should not exceed the contraints 
## of the data type specified for the precison.
##
## @var{precision} - Optional precision for the input write data.
## Currently known precision values are uint8 (defualt), int8, uint16, int16
##
## @seealso{arduino, i2cdev, read}
## @end deftypefn

function writeRegister (dev, reg, datain, precision)
  persistent endian;
  if isempty (endian)
    [~, ~, endian] = computer ();
  endif
 
  persistent ARDUINO_I2C_WRITEREG = 4;

  if nargin < 3 || nargin > 4
    print_usage ();
  endif

  if ~isnumeric (reg)
    error("@i2c.writeRegister: expected reg to be a number");
  endif
 
  if nargin == 4
    if  !ischar (precision)
      error ("@i2c.writeRegister: expected precision to be a string");
    endif
    precision = tolower (precision);
    if !strcmp (precision, "uint8") && !strcmp (precision, "int8") && !strcmp (precision, "uint16") && !strcmp(precision, "int16")
      error("@i2c.writeRegister: expected pression to be (u)int8 or (u)int16 string");
    endif
  else
    precision = 'uint8';
  endif

  % todo convert reg, data in to correct format
  if (strcmp (precision,'uint16'))
    reg = uint16 (reg);
    datain = uint16 (datain);
    if (endian == 'L' && strcmp (dev.bitorder,'msbfirst')) || (endian == 'B' && strcmp (dev.bitorder, 'lsbfirst'))
      reg = swapbytes (reg); 
      datain = swapbytes (datain);
    endif
    reg = typecast (reg, 'uint8');
    datain = typecast (datain, 'uint8');
  elseif (strcmp (precision,'int16'))
    reg = uint16 (reg);
    datain = int16 (datain);
    if (endian == 'L' && strcmp (dev.bitorder,'msbfirst')) || (endian == 'B' && strcmp(dev.bitorder, 'lsbfirst'))
      reg = swabytes (reg); 
      datain = swapbytes (datain);
    endif
    reg = typecast (reg, 'uint8');
    datain = typecast (datain, 'uint8');
  else
    if (strcmp (precision, 'int8'))
      reg = typecast (int8(reg), 'uint8');
      datain = typecast (int8(datain), 'uint8');
    else
      reg = typecast (uint8(reg), 'uint8');
      datain = typecast (uint8(datain), 'uint8');
    endif
  endif

  sendCommand (dev.arduinoobj, "i2c", ARDUINO_I2C_WRITEREG, [dev.address reg datain]);

endfunction
