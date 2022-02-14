## Copyright (C) 2022 John Donoghue <john.donoghue@ieee.org>
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

classdef lis3dh < handle
  ## -*- texinfo -*- 
  ## @deftypefn {} {} lis3dh
  ## LIS3DH 3 degrees sensor
  ## @end deftypefn
  ##
  ## @subheading Methods
  ## @deftypefn {} {@var{obj} =} lis3dh(@var{arObj})
  ## @deftypefnx {} {@var{obj} =} lis3dh(@var{arObj}, @var{propertyname, propertyvalue} ....)
  ## Constructor to create LIS3DH sensor
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
  ## sensor = lis3dh(a)
  ## }
  ## @end example
  ## @end deftypefn
  ##
  ## @deftypefn {} {[@var{readVal}, @var{timestamp}] =} readAcceleration(@var{obj})
  ## Read the acceleration rate
  ##
  ## @subsubheading Inputs
  ## @var{obj} - the sensor object
  ##
  ## @subsubheading Outputs
  ## @var{readVal} - the 3 acceleration values
  ##
  ## @var{timestamp} - timestamp when read
  ## @end deftypefn
  ##
  ## @deftypefn {} {[@var{readings}, @var{overrun}] =} read(@var{obj})
  ## @deftypefnx {} {[@var{accel}, @var{timestamp}, @var{overrun}] =} read(@var{obj})
  ## Read the sensor data
  ##
  ## @subsubheading Inputs
  ## @var{obj} - the sensor object
  ##
  ## @subsubheading Outputs
  ## @var{accel} - acceleration reading from sensor.
  ##
  ## @var{timestamp} - timestamp when read
  ##
  ## @var{overrun} - overrun flag.
  ##
  ## @var{readings} - table structure with fields for Timestamp, Acceleration.
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
  ## @item SensorId
  ## sensor id value
  ## @item Type
  ## sensor type 'lis3dh'
  ## @item Status
  ## sensor status value
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

    # Reserved (do not modify) 00 - 06 Reserved
    LIS3DH_REG_STATUS_REG_AUX = 0x07;
    LIS3DH_REG_OUT_ADC1_L = 0x08;
    LIS3DH_REG_OUT_ADC1_H = 0x09;
    LIS3DH_REG_OUT_ADC2_L = 0x0A;
    LIS3DH_REG_OUT_ADC2_H = 0x0B;
    LIS3DH_REG_OUT_ADC3_L = 0x0C;
    LIS3DH_REG_OUT_ADC3_H = 0x0D;
    # Reserved (do not modify) 0E;
    LIS3DH_REG_WHO_AM_I = 0x0F;
    # Reserved (do not modify) 10;
    LIS3DH_REG_CTRL_REG0 = 0x1E;
    LIS3DH_REG_TEMP_CFG_REG = 0x1F;
    LIS3DH_REG_CTRL_REG1 = 0x20;
    LIS3DH_REG_CTRL_REG2 = 0x21;
    LIS3DH_REG_CTRL_REG3 = 0x22;
    LIS3DH_REG_CTRL_REG4 = 0x23;
    LIS3DH_REG_CTRL_REG5 = 0x24;
    LIS3DH_REG_CTRL_REG6 = 0x25;
    LIS3DH_REG_REFERENCE = 0x26;
    LIS3DH_REG_STATUS_REG = 0x27;
    LIS3DH_REG_OUT_X_L = 0x28;
    LIS3DH_REG_OUT_X_H = 0x29;
    LIS3DH_REG_OUT_Y_L = 0x2A;
    LIS3DH_REG_OUT_Y_H = 0x2B;
    LIS3DH_REG_OUT_Z_L = 0x2C;
    LIS3DH_REG_OUT_Z_H = 0x2D;
    LIS3DH_REG_FIFO_CTRL_REG = 0x2E;
    LIS3DH_REG_FIFO_SRC_REG = 0x2F;
    LIS3DH_REG_INT1_CFG = 0x30;
    LIS3DH_REG_INT1_SRC = 0x31;
    LIS3DH_REG_INT1_THS = 0x32;
    LIS3DH_REG_INT1_DURATION = 0x33;
    LIS3DH_REG_INT2_CFG = 0x34;
    LIS3DH_REG_INT2_SRC = 0x35;
    LIS3DH_REG_INT2_THS = 0x36;
    LIS3DH_REG_INT2_DURATION = 0x37;
    LIS3DH_REG_CLICK_CFG = 0x38;
    LIS3DH_REG_CLICK_SRC = 0x39;
    LIS3DH_REG_CLICK_THS = 0x3A;
    LIS3DH_REG_TIME_LIMIT = 0x3B;
    LIS3DH_REG_TIME_LATENCY = 0x3C;
    LIS3DH_REG_TIME_WINDOW = 0x3D;
    LIS3DH_REG_ACT_THS = 0x3E;
    LIS3DH_REG_ACT_DUR = 0x3F;

  endproperties
  
  properties(Access = private)
    i2c;
  endproperties

  # matlab compatible properties
  properties (SetAccess = private)
    I2CAddress = "";
    Bus = 0;
  endproperties

  methods
    # constructor
    function this = lis3dh(parentObj, varargin)

      if nargin < 1 || ! isarduino(parentObj)
        error('Expected arduino object as first parameter');
      endif

      # parse args
      p = inputParser(CaseSensitive=false, FunctionName='arduinosensor.SI7021');
      p.addParameter('I2CAddress', 0x18, @isnumeric);
      p.addParameter('Bus', 0, @isnumeric);
      p.parse(varargin{:});

      # do we have the address ?
      address = p.Results.I2CAddress;
      bus = p.Results.Bus;

      this.i2c = device(parentObj, "i2caddress", p.Results.I2CAddress, 'Bus', bus);

      # verify what talking to

      pause(.1);
      id = this.readRegisterU8(this.LIS3DH_REG_WHO_AM_I);
      if id  != 0x33
        pause(.1);
        id = this.readRegisterU8(this.LIS3DH_REG_WHO_AM_I);
      endif
      if id  != 0x33
        error ("Invalid id '%X' read for sensor", id)
      endif

      # set up device

      # 400 Mhz, normal mode, all axis enabled
      this.writeRegister(this.LIS3DH_REG_CTRL_REG1, 0x77);

      # bdu enabled, little endian, scale 2g, hires
      this.writeRegister(this.LIS3DH_REG_CTRL_REG4, 0x88);
 
    endfunction

    function inf = info (this)
      inf = {};
      inf.Type = "lis3dh";
      inf.SensorId = this.readRegisterU8(this.LIS3DH_REG_WHO_AM_I);

      inf.Status = this.readRegisterU8(this.LSM6DSO_REG_STATUS_REG);
    endfunction

    function [readVal, timestamp] = readAcceleration (this)
      data = this.readRegister(bitor(this.LIS3DH_REG_OUT_X_L, 0x80), 6);
      timestamp = time();
      x = typecast(uint16(data(2))*256 + uint16(data(1)), 'int16');
      y = typecast(uint16(data(4))*256 + uint16(data(3)), 'int16');
      z = typecast(uint16(data(6))*256 + uint16(data(5)), 'int16');
      readVal = single([x y z]) * 2.0 / 32768.0;
    endfunction

    function varargout = read(this)
      data = readData(this);

      timestamp = time();
      accel = this.readAcceleration();

      if nargout <= 2
        varargout{1} = struct('Time', timestamp, 'Acceleration', accel);
        if nargout > 1
          varargout{2} = 0; # no overrun
        endif
      else
        if nargout > 0
          varargout{1} = accel;
         endif
        if nargout > 1
          varargout{2} = timestamp;
        endif
        if nargout > 2
          varargout{3} = 0; # overrun
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

  methods (Hidden = true)
    function v = get.I2CAddress (this)
      v = sprintf("0x%02X", this.i2c.I2CAddress);
    endfunction

    function v = get.Bus (this)
      v = this.i2c.Bus;
    endfunction
  endmethods

  methods (Access = private)

    function data = readRegister(this, reg, sz)
      data = readRegister(this.i2c, reg, sz);
    endfunction

    function writeRegister(this, reg, data)
      writeRegister(this.i2c, reg, data);
    endfunction

    function value = readRegisterU8(this, reg)
      data = readRegister(this, reg, 1);
      value = uint8(data(1));
    endfunction

  endmethods
endclassdef

%!error <Expected arduino object as first parameter> lis3dh(1);
