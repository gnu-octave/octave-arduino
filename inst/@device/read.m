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
## @deftypefn {} {@var{data} =} read (@var{dev}, @var{numbytes})
## @deftypefnx {} {@var{data} =} read (@var{dev}, @var{numbytes}, @var{precision})
## Read a specified number of bytes from a i2c or serial device object
## using optional precision for bytesize.
##
## @subsubheading Inputs
## @var{dev} - connected i2c or serial device opened using device
##
## @var{numbytes} - number of bytes to read.
##
## @var{precision} - Optional precision for the output data read data.
## Currently known precision values are uint8 (default), int8, uint16, int16
##
## @subsubheading Outputs
## @var{data} - data read from the device
##
## @seealso{arduino, device}
## @end deftypefn

function out = read (dev, numbytes, precision)
  persistent ARDUINO_I2C_READ = 3;
  persistent ARDUINO_SERIAL_READ = 3;
  persistent endian;
  if isempty(endian)
    [~, ~, endian] = computer ();
  endif

  if nargin < 2 || nargin > 3
    print_usage ();
  endif

  if ~isnumeric (numbytes)
    error("@i2c.read: expected numbytes to be a number");
  endif

  if !strcmp(dev.interface, "I2C") && !strcmp(dev.interface, "Serial")
    error("@device.read: not a I2C or Serial device");
  endif

  if nargin == 3
    if  !ischar (precision)
      error("@device.read: expected presision to be a string");
    endif
    precision = tolower (precision);
    if !strcmp (precision, "uint8") && !strcmp (precision, "int8") && !strcmp (precision, "uint16") && !strcmp(precision, "int16")
      error ("@device.read: expected pression to be (u)int8 or (u)int16 string");
    endif
  else
    precision = 'uint8';
  endif

  datasize = 1;
  if (strcmp (precision,'uint16') || strcmp (precision,'int16'))
    datasize = 2;
  endif

  % read request
  if strcmp(dev.interface, "I2C")
    [tmp, sz] = sendCommand (dev.parent, "i2c", ARDUINO_I2C_READ, [dev.device.address numbytes*datasize]);
  else
    [tmp, sz] = sendCommand (dev.parent, "serial", ARDUINO_SERIAL_READ, [dev.device.id numbytes*datasize dev.device.timeout*10]);
  endif

  # skip address and return the data

  out = typecast (uint8(tmp(2:end)), precision);

  if (strcmp (precision,'uint16') || strcmp (precision,'int16'))
    sz = sz/2;
    if (endian == 'L')
      out = swapbytes (out); 
    endif
  else
    if (strcmp (precision, 'int8'))
      out = int8(tmp(2:end))
    else
      out = tmp(2:end);
    endif
  endif
endfunction
