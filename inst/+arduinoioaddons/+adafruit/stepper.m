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

## -*- texinfo -*- 
## @deftypefn {} {} arduinoioaddons.adafruit.stepper
## Stepper class for stepper control on the adafruit motor shield
##
## @seealso{arduinoioaddons.adafruit.motorshieldv2}
## @end deftypefn
##
## @subsubheading Properties
## @var{RPM} - The rpm value set for the stepper motor
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
## @var{propertyname, propertyvalue} - Optional property name/value pairs to pass to motor object.
##
## Current known properties are:
## @table @asis
## @item None
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
##
## @deftypefn {} {} RPM(@var{sObj}, @var{rpm})
## @deftypefnx {} {@var{rpm} =} Speed(@var{sObj})
## Get / set the stepper RPM
##
## @subsubheading Inputs
## @var{sObj} - the stepper object
##
## @var{rpm} - the RPM to set for the stepper
##
## @subsubheading Outputs
## @var{rpm} - the rpm set for the stepper
##
## @seealso{adafruit.motorshieldv2}
## @end deftypefn

classdef stepper < arduinoio.AddonBase
  properties(Access = private, Constant = true)
    INIT_COMMAND = hex2dec('10');
    FREE_COMMAND = hex2dec('11');
    MOVE_COMMAND = hex2dec('12');
    RELEASE_COMMAND = hex2dec('13');
  endproperties   
  properties(Access = private)
    motornum;
    rpm = 0;
    stepsperrev = 0;
    steptype = "single";
    cleanup;
  endproperties

  methods
    function this = stepper(shield, mnum, stepsperrev, varargin)
      if nargin < 3
	error ("Expected shield and mnum")
      endif
      # TODO: check shield is our motorshield
      if ~isa(shield, "arduinoioaddons.adafruit.motorshieldv2")
	 error("Expected shield to be a motorshieldv2 object");
      endif

      # check num is a number
      if mnum != 1 && mnum != 2 && mnum != 3 && mnum != 4
	 error("Expected mnum to be 1, 2");
      endif

      this.Parent = shield;
      this.motornum = mnum;
      this.stepsperrev = stepsperrev;

      intval = uint16(stepsperrev);
      steps = [ bitshift(intval,-8) bitand(intval, 255)];

      sendCommand(this.Parent, this.INIT_COMMAND,[this.motornum-1 steps]);
      this.cleanup = onCleanup (@() sendCommand(this.Parent, this.FREE_COMMAND, [this.motornum-1 steps]));
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

      intval = uint16(this.rpm);
      rpm = [ bitshift(intval,-8) bitand(intval, 255)];

      steptype = 0;

      sendCommand(this.Parent,this.MOVE_COMMAND,[this.motornum-1, direction rpm, steps steptype]);
    endfunction

    function release(this)
      sendCommand(this.Parent,this.RELEASE_COMMAND,[this.motornum-1]);
    endfunction

    function rpm = RPM(this, newrpm)
      if nargin < 2
	rpm = this.rpm;
      else
	# check rpm
	if newrpm < 0
	  error("RPM should be a positive number");
	endif
	this.rpm = newrpm;
      endif
    endfunction

    function display(this)
      printf("%s = \n", inputname(1));
      printf("    %s with properties\n", class(this));
      printf("               MotorNumber = %d\n", this.motornum);
      printf("                       RPM = %d\n", this.rpm);
      printf("        StepsPerRevolution = %d\n", this.stepsperrev);
      printf("                  StepType = %s\n", this.steptype);
    endfunction

  endmethods
 
endclassdef

