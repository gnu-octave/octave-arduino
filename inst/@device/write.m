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
## @deftypefn {} {} write (@var{dev}, @var{datain})
## @deftypefnx {} {} write (@var{dev}, @var{datain}, @var{precision})
## Write data to a I2C or serial device object
## using optional precision for the data byte used for the data.
##
## @subsubheading Inputs
## @var{dev} - connected i2c or serial device opened using device
##
## @var{datain} - data to write to device. Datasize should not exceed the constraints 
## of the data type specified for the precision.
##
## @var{precision} - Optional precision for the input write data.
## Currently known precision values are uint8 (default), int8, uint16, int16
##
## @seealso{arduino, device, read}
## @end deftypefn

function write (dev, datain, precision)
  persistent endian;
  if isempty(endian)
    [~, ~, endian] = computer ();
  endif

  persistent ARDUINO_I2C_WRITE = 6;
  persistent ARDUINO_SERIAL_WRITE = 2;
 
  if nargin < 2 || nargin > 3
    print_usage ();
  endif

  if !strcmp(dev.interface, "I2C") && !strcmp(dev.interface, "Serial")
    error("@device.write: not a I2C or Serial device");
  endif

  if nargin == 3
    if  !ischar (precision)
      error ("@device.write: expected presision to be a atring");
    endif
    precision = tolower (precision);
    if !strcmp (precision, "uint8") && !strcmp (precision, "int8") && !strcmp (precision, "uint16") && !strcmp(precision, "int16")
      error ("@device.write: expected pression to be (u)int8 or (u)int16 string");
    endif
  else
    precision = 'uint8';
  endif

  if (strcmp (precision,'uint16'))
    datain = uint16(datain);
    if (endian == 'L')
      datain = swapbytes (datain); 
    endif
    datain = typecast (datain, 'uint8');
  elseif (strcmp (precision,'int16'))
    datain = int16(datain);
    if (endian == 'L')
      datain = swapbytes (datain); 
    endif
    datain = typecast (datain, 'uint8');
  else
    if (strcmp (precision, 'int8'))
      datain = typecast (int8(datain), 'uint8');
    else
      datain = typecast (uint8(datain), 'uint8');
    endif
  endif

  % write request
  if strcmp(dev.interface, "I2C")
    [tmp, sz] = sendCommand (dev.parent, "i2c", ARDUINO_I2C_WRITE, [dev.devinfo.bus dev.devinfo.address datain]);
  else
    [tmp, sz] = sendCommand (dev.parent, "serial", ARDUINO_SERIAL_WRITE, [dev.devinfo.id datain]);
  endif
endfunction
