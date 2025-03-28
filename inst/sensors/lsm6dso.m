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

classdef lsm6dso < handle
  ## -*- texinfo -*- 
  ## @deftypefn {} {} lsm6dso
  ## LSM6DSO 6 degrees sensor
  ## @end deftypefn
  ##
  ## @subheading Methods
  ## @deftypefn {} {@var{obj} =} lsm6dso(@var{arObj})
  ## @deftypefnx {} {@var{obj} =} lsm6dso(@var{arObj}, @var{propertyname, propertyvalue} ....)
  ## Constructor to create LSM6DSO sensor
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
  ## sensor = lsm6dso(a)
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
  ## s = lsm6dso(a)
  ## # get temp
  ## temp = s.readTemperature
  ## }
  ## @end example
  ## @seealso{lsm6dso}
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
  ## sensor type 'lsm6dso'
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

    LSM6DSO_REG_FUNC_CFG_ACCESS = 0x01; # RW 01 00000001 00000000
    LSM6DSO_REG_PIN_CTRL = 0x02; # RW 02 00000010 00111111
    #LSM6DSO_REG_RESERVED - 03-06
    LSM6DSO_REG_FIFO_CTRL1 = 0x07; # RW 07 00000111 00000000
    LSM6DSO_REG_FIFO_CTRL2 = 0x08; # RW 08 00001000 00000000
    LSM6DSO_REG_FIFO_CTRL3 = 0x09; # RW 09 00001001 00000000
    LSM6DSO_REG_FIFO_CTRL4 = 0x0A; # RW 0A 00001010 00000000
    LSM6DSO_REG_COUNTER_BDR_REG1 = 0x0B; # RW 0B 00001011 00000000
    LSM6DSO_REG_COUNTER_BDR_REG2 = 0x0C; # RW 0C 00001100 00000000
    LSM6DSO_REG_INT1_CTRL = 0x0D; # RW 0D 00001101 00000000
    LSM6DSO_REG_INT2_CTRL = 0x0E; # RW 0E 00001110 00000000
    LSM6DSO_REG_WHO_AM_I = 0x0F; # R 0F 00001111 01101100 R (SPI2)
    LSM6DSO_REG_CTRL1_XL = 0x10; # RW 10 00010000 00000000 R (SPI2)
    LSM6DSO_REG_CTRL2_G = 0x11; # RW 11 00010001 00000000 R (SPI2)
    LSM6DSO_REG_CTRL3_C = 0x12; # RW 12 00010010 00000100 R (SPI2)
    LSM6DSO_REG_CTRL4_C = 0x13; # RW 13 00010011 00000000 R (SPI2)
    LSM6DSO_REG_CTRL5_C = 0x14; # RW 14 00010100 00000000 R (SPI2)
    LSM6DSO_REG_CTRL6_C = 0x15; # RW 15 00010101 00000000 R (SPI2)
    LSM6DSO_REG_CTRL7_G = 0x16; # RW 16 00010110 00000000 R (SPI2)
    LSM6DSO_REG_CTRL8_XL = 0x17; # RW 17 0001 0111 00000000 R (SPI2)
    LSM6DSO_REG_CTRL9_XL = 0x18; # RW 18 00011000 11100000 R (SPI2)
    LSM6DSO_REG_CTRL10_C = 0x19; # RW 19 00011001 00000000 R (SPI2)
    LSM6DSO_REG_ALL_INT_SRC = 0x1A; # R 1A 00011010 output
    LSM6DSO_REG_WAKE_UP_SRC = 0x1B; # R 1B 00011011 output
    LSM6DSO_REG_TAP_SRC = 0x1C; # R 1C 00011100 output
    LSM6DSO_REG_D6D_SRC = 0x1D; # R 1D 00011101 output
    LSM6DSO_REG_STATUS_REG = 0x1E; # (1) / STATUS_SPIAux(2) R 1E 00011110 output
    # LSM6DSO_REG_RESERVED - 1F 00011111
    LSM6DSO_REG_OUT_TEMP_L = 0x20; # R 20 00100000 output
    LSM6DSO_REG_OUT_TEMP_H = 0x21; # R 21 00100001 output
    LSM6DSO_REG_OUTX_L_G = 0x22; # R 22 00100010 output
    LSM6DSO_REG_OUTX_H_G = 0x23; # R 23 00100011 output
    LSM6DSO_REG_OUTY_L_G = 0x24; # R 24 00100100 outpu
    LSM6DSO_REG_OUTY_H_G = 0x25; # R 25 00100101 output
    LSM6DSO_REG_OUTZ_L_G = 0x26; # R 26 00100110 output
    LSM6DSO_REG_OUTZ_H_G = 0x27; # R 27 00100111 output
    LSM6DSO_REG_OUTX_L_A = 0x28; # R 28 00101000 output
    LSM6DSO_REG_OUTX_H_A = 0x29; # R 29 00101001 output
    LSM6DSO_REG_OUTY_L_A = 0x2A; # R 2A 00101010 output
    LSM6DSO_REG_OUTY_H_A = 0x2B; # R 2B 00101011 output
    LSM6DSO_REG_OUTZ_L_A = 0x2C; # R 2C 00101100 output
    LSM6DSO_REG_OUTZ_H_A = 0x2D; # R 2D 00101101 output
    #LSM6DSO_REG_RESERVED - 2E-34
    LSM6DSO_REG_EMB_FUNC_STATUS_MAINPAGE = 0x35; # R 35 00110101 output
    LSM6DSO_REG_FSM_STATUS_A_MAINPAGE = 0x36; # R 36 00110110 output
    LSM6DSO_REG_FSM_STATUS_B_MAINPAGE = 0x37; # R 37 00110111 output
    # LSM6DSO_REG_RESERVED - 38
    LSM6DSO_REG_STATUS_MASTER_MAINPAGE = 0x39; # R 39 00111001 output
    LSM6DSO_REG_FIFO_STATUS1 = 0x3A; # R 3A 00111010 output
    LSM6DSO_REG_FIFO_STATUS2 = 0x3B; # R 3B 00111011 output
    #LSM6DSO_REG_RESERVED - 3C-3F
    LSM6DSO_REG_TIMESTAMP0 = 0x40; # R 40 01000000 output R (SPI2)
    LSM6DSO_REG_TIMESTAMP1 = 0x41; # R 41 01000001 output R (SPI2)
    LSM6DSO_REG_TIMESTAMP2 = 0x42; # R 42 01000010 output R (SPI2)
    LSM6DSO_REG_TIMESTAMP3 = 0x43; # R 43 01000011 output R (SPI2)
    #LSM6DSO_REG_RESERVED - 44-55
    LSM6DSO_REG_TAP_CFG0 = 0x56; # RW 56 01010110 00000000
    LSM6DSO_REG_TAP_CFG1 = 0x57; # RW 57 01010111 00000000
    LSM6DSO_REG_TAP_CFG2 = 0x58; # RW 58 01011000 00000000
    LSM6DSO_REG_TAP_THS_6D = 0x59; # RW 59 01011001 00000000
    LSM6DSO_REG_INT_DUR2 = 0x5A; # RW 5A 01011010 00000000
    LSM6DSO_REG_WAKE_UP_THS = 0x5B; # RW 5B 01011011 00000000
    LSM6DSO_REG_WAKE_UP_DUR = 0x5C; # RW 5C 01011100 00000000
    LSM6DSO_REG_FREE_FALL = 0x5D; # RW 5D 01011101 00000000
    LSM6DSO_REG_MD1_CFG = 0x5E; # RW 5E 01011110 00000000
    LSM6DSO_REG_MD2_CFG = 0x5F; # RW 5F 01011111 00000000
    # LSM6DSO_REG_RESERVED - 60-61 00000000
    LSM6DSO_REG_I3C_BUS_AVB = 0x62; # RW 62 01100010 00000000
    LSM6DSO_REG_INTERNAL_FREQ_FINE = 0x63; # R 63 01100011 output
    # LSM6DSO_REG_RESERVED - 64-6E
    LSM6DSO_REG_INT_OIS = 0x6F; # R 6F 01101111 00000000 RW (SPI2)
    LSM6DSO_REG_CTRL1_OIS = 0x70; # R 70 01110000 00000000 RW (SPI2)
    LSM6DSO_REG_CTRL2_OIS = 0x71; # R 71 01110001 00000000 RW (SPI2)
    LSM6DSO_REG_CTRL3_OIS = 0x72; # R 72 01110010 00000000 RW (SPI2)
    LSM6DSO_REG_X_OFS_USR = 0x73; # RW 73 01110011 00000000
    LSM6DSO_REG_Y_OFS_USR = 0x74; # RW 74 01110100 00000000
    LSM6DSO_REG_Z_OFS_USR = 0x75; # RW 75 01110101 00000000
    #LSM6DSO_REG_RESERVED - 76-77
    LSM6DSO_REG_FIFO_DATA_OUT_TAG = 0x78; # R 78 01111000 output
    LSM6DSO_REG_FIFO_DATA_OUT_X_L = 0x79; # R 79 01111001 output
    LSM6DSO_REG_FIFO_DATA_OUT_X_H = 0x7A; # R 7A 01111010 output
    LSM6DSO_REG_FIFO_DATA_OUT_Y_L = 0x7B; # R 7B 01111011 output
    LSM6DSO_REG_FIFO_DATA_OUT_Y_H = 0x7C; # R 7C 01111100 output
    LSM6DSO_REG_FIFO_DATA_OUT_Z_L = 0x7D; # R 7D 01111101 output
    LSM6DSO_REG_FIFO_DATA_OUT_Z_H = 0x7E; # R 7E 01111110 output

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
    function this = lsm6dso(parentObj, varargin)

      if nargin < 1 || ! isarduino(parentObj)
        error('Expected arduino object as first parameter');
      endif

      # parse args
      p = inputParser(CaseSensitive=false, FunctionName='arduinosensor.SI7021');
      p.addParameter('I2CAddress', 0x6A, @isnumeric); # matlab default is 0x28
      p.addParameter('Bus', 0, @isnumeric);
      p.parse(varargin{:});

      # do we have the address ?
      address = p.Results.I2CAddress;
      bus = p.Results.Bus;

      this.i2c = device(parentObj, "i2caddress", p.Results.I2CAddress, 'Bus', bus);

      # verify what talking to

      pause(.1);
      id = this.readRegisterU8(this.LSM6DSO_REG_WHO_AM_I);
      
      if id  != 0x6C
        error ("Invalid id '%X' read for sensor", id)
      endif

      # set up device

      # set the gyroscope control register to work at 104 Hz, 2000 dps and in bypass mode
      this.writeRegister(this.LSM6DSO_REG_CTRL2_G, 0x4C);

      # Set the Accelerometer control register to work at 104 Hz, 4 g,and in bypass mode and enable ODR/4 lowpass filter
      this.writeRegister(this.LSM6DSO_REG_CTRL1_XL, 0x4A);

      # set gyroscope power mode to high performance and bandwidth to 16 MHz
      this.writeRegister(this.LSM6DSO_REG_CTRL7_G, 0x00);

      # Set the ODR config register to ODR/4
      this.writeRegister(this.LSM6DSO_REG_CTRL8_XL, 0x09);
      
    endfunction

    function inf = info (this)
      inf = {};
      inf.Type = "lsm6dso";
      inf.SensorId = this.readRegisterU8(this.LSM6DSO_REG_WHO_AM_I);

      inf.Status = this.readRegisterU8(this.LSM6DSO_REG_STATUS_REG);
    endfunction

    function [C, timestamp] = readTemperature (this)
      value = this.readRegisterS16(this.LSM6DSO_REG_OUT_TEMP_L);
      timestamp = time();
      C = single(value)/256.0 + 25.0;
    endfunction

    function [readVal, timestamp] = readAcceleration (this)
      data = this.readRegister(this.LSM6DSO_REG_OUTX_L_A, 6);
      timestamp = time();
      x = typecast(uint16(data(2))*256 + uint16(data(1)), 'int16');
      y = typecast(uint16(data(4))*256 + uint16(data(3)), 'int16');
      z = typecast(uint16(data(6))*256 + uint16(data(5)), 'int16');
      # 4g scale
      readVal = single([x y z]) * 4.0 / 32768.0;
    endfunction

    function [readVal, timestamp] = readAngularVelocity (this)
      data = this.readRegister(this.LSM6DSO_REG_OUTX_L_G, 6);
      timestamp = time();
      x = typecast(uint16(data(2))*256 + uint16(data(1)), 'int16');
      y = typecast(uint16(data(4))*256 + uint16(data(3)), 'int16');
      z = typecast(uint16(data(6))*256 + uint16(data(5)), 'int16');
      # range 2000
      readVal = single([x y z]) * 2000.0 / 32768.0;
    endfunction

    function varargout = read(this)
      data = readData(this);

      timestamp = time();
      accel = this.readAcceleration();
      avel = this.readAngularVelocity();
      temp = this.readTemperature();

      if nargout <= 2
        varargout{1} = struct('Time', timestamp, 'Acceleration', accel, 'AngularVelocity', avel, 'Temperature', temp);
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
          varargout{3} = temp;
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

%!error <Expected arduino object as first parameter> lsm6dso(1);
