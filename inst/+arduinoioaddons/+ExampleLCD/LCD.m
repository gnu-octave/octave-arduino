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
## @deftypefn {} {} arduinoioaddons.LCDAddon.LCD
## Basic Example octave addon for LCD
##
## Allows basic manaipulation of an LCD as a illustrayion of using
## the addon functionality.
## @subsubheading Example
## Assuming the arduino has been programmed with the lcd addon:
## @example
## a = arduino();
## lcd = addon(a, "examplelcd/lcd", "d8", "d9", "d4", "d5", "d6", "d7")
## clearLCD(lcd);
## printLCD(lcd, "Hello");
## # go to next line
## gotoLCD(lcd, 0, 1);
## printLCD(lcd, "World");
## @end example
## @seealso{addon}
## @end deftypefn
##
## @subsubheading Properties
## @var{Pins} - the pins allocated the LCD display.
##
## @subheading Methods
## @deftypefn {} {@var{lcd} =} LCD(arObj, rs, enable, d0, d1, d2, d3)
## Constructor to create LCD device
## @subsubheading Inputs
## @var{arObj} - the arduino parent object
##
## @var{rs} - the pin to use for the rs line.
##
## @var{enable} - the pin to use for the enable line.
##
## @var{d0} - the pin to use for the d0 line.
##
## @var{d1} - the pin to use for the d1 line.
##
## @var{d2} - the pin to use for the d2 line.
##
## @var{d3} - the pin to use for the d3 line.
##
## @subsubheading Outputs
## @var{lcd} - created LCD object
## @end deftypefn
##
## @deftypefn {} {} freeLCD()
## Free the LCD
##
## Should be called before discarding the LCD
## @subsubheading Inputs
## None.
##
## @subsubheading Outputs
## None.
## @end deftypefn
##
## @deftypefn {} {} clearLCD()
## Clear the LCD display and set the cursor position to the home position.
##
## @subsubheading Inputs
## None.
##
## @subsubheading Outputs
## None.
## @end deftypefn
##
## @deftypefn {} {} printLCD(@var{text})
## Display text on LCD starting at the current cursor position.
##
## @subsubheading Inputs
## @var{text} - text to display on LCD
##
## @subsubheading Outputs
## None.
## @end deftypefn
##
## @deftypefn {} {} gotoLCD(@var{col}, @var{row})
## Set the cursor position to row, col
##
## @subsubheading Inputs
## @var{col} - 0 indexed LCD column to position to.
##
## @var{row} - 0 indexed LCD row to position to.
##
## @subsubheading Outputs
## None.
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

      obj.Pins = {};
      data = [];

      pindata = getPinInfo(obj.Parent, {rs enable d0 d1 d2 d3});

      try
        for p = 1:numel(pindata)
          pin = pindata{p};
          configurePin(obj.Parent, pin.name, "digitaloutput")
	  obj.Pins{end+1} = pin.name;
	  data = [data pin.terminal];
        endfor
      catch
        # catch any errors and restore pins
        for p = 1:numel(pindata)
          pin = pindata{p};
          configurePinResource(obj.Parent, pin.name, pin.owner, pin.mode, true)
          configurePin(obj.Parent, pin.name, pin.mode)
        endfor
        rethrow (lasterror);
      end_try_catch

      sendCommand(obj.Parent, obj.LibraryName, obj.INIT_COMMAND, data);

      incrementResourceCount(obj.Parent,obj.ResourceOwner);

    endfunction

    function freeLCD(obj)
      if nargin != 1
        warning ("LCD: unexpected additional arguments being ignored");
      endif
      cmdID = obj.FREE_COMMAND;
      sendCommand(obj.Parent, obj.LibraryName, cmdID);
    endfunction

    function printLCD(obj, text)
      if nargin < 2 || !ischar(text)
        error ("LCD: expected text to display");
      endif
      if nargin != 2
        warning ("LCD: unexpected additional arguments being ignored");
      endif

      cmdID = obj.PRINT_COMMAND;
      sendCommand(obj.Parent, obj.LibraryName, cmdID, [uint8(text) 0]);
    endfunction

    function clearLCD(obj)
      if nargin != 1
        warning ("LCD: unexpected additional arguments being ignored");
      endif
      cmdID = obj.CLEAR_COMMAND;
      sendCommand(obj.Parent, obj.LibraryName, cmdID);
    endfunction

    function gotoLCD(obj, col, row)
      if nargin < 3 
        error ("LCD: col and row");
      endif
      if nargin != 3
        warning ("LCD: unexpected additional arguments being ignored");
      endif
      if !isnumeric(col) || col < 0 || mod(col,1) != 0
        error ("LCD: expected col as a numeric integer value");
      endif
      if !isnumeric(row) || row < 0 || mod(row,1) != 0
        error ("LCD: expected row as a numeric integer value");
      endif
      cmdID = obj.SETCURSOR_COMMAND;
      sendCommand(obj.Parent, obj.LibraryName, cmdID, [col row]);
    endfunction
  endmethods
endclassdef
