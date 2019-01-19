## Copyright (C) 2019 John Donoghue <john.donoghue@ieee.org>
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
## @deftypefn {} {} arduinosensor.GUVAS12SD
## A thin wrapper for the GUVAS12SD analog UV-B sensor
## @end deftypefn
##
## @subheading Methods
## @deftypefn {} {@var{obj} =} GUVAS12SD(@var{arObj}, @var{pin})
## Constructor to create GUVAS12SD sensor
## @subsubheading Inputs
## @var{arObj} - the arduino parent object
##
## @var{pin} - the analog pin that the sensor is connected to
##
## @subsubheading Outputs
## @var{obj} - created GUVAS12SD object
##
## @subsubheading Example
## @example
## @code {
## a = arduino()
## # create sensor attached to pin a0.
## sensor = arduinosensor.GUVAS12SD(a, "a0")
## }
## @end example
## @end deftypefn
##
## @deftypefn {} {@var{V} =} read(@var{dsObj})
## Read the voltage of the sensor
##
## @subsubheading Inputs
## @var{dsObj} - the GUVAS12SD object
##
## @subsubheading Outputs
## @var{V} - read voltage - effectively equivalent to readAnalogPin(arObj, pin).
##
## @subsubheading Example
## @example
## @code {
## a = arduino()
## s = arduinosensor.GUVAS12SD(a)
## # voltage
## volts = s.read
## }
## @end example
## @seealso{arduinosensor.GUVAS12SD}
## @end deftypefn
##
## @deftypefn {} {@var{Idx} =} readIndex(@var{dsObj})
## Read the UV index
##
## @subsubheading Inputs
## @var{dsObj} - the GUVAS12SD object
##
## @subsubheading Outputs
## @var{Idx} - the sensor reading as a UV index reading
## @end deftypefn
##
## @deftypefn {} {@var{uA} =} readuA(@var{dsObj})
## Read the uA of the sensor
##
## @subsubheading Inputs
## @var{dsObj} - the GUVAS12SD object
##
## @subsubheading Outputs
## @var{uA} - the sensor reading as a uAmp value
## @end deftypefn

classdef GUVAS12SD < handle

  properties(Access = private, constant = true)
    SCALE_UAMPS = 4.1;
    SCALE_INDEX = 0.1;
  endproperties
  
  properties(GetAccess = public, SetAccess = private)
    Pin;
    Parent;
  endproperties

  methods
    # constructor
    function this = GUVAS12SD(parentObj, pin, varargin)

      if nargin < 2
        error('arduinosensor.GUVAS12SD: expected arduino and pin object parameters');
      endif

      if ! isarduino(parentObj)
        error('arduinosensor.GUVAS12SD: expected arduino object as first parameter');
      endif

      # check is an analog pin
      validatePin(parentObj, pin, "analog");

      # lookup/use name for pin (in the case where a terminal num was given instead of a pin number)
      this.Pin = getPinInfo(parentObj, pin).name;

      this.Parent = parentObj;

    endfunction

    function val = read (this)
      # Vo = 4.3 * diodeuA
      # UV index = Vo/0.1
      val = readAnalogPin(this.Parent, this.Pin);
    endfunction

    function val = readIndex (this)
      val = read(this)/this.SCALE_INDEX;
    endfunction

    function val = readuA (this)
      val = read(this)/this.SCALE_UAMPS;
    endfunction

    function display(this)
      printf("%s = \n", inputname(1));
      printf("    %s with properties\n", class(this));
      printf("        Pin = %s\n", this.Pin);
    endfunction

  endmethods
endclassdef
