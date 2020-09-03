## Copyright (C) 2019-2020 John Donoghue <john.donoghue@ieee.org>
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

classdef ultrasonic < handle
  ## -*- texinfo -*- 
  ## @deftypefn {} {@var{dev} =} ultrasonic (@var{ar}, @var{triggerpin})
  ## @deftypefnx {} {@var{dev} =} ultrasonic (@var{ar}, @var{triggerpin}, @var{echopin})
  ## @deftypefnx {} {@var{dev} =} ultrasonic (@var{ar}, @var{triggerpin}, @var{echopin}, @var{propname}, @var{propvalue})
  ## Create an ultrasonic object to communicate to a connected ultrasonic device
  ##
  ## @subsubheading Inputs
  ## @var{ar} - connected arduino object
  ##
  ## @var{triggerpin} - trigger pin for attached device.
  ##
  ## @var{echopin} - trigger pin for attached device.
  ##
  ## @var{propname}, @var{propvalue} - property name/value pair for values to pass to devices.
  ##
  ## Currently known properties:
  ## @table @asis
  ## @item outputformat
  ## string designating number format for output ('double')
  ## @end table
  ##
  ## @subsubheading Outputs
  ## @var{dev} - created ultrasonic object
  ##
  ## @subsubheading Properties
  ## The ultrasonic object has the following public properties:
  ## @table @asis
  ## @item parent
  ## The parent (arduino) for this device
  ## @item pins
  ## pins used by this object
  ## @item triggerpin
  ## trigger used for created object
  ## @item echopin
  ## Echo pin set for object
  ## @item outputformat
  ## Output format for the created onject
  ## @end table
  ##
  ## @seealso{arduino, readDistance, readEchoTime}
  ## @end deftypefn

  properties (Access = private)
    id = [];
    pins = {};
    outputformat = "double";
    parent = [];
    resourceowner = "ultrasonic";
  endproperties

  methods (Access = public)
    function this = ultrasonic (varargin)
      ARDUINO_ULTRASONIC_CONFIG = 1;
  
      if nargin < 2
        error ("expects arduino object and triggerpin pin");
      endif
  
      ar = varargin{1};
      triggerpin = varargin{2};
      echopin = [];
      if nargin > 2
        echopin = varargin{3};
      endif
  
      if nargin > 3 && mod(nargin-3, 2) != 0
        error ("arduino: expected property name, value pairs");
      endif
      if !iscellstr (varargin(4:2:nargin))
        error ("arduino: expected property names to be strings");
      endif

      this.id = [];
      this.pins = {};
      this.outputformat = "double";
  
      for i = 4:2:nargin
        propname = tolower(varargin{i});
        propvalue = varargin{i+1};
    
        % printf("%s = %s\n", propname, propvalue);
        if strcmp (propname, "outputformat")
          if !ischar(propvalue)
            error("outputformat should be a string");
          endif
          this.outputformat = tolower(propvalue);
          # NOTE:currently outputformat is ignored
        endif
        
      endfor
      
      if (!isa (ar, "arduino"))
        error("expects arduino object");
      endif
  
      this.parent = ar;
      this.resourceowner = "ultrasonic";
  
      tmp_pins = {};

      validatePin(ar, triggerpin, 'digital')
      tmp_pins{end+1} = getPinInfo(ar, triggerpin);

      if !isempty(echopin)
        validatePin(ar, echopin, 'digital')
        tmp_pins{end+1} = getPinInfo(ar, echopin);
      endif
  
      this.pins = tmp_pins;
      this.id = tmp_pins{1}.terminal;
  
      try

        configurePin(ar, tmp_pins{1}.name, "digitaloutput")
        configurePinResource (ar, tmp_pins{1}.name, this.resourceowner, "digitaloutput", true);

        if numel(tmp_pins) > 1
          configurePin(ar, tmp_pins{2}.name, "digitaloutput")
          configurePinResource (ar, tmp_pins{2}.name, this.resourceowner, "digitalinput", true);
        endif
          
        if numel(tmp_pins) > 1
          [tmp, sz] = sendCommand(this.parent, this.resourceowner, ARDUINO_ULTRASONIC_CONFIG, [this.id 1 tmp_pins{2}.terminal]);
        else
          [tmp, sz] = sendCommand(this.parent, this.resourceowner, ARDUINO_ULTRASONIC_CONFIG, [this.id 1]);
        endif
    
      catch
        for i=1:numel(tmp_pins)
          configurePinResource(ar, tmp_pins{i}.name, tmp_pins{i}.owner, tmp_pins{i}.mode, true)
          configurePin(ar, tmp_pins{i}.name, tmp_pins{i}.mode)
        endfor
        rethrow (lasterror);
      end_try_catch

      #
      # set clean up function
      # this.cleanup = onCleanup (@() cleanupUltrasonic (ar, this.resourceowner, tmp_pins));
          
    endfunction
  endmethods
endclassdef

%!shared arduinos
%! arduinos = scanForArduinos(1);

%!assert(numel(arduinos), 1);

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%!
%! x = ultrasonic(ar, "d9");
%! assert(!isempty(x));
%! assert(isa(x, "ultrasonic"))

%!test
%! ar = arduino();
%! x = ultrasonic(ar, "d9", "d10");
%! assert(!isempty(x));

%!test
%! ar = arduino();
%! fail ('ultrasonic();', 'expects arduino object and triggerpin pin') 
%! fail ('ultrasonic(ar);', 'expects arduino object and triggerpin pin') 
%! fail ('ultrasonic(ar, "hello");', 'arduino: unknown pin hello') 
