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

% example using the arduino i2c to communicate to a Si7021 via a 
% sparkfun SparkFun Humidity and Temperature Sensor Breakout board
% https://www.sparkfun.com/products/13763
%
% Conection  of arduino to breakout board as follows:
% Arduino    breakoutboard (pin) (name depending on rev of board)
% A4      -  3 (DA or SDA)
% A5      -  4 (CL or SCL)
% 3V3     -  2 (+ or 3V3)
% GND     -  1 (- or GND)

temp_address = 0x40;

# open the arduino
a = arduino ()

unwind_protect

  printf ("i2c terminals\n")
  getI2CTerminals (a)

  printf ("i2c devices attached\n")
  devs = scanI2Cbus (a)

  idx = find (devs = temp_address);
  if isempty (idx)
    warning ('no Si7021 device found at address')
  endif

  printf ("opening i2c...\n");

  i2c = i2cdev (a, temp_address)
  SENSOR_ID_1 = [ hex2dec("FA") hex2dec("F0") ];
  SENSOR_ID_2 = [ hex2dec("FC") hex2dec("C9") ];

  printf ("query device...\n");
  write (i2c, SENSOR_ID_1);
  id1 = read(i2c, 1);
  write (i2c, SENSOR_ID_2);
  id2 = read(i2c, 1);

  printf ("Sensor ID: %02X%02X\n", id1, id2)
  printf ("Sensor Type: ");
  if id2 == hex2dec("15")
    printf ("Si7021\n");
  elseif id2 == hex2dec("14")
    printf ("Si7020\n");
  elseif id2 == hex2dec("0D")
    printf ("Si7013\n");
  elseif id2 == hex2dec("32")
    printf ("HTU21D\n");
  else
    error ("unknown sensor type of %d found", id2);
  endif

  SENSOR_VERSION = [ hex2dec("84") hex2dec("B8") ];
  write (i2c, SENSOR_VERSION);
  ver = read(i2c, 1);
  printf ("F/W Version: ");
  if ver == hex2dec("FF")
    printf ("Version: 1.0\n");
  elseif ver == hex2dec("20")
    printf ("Version: 2.0\n");
  else
    printf ("Version: %f\n", double(ver)/10.0);
  endif

  TEMP_MEASURE_NOHOLD = hex2dec("F3");
  HUMIDITY_MEASURE_NOHOLD = hex2dec("F5");

  % write command to get temp
  write (i2c, uint8([TEMP_MEASURE_NOHOLD]));
  pause (0.02);
  data = read (i2c, 3);
  value = uint16(data(1))*256 + uint16(data(2));
  value = bitand (value, hex2dec("FFFC"));
  temp_Code = double(value);

  C = (175.72*temp_Code/65536)-46.85;
  F = (C * 1.8) +32.0;

  printf ("temperature read %f C (%f F)\n", C, F);

  % write command to get rel humidity
  write (i2c, uint8([HUMIDITY_MEASURE_NOHOLD]));
  pause (0.02);
  data = read (i2c, 3);
  value = uint16(data(1))*256 + uint16(data(2));
  value = bitand (value, hex2dec("FFFC"));
  humidity_Code = double(value);

  humidity = (125.0*humidity_Code/65536)-6;

  printf ("relative humidity read %f %%\n", humidity);

  clear i2c
unwind_protect_cleanup
  clear a
end_unwind_protect
