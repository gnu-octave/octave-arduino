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
## @deftypefn {} {} arduinosensor.MPC3002
## MCP3002 ADC sensor
## @end deftypefn
##
## @subheading Methods
## @deftypefn {} {@var{obj} =} MPC3002(@var{arObj}, @var{selectPin})
## @deftypefnx {} {@var{obj} =} MPC3002(@var{arObj}, @var{selectPin}, @var{propertyname, propertyvalue} ....)
## Constructor to create MPC3002 sensor
## @subsubheading Inputs
## @var{arObj} - the arduino parent object
##
## @var{selectPin} - the SPI cs select pin
##
## @var{propertyname, propertyvalue} - optional property name, value pairs.
##
## Current properties are:
## @table @asis
## @item referenceVoltage
## Reference voltage for scaling the ADC inputs (default 5.0)
## @end table
##
## @subsubheading Outputs
## @var{obj} - created MCP3002 object
##
## @subsubheading Example
## @example
## @code {
## a = arduino()
## sensor = arduinosensor.MPC3002(a, "d10")
## }
## @end example
## @end deftypefn
##
## @deftypefn {} {@var{voltage} =} readVoltage(@var{dsObj}, @var{chan})
## Read the voltage from a channel
##
## @subsubheading Inputs
## @var{dsObj} - the MPC3002 object
##
## @var{chan} - the channel to read (0 or 1)
##
## @subsubheading Outputs
## @var{voltage} - read voltage.
##
## @subsubheading Example
## @example
## @code {
## a = arduino()
## s = arduinosensor.MPC3002(a, "d10")
## volts = readVoltage(s, 0)
## }
## @end example
## @seealso{arduinosensor.MPC3002}
## @end deftypefn

classdef MPC3002 < handle
  properties(Access = private, constant = true)
    VERSION = "0.0.1";
    CHAN_0_READ = [ hex2dec("DF") hex2dec("FF") ];
    CHAN_1_READ = [ hex2dec("EF") hex2dec("FF") ];
  endproperties
  
  properties(Access = private)
    spi;
    reference_voltage = 5.0;
  endproperties

  methods
    # constructor
    function this = MPC3002(parentObj, selectpin, varargin)

      if nargin < 2 || ! isarduino(parentObj)
        error('arduinosensor.MPC3002: expected arduino object as first parameter, followed by a select pin');
      endif

      # parse args
      p = inputParser(CaseSensitive=false, FunctionName='arduinosensor.MPC3002');
      p.addParameter('referenceVoltage', 5.0, @isnumeric);
      p.parse(varargin{:});

      this.spi = device(parentObj, "spichipselectpin", selectpin);
      this.reference_voltage = p.Results.referenceVoltage;

      # initial read
      v = writeRead(this.spi, this.CHAN_1_READ);

    endfunction

    function volts = readVoltage(this, chan)
      if nargin < 2 || !isnumeric(chan) || (chan != 1 && chan != 0)
        error('arduinosensor.MPC3002 read: expected channel number 0 or 1');
      endif
      if chan == 0
        cmd = this.CHAN_0_READ;
      else
        cmd = this.CHAN_1_READ;
      endif
      v = writeRead(this.spi, cmd);
      adc = bitand (uint16(v(1))*256 + uint16(v(2)), hex2dec('3FF'));
      volts = double(adc) * this.reference_voltage / 1023.0;
    endfunction

    function display(this)
      printf("%s = \n", inputname(1));
      printf("    %s with properties\n", class(this));
      printf("      reference voltage = %f\n", this.reference_voltage);
      printf("                 SPI cs = %s\n", this.spi.chipselectpin);
    endfunction

  endmethods
endclassdef
