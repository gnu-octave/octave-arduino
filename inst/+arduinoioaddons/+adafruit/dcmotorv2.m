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
## @deftypefn {} {} arduinoioaddons.adafruit.dcmotorv2
## DC Motor class for dc motor control on the adafruit motor shield
##
## @seealso{arduinoioaddons.adafruit.motorshieldv2}
## @end deftypefn
##
## @subsubheading Properties
## @var{Speed} - The speed value set for the motor
##
## @var{Parent} - The parent shield for object (read only)
##
## @var{MotorNumber} - The motor number (read only) values 1-4
##
## @var{IsRunning} - boolean for if the motor is started (read only)
##
## @subheading Methods
## @deftypefn {} {@var{obj} =} dcmotorv2(@var{mObj}, @var{mnum})
## @deftypefnx {} {@var{obj} =} dcmotorv2(@var{mObj}, @var{mnum}, @var{propertyname, propertyvalue} ....)
## Constructor to create dcmotor object
## @subsubheading Inputs
## @var{mObj} - the motor shield object
##
## @var{mnum} - The motor number (1 - 4)
##
## @var{propertyname, propertyvalue} - Optional property name/value pairs to pass to motor object.
##
## Current known properties are:
## @table @asis
## @item None
## @end table
##
## @subsubheading Outputs
## @var{s} - a dcmotorv2 object
##
## @subsubheading Example
## @example
## @code {
## a = arduino()
## ms = addon(a, "adafruit/motorshieldv2")
## mtr = dcmotor(ms, 1)
## }
## @end example
## @end deftypefn
##
## @deftypefn {} {} start(@var{dcObj})
## Start the motor moving in previously set speed/direction
##
## @subsubheading Inputs
## @var{dcObj} - the dcmotor object
##
## @subsubheading Outputs
## None
##
## @seealso{adafruit.motorshieldv2}
## @end deftypefn
##
## @deftypefn {} {} stop(@var{dcObj})
## Stop the motor moving
##
## @subsubheading Inputs
## @var{dcObj} - the dcmotor object
##
## @subsubheading Outputs
## None
##
## @seealso{adafruit.motorshieldv2}
## @end deftypefn

classdef dcmotorv2 < arduinoio.AddonBase
  properties(Access = private, Constant = true)
    INIT_COMMAND = hex2dec('20');
    FREE_COMMAND = hex2dec('21');
    START_COMMAND = hex2dec('22');
    STOP_COMMAND = hex2dec('23');
  endproperties   

  properties(Access = private)
    cleanup;
  endproperties

  properties(GetAccess = public, SetAccess = private)
    MotorNumber;
    IsRunning = false;
  endproperties

  properties(Access = public)
    Speed = 0;
  endproperties

  methods
    function this = dcmotorv2(shield, mnum, varargin)
      if nargin < 2
        error ("Expected shield and mnum")
      endif

      if ~isa(shield, "arduinoioaddons.adafruit.motorshieldv2")
        error("Expected shield to be a motorshieldv2 object");
      endif

      # check num is a number
      if mnum != 1 && mnum != 2 && mnum != 3 && mnum != 4
        error("Expected mnum to be 1, 2, 3 or 4");
      endif

      this.Parent = shield;
      this.MotorNumber = mnum;

      sendCommand(this.Parent, this.INIT_COMMAND,[this.MotorNumber-1]);
      this.cleanup = onCleanup (@() sendCommand(this.Parent, this.FREE_COMMAND, [this.MotorNumber-1]));
    endfunction

    function start(this)
      if this.Speed < 0
        direction = 0;
        speed = -this.Speed*255;
      else
        direction = 1;
        speed = this.Speed*255;
      endif
      sendCommand(this.Parent,this.START_COMMAND,[this.MotorNumber-1, direction, speed]);
      this.IsRunning = true;
    endfunction

    function stop(this)
      sendCommand(this.Parent,this.STOP_COMMAND,[this.MotorNumber-1]);
      this.IsRunning = false;
    endfunction

    function set.Speed(this, newspeed)
      # check speed -1 .. 0 ... 1
      if newspeed < -1 || newspeed > 1
        error("Speed should be between -1 .. 1");
      endif
      this.Speed = newspeed;
      if this.IsRunning
        start(this);
      endif
    endfunction

    function display(this)
      printf("%s = \n", inputname(1));
      printf("    %s with properties\n", class(this));
      printf("        MotorNumber = %d\n", this.MotorNumber);
      printf("              Speed = %d\n", this.Speed);
      printf("          IsRunning = %d\n", this.IsRunning);
    endfunction

  endmethods
 
endclassdef

