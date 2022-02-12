## Copyright (C) 2019-2022 John Donoghue <john.donoghue@ieee.org>
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

classdef si7021 < handle
  ## -*- texinfo -*- 
  ## @deftypefn {} {} si7021
  ## SI7021 temperature and humidity sensor
  ## @end deftypefn
  ##
  ## @subheading Methods
  ## @deftypefn {} {@var{obj} =} si7021(@var{arObj})
  ## @deftypefnx {} {@var{obj} =} si7021(@var{arObj}, @var{propertyname, propertyvalue} ....)
  ## Constructor to create si7021 sensor
  ## @subsubheading Inputs
  ## @var{arObj} - the arduino parent object
  ##
  ## @var{propertyname, propertyvalue} - optional property name, value pairs.
  ## Current known properties are:
  ## Current properties are:
  ## @table @asis
  ## @item I2Caddress
  ## I2C address of the si7021 (default 0x40)
  ## @item Bus
  ## I2C bus (default 0)
  ## @end table
  ##
  ## @subsubheading Outputs
  ## @var{obj} - created SI7020 object
  ##
  ## @subsubheading Example
  ## @example
  ## @code {
  ## a = arduino()
  ## sensor = si7021(a)
  ## }
  ## @end example
  ## @end deftypefn
  ##
  ## @deftypefn {} {[@var{C}, @var{timestamp}] =} readTemperature(@var{obj})
  ## Read the temperature
  ##
  ## @subsubheading Inputs
  ## @var{obj} - the si7021 object
  ##
  ## @subsubheading Outputs
  ## @var{C} - read temperature in deg C.
  ##
  ## @var{timestamp} - timestamp when read
  ##
  ## @subsubheading Example
  ## @example
  ## @code {
  ## a = arduino()
  ## s = si7021(a)
  ## # get temp
  ## temp = s.readTemperature()
  ## }
  ## @end example
  ## @seealso{si7021}
  ## @end deftypefn
  ##
  ## @deftypefn {} {[@var{relH}, @var{timestamp}] =} readHumidity(@var{obj})
  ## Read the relative humidity
  ##
  ## @subsubheading Inputs
  ## @var{obj} - the si7021 object
  ##
  ## @subsubheading Outputs
  ## @var{relH} - relative humidity as a percentage (0 - 100.0)
  ##
  ## @var{timestamp} - timestamp when read
  ## @end deftypefn
  ##
  ## @deftypefn {} {[@var{readings}, @var{overrun}] =} read(@var{obj})
  ## @deftypefnx {} {[@var{H}, @var{C}, @var{timestamp}, @var{overrun}] =} read(@var{obj})
  ## Read the sensor data
  ##
  ## @subsubheading Inputs
  ## @var{obj} - the si2071 sensor object
  ##
  ## @subsubheading Outputs
  ## @var{H} - humidity reading from sensor.
  ##
  ## @var{C} - temperature reading from sensor.
  ##
  ## @var{timestamp} - timestamp when read
  ##
  ## @var{overrun} - overrun flag.
  ##
  ## @var{readings} - table structure with fields for Timestamp, Temperature and Humidity.
  ## @end deftypefn
  ## 
  ## @deftypefn {} {@var{relH} =} info(@var{dsObj})
  ## Read the sensor info
  ##
  ## @subsubheading Inputs
  ## @var{dsObj} - the si7021 object
  ##
  ## @subsubheading Outputs
  ## @var{inf} - structure containing the sensor information.
  ##
  ## Structure fields are:
  ## @table @asis
  ## @item Version
  ## Chip firmware version
  ## @item SensorDd
  ## sensor id value
  ## @item Type
  ## String for detected chip type
  ## @end table
  ##
  ## @end deftypefn
  ##
  ## @deftypefn {} {} flush(@var{obj})
  ## Flush sensor data
  ##
  ## @subsubheading Inputs
  ## @var{obj} - the sensor object
  ##
  ## @subsubheading Outputs
  ## None
  ## @end deftypefn
  ##
  ## @deftypefn {} {} release(@var{obj})
  ## Release the resources of the sensor
  ##
  ## @subsubheading Inputs
  ## @var{obj} - the sensor object
  ##
  ## @subsubheading Outputs
  ## None
  ## @end deftypefn
 
  properties(Access = private, constant = true)
    SI7021_CHIPID_1 = [ 0xFA 0xF0 ];
    SI7021_CHIPID_2 = [ 0xFC 0xC9 ];
    SI7021_VERSION = [ 0x84 0xB8 ];
    SI7021_TEMP_MEASURE_NOHOLD = 0xF3;
    SI7021_HUMIDITY_MEASURE_NOHOLD = 0xF5;
  endproperties
  
  properties(Access = private)
    i2c;
  endproperties

  methods
    # constructor
    function this = si7021(parentObj, varargin)

      if nargin < 1 || ! isarduino(parentObj)
        error('Expected arduino object as first parameter');
      endif

      # parse args
      p = inputParser(CaseSensitive=false, FunctionName='arduinosensor.si7021');
      p.addParameter('I2CAddress', 0x40, @isnumeric);
      p.addParameter('Bus', 0, @isnumeric);
      p.parse(varargin{:});

      # do we have the address ?
      address = p.Results.I2CAddress;
      bus = p.Results.Bus;
      #i2caddresses = scanI2Cbus(parentObj);
      #idx = find(cellfun ( @(x) strcmp(x, sprintf("0x%02X", address)), i2caddresses));
      #if isempty(idx)
      #  error('No matching i2c address found on bus');
      #endif

      this.i2c = device(parentObj, "i2caddress", p.Results.I2CAddress, 'bus', bus);
    endfunction

    function inf = info (this)
      write (this.i2c, this.SI7021_CHIPID_1);
      id1 = read(this.i2c, 1);
      write (this.i2c, this.SI7021_CHIPID_2);
      id2 = read(this.i2c, 1);

      if id2 == hex2dec("15")
        type = "Si7021";
      elseif id2 == hex2dec("14")
        type = "Si7020";
      elseif id2 == hex2dec("0D")
        type = "Si7013";
      elseif id2 == hex2dec("32")
        type = "HTU21D";
      else
        type = "Unknown";
      endif

      write (this.i2c, this.SI7021_VERSION);
      ver = read(this.i2c, 1);
      if ver == hex2dec("FF")
        ver = 1.0;
      else
        ver = double(ver)/10.0;
      endif

      inf = {};
      inf.Version = ver;
      inf.Type = type;
      inf.Sensor = int32(id1)*256 + int32(id2);
    endfunction

    function [C, timestamp] = readTemperature (this)
      % write command to get temp
      write (this.i2c, uint8([this.SI7021_TEMP_MEASURE_NOHOLD]));
      timestamp = time();
      pause (0.02);
      data = read (this.i2c, 3);
      value = uint16(data(1))*256 + uint16(data(2));
      value = bitand (value, hex2dec("FFFC"));
      temp = double(value);

      C = (175.72*temp/65536)-46.85;
    endfunction

    function [H, timestamp] = readHumidity(this)
      write (this.i2c, uint8([this.SI7021_HUMIDITY_MEASURE_NOHOLD]));
      timestamp = time();
      pause (0.02);
      data = read (this.i2c, 3);
      value = uint16(data(1))*256 + uint16(data(2));
      value = bitand (value, hex2dec("FFFC"));
      humidity = double(value);

      H = (125.0*humidity/65536)-6;
    endfunction

    function varargout = read(this)
      timestamp = time();

      C = readTemperature(this);
      H = readHumidity(this);
      
      if nargout <= 2
        varargout{1} = struct('Time', timestamp, 'Temperature', C, 'Humidity', H);
        if nargout > 1
          varargout{2} = 0; # no overrun
        endif
      else
        if nargout > 0
          varargout{1} = H;
         endif
        if nargout > 1
          varargout{2} = C;
        endif
        if nargout > 2
          varargout{3} = timestamp;
        endif
        if nargout > 3
          varargout{4} = 0; # overrun
        endif
      endif
    endfunction

    function flush(this)
      # flush currenly does nothing
    endfunction

    function display(this)
      printf("%s = \n", inputname(1));
      printf("    %s with properties\n", class(this));
      if isobject(this.i2c)
        printf("        I2CAddress: %d ('0x%s')\n", this.i2c.i2caddress, num2hex(this.i2c.i2caddress));
        printf("               Bus: %d\n", this.i2c.bus);
      else
        printf("        Not connected");
      endif
    endfunction

    function release(this)
      if isobject(this.i2c)
        delete(this.i2c);
        this.i2c = [];
      endif
    endfunction

    function delete(this)
      try
	if isobject(this.i2c)
	  delete(this.i2c);
	  this.i2c = [];
	endif
      catch
        # do nothing
      end_try_catch
    endfunction

  endmethods
endclassdef

%!error <Expected arduino object as first parameter> si7021(1);
