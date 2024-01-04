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
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

classdef motorshieldv2 < arduinoio.LibraryBase
  ## -*- texinfo -*- 
  ## @deftypefn {} {} arduinoioaddons.adafruit.motorshieldv2
  ## Adafruit motor shield addon
  ##
  ## @seealso{addon}
  ## @end deftypefn
  ##
  ## @subsubheading Properties
  ## @var{Parent} - the parent arduino object.
  ##
  ## @var{Pins} - the pins allocated the addon.
  ##
  ## @var{I2CAddress} - the i2c address used for accessing this shield.
  ##
  ## @var{PWMFrequency} - the set PWM frequency for this shield.
  ##
  ## @subheading Methods
  ## @deftypefn {} {@var{obj} =} motorshieldv2(@var{arObj})
  ## @deftypefnx {} {@var{obj} =} motorshieldv2(@var{arObj}, @var{propertyname, propertyvalue} ....)
  ## Constructor to create motorshieldv2 addon object
  ## @subsubheading Inputs
  ## @var{arObj} - the arduino parent object
  ##
  ## @var{propertyname, propertyvalue} - optional property name, value pairs.
  ## Current known properties are:
  ## @table @asis
  ## @item address
  ## I2C address of the motor shield  (default 0x60)
  ## @item pwmfrequency
  ## PWM Frequency to set on shield  (default 1600)
  ## @end table
  ##
  ## @subsubheading Outputs
  ## @var{obj} - created  motorshieldv2 object
  ##
  ## @subsubheading Example
  ## @example
  ## @code {
  ## a = arduino()
  ## mtr = addon(a, "adafruit/motorshieldv2")
  ## }
  ## @end example
  ## @end deftypefn
  ##
  ## @deftypefn {} {@var{s} =} servo(@var{mObj}, @var{mtrnum})
  ## @deftypefnx {} {@var{s} =} servo(@var{mObj}, @var{mtrnum}, @var{propertyname}, @var{propertyvalue} ...)
  ## Create a servo object
  ##
  ## @subsubheading Inputs
  ## @var{mObj} - the motor shield object
  ##
  ## @var{mtrnum} - The servo motor number, where 1 is servo on 
  ## pin "d10" and 2 is a servo on pin "d9"
  ##
  ## @var{propertyname}, @var{propertyvalue} - Optional property 
  ## name/value pairs to pass to servo object.
  ##
  ## Properties are the same as the base servo object.
  ##
  ## @subsubheading Outputs
  ## @var{s} - a servo object
  ##
  ## @subsubheading Example
  ## @example
  ## @code {
  ## a = arduino()
  ## ms = addon(a, "adafruit/motorshieldv2")
  ## # get servo 1 (servo on pin D10)
  ## s = ms.servo(1)
  ## }
  ## @end example
  ##
  ## The function if the equivalent of calling the arduino.servo with
  ## the D9 or D10 pin has the input pin.
  ##
  ## @seealso{servo}
  ## @end deftypefn
  ##
  ## @deftypefn {} {@var{s} =} stepper(@var{mObj}, @var{mtrnum}, @var{stepsperrev})
  ## @deftypefnx {} {@var{s} =} stepper(@var{mObj}, @var{mtrnum}, @var{stepsperrev}, @var{propertyname}, @var{propertyvalue} ...)
  ## Create a stepper motor object
  ##
  ## @subsubheading Inputs
  ## @var{mObj} - the motor shield object
  ##
  ## @var{mtrnum} - The stepper motor number (1 or 2)
  ##
  ## @var{stepsperrev} - Number of steps per revolution.
  ##
  ## @var{propertyname}, @var{propertyvalue} - Optional property
  ## name/value pairs to pass to stepper object.
  ##
  ## @subsubheading Outputs
  ## @var{s} - a stepper object
  ##
  ## @end deftypefn
  ##
  ## @deftypefn {} {@var{s} =} dcmotor(@var{mObj}, @var{mtrnum})
  ## @deftypefnx {} {@var{s} =} dcmotor(@var{mObj}, @var{mtrnum}, @var{propertyname}, @var{propertyvalue} ...)
  ## Create a dcmotor motor object
  ##
  ## @subsubheading Inputs
  ## @var{mObj} - the motor shield object
  ##
  ## @var{mtrnum} - The motor number (1 - 4)
  ##
  ## @var{propertyname}, @var{propertyvalue} - Optional property 
  ## name/value pairs to pass to motor object.
  ##
  ## @subsubheading Outputs
  ## @var{s} - a dcmotorv2 object
  ##
  ## @end deftypefn

  # commands
  properties(Access = private, Constant = true)
    INIT_COMMAND = hex2dec('00');
    FREE_COMMAND = hex2dec('01');
  endproperties 
  
  properties(Access = protected, Constant = true)
    LibraryName = 'adafruit/MotorShieldV2';
    DependentLibraries = { "i2c", "servo" };
    ArduinoLibraryHeaderFiles = {};
    CppHeaderFile = fullfile(arduinoio.FilePath(mfilename('fullpath')), 'motorshieldv2.h');
    CppClassName = 'MotorShieldV2Addon';
  endproperties
  
  properties(Access = private)
    i2c;
    cleanup;
  endproperties
  
  properties(GetAccess = public, SetAccess = private)
    PWMFrequency;
    I2CAddress;
  endproperties
  
  methods
    # constructor
    function obj = motorshieldv2(parentObj, varargin)

      # parse args
      p = inputParser(CaseSensitive=false, FunctionName='adafruit/MotorShieldV2');
      p.addParameter('I2CAddress', 0x60, @isnumeric);
      p.addParameter('PWMFrequency', 1600, @isnumeric);
      p.parse(varargin{:});

      obj.Parent = parentObj;
      obj.I2CAddress = p.Results.I2CAddress;
      obj.i2c = device(parentObj, "i2caddress", p.Results.I2CAddress);
      obj.Pins = obj.i2c.Pins;
      obj.PWMFrequency = p.Results.PWMFrequency;

      intval = uint16(obj.PWMFrequency);
      freq = [ bitshift(intval,-8) bitand(intval, 255)];
      data = sendCommand(obj.Parent, obj.LibraryName, obj.INIT_COMMAND, [p.Results.I2CAddress freq]);

      obj.cleanup = onCleanup (@() sendCommand(obj.Parent, obj.LibraryName, obj.FREE_COMMAND, [p.Results.I2CAddress]));
    endfunction

    function s = servo (obj, mnum, varargin)

      if nargin < 2
        error ("Expected shield and mnum")
      endif

      pinval = [];
      if mnum == 1
        pinval = "d10";
      elseif mnum == 2
        pinval = "d9";
      else
        error ("Invalid servo motor number - (should be 1 or 2)")
      endif

      s = servo(obj.Parent, pinval, varargin{:});

    endfunction

    function s = stepper (obj, mnum, stepsperrev, varargin)

      if nargin < 3
        error ("Expected shield and mnum and stepsperrev")
      endif

      s = arduinoioaddons.adafruit.stepper(obj, mnum, stepsperrev, varargin{:});

    endfunction

    function m = dcmotor (obj, mnum, varargin)

      if nargin < 2
        error ("Expected shield and mnum")
      endif

      m = arduinoioaddons.adafruit.dcmotorv2(obj, mnum, varargin{:});

    endfunction

    function disp(this)
      printf("    %s with properties\n", class(this));
      printf("        I2CAddress = %d (0x%X)\n", this.i2c.i2caddress, this.i2c.i2caddress);
      # show i2c pins as the pins
      printf("        Pins = {\n");
      for i=1:numel(this.Pins)
        printf("            %s\n", this.Pins{i});
      endfor
      printf("        }\n");
      printf("        PWMFrequency = %d\n", this.PWMFrequency);
    endfunction

  endmethods
  
  methods (Access = public)
    function data = sendCommand(obj, commandid, data)
      [data,~] = sendCommand(obj.Parent, obj.LibraryName, commandid, [obj.i2c.i2caddress data]);
    endfunction
  endmethods
endclassdef
