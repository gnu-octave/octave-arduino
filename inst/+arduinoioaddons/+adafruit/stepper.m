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
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

classdef stepper < arduinoio.AddonBase
  ## -*- texinfo -*- 
  ## @deftypefn {} {} arduinoioaddons.adafruit.stepper
  ## Stepper class for stepper control on the adafruit motor shield
  ##
  ## @seealso{arduinoioaddons.adafruit.motorshieldv2}
  ## @end deftypefn
  ##
  ## @subsubheading Properties
  ## @table @asis
  ## @item @var{RPM}
  ## The rpm value set for the stepper motor
  ## @item StepType
  ## the StepType for the stepper (string) which can be "single", 
  ## "double", "interleave" or "microstep"
  ## @item StepsPerRevolution
  ## the StepsPerRevoluion for the stepper (read only)
  ## @item MotorNumber
  ## the motor number for the stepper (read only) value will be 1 or 2.
  ## @item Parent
  ## the parent shield of this stepper (read only)
  ## @end table
  ##
  ## @subheading Methods
  ## @deftypefn {} {@var{obj} =} stepper(@var{mObj}, @var{mnum}, @var{stepsperrev})
  ## @deftypefnx {} {@var{obj} =} stepper(@var{mObj}, @var{mnum}, @var{stepsperrev}, @var{propertyname, propertyvalue} ....)
  ## Constructor to create dcmotor object
  ## @subsubheading Inputs
  ## @var{mObj} - the motor shield object
  ##
  ## @var{mnum} - The motor number (1 or 2)
  ##
  ## @var{stepsperrev} - Number of steps per revolution.
  ##
  ## @var{propertyname, propertyvalue} - Optional property 
  ## name/value pairs to pass to motor object.
  ##
  ## Current known properties are:
  ## @table @asis
  ## @item RPM
  ## the RPM for the stepper (revolutions per minute)
  ## @item StepType
  ## the StepType for the stepper (string) which can be 
  ## "single", "double", "interleave" or "microstep"
  ## @end table
  ##
  ## @subsubheading Outputs
  ## @var{s} - a stepper object
  ##
  ## @subsubheading Example
  ## @example
  ## @code {
  ## a = arduino()
  ## ms = addon(a, "adafruit/motorshieldv2")
  ## mtr = stepper(ms, 1, 200)
  ## }
  ## @end example
  ## @end deftypefn
  ##
  ## @deftypefn {} {} move(@var{sObj}, @var{steps})
  ## Move the motor moving in the specified steps using the configured RPM.
  ##
  ## @subsubheading Inputs
  ## @var{sObj} - the stepper object
  ##
  ## @subsubheading Outputs
  ## None
  ##
  ## @seealso{adafruit.motorshieldv2}
  ## @end deftypefn
  ##
  ## @deftypefn {} {} release(@var{sObj})
  ## Release this motor
  ##
  ## @subsubheading Inputs
  ## @var{sObj} - the stepper object
  ##
  ## @subsubheading Outputs
  ## None
  ##
  ## @seealso{adafruit.motorshieldv2}
  ## @end deftypefn

  properties(Access = private, Constant = true)
    INIT_COMMAND = hex2dec('10');
    FREE_COMMAND = hex2dec('11');
    MOVE_COMMAND = hex2dec('12');
    RELEASE_COMMAND = hex2dec('13');
  endproperties
  
  properties(Access = private)
    cleanup;
  endproperties

  properties(GetAccess = public, SetAccess = private)
    MotorNumber;
    StepsPerRevolution = 0;
  endproperties

  properties(Access = public)
    RPM = 0;
    StepType = "single";
  endproperties

  methods
    function this = stepper(shield, mnum, stepsperrev, varargin)
##      if nargin < 3
##        error ("Expected shield, mnum and stepsperrev")
##      endif
##
##      if ~isa(shield, "arduinoioaddons.adafruit.motorshieldv2")
##        error("Expected shield to be a motorshieldv2 object");
##      endif
##
##      # check num is a number
##      if mnum != 1 && mnum != 2
##        error("Expected motor number to be 1 or 2");
##      endif

      p = inputParser(CaseSensitive=false, FunctionName='adafruit/stepper');
      
      validate_shield = @(x) isa(x, "arduinoioaddons.adafruit.motorshieldv2");
      validate_mtrnum = @(x) (isnumeric(x) && isscalar(x) && (x ==1 || x ==2));
      validate_steps = @(x) (isnumeric(x) && isscalar(x) && (x > 0));
      validate_rpm = @(x) (isnumeric(x) && isscalar(x) && (x > 0));

      p.addRequired('shield',validate_shield);
      p.addRequired('mnum',validate_mtrnum);
      p.addRequired('stepsperrev',validate_steps);      
      
      p.addParameter('RPM', 0, validate_rpm);
      p.addParameter('StepType', "single", @(x) any(validatestring(x,{"single", "double", "interleave", "microstep"})));
      p.parse(shield, mnum, stepsperrev, varargin{:});
      
      this.Parent = p.Results.shield;
      this.MotorNumber = p.Results.mnum;
      this.StepsPerRevolution = p.Results.stepsperrev;
      this.RPM = p.Results.RPM;
      this.StepType = p.Results.StepType;

      intval = uint16(stepsperrev);
      steps = [ bitshift(intval,-8) bitand(intval, 255)];

      sendCommand(this.Parent, this.INIT_COMMAND,[this.MotorNumber-1 steps]);
      this.cleanup = onCleanup (@() sendCommand(this.Parent, this.FREE_COMMAND, [this.MotorNumber-1 steps]));
    endfunction

    function move(this, steps)

      if steps < 0
        direction = 0;
        steps = -steps;
      else
        direction = 1;
      endif

      intval = uint16(steps);
      steps = [ bitshift(intval,-8) bitand(intval, 255)];

      intval = uint16(this.RPM);
      rpm = [ bitshift(intval,-8) bitand(intval, 255)];

      steptype = 0;
      switch lower(this.StepType)
        case "single"
          steptype = 0;
        case "double"
          steptype = 1;
        case "interleave"
          steptype = 2;
        case "microstep"
          steptype = 3;
      endswitch

      sendCommand(this.Parent,this.MOVE_COMMAND,[this.MotorNumber-1, direction, rpm, steps, steptype]);
    endfunction

    function release(this)
      sendCommand(this.Parent,this.RELEASE_COMMAND,[this.MotorNumber-1]);
    endfunction

    function set.RPM(this, newrpm)
      # check rpm
      if !isnumeric(newrpm) || newrpm < 0
       error("RPM should be a positive number");
      endif
      this.RPM = newrpm;
    endfunction

    function set.StepType(this, val)
      validate_val = validatestring (val, {"single", "double", "interleave", "microstep"});
      this.StepType = val;
    endfunction

    function disp(this)
      printf("    %s with properties\n", class(this));
      printf("               MotorNumber = %d\n", this.MotorNumber);
      printf("                       RPM = %d\n", this.RPM);
      printf("        StepsPerRevolution = %d\n", this.StepsPerRevolution);
      printf("                  StepType = %s\n", this.StepType);
    endfunction

  endmethods
 
endclassdef

