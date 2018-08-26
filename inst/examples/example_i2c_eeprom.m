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

% example using the arduino i2c
% to communicate to a 24XX256 EEPROM chip connected to an uno
%
% Connection  of arduino to EEPROM as follows:
% Arduino    24XX256 eeprom (pin)
% A4      -  5
% A5      -  6
% 5V      -  8
% GND     -  1,2,3,4

pkg load instrument-control

eeprom_address = 0x50;
data = "this is eeprom data";

# open the arduino
a = arduino()

unwind_protect

  printf("i2c terminals\n")
  getI2CTerminals(a)

  printf("i2c devices attached\n")
  devs = scanI2Cbus(a)

  idx = find(devs = eeprom_address);
  if isempty(idx)
    warning ('no EEPROM device found at address')
  endif

  printf("opening i2c...\n");

  i2c = i2cdev(a, eeprom_address)

  printf("writing i2c...\n");
  # write data to address 0x0000
  write(i2c, [0 0 uint8(data)]);

  # read from address 0x0008, which should now be 'eeprom'
  write(i2c, uint8([0 8]));
  val = read(i2c, 6);
  printf("reading from 0x0008 = expecting 'eeprom', and got '%s'\n", char(val))

  # demo read/write register
  val = readRegister(i2c, 0, 2, 'uint16');
  printf("reading as reg from 0x0000 = expecting %X %X, and got '%X %X'\n", typecast(data(1:2),'uint16'),typecast(data(3:4), 'uint16'), val(1), val(2))

  # 2nd page
  write(i2c, [1 0   0 1 0 2 0 3 0 4]);

  write(i2c, uint8([1 0]));
  valu = read(i2c, 4)

  val = readRegister(i2c, 256, 2, 'uint16')

  valx = readRegister(i2c, 258, 2, 'uint16')

  write(i2c, uint8([1 2]));
  valux = read(i2c, 4)

  # 02 03
  writeRegister(i2c, 258, [8 9], 'uint16')

  write(i2c, uint8([1 2]));
  valux = read(i2c, 4)
  valx = readRegister(i2c, 258, 2, 'uint16')

  clear i2c
unwind_protect_cleanup
  clear a
end_unwind_protect
