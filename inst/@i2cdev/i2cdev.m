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
## @deftypefn {} {@var{dev} =} i2cdev (@var{ar}, @var{address})
## @deftypefnx {} {@var{dev} =} i2cdev (@var{ar}, @var{address}, @var{propname}, @var{propvalue})
## Create an i2cdev object to communicate to the i2c port on a connected arduino.
##
## @var{ar} - connected rduino object
## @var{address} - address to use for device on i2c bus.
## @var{propname}, @var{propvalue} - property name/value pair for values to pass to devices.
## Currently known properties:
## bus - bus number (when arduino board supports multiple i2c buses)
## with value of 0 or 1.
##
## @seealso{arduino}
## @end deftypefn

function p = i2cdev(varargin)
  ARDUINO_I2C_CONFIG = 1;

  % Bus X (for where more than 1 i2c port)

  if nargin < 2
    error("expects arduino object and address");
  endif

  ar = varargin{1};
  address = varargin{2};
  bus = 0;
  bitorder = 'msbfirst';

  if !isnumeric(address) || address < 0 || address > 255
    error("expected address between 0 .. 255");
  endif

  if mod(nargin, 2) != 0
    error ("arduino: expected property name, value pairs");
  endif
  if !iscellstr (varargin(3:2:nargin))
    error ("arduino: expected property names to be strings");
  endif

  for i = 3:2:nargin
    propname = tolower(varargin{i});
    propvalue = varargin{i+1};

    # printf("%s = %s\n", propname, propvalue);
    if propname == "bus"
      if !isnumeric(propvalue) || propvalue < 0
        error("bus should be a positive number")
      endif
      bus = propvalue;
    elseif propname == "bitorder"
      if !ischar(propvalue)
        error("bitorder should be a 'lsbfirst'  or 'msbfirst'");
      endif
      propvalue = tolower(propvalue);
      if propvalue != 'lsbfirst' && propvalue != 'msbfirst'
        error("bitorder should be a 'lsbfirst'  or 'msbfirst'");
      endif
      bitorder = propvalue;
    endif

  endfor

  if (!isa (ar, "arduino"))
   error("expects arduino object");
  endif

  p.address = address;
  p.arduinoobj = ar;
  p.bus = bus;
  p.bitorder = bitorder;

  % TODO on calling setup with the CS pin, returns back the other pins that we then setup as used ?
  % sendCommand
  # there only ever one port ??? with CS able to be completely independant ??
  name = "i2c_";
  if bus > 0
    name = ["i2c" num2str(bus) "_"]; 
  endif
  p.pins = ar.get_group(name);
  if numel(p.pins) != 2
     error("expected 2 I2C pins but only have %d", numel(p.pins) )
  endif

  # TODO: save old modes and set them via force if we fail trying to alloc the whole group
  try
    for i=1:2
      configurePin(ar, p.pins{i}.name, "i2c")
    endfor
    # TODO: bitrate, order etc
    bitorder = 0;
    [tmp, sz] = sendCommand(p.arduinoobj, "i2c", ARDUINO_I2C_CONFIG, [bus 1]);
  catch
    for i=1:2
      configurePinResource(ar, p.pins{i}.name, p.pins{i}.owner, p.pins{i}.mode, true)
      configurePin(ar, p.pins{i}.name, p.pins{i}.mode)
    endfor
    rethrow (lasterror)
  end_try_catch

  p = class (p, "i2cdev");
endfunction

%!shared arduinos
%! arduinos = scanForArduinos(1);

%!assert(numel(arduinos), 1);

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%! i2c = i2cdev(ar, 10);
%! assert(!isempty(i2c));
%! assert(i2c.address, 10);
%! assert(i2c.bitorder, 'msbfirst');

