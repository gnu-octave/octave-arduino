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
## @deftypefn {} {@var{eeprom} =} arduinoioaddons.EEPRomAddon.EEPRom ()
## EEXPROM addon for arduino
##
## @seealso{addon}
## @end deftypefn

classdef EEPRom < arduinoio.LibraryBase
  # commands
  properties(Access = private)
    len = 0;
  endproperties
  properties(Access = private, Constant = true)
    INIT_COMMAND = hex2dec('00');
    ERASE_COMMAND = hex2dec('01');
    READ_COMMAND = hex2dec('02');
    WRITE_COMMAND = hex2dec('03');
  endproperties   
  properties(Access = protected, Constant = true)
    LibraryName = 'EEPRomAddon/EEPRom';
    DependentLibraries = {};
    #ArduinoLibraryHeaderFiles = {};
    CppHeaderFile = fullfile(arduinoio.FilePath(mfilename('fullpath')), 'EEPRomAddon.h');
    CppClassName = 'EEPRom';
  endproperties

  methods
    # constructor
    function obj = EEPRom(parentObj)
      obj.Parent = parentObj;

      if nargin != 1
        error ("EEPRom: arduino parent as only argument");
      endif

      obj.Pins = {};

      data = sendCommand(obj.Parent, obj.LibraryName, obj.INIT_COMMAND, []);

      length = uint16(data(1))*256 + uint16(data(2))
      obj.len = length;

    endfunction

    function len = length (obj)
      len = obj.len;
    endfunction

    function erase(obj)
      cmdID = obj.ERASE_COMMAND;
      sendCommand(obj.Parent, obj.LibraryName, cmdID, []);
    endfunction

    function value = read(obj, address)
      cmdID = obj.READ_COMMAND;
      intval = uint16(address);
      datain = [ bitshift(intval,-8) bitand(intval, 255)];
      dataout = sendCommand(obj.Parent, obj.LibraryName, cmdID, datain);
      value = dataout(1);
    endfunction

    function write(obj, address, value)
      cmdID = obj.WRITE_COMMAND;
      intval = uint16(address);
      datain = [ bitshift(intval,-8) bitand(intval, 255) value];
      sendCommand(obj.Parent, obj.LibraryName, cmdID, datain);
    endfunction

    function display (obj)
      printf("%s = \n", inputname(1));
      printf("    %s with properties\n", class(obj));
      printf("        length = %d\n", obj.len);
    endfunction
  endmethods
endclassdef
