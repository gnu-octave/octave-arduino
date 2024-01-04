## Copyright (C) 2022 John Donoghue <john.donoghue@ieee.org>
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

classdef SimpleStepper < arduinoio.LibraryBase
  ## -*- texinfo -*- 
  ## @deftypefn {} {} arduinoioaddons.SimpleStepper
  ## Stepper class for stepper control using ULN2003 and compatible drivers
  ## @end deftypefn
  ##
  ## @subsubheading Properties
  ## @table @asis
  ## @item @var{Id}
  ## Id of the stepper (Read only)
  ## @item @var{Speed}
  ## Number of steps to do per second.
  ## @item Status
  ## Status of stepper (Read only).
  ## 0 = not moving, 1 = moving, 2 = rotating
  ## @item Parent
  ## the Arduino parent (read only)
  ## @item Pins
  ## the pins used for the stepper (read only)
  ## @end table
  ##
  ## @subheading Methods
  ## @deftypefn {} {@var{obj} =} SimpleStepper(@var{aObj}, @var{pin1}, @var{pin2}, @var{pin3}, @var{pin4})
  ## @deftypefnx {} {@var{obj} =} SimpleStepper(@var{aObj}, @var{pin1}, @var{pin2}, @var{pin3}, @var{pin4}, @var{pin5})
  ## Constructor to create a stepper object
  ## @subsubheading Inputs
  ## @var{aObj} - The arduino
  ##
  ## @var{pin1} - The first pin of the controller
  ##
  ## @var{pin2} - The second pin of the controller
  ##
  ## @var{pin3} - The third pin of the controller
  ##
  ## @var{pin4} - The fourth pin of the controller
  ##
  ## @var{pin5} - The fifth pin of the controller
  ##
  ## @subsubheading Outputs
  ## @var{s} - a simplestepper object
  ##
  ## @subsubheading Example
  ## @example
  ## @code {
  ## a = arduino()
  ## # create stepper object
  ## s = addon(a, "simplestepper/simplestepper", "d2", "d3", "d4", "d5")
  ## # start rotating left
  ## s.rotate(-1);
  ## }
  ## @end example
  ##
  ## @seealso{addon}
  ## @end deftypefn
  ##
  ## @deftypefn {} {} move(@var{sObj}, @var{steps})
  ## Move the motor the specified number of steps using the configured Speed.
  ##
  ## @subsubheading Inputs
  ## @var{sObj} - the stepper object
  ##
  ## @var{steps} - the number of steps to move. steps less than 0 will be moving left.
  ##
  ## @subsubheading Outputs
  ## None
  ##
  ## @seealso{rotate}
  ## @end deftypefn
  ##
  ## @deftypefn {} {} rotate(@var{sObj}, @var{dir})
  ## Start steppermotor moving in the specified direction using the configured Speed.
  ##
  ## @subsubheading Inputs
  ## @var{sObj} - the stepper object
  ##
  ## @var{dir} - Direction to move. -1 = left, 0 = stop, 1 = right.
  ##
  ## @subsubheading Outputs
  ## None
  ##
  ## @seealso{move}
  ## @end deftypefn
  ##
  ## @deftypefn {} {} release(@var{sObj})
  ## Release this stepper motor
  ##
  ## @subsubheading Inputs
  ## @var{sObj} - the stepper object
  ##
  ## @subsubheading Outputs
  ## None
  ##
  ## @end deftypefn
  
  properties(Access = public)
    Speed = 1; # num secs per tick
  endproperties

  properties(GetAccess = public, SetAccess = private)
    Id = 0;     # Id of the object
    Status = 0; # Status 0,1,2
    Pins = [];  # pins allocated to this stepper
  endproperties

  properties(Access = private)
    # pin info of pins used by this object
    PinInfo = [];
    # var for scope of cleanupduring release
    cleanup;
  endproperties

  properties(Access = protected, Constant = true)
    # addon properties
    LibraryName = 'SimpleStepper/SimpleStepper';
    CppHeaderFile = fullfile(arduinoio.FilePath(mfilename('fullpath')), 'src', 'SimpleStepperAddon.h');
    CppSourceFile = fullfile(arduinoio.FilePath(mfilename('fullpath')), 'src', 'SimpleStepperAddon.cpp');
    CppClassName = 'SimpleStepperAddon';
  endproperties

  properties(Access = private, Constant = true)
    # command will send to the arduino
    INIT_COMMAND = 0x00;
    MOVE_COMMAND = 0x01;
    ROTATE_COMMAND = 0x02;
    TICKSPERSTEP_COMMAND = 0x03;
    STATUS_COMMAND = 0x04;
    RELEASE_COMMAND = 0x10;
    STATE_COMMAND = 0x20;
  endproperties

  methods
    function obj = SimpleStepper(parentObj, varargin)

      if (!isa (parentObj, "arduino"))
        error("expects arduino object");
      endif
 
      obj.Parent = parentObj;

      obj.PinInfo = [];

      # pins follow
      tmp_pins = {};
      for i = 1:length(varargin)
        validatePin(obj.Parent, varargin{1}, 'digital')
        tmp_pins{end+1} = getPinInfo(obj.Parent, varargin{i});
      endfor

      if length(tmp_pins) < 4 || length(tmp_pins) > 5
        error("expected 4 or 5 pins");
      endif

      obj.PinInfo = tmp_pins;

      try
        data = [];

        for i = 1:length(tmp_pins)
          configurePin(obj.Parent, tmp_pins{i}.name, "digitaloutput")
          configurePinResource (obj.Parent, tmp_pins{i}.name, obj.LibraryName, "digitaloutput", true);
          data(end+1) = tmp_pins{i}.terminal;
        endfor

        # use smallest num for id
        obj.Id = min(data);

        #obj.Parent.debug =1;
        [tmp, sz] = sendCommand(obj.Parent, obj.LibraryName, obj.INIT_COMMAND, uint8([obj.Id data]));
    
      catch
        for i=1:numel(tmp_pins)
          configurePinResource(obj.Parent, tmp_pins{i}.name, tmp_pins{i}.owner, tmp_pins{i}.mode, true)
          configurePin(obj.Parent, tmp_pins{i}.name, tmp_pins{i}.mode)
        endfor
        rethrow (lasterror);
      end_try_catch

      obj.cleanup = onCleanup (@() sendCommand(obj.Parent, obj.LibraryName, obj.RELEASE_COMMAND, [obj.Id]));

    endfunction

    function release(obj)
      obj.cleanup = [];
      # called from cleanup sendCommand(obj.Parent, obj.RELEASE_COMMAND,[obj.Id]);

      for i=1:numel(obj.PinInfo)
        configurePinResource(obj.Parent, obj.PinInfo{i}.name, obj.PinInfo{i}.owner, obj.PinInfo{i}.mode, true)
        configurePin(obj.Parent, obj.PinInfo{i}.name, obj.PinInfo{i}.mode)
      endfor
 
    endfunction

    function move(obj, steps)
       cmdID = obj.MOVE_COMMAND;
       intval = int32(steps);
       data = [ bitand(bitshift(intval,-24), 255) bitand(bitshift(intval,-16),255) bitand(bitshift(intval,-8),255)  bitand(intval, 255)];
       sendCommand(obj.Parent, obj.LibraryName, cmdID, [obj.Id data]);
    endfunction

    function rotate(obj, dir)
       cmdID = obj.ROTATE_COMMAND;
       if dir < -1 || dir > 1
         error ("Expected dir to be -1, 0 or 1.");
       endif
       dir = typecast(int8(dir), "uint8");
       sendCommand(obj.Parent, obj.LibraryName, cmdID, uint8([obj.Id dir]));
    endfunction

    function disp(this)
      printf("    %s with properties\n", class(this));
      printf("           Speed = %f\n", this.Speed);
      printf("          Status = %d\n", this.Status);
      printf("            Pins = {\n");
      for i=1:numel(this.PinInfo)
        printf("                %s\n", this.PinInfo{i}.name);
      endfor
      printf("            }\n");
    endfunction

  endmethods

  methods (Hidden = true)

    function retval = state(obj)
       cmdID = obj.STATE_COMMAND;
       data = sendCommand(obj.Parent, obj.LibraryName, cmdID, uint8([obj.Id]));
       retval = {};
       retval.Id = data(1);
       retval.NumPins = double(data(2));
       retval.Pins = [];
       retval.Pins(1) = double(data(3));
       retval.Pins(2) = double(data(4));
       retval.Pins(3) = double(data(5));
       retval.Pins(4) = double(data(6));
       retval.Pins(5) = double(data(7));
       retval.Status = data(8);
       retval.Direction = double(typecast(data(9), 'int8'));

       val = bitshift(uint32(data(10)), 24) + bitshift(uint32(data(11)), 16) + bitshift(uint32(data(12)), 8) + uint32(data(13));
       retval.StepsToDo = val;

       val = bitshift(uint32(data(14)), 24) + bitshift(uint32(data(15)), 16) + bitshift(uint32(data(16)), 8) + uint32(data(17));
       retval.TicksPerStep = val;

       val = bitshift(uint32(data(18)), 24) + bitshift(uint32(data(19)), 16) + bitshift(uint32(data(20)), 8) + uint32(data(21));
       retval.LastStepTick = val;

    endfunction

    function status = get.Status(obj)
       cmdID = obj.STATUS_COMMAND;
       data = sendCommand(obj.Parent, obj.LibraryName, cmdID, [obj.Id]);
       status = data(2);
    endfunction

    function set.Speed(obj, speedval)
       cmdID = obj.TICKSPERSTEP_COMMAND;
       if speedval == 0
         ticks = 0;
       elseif(speedval < 0)
         error ("speed should be number of steps per second");
       else
         ticks = 1000000/speedval;
       endif
       intval = uint32(ticks)
       data = [ bitand(bitshift(intval,-24), 255) bitand(bitshift(intval,-16),255) bitand(bitshift(intval,-8),255)  bitand(intval, 255)];
       sendCommand(obj.Parent, obj.LibraryName, cmdID, [obj.Id data]);
       obj.Speed = speedval;
    endfunction

    function pins = get.Pins(obj)
      pins = {};
      for i=1:numel (obj.PinInfo)
        pins{end+1} = obj.PinInfo{i}.name;
      endfor
    endfunction

  endmethods

endclassdef
