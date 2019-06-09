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

% test_jig
% expects a arduino uno to be connected via serial port
% with test connections as folows:
% arduino - 24XX256 EEPROM chip (i2c)
% arduino - mcp3002 10 bit ADC (spi)
% arduino - hobby servo
%
% Connection  of arduino to test jig as follows:
% Arduino   
%            24XX256 eeprom
% A4      -  5
% A5      -  6
% 5V      -  8
% GND     -  1,2,3,4
%
% Arduino     MCP3002 
% D10      -  1 (CS)
% D11      -  5 (DI)
% D12      -  6 (DO)
% D13      -  7 (CLK)
% VCC      -  8 (VDD)
% GND      -  4 (VSS)
% VCC         2 (CH0) - chan 0 input
% D2          3 (CH1) - chan 1 input

% Servo
% Arduino     Servo
% d9       -  signal
% VCC      -  power
% gnd      -  gnd

% I/O
% Arduino     Arduino
% A3       -  D3
% D4       -  D5
% D7       -  Not connected
% D6       - +10UF cap - GND
% A0       -  D6

pkg load instrument-control

[~, ~, endian] = computer ();

unwind_protect

  printf("1. opening arduino\n");
  a = arduino();
  if isempty(a)
    printf("** open failied **\n")
  endif
  assert(~isempty(a))

  printf("2. I2C tests with EEPROM\n");
  eeprom_address = 0x50;

  printf("* i2c terminals\n")
  terms = getI2CTerminals(a);
  if isempty(terms)
    printf("** getI2CTerminals failed **\n")
  endif

  printf("* i2c devices attached\n")
  devs = scanI2Cbus(a);

  idx = find(devs = eeprom_address);
  if isempty(idx)
    error ('scanI2bus failed - skipping eeprom tests')
  else
    printf("* opening i2c...\n");
    #i2c = i2cdev(a, eeprom_address);
    i2c = device(a, "i2caddress", eeprom_address);
    if isempty(i2c)
      printf("** i2cdev failed **\n")
    endif

    printf("* writing i2c bytes...\n");
    # write data to address 0x0000
    write(i2c, [0 0    0 1 2 3 4 5 6 7 8 9 10]);

    # read from address 0x0000, which should now be 0 1 2 3 4 5 6 7
    printf("* reading i2c 0000 bytes...\n");
    write(i2c, uint8([0 0]));
    val = read(i2c, 8);
    if val != uint8([0 1 2 3 4 5 6 7])
      printf("byte read/write failed!\n");
    endif

    printf("* reading i2c 0002 bytes...\n");
    write(i2c, uint8([0 2]));
    val = read(i2c, 8);
    if val != uint8([2 3 4 5 6 7 9 10])
      printf("byte read/write failed!\n");
    endif

    printf("* reading i2c 0002 uint16...\n");
    write(i2c, uint16([2]), 'uint16');
    val = read(i2c, 4, 'uint16');
    expected = typecast(uint8([2 3 4 5 6 7 8 9]), 'uint16');
    if endian == 'L'
      expected = swapbytes(expected);
    endif
    if val != expected
      printf("uint16 read failed!\n");
    endif

    printf("* reading i2c 0000 uint16 as register...\n");
    val = readRegister(i2c, 0, 2, 'uint16');
    expected = typecast(uint8([0 1 2 3]), 'uint16');
    if endian == 'L'
      expected = swapbytes(expected);
    endif
    if val != expected
      printf("read reg16 failed!\n");
    endif

    printf("* reading i2c 0001 uint16 as register...\n");
    val = readRegister(i2c, 1, 2, 'uint16');
    expected = typecast(uint8([1 2 3 4]), 'uint16');
    if endian == 'L'
      expected = swapbytes(expected);
    endif
    if val != expected
      printf("read reg16 failed!\n");
    endif

    printf("* writing i2c uint16 reg...\n");
    writeRegister(i2c, 258, [8 9], 'uint16')

    printf("* reading i2c 0102 bytes...\n");
    write(i2c, uint8([1 2]));
    val = read(i2c, 4);
    if val != uint8([0 8 0 9])
      printf("byte read/write failed!\n");
    endif

    printf("* reading i2c 0102 uint16 as register...\n");
    val = readRegister(i2c, 258, 2, 'uint16');
    expected = [8 9];
    if val != expected
      printf("read reg16 failed!\n");
    endif

    clear i2c;

  endif

  printf("3. SPI tests with ADC\n");
  printf("* opening spi...\n");
  #spi = spidev(a, "d10");
  spi = device(a, "spichipselectpin", "d10");
  if isempty(spi)
    printf("** spi failed **\n")
  endif

  # chan0
  printf("* reading spi chan 0...\n");
  val = writeRead(spi, [ hex2dec("DF") hex2dec("FF") ]);
  val = writeRead(spi, [ hex2dec("DF") hex2dec("FF") ]);
  adc = bitand (uint16(val(1))*256 + uint16(val(2)), hex2dec('3FF'));
  volts = double(adc) * 5.0 / 1023.0;
  if volts < 4.5 || volts > 5.0
    printf("unexpected voltage ch0 = 0x%04X (adc) %f (volts)\n", adc, volts)
  endif

  # chan 1
  printf("* reading spi chan 1 low...\n");
  writeDigitalPin(a, "d2", 0);
  val = writeRead(spi, [ hex2dec("EF") hex2dec("FF") ]);
  adc = bitand (uint16(val(1))*256 + uint16(val(2)), hex2dec('3FF'));
  volts = double(adc) * 5.0 / 1023.0;
  if volts > 0.5
    printf("unexpected voltage ch1 = 0x%04X (adc) %f (volts)\n", adc, volts)
  endif
  printf("* reading spi chan 1 high...\n");
  writeDigitalPin(a, "d2", 1);
  val = writeRead(spi, [ hex2dec("EF") hex2dec("FF") ]);
  adc = bitand (uint16(val(1))*256 + uint16(val(2)), hex2dec('3FF'));
  volts = double(adc) * 5.0 / 1023.0;
  if volts < 4.5
    printf("unexpected voltage ch1 = 0x%04X (adc) %f (volts)\n", adc, volts)
  endif

  # other SPI tests ??
  clear spi

  printf("4. Digital I/O\n");

  printf("* reading analog high to d3...\n");
  writeDigitalPin(a, "a3", 1);
  pause(1);
  val = readDigitalPin(a, "d3");
  if val != 1
    printf("unexpected 33 value %d\n", val);
  endif
  val = readDigitalPin(a, "a3");
  if val != 1
    printf("unexpected A3 value %d\n", val);
  endif
  printf("* reading analog low to d3...\n");
  writeDigitalPin(a, "a3", 0);
  pause(1);
  val = readDigitalPin(a, "d3");
  if val != 0
    printf("unexpected D3 value %d\n", val);
  endif
  val = readDigitalPin(a, "a3");
  if val != 0
    printf("unexpected A3 value %d\n", val);
  endif

  printf("* reading digital low to d4...\n");
  writeDigitalPin(a, "d4", 0);
  pause(1);
  val = readDigitalPin(a, "d4");
  if val != 0
    printf("unexpected d4 value %d\n", val);
  endif
  val = readDigitalPin(a, "d5");
  if val != 0
    printf("unexpected d5 value %d\n", val);
  endif

  printf("* reading digital high to d4...\n");
  writeDigitalPin(a, "d4", 1);
  pause(1);
  val = readDigitalPin(a, "d4");
  if val != 1
    printf("unexpected d4 value %d\n", val);
  endif
  val = readDigitalPin(a, "d5");
  if val != 1
    printf("unexpected d5 value %d\n", val);
  endif

  printf("5. Analog input\n");
  configurePin(a, "d3", "unset");
  writeDigitalPin(a, "d3", 0);
  configurePin(a, "a3", "unset");
  pause(1);
  printf("* reading analog low a3...\n");
  val = readAnalogPin(a, "a3");
  if val > 200
    printf("unexpected a3 value %d\n", val);
  endif
  val = readVoltage(a, "a3");
  if val > 0.5
    printf("unexpected a3 value %f\n", val);
  endif

  printf("* reading analog high a3...\n");
  writeDigitalPin(a, "d3", 1);
  pause(1);
  val = readAnalogPin(a, "a3");
  if val < 1000
    printf("unexpected a3 value %d\n", val);
  endif
  val = readVoltage(a, "a3");
  if val < 4.5
    printf("unexpected a3 value %f\n", val);
  endif

  printf("6. Pullup I/O\n");
  printf("* pullup d7...\n");
  configurePin(a, "d7", "pullup");
  val = readDigitalPin(a, "d7");
  if val != 1
    printf("unexpected d7 value %d\n", val);
  endif

  # analog output /PWM
  printf("7. Analog Output\n");
  printf("* pwm duty cycle 0...\n");
  writePWMDutyCycle(a, "d6", 0);
  pause(1);
  val = readVoltage(a, "a0");
  if val > 0.1
    printf("unexpected a0 value %f\n", val);
  endif

  printf("* pwm duty cycle 1...\n");
  writePWMDutyCycle(a, "d6", 1);
  pause(1);
  val = readVoltage(a, "a0");
  if val < 4.5
    printf("unexpected a0 value %f\n", val);
  endif

  printf("* pwm duty cycle 0.5...\n");
  writePWMDutyCycle(a, "d6", 0.5);
  pause(1);
  val = readVoltage(a, "a0");
  if val < 2.0 || val > 3.0
    printf("unexpected a0 value %f\n", val);
  endif

  printf("* pwm voltage 0...\n");
  writePWMVoltage(a, "d6", 0.0);
  pause(1);
  val = readVoltage(a, "a0");
  if val > 0.2
    printf("unexpected a0 value %f\n", val);
  endif

  printf("* pwm voltage 5...\n");
  writePWMVoltage(a, "d6", 5.0);
  pause(1);
  val = readVoltage(a, "a0");
  if val < 4.5
    printf("unexpected a0 value %f\n", val);
  endif

  printf("* pwm voltage 3...\n");
  writePWMVoltage(a, "d6", 3.0);
  pause(1);
  val = readVoltage(a, "a0");
  if val < 2.4 || val > 4.0
    printf("unexpected a0 value %f\n", val);
  endif

  # TODO: servo 
  printf("8. Servo\n");
  printf("* create servo...\n");
  s = servo(a, "d9", 'MinPulseDuration', 1e-3, 'MaxPulseDuration', 2e-3);
  if isempty(s)
    printf("** servo failied **\n")
  endif
  printf("* go min pos...\n");
  writePosition(s, 0);
  val = readPosition(s);
   if val != 0
    printf("invalid position %f\n", val);
  endif

  printf("* scan pos...\n");
  for pos = [0:.01:1]
    writePosition(s, pos);
    pause(0.02);
  endfor

  printf("* go max pos...\n");
  writePosition(s, 1);
  val = readPosition(s);
  if val != 1
    printf("invalid position %f - expected %f\n", val, 1);
  endif

  printf("9. LEDS\n");
  printf("* get pins...\n");
  leds = getPinsFromTerminals(a, getLEDTerminals(a));
  if isempty(leds)
    printf("no LED pins");
  endif

  printf("* set leds 0\n");

  for i = [1:1:numel(leds)]
    pin = leds{i};
    configurePin(a, pin, "unset");
    writeDigitalPin(a, pin, 0)
  endfor
  pause(2);
  printf("* set leds 1\n");
  for i = [1:1:numel(leds)]
    pin = leds{i};
    writeDigitalPin(a, pin, 1)
  endfor
  pause(2);
  printf("* set leds 0\n");
  for i = [1:1:numel(leds)]
    pin = leds{i};
    writeDigitalPin(a, pin, 0)
  endfor
 
unwind_protect_cleanup
  clear a
end_unwind_protect
