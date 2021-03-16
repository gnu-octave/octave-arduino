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

## -*- texinfo -*- 
## @deftypefn {} {} writeRegister (@var{dev}, @var{reg}, @var{datain})
## @deftypefnx {} {} writeRegister (@var{dev}, @var{dev}, @var{datain}, @var{precision})
## Write data to i2c device object at a given registry position
## using optional precision for the data byte used for the data.
##
## @subsubheading Inputs
## @var{dev} - connected i2c device opened using device
##
## @var{reg} - registry position to write to.
##
## @var{datain} - data to write to device. Datasize should not exceed the constraints 
## of the data type specified for the precision.
##
## @var{precision} - Optional precision for the input write data.
## Currently known precision values are uint8 (default), int8, uint16, int16
##
## @seealso{arduino, device, read}
## @end deftypefn

function writeRegister (dev, reg, datain, precision)
  persistent endian;
  if isempty (endian)
    [~, ~, endian] = computer ();
  endif
 
  persistent ARDUINO_I2C_WRITEREG = 8;

  if nargin < 3 || nargin > 4
    print_usage ();
  endif

  if !strcmp(dev.interface, "I2C")
    error("@device.writeRegister: not a I2C device");
  endif

  if ~isnumeric (reg)
    error("@device.writeRegister: expected reg to be a number");
  endif
 
  if nargin == 4
    if  !ischar (precision)
      error ("@device.writeRegister: expected precision to be a string");
    endif
    precision = tolower (precision);
    if !strcmp (precision, "uint8") && !strcmp (precision, "int8") && !strcmp (precision, "uint16") && !strcmp(precision, "int16")
      error("@device.writeRegister: expected pression to be (u)int8 or (u)int16 string");
    endif
  else
    precision = 'uint8';
  endif

  % todo convert reg, data in to correct format
  if (strcmp (precision,'uint16'))
    reg = uint16 (reg);
    datain = uint16 (datain);
    if (endian == 'L')
      reg = swapbytes (reg); 
      datain = swapbytes (datain);
    endif
    reg = typecast (reg, 'uint8');
    datain = typecast (datain, 'uint8');
  elseif (strcmp (precision,'int16'))
    reg = uint16 (reg);
    datain = int16 (datain);
    if (endian == 'L')
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

  sendCommand (dev.parent, "i2c", ARDUINO_I2C_WRITEREG, [dev.devinfo.bus dev.devinfo.address reg datain]);

endfunction
