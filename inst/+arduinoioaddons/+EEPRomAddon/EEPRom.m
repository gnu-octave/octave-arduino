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
## @deftypefn {} {} arduinoioaddons.EEPRomAddon.EEPRom
## EEPROM addon for arduino
##
## Allows read and write of uint8 data to the onboard arduino EEPROM.
##
## @subsubheading Example
## Assuming eeprom addon has been programmed into the Arduino:
## @example
## a = arduino ();
## e = addon (a, "eepromaddon/eeprom");
## write (e, 0, uint8("hello world"));
## str = uint8( read(e, 0, 11) )
## @end example
##
## @seealso{addon}
## @end deftypefn
##
## @subsubheading Properties
## @var{length} - Size of the EEPROM.
##
## @subheading Methods
## @deftypefn {} {@var{eeprom} =} EEPRom ()
## Constructor to create eeprom device.
## @subsubheading Outputs
## @var{eeprom} - created EEPROM device.
## @end deftypefn
##
## @deftypefn {} {} erase ()
## Erase all values in EEPROM (Effectively setting the 0xFF)
## @end deftypefn
##
## @deftypefn {} {} write (@var{address}, @var{uintdata})
## Write data to EEPROM at the provided address.
## @subsubheading Inputs
## @var{address} - start address to write data to, should be a integer between 0 and the size of the EEPROM.
##
## @var{uintdata} a value or array of uint8 data to write to EEROM.
## @end deftypefn
##
## @deftypefn {} {@var{data} =} read (@var{address})
## @deftypefnx {} {@var{data} =} read (@var{address}, @var{count})
## Read data from starting address of EEPROM.
## @subsubheading Inputs
## @var{address} - start address to read data from, should be a integer between 0 and the size of the EEPROM.
##
## @var{count} - Number of uint8 values to read from the EEPROM (default is 1)
##
## @subsubheading Outputs
## @var{data} a value or array of uint8 data read from the EEROM.
## @end deftypefn


classdef EEPRom < arduinoio.LibraryBase
  # commands
  properties(Access = private)
    len = 0;
  endproperties

  properties(Access = private, Constant = true)
    INIT_COMMAND  = hex2dec('00');
    ERASE_COMMAND = hex2dec('01');
    READ_COMMAND  = hex2dec('02');
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
        error ("EEPRom: expected arduino parent as only argument");
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

    function value = read(obj, address, num)
      cmdID = obj.READ_COMMAND;

      if nargin != 2 && nargin != 3
        error ("EEPRom: expected address and value");
      endif
      if nargin == 2
        num = 1;
      endif
      if ! isnumeric(address)  || address < 0 || address >= obj.len || mod(address, 1) != 0
        error ("EEProm: expected address to be between 0 and %d", obj.len);
      endif
      if ! isnumeric(num)  || num < 0 || num > 128 || mod(num, 1) != 0
        error ("EEProm: num expected to be integer between  0 and %d", 128);
      endif

      if address + num > obj.len
	error ("EEPRom: address + num (%d) is out of EEPRom bounds of %d\n", (address+num), obj.len);
      endif
 
      intval = uint16(address);
      datain = [ bitshift(intval,-8) bitand(intval, 255) num];
      dataout = sendCommand(obj.Parent, obj.LibraryName, cmdID, datain);
      value = dataout;
    endfunction

    function write(obj, address, value)
      cmdID = obj.WRITE_COMMAND;
      if nargin != 3
        error ("EEPRom: expected address and value");
      endif
      if ! isnumeric(address)  || address < 0 || address >= obj.len || mod(address, 1) != 0
        error ("expected address to be between 0 and %d", obj.len);
      endif

      num = numel(value);
      if num < 0 || num > 128 
        error ("EEProm: value size expected to be between  0 and %d", 128);
      endif
      if (address + num > obj.len)
	error ("EEPRom: address + numel(value) (%d) is out of EEPRom bounds of %d\n", (address+num), obj.len);
      endif

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
