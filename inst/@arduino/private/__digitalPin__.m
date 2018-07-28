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
## GNU General Public License for more details. see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} __digitalPin__ (@var{obj})
## Private function
## @end deftypefn

function retval = __digitalPin__(obj, pin, value)
  ARDUINO_DIGITAL = 3;

  retval = 0;

  if !ischar(pin) && !isnumeric(pin)
    error ("@arduino.digitalPin: expected pin name as string");
  endif

  pininfo = obj.get_pin(pin);

  if nargin == 2
    mode = "digitalinput";
    datain = uint8([pininfo.id]);
  elseif nargin == 3
    mode = "digitaloutput";
    if value
      val = 1;
    else
      val = 0;
    endif
  
    datain = uint8([pininfo.id val]);
 
  endif

  # first use ?
  if strcmp(pininfo.mode, "unset")
    configurePin(obj, pin, mode)
  else
    [pinstate, pinmode] = pinStateMode(pininfo.mode);
    if !strcmp(pinmode, "digital")
      error ("digitalPin: pin is in incompatable mode");
    endif
  endif
 
  [dataout, status] = __sendCommand__ (obj, 0, ARDUINO_DIGITAL, datain);
  if status != 0
    error ("digitalPin: failed to set/get pin state err=%d", status);
  endif 
 
  if nargin == 2
 
    if dataout(2) != 0
      retval = 1;
    else
      retval = 0;
    endif
  endif
endfunction
