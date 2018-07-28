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
## @deftypefn {} {} validatePin (@var{ar}, @var{pin}, @var{type})
## validate that the mode is allowed for specified pin
##
## @var{ar} - connected arduino object
## @var{pin} -  name of pin to query mode validity of
## @var{mode} - mode to query
## 
## Known modes are:
## 'I2C'
## 'SPI'
## 'PWM'
## 'Servo'
## 'analog'
## 'digital'
##
## @seealso(arduino}
## @end deftypefn

function validatePin (obj, pin, type)
  if nargin < 3
    error ("@arduino.validatePin: expected pin name and type");
  endif
  if !ischar(pin) || !ischar(type)
    error ("@arduino.validatePin: expected pin name and type as string");
  endif

  pininfo = obj.get_pin(pin);
  
  # use type length, so can find spiX_XXXX etc when looking for SPI
  idx = find( cellfun(@(x) strncmpi(x, type, length(type)), pininfo.modes), 1);
  
  # check with mode allowed to that pin
  # if isnt, error
  
  if isempty(idx)
    error ("@arduino.validatePin: invalid mode for this pin");
  endif
  
endfunction


%!shared ar
%! ar = arduino();

%!test
%! validatePin(ar, "d1", "digital");
%! validatePin(ar, "a0", "digital");
%! validatePin(ar, "a0", "analog");

%!error <invalid mode> validatePin(ar,"d1", "analog");

%!error <undefined> validatePin()

%!error <expected pin> validatePin(ar)

%!error <expected pin> validatePin(ar, "d1")

%!error <unknown pin> validatePin(ar, "xd1", "digital")

