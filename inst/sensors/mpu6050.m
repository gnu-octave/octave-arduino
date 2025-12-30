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

classdef mpu6050 < handle
  ## -*- texinfo -*- 
  ## @deftypefn {} {} mpu6050
  ## MPU-6050 6 degrees sensor
  ## @end deftypefn
  ##
  ## @subheading Methods
  ## @deftypefn {} {@var{obj} =} mpu6050(@var{arObj})
  ## @deftypefnx {} {@var{obj} =} mpu6050(@var{arObj}, @var{propertyname, propertyvalue} ....)
  ## Constructor to create MPU-6050 sensor
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
  ## sensor = mpu6050(a)
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
  ## s = mpu6050(a)
  ## # get temp
  ## temp = s.readTemperature
  ## }
  ## @end example
  ## @seealso{mpu6050}
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
  ## @deftypefn {} {[@var{readVal}, @var{timestamp}] =} readAngularVelocity(@var{obj})
  ## Read the angular velocity
  ##
  ## @subsubheading Inputs
  ## @var{obj} - the sensor object
  ##
  ## @subsubheading Outputs
  ## @var{readVal} - the 3 angular velocity values
  ##
  ## @var{timestamp} - timestamp when read
  ## @end deftypefn
  ## 
  ## @deftypefn {} {[@var{readings}, @var{overrun}] =} read(@var{obj})
  ## @deftypefnx {} {[@var{accel}, @var{gyro}, @var{mag}, @var{timestamp}, @var{overrun}] =} read(@var{obj})
  ## Read the sensor data
  ##
  ## @subsubheading Inputs
  ## @var{obj} - the sensor object
  ##
  ## @subsubheading Outputs
  ## @var{accel} - acceleration reading from sensor.
  ##
  ## @var{gyro} - angular acceleration reading from sensor.
  ##
  ## @var{timestamp} - timestamp when read
  ##
  ## @var{overrun} - overrun flag.
  ##
  ## @var{readings} - table structure with fields for Timestamp, Acceleration, AngularVelocity.
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
  ## sensor type 'mpu6050'
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

    MPU6050_REG_XG_OFFS_TC  = 0x00;
    MPU6050_REG_YG_OFFS_TC  = 0x01;
    MPU6050_REG_ZG_OFFS_TC  = 0x02;
    MPU6050_REG_X_FINE_GAIN = 0x03;
    MPU6050_REG_Y_FINE_GAIN = 0x04;
    MPU6050_REG_Z_FINE_GAIN = 0x05;
    MPU6050_REG_XA_OFFS_H   = 0x06;
    MPU6050_REG_XA_OFFS_L_TC= 0x07;
    MPU6050_REG_YA_OFFS_H   = 0x08;
    MPU6050_REG_YA_OFFS_L_TC= 0x09;
    MPU6050_REG_ZA_OFFS_H   = 0x0A;
    MPU6050_REG_ZA_OFFS_L_TC= 0x0B;
    MPU6050_REG_SELF_TEST_X = 0x0D;
    MPU6050_REG_SELF_TEST_Y = 0x0E;
    MPU6050_REG_SELF_TEST_Z = 0x0F;
    MPU6050_REG_SELF_TEST_A = 0x10;
    MPU6050_REG_XG_OFFS_USRH= 0x13;
    MPU6050_REG_XG_OFFS_USRL= 0x14;
    MPU6050_REG_YG_OFFS_USRH= 0x15;
    MPU6050_REG_YG_OFFS_USRL= 0x16;
    MPU6050_REG_ZG_OFFS_USRH= 0x17;
    MPU6050_REG_ZG_OFFS_USRL= 0x18;
    MPU6050_REG_SMPLRT_DIV  = 0x19;
    MPU6050_REG_CONFIG      = 0x1A;
    MPU6050_REG_GYRO_CONFIG = 0x1B;
    MPU6050_REG_ACCEL_CONFIG= 0x1C;
    MPU6050_REG_FF_THR      = 0x1D;
    MPU6050_REG_FF_DUR      = 0x1E;
    MPU6050_REG_MOT_THR     = 0x1F;
    MPU6050_REG_MOT_DUR     = 0x20;
    MPU6050_REG_ZRMOT_THR   = 0x21;
    MPU6050_REG_ZRMOT_DUR   = 0x22;
    MPU6050_REG_FIFO_EN     = 0x23;
    MPU6050_REG_I2C_MST_CTRL= 0x24;
    MPU6050_REG_I2C_SLV0_ADDR= 0x25;
    MPU6050_REG_I2C_SLV0_REG= 0x26;
    MPU6050_REG_I2C_SLV0_CTRL= 0x27;
    MPU6050_REG_I2C_SLV1_ADDR= 0x28;
    MPU6050_REG_I2C_SLV1_REG= 0x29;
    MPU6050_REG_I2C_SLV1_CTRL= 0x2A;
    MPU6050_REG_I2C_SLV2_ADDR= 0x2B;
    MPU6050_REG_I2C_SLV2_REG= 0x2C;
    MPU6050_REG_I2C_SLV2_CTRL= 0x2D;
    MPU6050_REG_I2C_SLV3_ADDR= 0x2E;
    MPU6050_REG_I2C_SLV3_REG= 0x2F;
    MPU6050_REG_I2C_SLV3_CTRL= 0x30;
    MPU6050_REG_I2C_SLV4_ADDR= 0x31;
    MPU6050_REG_I2C_SLV4_REG= 0x32;
    MPU6050_REG_I2C_SLV4_DO = 0x33;
    MPU6050_REG_I2C_SLV4_CTRL= 0x34;
    MPU6050_REG_I2C_SLV4_DI = 0x35;
    MPU6050_REG_I2C_MST_STATUS= 36;
    MPU6050_REG_INT_PIN_CFG = 0x37;
    MPU6050_REG_INT_ENABLE  = 0x38;
    MPU6050_REG_DMP_INT_STATUS= 0x39;
    MPU6050_REG_INT_STATUS  = 0x3A;
    MPU6050_REG_ACCEL_XOUT_H= 0x3B;
    MPU6050_REG_ACCEL_XOUT_L= 0x3C;
    MPU6050_REG_ACCEL_YOUT_H= 0x3D;
    MPU6050_REG_ACCEL_YOUT_L= 0x3E;
    MPU6050_REG_ACCEL_ZOUT_H= 0x3F;
    MPU6050_REG_ACCEL_ZOUT_L= 0x40;
    MPU6050_REG_TEMP_OUT_H  = 0x41;
    MPU6050_REG_TEMP_OUT_L  = 0x42;
    MPU6050_REG_GYRO_XOUT_H = 0x43;
    MPU6050_REG_GYRO_XOUT_L = 0x44;
    MPU6050_REG_GYRO_YOUT_H = 0x45;
    MPU6050_REG_GYRO_YOUT_L = 0x46;
    MPU6050_REG_GYRO_ZOUT_H = 0x47;
    MPU6050_REG_GYRO_ZOUT_L = 0x48;
    MPU6050_REG_EXT_SENS_DATA_00 = 0x49;
    MPU6050_REG_EXT_SENS_DATA_01 = 0x4A;
    MPU6050_REG_EXT_SENS_DATA_02 = 0x4B;
    MPU6050_REG_EXT_SENS_DATA_03 = 0x4C;
    MPU6050_REG_EXT_SENS_DATA_04 = 0x4D;
    MPU6050_REG_EXT_SENS_DATA_05 = 0x4E;
    MPU6050_REG_EXT_SENS_DATA_06 = 0x4F;
    MPU6050_REG_EXT_SENS_DATA_07 = 0x50;
    MPU6050_REG_EXT_SENS_DATA_08 = 0x51;
    MPU6050_REG_EXT_SENS_DATA_09 = 0x52;
    MPU6050_REG_EXT_SENS_DATA_10 = 0x53;
    MPU6050_REG_EXT_SENS_DATA_11 = 0x54;
    MPU6050_REG_EXT_SENS_DATA_12 = 0x55;
    MPU6050_REG_EXT_SENS_DATA_13 = 0x56;
    MPU6050_REG_EXT_SENS_DATA_14 = 0x57;
    MPU6050_REG_EXT_SENS_DATA_15 = 0x58;
    MPU6050_REG_EXT_SENS_DATA_16 = 0x59;
    MPU6050_REG_EXT_SENS_DATA_17 = 0x5A;
    MPU6050_REG_EXT_SENS_DATA_18 = 0x5B;
    MPU6050_REG_EXT_SENS_DATA_19 = 0x5C;
    MPU6050_REG_EXT_SENS_DATA_20 = 0x5D;
    MPU6050_REG_EXT_SENS_DATA_21 = 0x5E;
    MPU6050_REG_EXT_SENS_DATA_22 = 0x5F;
    MPU6050_REG_EXT_SENS_DATA_23 = 0x60;
    MPU6050_REG_MOT_DETECT_STATUS= 0x61;
    MPU6050_REG_I2C_SLV0_DO = 0x63;
    MPU6050_REG_I2C_SLV1_DO = 0x64;
    MPU6050_REG_I2C_SLV2_DO = 0x65;
    MPU6050_REG_I2C_SLV3_DO = 0x66;
    MPU6050_REG_I2C_MST_DELAY_CTRL= 0x67;
    MPU6050_REG_SIGNAL_PATH_RESET= 0x68;
    MPU6050_REG_MOT_DETECT_CTRL= 0x69;
    MPU6050_REG_USER_CTRL   = 0x6A;
    MPU6050_REG_PWR_MGMT_1  = 0x6B;
    MPU6050_REG_PWR_MGMT_2  = 0x6C;
    MPU6050_REG_BANK_SEL    = 0x6D;
    MPU6050_REG_MEM_START_ADDR = 0x6E;
    MPU6050_REG_MEM_R_W     = 0x6F;
    MPU6050_REG_DMP_CFG_1   = 0x70;
    MPU6050_REG_DMP_CFG_2   = 0x71;
    MPU6050_REG_FIFO_COUNTH = 0x72;
    MPU6050_REG_FIFO_COUNTL = 0x73;
    MPU6050_REG_FIFO_R_W    = 0x74;
    MPU6050_REG_WHO_AM_I    = 0x75;
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
    function this = mpu6050(parentObj, varargin)

      if nargin < 1 || ! isarduino(parentObj)
        error('Expected arduino object as first parameter');
      endif

      # parse args
      p = inputParser(CaseSensitive=false, FunctionName='arduinosensor.SI7021');
      p.addParameter('I2CAddress', 0x68, @isnumeric); # matlab default is 0x28
      p.addParameter('Bus', 0, @isnumeric);
      p.parse(varargin{:});

      # do we have the address ?
      address = p.Results.I2CAddress;
      bus = p.Results.Bus;

      this.i2c = device(parentObj, "i2caddress", p.Results.I2CAddress, 'Bus', bus);

      # verify what talking to
      id = this.readRegisterU8(this.MPU6050_REG_WHO_AM_I)
      pause(.1)
      id = this.readRegisterU8(this.MPU6050_REG_WHO_AM_I)
      
      if id  != 0x68 && id != 0x69
        error ("Invalid id '%X' read for sensor", id)
      endif

      # init
     

      # set gyro 250deg/s
      this.writeRegister(this.MPU6050_REG_GYRO_CONFIG, 0x00);
      # set accel scale to 2g
      this.writeRegister(this.MPU6050_REG_ACCEL_CONFIG, 0x00);

      # set awake, use gyro x pll clock
      this.writeRegister(this.MPU6050_REG_PWR_MGMT_1, 0x01);
      
    endfunction

    function inf = info (this)
      inf = {};
      inf.Type = "mpu6050";
      inf.SensorId = this.readRegisterU8(this.MPU6050_REG_WHO_AM_I);

      #inf.Status = this.readRegisterU8(this.BNO055_REG_ACC_ID);
    endfunction

    function [C, timestamp] = readTemperature (this)
      timestamp = time();
      C = single(this.readRegisterS16(this.MPU6050_REG_TEMP_OUT_H)) / 340.0 + 36.53;

    endfunction

    function [readVal, timestamp] = readAcceleration (this)
      data = this.readRegister(this.MPU6050_REG_ACCEL_XOUT_H, 6);
      timestamp = time();
      x = typecast(uint16(data(1))*256 + uint16(data(2)), 'int16');
      y = typecast(uint16(data(3))*256 + uint16(data(4)), 'int16');
      z = typecast(uint16(data(5))*256 + uint16(data(6)), 'int16');
      # 2g scale
      readVal = single([x y z])/16384.0;
    endfunction

    function [readVal, timestamp] = readAngularVelocity (this)
      data = this.readRegister(this.MPU6050_REG_GYRO_XOUT_H, 6);
      timestamp = time();
      x = typecast(uint16(data(2))*256 + uint16(data(1)), 'int16');
      y = typecast(uint16(data(4))*256 + uint16(data(3)), 'int16');
      z = typecast(uint16(data(6))*256 + uint16(data(4)), 'int16');
      # 250 deg/s range
      readVal = single([x y z])/131.0;
    endfunction

    function varargout = read(this)
      #data = readData(this);

      timestamp = time();
      accel = this.readAcceleration();
      avel = this.readAngularVelocity();

      if nargout <= 2
        varargout{1} = struct('Time', timestamp, 'Acceleration', accel, 'AngularVelocity', avel);
        if nargout > 1
          varargout{2} = 0; # no overrun
        endif
      else
        if nargout > 0
          varargout{1} = accel;
         endif
        if nargout > 1
          varargout{2} = avel;
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

    function data = readRegister(this, reg, sz)
      data = readRegister(this.i2c, reg, sz);
    endfunction

    function writeRegister(this, reg, data)
      writeRegister(this.i2c, reg, data);
    endfunction

    function value = readRegisterU16(this, reg)
      data = readRegister(this, reg, 2);
      value = uint16(data(1))*256 + uint16(data(2));
    endfunction

    function value = readRegisterS16(this, reg)
      data = readRegister(this, reg, 2);
      value = uint16(data(1))*256 + uint16(data(2));
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

%!error <Expected arduino object as first parameter> mpu6050(1);
