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
## @deftypefn {} {} arduinoioaddons.RTCAddon.DS1307
## DS1307 addon
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
## @deftypefn {} {@var{obj} =} DS1307(@var{arObj})
## @deftypefnx {} {@var{obj} =} DS1307(@var{arObj}, @var{propertyname, propertyvalue} ....)
## Constructor to create DS1307 addon
## @subsubheading Inputs
## @var{arObj} - the arduino parent object
##
## @var{propertyname, propertyvalue} - optional property name, value pairs.
## Current known properties are:
## Current properties are:
## @table @asis
## @item address
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
## rtc = addon(a, "rtcaddon/ds1307")
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
## rtc = addon(a, "rtcaddon/ds1307")
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
## Control strucrure fields are:
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

classdef DS1307 < arduinoio.LibraryBase
  # commands
  properties(Access = private, Constant = true)
    INIT_COMMAND = hex2dec('00');
  endproperties   
  properties(Access = protected, Constant = true)
    LibraryName = 'RTCAddon/DS1307';
    DependentLibraries = { "spi" };
    ArduinoLibraryHeaderFiles = {};
    CppHeaderFile = fullfile(arduinoio.FilePath(mfilename('fullpath')), 'DS1307Addon.h');
    CppClassName = 'DS1307Addon';
  endproperties
  properties(Access = private)
    i2c;
    address;

    bcd2dec = @(v) bitshift(v, -4)*10 + bitand(v, 0xf);
    dec2bcd = @(v) bitshift(floor(v/10), 4) + bitand(mod(v,10), 0xf);
  endproperties

  methods
    # constructor
    function obj = DS1307(parentObj, varargin)

      # parse args
      p = inputParser(CaseSensitive=false, FunctionName='RTCAddon/DS1307');
      p.addParameter('Address', 0x68, @isnumeric);
      p.parse(varargin{:});

      # do we have the address ?
      address = p.Results.Address;
      i2caddresses = scanI2Cbus(parentObj);
      idx = find(cellfun ( @(x) strcmp(x, sprintf("0x%02X", address)), i2caddresses));
      if isempty(idx)
	error('RTCAddon/DS1307: matching i2c address found on bus');
      endif

      obj.Parent = parentObj;
      obj.address = p.Results.Address;
      obj.i2c = i2cdev(parentObj, obj.address);
      obj.Pins = obj.i2c.Pins;

      # our arduino part isnt needed as we are really just using the i2c, but
      # we have to have the arduino part for lib detections, so lets
      # send a message to it on init anyway in case sometime in the future
      # we end up having it do something
      data = sendCommand(obj.Parent, obj.LibraryName, obj.INIT_COMMAND, []);
    endfunction

    function c = clock (obj, settime)

      if nargin == 2
        # set time
        wd = weekday(datenum(settime));
        writeRegister(obj.i2c, 0, ...
	  [obj.dec2bcd(floor(settime(6))), obj.dec2bcd(settime(5)), (obj.dec2bcd(settime(4))), ...
	   wd, obj.dec2bcd(settime(3)), obj.dec2bcd(settime(2)), obj.dec2bcd(mod(settime(1),100))] ...
	);

      else
        # get time
        data = readRegister(obj.i2c, 0, 7);

        secs = double(obj.bcd2dec(bitand(data(1), 0x7f)));
        mins = double(obj.bcd2dec(data(2)));
        if bitand(data(3), 0x40) != 0
          # 12 hr
          pm = bitand(data(3), 0x20);
          hrs = double(obj.bcd2dec(bitand(data(3), 0x2f)));
          if pm
            hrs = double(hrs + 12);
          endif
        else
          hrs = double(obj.bcd2dec(bitand(data(3), 0x3f)));
        endif
        wday = double(data(4));
        day = double(obj.bcd2dec(data(5)));
        month = double(obj.bcd2dec(data(6)));
        year = 2000.0 + double(obj.bcd2dec(data(7)));

        c = double([year, month, day, hrs, mins, secs]);
 
      endif

    endfunction

    function start(obj)
      data = readRegister(obj.i2c, 0, 1);
      data = bitset(data, 8, 0);
      writeRegister(obj.i2c, 0, data);
    endfunction

    function stop(obj)
      data = readRegister(obj.i2c, 0, 1);
      data = bitset(data, 8, 1);
      writeRegister(obj.i2c, 0, data);
    endfunction

    function val = isstarted(obj)
      data = readRegister(obj.i2c, 0, 1);
      val = bitget(data, 8) == 0;
    endfunction

    function bits = control(obj, setbits)
      if nargin == 1
        data = readRegister(obj.i2c, 7, 1);
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
        writeRegister(obj.i2c, 7, data);
      endif
    endfunction

    function display(this)
      printf("%s = \n", inputname(1));
      printf("    %s with properties\n", class(this));
      printf("        Address = 0x%X\n", this.address);
      # show i2c pins as the pins
      printf("        Pins = {\n");
        for i=1:numel(this.Pins)
          printf("            %s\n", this.Pins{i});
        endfor
      printf("        }\n");
    endfunction

  endmethods
endclassdef
