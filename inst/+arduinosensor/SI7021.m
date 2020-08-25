## Copyright (C) 2019-2020 John Donoghue <john.donoghue@ieee.org>
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

classdef SI7021 < handle
  ## -*- texinfo -*- 
  ## @deftypefn {} {} arduinosensor.SI7021
  ## SI7021 temperature and humidity sensor
  ## @end deftypefn
  ##
  ## @subheading Methods
  ## @deftypefn {} {@var{obj} =} SI7021(@var{arObj})
  ## @deftypefnx {} {@var{obj} =} SI7021(@var{arObj}, @var{propertyname, propertyvalue} ....)
  ## Constructor to create SI7021 sensor
  ## @subsubheading Inputs
  ## @var{arObj} - the arduino parent object
  ##
  ## @var{propertyname, propertyvalue} - optional property name, value pairs.
  ## Current known properties are:
  ## Current properties are:
  ## @table @asis
  ## @item i2caddress
  ## I2C address of the SI7021 (default 0x40)
  ## @end table
  ##
  ## @subsubheading Outputs
  ## @var{obj} - created SI7020 object
  ##
  ## @subsubheading Example
  ## @example
  ## @code {
  ## a = arduino()
  ## sensor = arduinosensor.SI7021(a)
  ## }
  ## @end example
  ## @end deftypefn
  ##
  ## @deftypefn {} {@var{C} =} temperature(@var{dsObj})
  ## Read the temperature
  ##
  ## @subsubheading Inputs
  ## @var{dsObj} - the si7021 object
  ##
  ## @subsubheading Outputs
  ## @var{C} - read temperature in deg C.
  ##
  ## @subsubheading Example
  ## @example
  ## @code {
  ## a = arduino()
  ## s = arduinosensor.SI7021(a)
  ## # get temp
  ## temp = s.temperature
  ## }
  ## @end example
  ## @seealso{arduinosensor.SI7021}
  ## @end deftypefn
  ##
  ## @deftypefn {} {@var{relH} =} humidity(@var{dsObj})
  ## Read the relative humidity
  ##
  ## @subsubheading Inputs
  ## @var{dsObj} - the si7021 object
  ##
  ## @subsubheading Outputs
  ## @var{relH} - relative humidity as a percentage (0 - 100.0)
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
  ## @item version
  ## Chip firmware version
  ## @item id
  ## sensor id1,id2 value
  ## @item type
  ## String for detected chip type
  ## @end table
  ##
  ## @end deftypefn

  properties(Access = private, constant = true)
    SENSOR_ID_1 = [ hex2dec("FA") hex2dec("F0") ];
    SENSOR_ID_2 = [ hex2dec("FC") hex2dec("C9") ];
    SENSOR_VERSION = [ hex2dec("84") hex2dec("B8") ];
    TEMP_MEASURE_NOHOLD = hex2dec("F3");
    HUMIDITY_MEASURE_NOHOLD = hex2dec("F5");
  endproperties
  
  properties(Access = private)
    i2c;
  endproperties

  methods
    # constructor
    function this = SI7021(parentObj, varargin)

      if nargin < 1 || ! isarduino(parentObj)
        error('arduinosensor.SI7021: expected arduino object as first parameter');
      endif

      # parse args
      p = inputParser(CaseSensitive=false, FunctionName='arduinosensor.SI7021');
      p.addParameter('I2CAddress', 0x40, @isnumeric);
      p.parse(varargin{:});

      # do we have the address ?
      address = p.Results.I2CAddress;
      i2caddresses = scanI2Cbus(parentObj);
      idx = find(cellfun ( @(x) strcmp(x, sprintf("0x%02X", address)), i2caddresses));
      if isempty(idx)
        error('arduinosensor.SI7021: no matching i2c address found on bus');
      endif

      this.i2c = device(parentObj, "i2caddress", p.Results.I2CAddress);
    endfunction

    function inf = info (this)
      write (this.i2c, this.SENSOR_ID_1);
      id1 = read(this.i2c, 1);
      write (this.i2c, this.SENSOR_ID_2);
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

      write (this.i2c, this.SENSOR_VERSION);
      ver = read(this.i2c, 1);
      if ver == hex2dec("FF")
        ver = 1.0;
      else
        ver = double(ver)/10.0;
      endif

      inf = {};
      inf.version = ver;
      inf.type = type;
      inf.id = int32(id1)*256 + int32(id2);

    endfunction

    function C = temperature (this)
      % write command to get temp
      write (this.i2c, uint8([this.TEMP_MEASURE_NOHOLD]));
      pause (0.02);
      data = read (this.i2c, 3);
      value = uint16(data(1))*256 + uint16(data(2));
      value = bitand (value, hex2dec("FFFC"));
      temp_Code = double(value);

      C = (175.72*temp_Code/65536)-46.85;
      # F = (C * 1.8) + 32.0;
    endfunction

    function H = humidity(this)
      write (this.i2c, uint8([this.HUMIDITY_MEASURE_NOHOLD]));
      pause (0.02);
      data = read (this.i2c, 3);
      value = uint16(data(1))*256 + uint16(data(2));
      value = bitand (value, hex2dec("FFFC"));
      humidity_Code = double(value);

      H = (125.0*humidity_Code/65536)-6;
    endfunction

    function display(this)
      printf("%s = \n", inputname(1));
      printf("    %s with properties\n", class(this));
      printf("        I2C Address = 0x%X\n", this.i2c.address);
    endfunction

  endmethods
endclassdef
