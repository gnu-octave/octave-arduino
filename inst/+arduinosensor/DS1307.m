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
## @deftypefn {} {} arduinosensor.DS1307
## DS1307 realtime clock sensor
## @end deftypefn
##
## @subheading Methods
## @deftypefn {} {@var{obj} =} DS1307(@var{arObj})
## @deftypefnx {} {@var{obj} =} DS1307(@var{arObj}, @var{propertyname, propertyvalue} ....)
## Constructor to create DS1307 sensor
## @subsubheading Inputs
## @var{arObj} - the arduino parent object
##
## @var{propertyname, propertyvalue} - optional property name, value pairs.
## Current known properties are:
## Current properties are:
## @table @asis
## @item i2caddress
## I2C address of the DS1307 (default 0x68)
## @end table
##
## @subsubheading Outputs
## @var{obj} - created DS1307 object
##
## @subsubheading Example
## @example
## @code {
## a = arduino()
## rtc = arduinosensor.DS1307(a)
## }
## @end example
## @end deftypefn
##
## @deftypefn {} {@var{date} =} clock(@var{dsObj})
## @deftypefnx {} {} clock(@var{dsObj}, @var{date})
## Get/set the DS1307 clock
##
## @subsubheading Inputs
## @var{dsObj} - the ds1307 object
##
## @var{date} - a date vector in same format as datevec and clock
##
## @subsubheading Outputs
## @var{date} - a date vector in same format as datevec and clock
##
## @subsubheading Example
## @example
## @code {
## a = arduino()
## rtc = arduinosensor.DS1307(a)
## # get and display rtc time as a date string
## datestr(rtc.clock)
## }
## @end example
## @seealso{datevec}
## @end deftypefn
##
## @deftypefn {} {@var{ctrl} =} control(@var{dsObj})
## @deftypefnx {} {} control(@var{dsObj}, @var{ctrl})
## Get/set the DS1307 clock
##
## @subsubheading Inputs
## @var{dsObj} - the ds1307 object
##
## @var{ctrl} - a structure containing the control bit fields.
##
## @subsubheading Outputs
## @var{ctrl} - a structure containing the control bit fields.
##
## Control structure fields are:
## Current properties are:
## @table @asis
## @item out
## Out bit in the control register
## @item sqwe
## Square wave enble bit in control register
## @item rs
## The combined Rs0, RS1 value
## @end table
##
## @end deftypefn
##
## @deftypefn {} {@var{YN} =} isstarted(@var{dsObj})
## Get whether the RTC clock is currently counting time
##
## @subsubheading Inputs
## @var{dsObj} - the ds1307 object
##
## @subsubheading Outputs
## @var{YN} - returns true if the RTC is counting
##
## @seealso{start, stop}
## @end deftypefn
##
## @deftypefn {} {} start(@var{dsObj})
## Start the RTC counting
##
## @subsubheading Inputs
## @var{dsObj} - the ds1307 object
##
## @subsubheading Outputs
## None
##
## @seealso{datevec}
## @end deftypefn
##
## @deftypefn {} {} stop(@var{dsObj})
## Stop the RTC counting
##
## @subsubheading Inputs
## @var{dsObj} - the ds1307 object
##
## @subsubheading Outputs
## None
##
## @seealso{datevec}
## @end deftypefn

classdef DS1307 < handle
  properties(Access = private)
    i2c;

    bcd2dec = @(v) bitshift(v, -4)*10 + bitand(v, 0xf);
    dec2bcd = @(v) bitshift(floor(v/10), 4) + bitand(mod(v,10), 0xf);
  endproperties

  methods
    # constructor
    function this = DS1307(parentObj, varargin)

      if nargin < 1 || ! isarduino(parentObj)
	error('arduinosensor.DS1307: expected arduino object as first parameter');
      endif

      # parse args
      p = inputParser(CaseSensitive=false, FunctionName='arduinosensor.DS1307');
      p.addParameter('I2CAddress', 0x68, @isnumeric);
      p.parse(varargin{:});

      # do we have the address ?
      address = p.Results.I2CAddress;
      i2caddresses = scanI2Cbus(parentObj);
      idx = find(cellfun ( @(x) strcmp(x, sprintf("0x%02X", address)), i2caddresses));
      if isempty(idx)
	error('arduinosensor.DS1307: no matching i2c address found on bus');
      endif

      this.i2c = i2cdev(parentObj, p.Results.I2CAddress);
    endfunction

    function c = clock (this, settime)

      if nargin == 2
        # set time
        wd = weekday(datenum(settime));
        writeRegister(this.i2c, 0, ...
	  [this.dec2bcd(floor(settime(6))), this.dec2bcd(settime(5)), (this.dec2bcd(settime(4))), ...
	   wd, this.dec2bcd(settime(3)), this.dec2bcd(settime(2)), this.dec2bcd(mod(settime(1),100))] ...
	);

      else
        # get time
        data = readRegister(this.i2c, 0, 7);

        secs = double(this.bcd2dec(bitand(data(1), 0x7f)));
        mins = double(this.bcd2dec(data(2)));
        if bitand(data(3), 0x40) != 0
          # 12 hr
          pm = bitand(data(3), 0x20);
          hrs = double(this.bcd2dec(bitand(data(3), 0x2f)));
          if pm
            hrs = double(hrs + 12);
          endif
        else
          hrs = double(this.bcd2dec(bitand(data(3), 0x3f)));
        endif
        wday = double(data(4));
        day = double(this.bcd2dec(data(5)));
        month = double(this.bcd2dec(data(6)));
        year = 2000.0 + double(this.bcd2dec(data(7)));

        c = double([year, month, day, hrs, mins, secs]);
 
      endif

    endfunction

    function start(this)
      data = readRegister(this.i2c, 0, 1);
      data = bitset(data, 8, 0);
      writeRegister(this.i2c, 0, data);
    endfunction

    function stop(this)
      data = readRegister(this.i2c, 0, 1);
      data = bitset(data, 8, 1);
      writeRegister(this.i2c, 0, data);
    endfunction

    function val = isstarted(this)
      data = readRegister(this.i2c, 0, 1);
      val = bitget(data, 8) == 0;
    endfunction

    function bits = control(this, setbits)
      if nargin == 1
        data = readRegister(this.i2c, 7, 1);
        bits = {};
        bits.out = bitget(data, 8);
        bits.sqwe = bitget(data, 5);
        bits.rs = bitand(data, 0x03);
      else
	data = 0;
	data = bitand(setbits.rs, 0x3);
	if setbits.out
	  data = data + 0x80;
	endif
	if setbits.sqwe
	  data = data + 0x10;
	endif
        writeRegister(this.i2c, 7, data);
      endif
    endfunction

    function display(this)
      printf("%s = \n", inputname(1));
      printf("    %s with properties\n", class(this));
      printf("        I2C Address = 0x%X\n", this.i2c.address);
    endfunction

  endmethods
endclassdef
