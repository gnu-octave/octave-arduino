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
## @deftypefn {} {@var{lcd} =} arduinoioaddons.LCDAddon.LCD ()
## Basic Example octave addon for LCD
##
## @seealso{addon}
## @end deftypefn

classdef LCD < arduinoio.LibraryBase
  # commands
  properties(Access = private, Constant = true)
    INIT_COMMAND = hex2dec('00');
    FREE_COMMAND = hex2dec('01');
    CLEAR_COMMAND = hex2dec('02');
    PRINT_COMMAND = hex2dec('03');
    SETCURSOR_COMMAND = hex2dec('04');
  endproperties   
  properties(Access = protected, Constant = true)
    LibraryName = 'ExampleLCD/LCD';
    DependentLibraries = {};
    ArduinoLibraryHeaderFiles = {  'LiquidCrystal/LiquidCrystal.h' };
    CppHeaderFile = fullfile(arduinoio.FilePath(mfilename('fullpath')), 'LCDAddon.h');
    CppClassName = 'LCD';
  endproperties
  properties(Access=private)
    ResourceOwner = 'ExampleLCD/LCDAddon';
  endproperties

  methods
    # constructor
    function obj = LCD(parentObj, rs, enable, d0, d1, d2, d3)
      obj.Parent = parentObj;

      if nargin < 7
        error ("LCD: expected input pins rs, enable, d0, d1, d2, d3");
      endif

      # our LCD code only allows 1 lcd at a time
      count = getResourceCount(obj.Parent,obj.ResourceOwner);
      if count > 0
         error ("ExampleLCD/LCDAddon: cant have only one LCD at a time");
      endif

      # check can get the pins
      pins = { rs enable d0 d1 d2 d3};

      obj.Pins = {};

      data = [];

      # build list of pins will use, and thier current modes
      pindata = {};
      for p = 1:numel(pins)
        pd = {};
        pd.name = pins{p};
        pd.mode = configurePin(obj.Parent, pd.name);
        pd.id = getTerminalsFromPins(obj.Parent, pd.name);
        pd.owner = getResourceOwner(obj.Parent, pd.name);
        pindata{end+1} = pd;
      endfor

      try
        for p = 1:numel(pindata)
          pin = pindata{p};
          configurePin(obj.Parent, pin.name, "digitaloutput")
	  obj.Pins{end+1} = pin.name;
	  data = [data pin.id];
        endfor
      catch
        # catch any errors and restore pins
        for p = 1:numel(pindata)
          pin = pindata{p};
          configurePinResource(obj.Parent, pin.name, pin.owner, pin.mode, true)
          configurePin(obj.Parent, pin.name, pin.mode)
        endfor
        rethrow (lasteror);
      end_try_catch

      sendCommand(obj.Parent, obj.LibraryName, obj.INIT_COMMAND, data);

      incrementResourceCount(obj.Parent,obj.ResourceOwner);

    endfunction

    function freeLCD(obj)
      cmdID = obj.FREE_COMMAND;
      sendCommand(obj.Parent, obj.LibraryName, cmdID);
    endfunction

    function printLCD(obj, text)
      cmdID = obj.PRINT_COMMAND;
      sendCommand(obj.Parent, obj.LibraryName, cmdID, [uint8(text) 0]);
    endfunction

    function clearLCD(obj)
      cmdID = obj.CLEAR_COMMAND;
      sendCommand(obj.Parent, obj.LibraryName, cmdID);
    endfunction

    function gotoLCD(obj, col, row)
      cmdID = obj.SETCURSOR_COMMAND;
      sendCommand(obj.Parent, obj.LibraryName, cmdID, [col row]);
    endfunction
  endmethods
endclassdef