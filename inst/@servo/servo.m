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
## @deftypefn {} {@var{obj} = } servo (@var{arduinoobj}, @var{pin})
## @deftypefnx {} {@var{obj} = } servo (@var{arduinoobj}, @var{pin}, @var{propertyname}, @var{propertyvalue})
## Rcreate servo object @var{obj} on arduino board @var{arduinoobj} controlling
## pin @var{pin}.
##
## @var{obj} - servo object
##
## @var{arduinoobj} - connected arduino object
##
##  @var{propertyname},  @var{propertyvalue} - name value pairs for properties to pass
## to the created servo object.
##
## Current properties are:
## @table @asis
## @item minpulseduration
## min PWM pulse value in seconds.
## @item maxpulseduration
## max PWM pulse value in seconds.
## @end table
##
## Example:
## @example
## # create arduino connection
## ar = ardiuino();
## # create hobby servo (1 - 2 ms puse range)
## servo = servo(ar, "d9", "minpulseduration", 1.0e-3, "maxpulseduration", 2e-3);
## # center the servo
## writePosition(servo, 0.5);
## @end example
##
## @seealso{arduino, readPosition, writePosition}
## @end deftypefn


function this = servo(varargin)
  ARDUINO_SERVO_CONFIG = 1;
  
  if nargin < 2
    error("expects arduino object and servo pin");
  endif
  
  ar = varargin{1};
  pin = varargin{2};
  
  this.arduinoobj = [];
  this.minpulseduration = 5.44e-04;
  this.maxpulseduration = 2.40e-03;
  this.pins = {};
  
  if mod(nargin, 2) != 0
    error ("arduino: expected property name, value pairs");
  endif
  if !iscellstr (varargin(3:2:nargin))
    error ("arduino: expected property names to be strings");
  endif
  
  for i = 3:2:nargin
    propname = tolower(varargin{i});
    propvalue = varargin{i+1};
    
    #printf("%s = %s\n", propname, propvalue);
    if propname == "minpulseduration"
      if !isnumeric(propvalue)
        error("minpulseduration should be a number");
      endif
      this.minpulseduration = propvalue;
    elseif propname == "maxpulseduration"
      if !isnumeric(propvalue)
        error("maxpulseduration should be a number");
      endif
      this.maxpulseduration = propvalue;
    endif
      
  endfor
    
  if (!isa (ar, "arduino"))
    error("expects arduino object");
  endif
    
  this.arduinoobj = ar;
    
  validatePin(ar, pin,'pwm');
    
  configurePin(ar, pin, "pwm");
    
  pininfo = ar.get_pin(pin);
    
  this.pins{end+1} = pininfo;
    
  sendCommand(ar, "servo", ARDUINO_SERVO_CONFIG, [pininfo.id]);
    
  this = class (this, "servo");
endfunction

%!shared ar
%! ar = arduino();

%!test
%! servo = servo(ar, "d9");
%! assert(!isempty(servo));
%! assert(isa(servo, "servo"));

%!error <expects arduino object and servo pin> servo();

%!error <expects arduino object and servo pin> servo(ar);

%! servo = servo(ar, "d9", "minpulseduration", 1.0e-3, "maxpulseduration", 2e-3);
%! assert(!isempty(servo));
%! assert(servo.minpulseduration, 1.0e-3);
%! assert(servo.maxpulseduration, 2.0e-3);
