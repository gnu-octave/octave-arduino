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
## @deftypefn {} {} arduinoioaddons.ExampleAddon.Echo
## Basic Example matlab/octave code to illustrate creating
## a user addon. 
##
## @seealso{addon}
## @end deftypefn
##
## @subsubheading Properties
## @var{Parent} - the parent arduino object.
##
## @var{Pins} - the pins allocated the addon.
##
## @subheading Methods
## @deftypefn {} {@var{obj} =} Echo(arObj)
## Constructor to create Echo addon
## @subsubheading Inputs
## @var{arObj} - the arduino parent object
##
## @subsubheading Outputs
## @var{obj} - created Echo object
## @end deftypefn
##
## @deftypefn {} {@var{response} = } shout(@var{text})
## Send text to arduino and receive back the echoed reply
##
## @subsubheading Inputs
## @var{text} - text to send to arduino
##
## @subsubheading Outputs
## @var{response} - response from the arduino, which should be the same as 
## the input text.
## @end deftypefn
#
classdef Echo < arduinoio.LibraryBase
    # commands
    properties(Access = private, Constant = true)
        ECHO_COMMAND = hex2dec('01');
    endproperties   
    properties(Access = protected, Constant = true)
        LibraryName = 'ExampleAddon/Echo';
        DependentLibraries = {};
        ArduinoLibraryHeaderFiles = {};
        CppHeaderFile = fullfile(arduinoio.FilePath(mfilename('fullpath')), 'src', 'Echo.h');
        CppClassName = 'Echo';
    endproperties

    methods
        # constructor
        function obj = Echo(parentObj)
          obj.Parent = parentObj;
          obj.Pins = [];
        endfunction

        # function addon can do
        function out = shout(obj, val)
          cmdID = obj.ECHO_COMMAND;
          inputs = [uint8(val)];
          output = sendCommand(obj.Parent, obj.LibraryName, cmdID, inputs);
          # data is just an echo of what we sent
          out = char(output);
        endfunction
   
    endmethods
endclassdef
