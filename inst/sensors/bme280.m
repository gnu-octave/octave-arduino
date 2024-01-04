## Copyright (C) 2022 John Donoghue <john.donoghue@ieee.org>
##
## Conversion routines based on code from the BME280 datasheet
## revision 1.6, Document number BST-BME280-DS002-15.
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

classdef bme280 < handle
  ## -*- texinfo -*- 
  ## @deftypefn {} {} bme280
  ## BME280 pressure, temperature and humidity sensor
  ## @end deftypefn
  ##
  ## @subheading Methods
  ## @deftypefn {} {@var{obj} =} bme280(@var{arObj})
  ## @deftypefnx {} {@var{obj} =} bme280(@var{arObj}, @var{propertyname, propertyvalue} ....)
  ## Constructor to create BME280 sensor
  ## @subsubheading Inputs
  ## @var{arObj} - the arduino parent object
  ##
  ## @var{propertyname, propertyvalue} - optional property name, value pairs.
  ## Current known properties are:
  ## Current properties are:
  ## @table @asis
  ## @item I2CAddress
  ## I2C address of the sensor (default 0x40)
  ## @item Bus
  ## I2C bus  - 0 or 1 (default 0)
  ## @end table
  ##
  ## @subsubheading Outputs
  ## @var{obj} - created object
  ##
  ## @subsubheading Example
  ## @example
  ## @code {
  ## a = arduino()
  ## sensor = bme280(a)
  ## }
  ## @end example
  ## @end deftypefn
  ##
  ## @deftypefn {} {[@var{C}, @var{timestamp}] =} readTemperature(@var{obj})
  ## Read the temperature
  ##
  ## @subsubheading Inputs
  ## @var{obj} - the sensor object
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
  ## s = bme280(a)
  ## # get temp
  ## temp = s.readTemperature
  ## }
  ## @end example
  ## @seealso{bme280}
  ## @end deftypefn
  ##
  ## @deftypefn {} {[@var{relH}, @var{timestamp}] =} readHumidity(@var{obj})
  ## Read the relative humidity
  ##
  ## @subsubheading Inputs
  ## @var{obj} - the sensor object
  ##
  ## @subsubheading Outputs
  ## @var{relH} - relative humidity as a percentage (0 - 100.0)
  ##
  ## @var{timestamp} - timestamp when read
  ## @end deftypefn
  ##
  ## @deftypefn {} {[@var{P}, @var{timestamp}] =} readPressure(@var{obj})
  ## Read the pressure
  ##
  ## @subsubheading Inputs
  ## @var{obj} - the sensor object
  ##
  ## @subsubheading Outputs
  ## @var{P} - pressure reading from sensor.
  ##
  ## @var{timestamp} - timestamp when read
  ## @end deftypefn
  ## 
  ## @deftypefn {} {[@var{readings}, @var{overrun}] =} read(@var{obj})
  ## @deftypefnx {} {[@var{P}, @var{H}, @var{C}, @var{timestamp}, @var{overrun}] =} read(@var{obj})
  ## Read the sensor data
  ##
  ## @subsubheading Inputs
  ## @var{obj} - the sensor object
  ##
  ## @subsubheading Outputs
  ## @var{P} - pressure reading from sensor.
  ##
  ## @var{H} - humidity reading from sensor.
  ##
  ## @var{C} - temperature reading from sensor.
  ##
  ## @var{timestamp} - timestamp when read
  ##
  ## @var{overrun} - overrun flag.
  ##
  ## @var{readings} - table structure with fields for Timestamp, Pressure, Temperature and Humidity.
  ## @end deftypefn
  ## 
  ## @deftypefn {} {@var{inf} =} info(@var{obj})
  ## Read the sensor info
  ##
  ## @subsubheading Inputs
  ## @var{obj} - the sensor object
  ##
  ## @subsubheading Outputs
  ## @var{inf} - structure containing the sensor information.
  ##
  ## Structure fields are:
  ## @table @asis
  ## @item Version
  ## Chip firmware version
  ## @item SensorId
  ## sensor id value
  ## @item Type
  ## sensor type 'bme280'
  ## @item Status
  ## Status value read from sensor
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
    BME280_REG_DIG_T1 = 0x88;
    BME280_REG_DIG_T2 = 0x8A;
    BME280_REG_DIG_T3 = 0x8C;

    BME280_REG_DIG_P1 = 0x8E;
    BME280_REG_DIG_P2 = 0x90;
    BME280_REG_DIG_P3 = 0x92;
    BME280_REG_DIG_P4 = 0x94;
    BME280_REG_DIG_P5 = 0x96;
    BME280_REG_DIG_P6 = 0x98;
    BME280_REG_DIG_P7 = 0x9A;
    BME280_REG_DIG_P8 = 0x9C;
    BME280_REG_DIG_P9 = 0x9E;

    BME280_REG_DIG_H1 = 0xA1;
    BME280_REG_DIG_H2 = 0xE1;
    BME280_REG_DIG_H3 = 0xE3;
    BME280_REG_DIG_H4 = 0xE4;
    BME280_REG_DIG_H5 = 0xE5;
    BME280_REG_DIG_H6 = 0xE7;

    BME280_REG_CHIPID = 0xD0;
    BME280_REG_VERSION = 0xD1;
    BME280_REG_SOFTRESET = 0xE0;

    BME280_REG_CAL26 = 0xE1; 

    BME280_REG_CONTROLHUMID = 0xF2;
    BME280_REG_STATUS = 0XF3;
    BME280_REG_CONTROL = 0xF4;
    BME280_REG_CONFIG = 0xF5;
    BME280_REG_PRESSUREDATA = 0xF7;
    BME280_REG_TEMPDATA = 0xFA;
    BME280_REG_HUMIDDATA = 0xF;

    BME280_REG_DATA = 0xF7;
 
  endproperties
  
  properties(Access = private)
    i2c;
    caldata = {};
  endproperties

  # matlab compatible properties
  properties (SetAccess = private)
    I2CAddress = "";
    Bus = 0;
  endproperties

  methods
    # constructor
    function this = bme280(parentObj, varargin)

      if nargin < 1 || ! isarduino(parentObj)
        error('Expected arduino object as first parameter');
      endif

      # parse args
      p = inputParser(CaseSensitive=false, FunctionName='arduinosensor.SI7021');
      p.addParameter('I2CAddress', 0x77, @isnumeric);
      p.addParameter('Bus', 0, @isnumeric);
      p.parse(varargin{:});

      # do we have the address ?
      address = p.Results.I2CAddress;
      bus = p.Results.Bus;

      #i2caddresses = scanI2Cbus(parentObj, bus);
      #idx = find(cellfun ( @(x) strcmp(x, sprintf("0x%02X", address)), i2caddresses));
      #if isempty(idx)
      #  error('No matching i2c address found on bus');
      #endif

      this.i2c = device(parentObj, "i2caddress", p.Results.I2CAddress, 'Bus', bus);

      # init 
      id = this.readRegisterU8(this.BME280_REG_CHIPID);
      if id < hex2dec("56") || id > hex2dec("60")
        error ("Invalid id '%X' read for sensor", id)
      endif

      # wait while chip is reading
      status = 1;
      while bitand(status, 1) == 1
        pause(.1);
        status = this.readRegisterU8(this.BME280_REG_STATUS);
      endwhile

      this.caldata.t_fine = [];

      this.caldata.T1 = this.readRegisterU16(this.BME280_REG_DIG_T1);
      this.caldata.T2 = this.readRegisterS16(this.BME280_REG_DIG_T2);
      this.caldata.T3 = this.readRegisterS16(this.BME280_REG_DIG_T3);

      this.caldata.P1 = this.readRegisterU16(this.BME280_REG_DIG_P1);
      this.caldata.P2 = this.readRegisterS16(this.BME280_REG_DIG_P2);
      this.caldata.P3 = this.readRegisterS16(this.BME280_REG_DIG_P3);
      this.caldata.P4 = this.readRegisterS16(this.BME280_REG_DIG_P4);
      this.caldata.P5 = this.readRegisterS16(this.BME280_REG_DIG_P5);
      this.caldata.P6 = this.readRegisterS16(this.BME280_REG_DIG_P6);
      this.caldata.P7 = this.readRegisterS16(this.BME280_REG_DIG_P7);
      this.caldata.P8 = this.readRegisterS16(this.BME280_REG_DIG_P8);
      this.caldata.P9 = this.readRegisterS16(this.BME280_REG_DIG_P9);

      this.caldata.H1 = this.readRegisterU8(this.BME280_REG_DIG_H1);
      this.caldata.H2 = this.readRegisterU16(this.BME280_REG_DIG_H2);
      this.caldata.H3 = this.readRegisterU8(this.BME280_REG_DIG_H3);
      
      a = this.readRegisterU8(this.BME280_REG_DIG_H4);
      b = this.readRegisterU8(this.BME280_REG_DIG_H4+1);
      this.caldata.H4 = uint16(a)*16 + bitand(uint16(b), uint16(0x0f));

      a = this.readRegisterU8(this.BME280_REG_DIG_H5);
      b = this.readRegisterU8(this.BME280_REG_DIG_H5+1);
      this.caldata.H5 = uint16(b*16) + bitshift(uint16(a), -4);

      this.caldata.H6 = this.readRegisterS8(this.BME280_REG_DIG_H6);

      # ensure in sleep mode
      this.writeRegister(this.BME280_REG_CONTROL, uint8([0]));

      # start sensors
      
      # sample rate 1
      this.writeRegister(this.BME280_REG_CONTROLHUMID, uint8([0x01]));

      this.writeRegister(this.BME280_REG_CONFIG, uint8([0xE1]));

      # 101 101 11
      this.writeRegister(this.BME280_REG_CONTROL, uint8([0xB7]));

    endfunction

    function inf = info (this)
      inf = {};
      inf.Type = "bme280";
      inf.SensorId = this.readRegisterU8(this.BME280_REG_CHIPID);
      inf.Version = this.readRegisterU8(this.BME280_REG_VERSION);
      inf.Status = this.readRegisterU8(this.BME280_REG_STATUS);
    endfunction

    function [C, timestamp] = readTemperature (this)
      data = readData(this);

      value = bitshift(int32(data(4)), 12) + bitshift(int32(data(5)), 4) + bitshift(int32(data(6)), -4);

      timestamp = time();
      C = calcTemperature(this, value);
    endfunction

    function [H, timestamp] = readHumidity(this)
      data = readData(this);

      if isempty(this.caldata.t_fine)
        value = bitshift(int32(data(4)), 12) + bitshift(int32(data(5)), 4) + bitshift(int32(data(6)), -4);
        calcTemperature(this, value);
      endif

      value = bitshift(int32(data(7)), 8) + int32(data(8));

      timestamp = time();
      H = calcHumidity(this, value);
    endfunction

    function [P, timestamp] = readPressure(this)
      data = readData(this);

      if isempty(this.caldata.t_fine)
        value = bitshift(int32(data(4)), 12) + bitshift(int32(data(5)), 4) + bitshift(int32(data(6)), -4);
        calcTemperature(this, value);
      endif

      value = bitshift(int32(data(1)), 12) + bitshift(int32(data(2)), 4) + bitshift(int32(data(3)), -4);

      timestamp = time();
      P = calcPressure(this, value);
    endfunction

    function varargout = read(this)
      data = readData(this);

      timestamp = time();

      value = bitshift(int32(data(4)), 12) + bitshift(int32(data(5)), 4) + bitshift(int32(data(6)), -4);
      C = calcTemperature(this, value);
      
      value = bitshift(int32(data(7)), 8) + int32(data(8));
      H = calcHumidity(this, value);

      value = bitshift(int32(data(1)), 12) + bitshift(int32(data(2)), 4) + bitshift(int32(data(3)), -4);
      P = calcPressure(this, value);

      if nargout <= 2
        varargout{1} = struct('Time', timestamp, 'Temperature', C, 'Pressure', P, 'Humidity', H);
        if nargout > 1
          varargout{2} = 0; # no overrun
        endif
      else
        if nargout > 0
          varargout{1} = P;
         endif
        if nargout > 1
          varargout{2} = H;
        endif
        if nargout > 2
          varargout{3} = C;
        endif
        if nargout > 3
          varargout{4} = timestamp;
        endif
        if nargout > 4
          varargout{5} = 0; # overrun
        endif
      endif
    endfunction

    function flush(this)
      # flush currenly does nothing
    endfunction

    function disp(this)
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

  methods (Hidden = true)
    function v = get.I2CAddress (this)
      v = sprintf("0x%02X", this.i2c.I2CAddress);
    endfunction

    function v = get.Bus (this)
      v = this.i2c.Bus;
    endfunction
  endmethods

  methods (Access = private)

   function C = calcTemperature(this, value)
      var1 = bitshift((bitshift(int32(value), -3) - bitshift(int32(this.caldata.T1), 1)) * int32(this.caldata.T2), -11);
      var2 = (bitshift(int32(value), -4) - int32(this.caldata.T1));
      var2 = bitshift( (bitshift(var2*var2, -12) * int32(this.caldata.T3)), -14);

      this.caldata.t_fine = var1 + var2;

      T = bitshift(this.caldata.t_fine * 5 + 128, -8);

      C = single(T)/100.0;
    endfunction

    function H = calcHumidity(this, value)
      var1 = int32(this.caldata.t_fine) - 76800;
      a = bitshift(value, 14) - bitshift(int32(this.caldata.H4), 20) - (int32(this.caldata.H5) * var1);
      a = bitshift(a + 16384, -15);

      b = bitshift(var1 * int32(this.caldata.H6), -10) * (bitshift(var1 * int32(this.caldata.H3), -11) + 32768);
      b = bitshift(b, -10) + 2097152 * int32(this.caldata.H2) + 8192;
      b = bitshift(b, -14);
      var1 = a * b;

      a = bitshift(bitshift(var1, -15) * bitshift(var1, -15), -7);
      var1 = var1 - bitshift(a * int32(this.caldata.H1), -4);
      if var1 < 0
        var1 = 0;
      elseif var1 > 419430400
        var1 = 419430400;
      endif

      H = single(bitshift(var1, -12)) / 1024.0;
    endfunction

    function P = calcPressure(this, value)
      var1 = int64(this.caldata.t_fine) - 128000;

      var2 = var1 * var1 * int64(this.caldata.P6);
      var2 = int64(var2) + bitshift(var1 * int64(this.caldata.P5), 17);
      var2 = var2 + bitshift(int64(this.caldata.P4), 35);

      var1 = bitshift(var1 * var1 * int64(this.caldata.P3), -8) + bitshift(var1 * int64(this.caldata.P2), 12);
      var1 = bitshift((bitshift(int64(1), 47) +var1) * int64(this.caldata.P1), -33);
      if (var1 != 0)
        P = 1048576 - value;
        P = ((bitshift(int64(P), 31) - var2)*3125)/var1;
        var1 = bitshift(int64(this.caldata.P9) * bitshift(P, -13) * bitshift(P, -13), -25);
        var2 = bitshift(int64(this.caldata.P8) * P, -19);
        P = bitshift(P + var1 + var2, -8) + bitshift(int64(this.caldata.P7), 4);
      else
        P = 0;
      endif
      P = single(P) / 256.0;
    endfunction

    function data = readRegister(this, reg, sz)
      data = readRegister(this.i2c, reg, sz);
    endfunction

    function writeRegister(this, reg, data)
      writeRegister(this.i2c, reg, data);
    endfunction

    # read the data
    function data = readData(this)
      m = 1;
      while m == 1
        status = this.readRegisterU8 (this.BME280_REG_STATUS);
        m = bitand(bitshift(status, -3), 1);
        if m == 1
          pause(.1);
        endif
      endwhile

      data = readRegister(this, this.BME280_REG_DATA, 8);
    endfunction

    function value = readRegisterU16(this, reg)
      data = readRegister(this, reg, 2);
      value = uint16(data(2))*256 + uint16(data(1));
    endfunction

    function value = readRegisterS16(this, reg)
      data = readRegister(this, reg, 2);
      value = uint16(data(2))*256 + uint16(data(1));
      value = typecast(value, 'int16');
    endfunction

    function value = readRegisterU8(this, reg)
      data = readRegister(this, reg, 1);
      value = uint8(data(1));
    endfunction

    function value = readRegisterS8(this, reg)
      data = readRegister(this, reg, 1);
      value = uint8(data(1));
      value = typecast(value, 'int8');
    endfunction

  endmethods
endclassdef

%!error <Expected arduino object as first parameter> bme280(1);
