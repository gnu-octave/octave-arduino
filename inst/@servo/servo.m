## Copyright (C) 2018-2020 John Donoghue <john.donoghue@ieee.org>
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

classdef servo < handle
  ## -*- texinfo -*- 
  ## @deftypefn {} {@var{obj} = } servo (@var{arduinoobj}, @var{pin})
  ## @deftypefnx {} {@var{obj} = } servo (@var{arduinoobj}, @var{pin}, @var{propertyname}, @var{propertyvalue})
  ## Create a servo object using a specified pin on a arduino board.
  ##
  ## @subsubheading Inputs
  ## @var{obj} - servo object
  ##
  ## @var{arduinoobj} - connected arduino object
  ##
  ## @var{propertyname},  @var{propertyvalue} - name value pairs for properties to pass
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
  ## @subsubheading Outputs
  ## @var{obj} - created servo object.
  ##
  ## @subsubheading Example
  ## @example
  ## # create arduino connection
  ## ar = arduino();
  ## # create hobby servo (1 - 2 ms pulse range)
  ## servo = servo(ar, "d9", "minpulseduration", 1.0e-3, "maxpulseduration", 2e-3);
  ## # center the servo
  ## writePosition(servo, 0.5);
  ## @end example
  ##
  ## @subsubheading Properties
  ## The servo object has the following public properties:
  ## @table @asis
  ## @item parent
  ## The parent (arduino) for this device
  ## @item pins
  ## pins used by this object
  ## @item minpulseduration
  ## minpusleduration set for object
  ## @item maxpulseduration
  ## maxpulseduration set for object
  ## @end table
  ##
  ## @seealso{arduino, readPosition, writePosition}
  ## @end deftypefn

  properties (Access = private)
    arduinoobj = [];
    minpulseduration = 5.44e-04;
    maxpulseduration = 2.40e-03;
    pins = {};
  endproperties

  methods (Access = public)

    function this = servo(varargin)
      persistent ARDUINO_SERVO_CONFIG = 1;
  
      if nargin < 2
        error("expects arduino object and servo pin");
      endif
  
      ar = varargin{1};
      pin = varargin{2};
  
      this.arduinoobj = [];
      this.minpulseduration = 5.44e-04;
      this.maxpulseduration = 2.40e-03;
      this.pins = {};
  
      if mod (nargin, 2) != 0
        error ("servo: expected property name, value pairs");
      endif
      if !iscellstr (varargin(3:2:nargin))
        error ("servo: expected property names to be strings");
      endif
  
      for i = 3:2:nargin
        propname = tolower (varargin{i});
        propvalue = varargin{i+1};
    
        #printf("%s = %s\n", propname, propvalue);
        if strcmp(propname,  "minpulseduration") 
          if !isnumeric (propvalue)
            error ("servo: minpulseduration should be a number");
          endif
          this.minpulseduration = propvalue;
        elseif strcmp(propname, "maxpulseduration")
          if !isnumeric (propvalue)
            error ("servo: maxpulseduration should be a number");
          endif
          this.maxpulseduration = propvalue;
        endif
      
      endfor
    
      if (!isa (ar, "arduino"))
        error ("servo: expects arduino object");
      endif

      pininfo = getPinInfo (ar, pin);
    
      this.arduinoobj = ar;
    
      validatePin (ar, pin, 'pwm');
    
      configurePin (ar, pin, "pwm");
    
      this.pins{end+1} = pininfo;
    
      sendCommand (ar, "servo", ARDUINO_SERVO_CONFIG, [pininfo.terminal]);

      # set clean up function
      # this.cleanup = onCleanup (@() cleanupServo (ar, pininfo));
    
    endfunction
  endmethods
endclassdef

%!shared ar
%! ar = arduino();

%!test
%! assert(configurePin(ar, "d9"), "unset") 
%! s = servo(ar, "d9");
%! assert(!isempty(s));
%! assert(isa(s, "servo"));
%! assert(configurePin(ar, "d9"), "pwm") 
%! delete(s)
%! assert(configurePin(ar, "d9"), "unset") 

%!error <expects arduino object and servo pin> servo();

%!error <expects arduino object and servo pin> servo(ar);

%! s = servo(ar, "d9", "minpulseduration", 1.0e-3, "maxpulseduration", 2e-3);
%! assert(!isempty(s));
%! assert(s.minpulseduration, 1.0e-3);
%! assert(s.maxpulseduration, 2.0e-3);
%! delete(s)
