## Copyright (C) 2022 John Donoghue <john.donoghue@ieee.org>
##
## Conversion routines based on code from LPS22HB datasheet
## DocID027083 Rev 6
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

classdef lps22hb < handle
  ## -*- texinfo -*- 
  ## @deftypefn {} {} lps22hb
  ## LPS22HB absolute pressure and temperature sensor
  ## @end deftypefn
  ##
  ## @subheading Methods
  ## @deftypefn {} {@var{obj} =} lps22hb(@var{arObj})
  ## @deftypefnx {} {@var{obj} =} lps22hb(@var{arObj}, @var{propertyname, propertyvalue} ....)
  ## Constructor to create LPS22HB sensor
  ## @subsubheading Inputs
  ## @var{arObj} - the arduino parent object
  ##
  ## @var{propertyname, propertyvalue} - optional property name, value pairs.
  ## Current known properties are:
  ## Current properties are:
  ## @table @asis
  ## @item I2CAddress
  ## I2C address of the sensor (default 0x5C)
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
  ## sensor = lps22hb(a)
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
  ## s = lps22hb(a)
  ## # get temp
  ## temp = s.readTemperature
  ## }
  ## @end example
  ## @seealso{lps22hb}
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
  ## @deftypefnx {} {[@var{P}, @var{C}, @var{timestamp}, @var{overrun}] =} read(@var{obj})
  ## Read the sensor data
  ##
  ## @subsubheading Inputs
  ## @var{obj} - the sensor object
  ##
  ## @subsubheading Outputs
  ## @var{P} - pressure reading from sensor.
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
  ## sensor type 'lps22hb'
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
    LPS22_DEFAULT_ADDRESS  = 0x5D;
    LPS22_CHIP_ID = 0xB1;

    LPS22_REG_INTERRUPT_CFG = 0;   # Interrupt register
    LPS22_REG_THS_P_L = 0x0C;      # Pressure threshold registers
    LPS22_REG_THS_P_H = 0x0D;
    #LPS22_REG_Reserved = 0E;      # Reserved
    LPS22_REG_WHO_AM_I = 0x0F;       # Who am I
    LPS22_REG_CTRL_REG1 = 0x10;    # Control registers
    LPS22_REG_CTRL_REG2 = 0x11;
    LPS22_REG_CTRL_REG3 = 0x12;
    #LPS22_REG_Reserved = 0x13;    # Reserved
    LPS22_REG_FIFO_CTRL = 0x14;    # FIFO configuration register
    LPS22_REG_REF_P_XL = 0x15;     # Reference pressure registers
    LPS22_REG_REF_P_L = 0x16;
    LPS22_REG_REF_P_H = 0x17;
    LPS22_REG_RPDS_L = 0x18;       # Pressure offset registers
    LPS22_REG_RPDS_H = 0x19;
    LPS22_REG_RES_CONF = 0x1A;     # Resolution register
    #LPS22_REG_Reserved = 0x1B;    # Reserved
    LPS22_REG_INT_SOURCE = 0x25;   #  Interrupt register
    LPS22_REG_FIFO_STATUS = 0x26;  # FIFO status register
    LPS22_REG_STATUS = 0x27;       # Status register
    LPS22_REG_PRESS_OUT_XL = 0x28; # Pressure output registers
    LPS22_REG_PRESS_OUT_L = 0x29;
    LPS22_REG_PRESS_OUT_H = 0x2A;
    LPS22_REG_TEMP_OUT_L = 0x2B;   # Temperature output registers
    LPS22_REG_TEMP_OUT_H = 0x2C;
    #LPS22_REG_Reserved = 0x2D;    # Reserved
    LPS22_REG_LPFP_RES = 0x33;     # Filter reset register
  endproperties
  
  properties(Access = private)
    i2c;
    caldata = {};
  endproperties

  # matlab compatible properties
  properties (SetAccess = private)
    I2CAddress = "";
    Bus = 0;
    SampleRate = 1;
  endproperties

  methods
    # constructor
    function this = lps22hb(parentObj, varargin)

      if nargin < 1 || ! isarduino(parentObj)
        error('Expected arduino object as first parameter');
      endif

      # parse args
      p = inputParser(CaseSensitive=false, FunctionName='lps22hb');
      p.addParameter('I2CAddress', this.LPS22_DEFAULT_ADDRESS, @isnumeric);
      p.addParameter('Bus', 0, @isnumeric);
      p.addParameter('SampleRate', 10, @isnumeric);
      p.parse(varargin{:});

      # do we have the address ?
      address = p.Results.I2CAddress;
      bus = p.Results.Bus;

      this.SampleRate = int32(p.Results.SampleRate);
      regrate = 1;
      switch this.SampleRate
       case 1
         regrate = 1;
       case 10
         regrate = 2;
       case 25
         regrate = 3;
       case 50
         regrate = 4;
       case 75
         regrate = 5;
       otherwise
         error("Unsupported samplerate - known values 1, 10, 25, 50, 75");
      endswitch

      #i2caddresses = scanI2Cbus(parentObj, bus);
      #idx = find(cellfun ( @(x) strcmp(x, sprintf("0x%02X", address)), i2caddresses));
      #if isempty(idx)
      #  error('No matching i2c address found on bus');
      #endif

      this.i2c = device(parentObj, "i2caddress", p.Results.I2CAddress, 'Bus', bus);

      pause(.1);

      # init 
      id = this.readRegisterU8(this.LPS22_REG_WHO_AM_I);
      if id != this.LPS22_CHIP_ID
        pause(.2);
        id = this.readRegisterU8(this.LPS22_REG_WHO_AM_I);
      endif
      if id != this.LPS22_CHIP_ID
        error ("Invalid id '%X' read for sensor", id)
      endif

      # reset states
      this.writeRegister(this.LPS22_REG_CTRL_REG2, 0x04);

      # wait while chip is resetting
      status = this.readRegisterU8(this.LPS22_REG_CTRL_REG2);
      while bitand(status, 4) == 4
        pause(.1);
        status = this.readRegisterU8(this.LPS22_REG_CTRL_REG2);
      endwhile

      # set data rate
      reg = this.readRegisterU8(this.LPS22_REG_CTRL_REG1);
      reg = bitand(reg, 0x8F);
      reg = bitor(reg, bitshift(regrate, 4));
      this.writeRegister(this.LPS22_REG_CTRL_REG1, reg);

    endfunction

    function inf = info (this)
      inf = {};
      inf.Type = "lps22hb";
      inf.SensorId = this.LPS22_CHIP_ID;
      inf.Version = 0;
      inf.Status = this.readRegisterU8(this.LPS22_REG_STATUS);
    endfunction

    function [C, timestamp] = readTemperature (this)
      data = readData(this);

      value = bitshift(uint16(data(6)), 8) + uint16(data(5));

      timestamp = time();
      C = calcTemperature(this, value);
    endfunction

    function [P, timestamp] = readPressure(this)
      data = readData(this);

      value = bitshift(int32(data(4)), 16) + bitshift(int32(data(3)), 8) + int32(data(2));

      timestamp = time();
      P = calcPressure(this, value);
    endfunction

    function varargout = read(this)
      data = readData(this);

      timestamp = time();

      value = bitshift(uint16(data(6)), 8) + uint16(data(5));
      C = calcTemperature(this, value);
      
      value = bitshift(int32(data(4)), 16) + bitshift(int32(data(3)), 8) + int32(data(2));
      P = calcPressure(this, value);

      overrun = bitand(data(1), 0x30) != 0;

      if nargout <= 2
        varargout{1} = struct('Time', timestamp, 'Temperature', C, 'Pressure', P);
        if nargout > 1
          varargout{2} = overrun;
        endif
      else
        if nargout > 0
          varargout{1} = P;
         endif
        if nargout > 1
          varargout{2} = C;
        endif
        if nargout > 2
          varargout{3} = timestamp;
        endif
        if nargout > 3
          varargout{4} = overrun;
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
        printf("        SampleRate: %d\n", this.SampleRate);
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
      if bitand(value, 0x8000)
        var1 = double(value) - double(0xFFFF);
      else
        var1 = double(value);
      endif

      C = var1 / 100.0;
    endfunction

    function P = calcPressure(this, value)
      if bitand(value, int32(0x800000))
        var1 = double(value) - double(0xFFFFFF);
      else
        var1 = double(value);
      endif

      P = var1 / 4096.0;
    endfunction

    function data = readRegister(this, reg, sz)
      data = readRegister(this.i2c, reg, sz);
    endfunction

    function writeRegister(this, reg, data)
      writeRegister(this.i2c, reg, data);
    endfunction

    # read the data
    function data = readData(this)

      # wait for data
      m = 0;
      while m == 0
        status = this.readRegisterU8 (this.LPS22_REG_STATUS);
        m = bitand(status, 0x03);
        if m != 0
          pause(.1);
        endif
      endwhile

      # 1 status, 3 pres, 2 temp
      data = readRegister(this, this.LPS22_REG_STATUS, 6);
    endfunction

    function value = readRegisterU8(this, reg)
      data = readRegister(this, reg, 1);
      value = uint8(data(1));
    endfunction

  endmethods
endclassdef

%!error <Expected arduino object as first parameter> lps22hb(1);
