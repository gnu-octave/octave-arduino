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

classdef bno055 < handle
  ## -*- texinfo -*- 
  ## @deftypefn {} {} bno055
  ## BNO055 9 axis orientation sensor
  ## @end deftypefn
  ##
  ## @subheading Methods
  ## @deftypefn {} {@var{obj} =} bno055(@var{arObj})
  ## @deftypefnx {} {@var{obj} =} bno055(@var{arObj}, @var{propertyname, propertyvalue} ....)
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
  ## @item OperatingMode
  ## Operating mode 'ndof' or 'amg'
  ## @end table
  ##
  ## @subsubheading Outputs
  ## @var{obj} - created object
  ##
  ## @subsubheading Example
  ## @example
  ## @code {
  ## a = arduino()
  ## sensor = bno055(a)
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
  ## s = bno055(a)
  ## # get temp
  ## temp = s.readTemperature
  ## }
  ## @end example
  ## @seealso{bno055}
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
  ## @deftypefn {} {[@var{readVal}, @var{timestamp}] =} readMagneticField(@var{obj})
  ## Read the magnetic field components
  ##
  ## @subsubheading Inputs
  ## @var{obj} - the sensor object
  ##
  ## @subsubheading Outputs
  ## @var{readVal} - the 3 magnetic field values
  ##
  ## @var{timestamp} - timestamp when read
  ## @end deftypefn
  ##
  ## @deftypefn {} {[@var{readVal}, @var{timestamp}] =} readOrientation(@var{obj})
  ## Read the oriientation components
  ##
  ## @subsubheading Inputs
  ## @var{obj} - the sensor object
  ##
  ## @subsubheading Outputs
  ## @var{readVal} - the 3 orientation values
  ##
  ## @var{timestamp} - timestamp when read
  ## @end deftypefn
  ## 
  ## @deftypefn {} {[@var{readings}, @var{overrun}] =} read(@var{obj})
  ## @deftypefnx {} {[#var{accel}, @var{gyro}, @var{mag}, @var{timestamp}, @var{overrun}] =} read(@var{obj})
  ## @deftypefnx {} {[#var{accel}, @var{gyro}, @var{mag}, @var{orientation}, @var{timestamp}, @var{overrun}] =} read(@var{obj})
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
  ## @var{mag} - magnetic field reading from sensor.
  ##
  ## @var{orientation} - orientation reading from sensor.
  ##
  ## @var{timestamp} - timestamp when read
  ##
  ## @var{overrun} - overrun flag.
  ##
  ## @var{readings} - table structure with fields for Timestamp, Acceleration, AngularVelocity, MagneticField, Orientation.
  ## @end deftypefn
  ## 
  ## @deftypefn {} {@var{inf} =} readCalibrationStatus(@var{obj})
  ## Read the sensor calibration status
  ##
  ## @subsubheading Inputs
  ## @var{obj} - the sensor object
  ##
  ## @subsubheading Outputs
  ## @var{status} - structure containing the calibration information.
  ##
  ## Structure fields are:
  ## @table @asis
  ## @item System
  ## System calibrarion
  ## @item Accelerometer
  ## Accelerometer calibration status
  ## @item Gyroscope
  ## Gyroscope calibration status
  ## @item Magnetometer
  ## Magnetometer calibration status
  ## @end table
  ##
  ## Values for each will be either 'uncalibrated', 'partial' or 'full'.
  ##
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
  ## Software firmware version
  ## @item SensorId
  ## sensor id value
  ## @item Type
  ## sensor type 'bno055'
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

    # page 0
    BNO055_REG_CHIP_ID = 0x00; # 0xA0 BNO055 CHIP ID
    BNO055_REG_ACC_ID = 0x01; # 0xFB ACC chip ID
    BNO055_REG_MAG_ID = 0x02; # 0x32 MAG chip ID
    BNO055_REG_GYR_ID = 0x03; # 0x0F GYRO chip ID

    BNO055_REG_SW_REV_ID   = 0x04;
    BNO055_REG_SW_REV_ID_L = 0x04; # SB 0x118 SW Revision ID <7:0>
    BNO055_REG_SW_REV_ID_M = 0x05; # SB 0x037 SW Revision ID <15:8>

    BNO055_REG_BL_REV_ID = 0x06; # 0x15 Bootloader Version

    BNO055_REG_PAGE_ID = 0x07; # 0x00 Page ID
    
    BNO055_REG_ACC_DATA_X = 0x08;
    BNO055_REG_ACC_DATA_X_LSB = 0x08; # 0x00 Acceleration Data X <7:0>
    BNO055_REG_ACC_DATA_X_MSB = 0x09; # 0x00 Acceleration Data X <15:8>

    BNO055_REG_ACC_DATA_Y = 0x0A;
    BNO055_REG_ACC_DATA_Y_LSB = 0x0A; # 0x00 Acceleration Data Y <7:0>
    BNO055_REG_ACC_DATA_Y_MSB = 0x0B; # 0x00 Acceleration Data Y <15:8>

    BNO055_REG_ACC_DATA_Z = 0x0C;
    BNO055_REG_ACC_DATA_Z_LSB = 0x0C; # 0x00 Acceleration Data Z <7:0>
    BNO055_REG_ACC_DATA_Z_MSB = 0x0D; # 0x00 Acceleration Data Z <15:8>

    BNO055_REG_MAG_DATA_X = 0x0E;
    BNO055_REG_MAG_DATA_X_LSB = 0x0E; # 0x00 Magnetometer Data X <7:0>
    BNO055_REG_MAG_DATA_X_MSB = 0x0F; # 0x00 Magnetometer Data X <15:8>

    BNO055_REG_MAG_DATA_Y = 0x10;
    BNO055_REG_MAG_DATA_Y_LSB = 0x10; # 0x00 Magnetometer Data Y <7:0>
    BNO055_REG_MAG_DATA_Y_MSB = 0x11; # 0x00 Magnetometer Data Y <15:8>

    BNO055_REG_MAG_DATA_Z = 0x12;
    BNO055_REG_MAG_DATA_Z_LSB = 0x12; # 0x00 Magnetometer Data Z <7:0>
    BNO055_REG_MAG_DATA_Z_MSB = 0x13; # 0x00 Magnetometer Data Z <15:8>

    BNO055_REG_GYR_DATA_X = 0x14;
    BNO055_REG_GYR_DATA_X_LSB = 0x14; # 0x00 Gyroscope Data X <7:0>
    BNO055_REG_GYR_DATA_X_MSB = 0x15; # 0x00 Gyroscope Data X <15:8>

    BNO055_REG_GYR_DATA_Y = 0x16;
    BNO055_REG_GYR_DATA_Y_LSB = 0x16; # 0x00 Gyroscope Data Y <7:0>
    BNO055_REG_GYR_DATA_Y_MSB = 0x17; # 0x00 Gyroscope Data Y <15:8>

    BNO055_REG_GYR_DATA_Z = 0x18;
    BNO055_REG_GYR_DATA_Z_LSB = 0x18; # 0x00 Gyroscope Data Z <7:0>
    BNO055_REG_GYR_DATA_Z_MSB = 0x19; # 0x00 Gyroscope Data Z <15:8>

    BNO055_REG_EUL_HEADING = 0x1A;
    BNO055_REG_EUL_HEADING_LSB = 0x1A; # 0x00 Heading Data <7:0>
    BNO055_REG_EUL_HEADING_MSB = 0x1B; # 0x00 Heading Data <15:8>

    BNO055_REG_EUL_ROLL = 0x1C;
    BNO055_REG_EUL_ROLL_LSB = 0x1C; # 0x00 Roll Data <7:0>
    BNO055_REG_EUL_ROLL_MSB = 0x1D; # 0x00 Roll Data <15:8>

    BNO055_REG_EUL_PITCH = 0x1E;
    BNO055_REG_EUL_PITCH_LSB = 0x1E; # 0x00 Pitch Data <7:0>
    BNO055_REG_EUL_PITCH_MSB = 0x1F; # 0x00 Pitch Data <15:8>

    BNO055_REG_QUA_DATA_W = 0x20;
    BNO055_REG_QUA_DATA_W_LSB = 0x20; # 0x00 Quaternion w Data <7:0>
    BNO055_REG_QUA_DATA_W_MSB = 0x21; # 0x00 Quaternion w Data <15:8>

    BNO055_REG_QUA_DATA_X = 0x22;
    BNO055_REG_QUA_DATA_X_LSB = 0x22; # 0x00 Quaternion x Data <7:0>
    BNO055_REG_QUA_DATA_X_MSB = 0x23; # 0x00 Quaternion x Data <15:8>

    BNO055_REG_QUA_DATA_Y = 0x24;
    BNO055_REG_QUA_DATA_Y_LSB = 0x24; # 0x00 Quaternion y Data <7:0>
    BNO055_REG_QUA_DATA_Y_MSB = 0x25; # 0x00 Quaternion y Data <15:8>

    BNO055_REG_QUA_DATA_Z = 0x26;
    BNO055_REG_QUA_DATA_Z_LSB = 0x26; # 0x00 Quaternion z Data <7:0>
    BNO055_REG_QUA_DATA_Z_MSB = 0x17; # 0x00 Quaternion z Data <15:8>

    BNO055_REG_LIA_DATA_X = 0x28;
    BNO055_REG_LIA_DATA_X_LSB = 0x28; # 0x00 Linear Acceleration Data X <7:0>
    BNO055_REG_LIA_DATA_X_MBS = 0x29; # 0x00 Linear Acceleration Data X <15:8>

    BNO055_REG_LIA_DATA_Y = 0x2A;
    BNO055_REG_LIA_DATA_Y_LSB = 0x2A; # 0x00 Linear Acceleration Data Y <7:0>
    BNO055_REG_LIA_DATA_Y_MBS = 0x2B; # 0x00 Linear Acceleration Data Y <15:8>

    BNO055_REG_LIA_DATA_Z = 0x2C;
    BNO055_REG_LIA_DATA_Z_LSB = 0x2C; # 0x00 Linear Acceleration Data Z <7:0>
    BNO055_REG_LIA_DATA_Z_MBS = 0x2D; # 0x00 Linear Acceleration Data Z <15:8>

    BNO055_REG_GRV_DATA_X = 0x2E;
    BNO055_REG_GRV_DATA_X_LSB = 0x2E; # 0x00 Gravity Vector Data X <7:0>
    BNO055_REG_GRV_DATA_X_MSB = 0x2F; # 0x00 Gravity Vector Data X <15:8>

    BNO055_REG_GRV_DATA_Y = 0x30;
    BNO055_REG_GRV_DATA_Y_LSB = 0x30; # 0x00 Gravity Vector Data Y <7:0>
    BNO055_REG_GRV_DATA_Y_MSB = 0x31; # 0x00 Gravity Vector Data Y <15:8>

    BNO055_REG_GRV_DATA_Z = 0x32;
    BNO055_REG_GRV_DATA_Z_LSB = 0x32; # 0x00 Gravity Vector Data Z <7:0>
    BNO055_REG_GRV_DATA_Z_MSB = 0x33; # 0x00 Gravity Vector Data Z <15:8>

    BNO055_REG_TEMP = 0x34; # 0x00 Temperature

    BNO055_REG_CALIB_STAT = 0x35; # 0x00 SYS Calib Status 0:3 GYR Calib Status 0:3 ACC Calib Status 0:3 MAG Calib Status 0:3
    BNO055_REG_ST_RESULT = 0x36; # 0x0F ST_MCU ST_GYR ST_MAG ST_ACC 
    BNO055_REG_INT_STA = 0x37; # 0x00 ACC_N M ACC_A M ACC_HI GH_G GYR_DR DY6 GYR_HIG H_RATE GYRO_A M MAG_DR DY6 ACC_BS X_DRDY6
    BNO055_REG_SYS_CLK_STATUS = 0x38; # 0x00 ST_MAI N_CLK
    BNO055_REG_SYS_STATUS = 0x39; # 0x00 System Status Code
    BNO055_REG_SYS_ERR = 0x3A; # 0x00 System Error Code
    BNO055_REG_UNIT_SEL = 0x3B; # 0x80 ORI_Android_Windows TEMP_Unit EUL_Unit GYR_Unit ACC_Unit
    BNO055_REG_Reserved = 0x3C;
    BNO055_REG_OPR_MODE = 0x3D; # 0x10 Operation Mode <3:0>
    BNO055_REG_PWR_MODE = 0x3E; # 0x00 Power Mode <1:0>
    BNO055_REG_SYS_TRIGGER = 0x3F; # 0x00 CLK_S EL RST_IN T RST_S YS Self_Test
    BNO055_REG_TEMP_SOURCE = 0x40; # 0x00 TEMP_Source <1:0>

    BNO055_REG_AXIS_MAP_CONFIG = 0x41; # 0x24 Remapped Z axis value Remapped Y axis value Remapped X axis value
    BNO055_REG_AXIS_MAP_SIGN = 0x42; # 0x00 Remapped X axis sign Remapped Y axis sign Remapped Z axis sign

    BNO055_REG_SIC_MATRIX_LSB0 = 0x43; # 0x00 SIC_MATRIX_LSB0
    BNO055_REG_SIC_MATRIX_MSB0 = 0x44; # 0x40 SIC_MATRIX_MSB0
    BNO055_REG_SIC_MATRIX_LSB1 = 0x45; # 0x00 SIC_MATRIX_LSB1
    BNO055_REG_SIC_MATRIX_MSB1 = 0x46; # 0x00 SIC_MATRIX_MSB1
    BNO055_REG_SIC_MATRIX_LSB2 = 0x47; # 0x00 SIC_MATRIX_LSB2
    BNO055_REG_SIC_MATRIX_MSB2 = 0x48; # 0x00 SIC_MATRIX_MSB2
    BNO055_REG_SIC_MATRIX_LSB3 = 0x49; # 0x00 SIC_MATRIX_LSB3
    BNO055_REG_SIC_MATRIX_MSB3 = 0x4A; # 0x00 SIC_MATRIX_MSB3
    BNO055_REG_SIC_MATRIX_LSB4 = 0x4B; # 0x00 SIC_MATRIX_LSB4
    BNO055_REG_SIC_MATRIX_MSB4 = 0x4C; # 0x40 SIC_MATRIX_MSB4
    BNO055_REG_SIC_MATRIX_LSB5 = 0x4D; # 0x00 SIC_MATRIX_LSB5
    BNO055_REG_SIC_MATRIX_MSB5 = 0x4E; # 0x00 SIC_MATRIX_MSB5
    BNO055_REG_SIC_MATRIX_LSB6 = 0x4F; # 0x00 SIC_MATRIX_LSB6
    BNO055_REG_SIC_MATRIX_MSB6 = 0x50; # 0x00 SIC_MATRIX_MSB6
    BNO055_REG_SIC_MATRIX_LSB7 = 0x51; # 0x00 SIC_MATRIX_LSB7
    BNO055_REG_SIC_MATRIX_MSB7 = 0x52; # 0x00 SIC_MATRIX_MSB7
    BNO055_REG_SIC_MATRIX_LSB8 = 0x53; # 0x00 SIC_MATRIX_LSB8
    BNO055_REG_SIC_MATRIX_MSB8 = 0x54; # 0x40 SIC_MATRIX_MSB8

    BNO055_REG_ACC_OFFSET_X_LSB = 0x55; # 0x00 Accelerometer Offset X <7:0>
    BNO055_REG_ACC_OFFSET_X_MSB = 0x56; # 0x00 Accelerometer Offset X <15:8>
    BNO055_REG_ACC_OFFSET_Y_LSB = 0x57; # 0x00 Accelerometer Offset Y <7:0>
    BNO055_REG_ACC_OFFSET_Y_MSB = 0x58; # 0x00 Accelerometer Offset Y <15:8>
    BNO055_REG_ACC_OFFSET_Z_LSB = 0x59; # 0x00 Accelerometer Offset Z <7:0>
    BNO055_REG_ACC_OFFSET_Z_MSB = 0x5A; # 0x00 Accelerometer Offset Z <15:8>
    BNO055_REG_MAG_OFFSET_X_LSB = 0x5B; # 0x00 Magnetometer Offset X <7:0>
    BNO055_REG_MAG_OFFSET_X_MSB = 0x5C; # 0x00 Magnetometer Offset X <15:8>
    BNO055_REG_MAG_OFFSET_Y_LSB = 0x5D; # 0x00 Magnetometer Offset Y <7:0>
    BNO055_REG_MAG_OFFSET_Y_MSB = 0x5E; # 0x00 Magnetometer Offset Y <15:8>
    BNO055_REG_MAG_OFFSET_Z_LSB = 0x5F; # 0x00 Magnetometer Offset Z <7:0>
    BNO055_REG_MAG_OFFSET_Z_MSB = 0x60; # 0x00 Magnetometer Offset Z <15:8>

    BNO055_REG_GYR_OFFSET_X_LSB = 0x61; # 0x00 Gyroscope Offset X <7:0>
    BNO055_REG_GYR_OFFSET_X_MSB = 0x62; # 0x00 Gyroscope Offset X <15:8>
    BNO055_REG_GYR_OFFSET_Y_LSB = 0x63; # 0x00 Gyroscope Offset Y <7:0>
    BNO055_REG_GYR_OFFSET_Y_MSB = 0x64; # 0x00 Gyroscope Offset Y <15:8>
    BNO055_REG_GYR_OFFSET_Z_LSB = 0x65; # 0x00 Gyroscope Offset Z <7:0>
    BNO055_REG_GYR_OFFSET_Z_MSB = 0x66; # 0x00 Gyroscope Offset Z <15:8>
    BNO055_REG_ACC_RADIUS_LSB = 0x67; # 0x00 Accelerometer Radius
    BNO055_REG_ACC_RADIUS_MSB = 0x68; # 0x00 Accelerometer Radius
    BNO055_REG_MAG_RADIUS_LSB = 0x69; # 0xE0 Magnetometer Radius
    BNO055_REG_MAG_RADIUS_MSB = 0x6A; # 0x01 Magnetometer Radius

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

  properties (Access = public)
    OperatingMode = 'ndof';
  endproperties


  methods
    # constructor
    function this = bno055(parentObj, varargin)

      if nargin < 1 || ! isarduino(parentObj)
        error('Expected arduino object as first parameter');
      endif

      # parse args
      p = inputParser(CaseSensitive=false, FunctionName='arduinosensor.SI7021');
      p.addParameter('I2CAddress', 0x29, @isnumeric); # matlab default is 0x28
      p.addParameter('Bus', 0, @isnumeric);
      p.addParameter('OperatingMode', 'ndof', @ischar); # ndof or amg
      p.parse(varargin{:});

      # do we have the address ?
      address = p.Results.I2CAddress;
      bus = p.Results.Bus;

      # Operating mode 'ndof' or 'amg'
      switch p.Results.OperatingMode
        case 'ndof'
          this.OperatingMode = p.Results.OperatingMode;
        case 'amg'
          this.OperatingMode = p.Results.OperatingMode;
        otherwise
          error ("Invalid operating mode");
      endswitch

      this.i2c = device(parentObj, "i2caddress", p.Results.I2CAddress, 'Bus', bus);

      # verify what talking to
      id = this.readRegisterU8(this.BNO055_REG_CHIP_ID);
      if id  != 0xA0
          pause(1);
          id = this.readRegisterU8(this.BNO055_REG_CHIP_ID);
      endif
      if id  != 0xA0
        error ("Invalid id '%X' read for sensor", id)
      endif

      # init modes
      this.writeRegister(this.BNO055_REG_OPR_MODE, 0); # set into condig mode

      # reset
      this.writeRegister(this.BNO055_REG_SYS_TRIGGER, 0x20);
 
      pause(.5);

      id = this.readRegisterU8(this.BNO055_REG_CHIP_ID);
      while id  != 0xA0
          pause(.1);
          id = this.readRegisterU8(this.BNO055_REG_CHIP_ID);
      endwhile

      # normal power mode
      this.writeRegister(this.BNO055_REG_PWR_MODE, 0);
      # page 0
      this.writeRegister(this.BNO055_REG_PAGE_ID, 0);
      
      this.writeRegister(this.BNO055_REG_SYS_TRIGGER, 0x00);
      pause(.1);

      if strcmp(this.OperatingMode, "ndof")
        # NDOF mode
        this.writeRegister(this.BNO055_REG_OPR_MODE, 0x0C);
      else
        # amg
        this.writeRegister(this.BNO055_REG_OPR_MODE, 0x07);
      endif
      pause(.2);
    endfunction

    function inf = info (this)
      inf = {};
      inf.Type = "bno055";
      inf.SensorId = this.readRegisterU8(this.BNO055_REG_CHIP_ID);
      inf.AccelId = this.readRegisterU8(this.BNO055_REG_ACC_ID);
      inf.MagId = this.readRegisterU8(this.BNO055_REG_MAG_ID);
      inf.GyroId = this.readRegisterU8(this.BNO055_REG_GYR_ID);
      inf.BootloaderRev = this.readRegisterU8(this.BNO055_REG_BL_REV_ID);
      inf.Version = this.readRegisterU16(this.BNO055_REG_SW_REV_ID);
    endfunction

    function [status, timestamp] = readCalibrationStatus (this)
      data = single(this.readRegisterU8(this.BNO055_REG_CALIB_STAT));
      timestamp = time();
      mcal = this.calStatusString (bitand(data, 3));
      gcal = this.calStatusString (bitand(bitshift(data, -4), 3));
      acal = this.calStatusString (bitand(bitshift(data, -2), 3));
      scal = this.calStatusString (bitand(bitshift(data, -6), 3));
      status = struct('System', scal, 'Accelerometer', acal, 'Gyroscope', gcal, 'Magnetometer', mcal);
    endfunction

    function [C, timestamp] = readTemperature (this)
      timestamp = time();
      C = single(this.readRegisterS8(this.BNO055_REG_TEMP));
    endfunction

    function [readVal, timestamp] = readOrientation (this)
      data = this.readRegister(this.BNO055_REG_EUL_HEADING, 6);
      timestamp = time();
      azm = typecast(uint16(data(2))*256 + uint16(data(1)), 'int16');
      pitch = typecast(uint16(data(4))*256 + uint16(data(3)), 'int16');
      roll = typecast(uint16(data(6))*256 + uint16(data(5)), 'int16');
      readVal = deg2rad(single([azm pitch, roll])/16.0);
    endfunction

    function [readVal, timestamp] = readMagneticField (this)
      data = this.readRegister(this.BNO055_REG_MAG_DATA_X, 6);
      timestamp = time();
      x = typecast(uint16(data(2))*256 + uint16(data(1)), 'int16');
      y = typecast(uint16(data(4))*256 + uint16(data(3)), 'int16');
      z = typecast(uint16(data(6))*256 + uint16(data(5)), 'int16');
      readVal = single([x y z])/16.0;
    endfunction

    function [readVal, timestamp] = readAcceleration (this)
      data = this.readRegister(this.BNO055_REG_ACC_DATA_X, 6);
      timestamp = time();
      x = typecast(uint16(data(2))*256 + uint16(data(1)), 'int16');
      y = typecast(uint16(data(4))*256 + uint16(data(3)), 'int16');
      z = typecast(uint16(data(6))*256 + uint16(data(5)), 'int16');
      readVal = single([x y z])/100.0;
    endfunction

    function [readVal, timestamp] = readAngularVelocity (this)
      data = this.readRegister(this.BNO055_REG_GYR_DATA_X, 6);
      timestamp = time();
      x = typecast(uint16(data(2))*256 + uint16(data(1)), 'int16');
      y = typecast(uint16(data(4))*256 + uint16(data(3)), 'int16');
      z = typecast(uint16(data(6))*256 + uint16(data(5)), 'int16');
      readVal = single([x y z])/16.0;
    endfunction

    function varargout = read(this)
      data = readData(this);

      timestamp = time();
      accel = this.readAcceleration();
      avel = this.readAngularVelocity();
      mag = this.readMagneticField();
      orien = this.readOrientation();

      if nargout <= 2
        varargout{1} = struct('Time', timestamp, 'Acceleration', accel, 'AngularVelocity', avel, 'MagneticField', mag, 'Orientation', orien);
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
          varargout{3} = mag;
        endif
      
        if nargout == 5
          varargout{4} = timestamp;
          varargout{5} = 0; # overrun
        else
          if nargout > 3
            varargout{4} = orien;
          endif
          if nargout > 4
            varargout{5} = timestamp;
          endif
          if nargout > 5
            varargout{6} = 0; # overrun
          endif
        endif
      endif
    endfunction

    function flush(this)
      # flush currenly does nothing
    endfunction

    function display(this)
      printf("%s = \n", inputname(1));
      printf("    %s with properties\n", class(this));
      printf("     OperatingMode: %s\n", this.OperatingMode);
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

    function status = calStatusString(this, val)
      switch val
        case {1, 2}
          status = "partial" ;
        case 3
          status = "full" ;
        otherwise
          status = "uncalibrated" ;
      endswitch
    endfunction

    function data = readRegister(this, reg, sz)
      data = readRegister(this.i2c, reg, sz);
    endfunction

    function writeRegister(this, reg, data)
      writeRegister(this.i2c, reg, data);
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

%!error <Expected arduino object as first parameter> bno055(1);
