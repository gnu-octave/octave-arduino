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

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} config_uno_wifi_r2 (@var{initdata})
## Private function for setting allowed modes of uno board pins
## @end deftypefn

function retval = config_uno_wifi_r2 (initdata)
  retval = [];
  # default board info - must be provided
  # will be filled in on connection
  retval.board = "uno_wifi_r2";
  retval.baudrate = 9600;
  retval.mcu = '';
  retval.voltref = 0;
  retval.libs = {};
  retval.port = "";

  # info expected to be provided by config.
  retval.description = 'Arduino Uno WIFI R2 Board';
  
  # pin config
  retval.pins = {};
  #0=D0 RX
  retval.pins{end+1} = arduinoio.config.pin_info("D0", 0, { 'digital' , 'uart'});
  #1=D1 TX
  retval.pins{end+1} = arduinoio.config.pin_info("D1", 1, { 'digital' , 'uart'});
  #2=D2
  retval.pins{end+1} = arduinoio.config.pin_info("D2", 2, { 'digital', 'interrupt' });
  #3=D3 PWM
  retval.pins{end+1} = arduinoio.config.pin_info("D3", 3, { 'digital', 'pwm', 'interrupt' });
  #4=D4
  retval.pins{end+1} = arduinoio.config.pin_info("D4", 4, { 'digital', 'interrupt' });
  #5=D5 PWM
  retval.pins{end+1} = arduinoio.config.pin_info("D5", 5, { 'digital', 'pwm', 'interrupt' });
  #6=D6 PWM
  retval.pins{end+1} = arduinoio.config.pin_info("D6", 6, { 'digital', 'pwm', 'interrupt' });
  #7=D7
  retval.pins{end+1} = arduinoio.config.pin_info("D7", 7, { 'digital', 'interrupt' });
  #8=D8
  retval.pins{end+1} = arduinoio.config.pin_info("D8", 8, { 'digital', 'interrupt' });
  #9=D9 PWM
  retval.pins{end+1} = arduinoio.config.pin_info("D9", 9, { 'digital', 'pwm', 'interrupt' });
  #10=D10 PWM SS
  retval.pins{end+1} = arduinoio.config.pin_info("D10", 10, { 'digital', 'pwm', 'interrupt' });
  #11=D11
  retval.pins{end+1} = arduinoio.config.pin_info("D11", 11, { 'digital', 'interrupt' });
  #12=D12
  retval.pins{end+1} = arduinoio.config.pin_info("D12", 12, { 'digital', 'interrupt' });
  #13=D13 
  retval.pins{end+1} = arduinoio.config.pin_info("D13", 13, { 'digital', 'interrupt' });
  #14=D14 A0
  retval.pins{end+1} = arduinoio.config.pin_info("A0", 14, { 'digital', 'analog', 'interrupt' }, {"D14"});
  #15=D15 A1
  retval.pins{end+1} = arduinoio.config.pin_info("A1", 15, { 'digital', 'analog', 'interrupt' }, {"D15"});
  #16=D16 A2
  retval.pins{end+1} = arduinoio.config.pin_info("A2", 16, { 'digital', 'analog', 'interrupt' }, {"D16"});
  #17=D17 A3
  retval.pins{end+1} = arduinoio.config.pin_info("A3", 17, { 'digital', 'analog', 'interrupt' }, {"D17"});
  #18=D18 A4 I2C_SDA
  retval.pins{end+1} = arduinoio.config.pin_info("A4", 18, { 'digital', 'analog', 'interrupt' }, {"D18"});
  #19=D19 A5 I2C_SCL
  retval.pins{end+1} = arduinoio.config.pin_info("A5", 19, { 'digital', 'analog', 'interrupt' }, {"D19"});

  # additionals ?
  #20=D20
  retval.pins{end+1} = arduinoio.config.pin_info("D20", 20, { 'i2c_sda' });
  #21=D21
  retval.pins{end+1} = arduinoio.config.pin_info("D21", 21, { 'i2c_scl' });


  retval.pins{end+1} = arduinoio.config.pin_info("D22", 22, { 'digital', 'spi0_ss' });

  #25=D25
  retval.pins{end+1} = arduinoio.config.pin_info("D25", 25, { 'digital', 'led' });

  #26=D26
  #retval.pins{end+1} = arduinoio.config.pin_info("D26", 26, { 'digital'});
  #30=D30
  retval.pins{end+1} = arduinoio.config.pin_info("D30", 30, { 'digital', 'imu_ss'});
  #32=D32
  retval.pins{end+1} = arduinoio.config.pin_info("D32", 32, { 'digital', 'spi0_mosi' });
  #33=D33
  retval.pins{end+1} = arduinoio.config.pin_info("D33", 33, { 'digital', 'spi0_miso' });
  #34=D34
  retval.pins{end+1} = arduinoio.config.pin_info("D34", 34, { 'digital', 'spi0_sck' });
  #35=D35
  retval.pins{end+1} = arduinoio.config.pin_info("D35", 35, { 'digital', 'wifi_ss' });
  #39=D39
  retval.pins{end+1} = arduinoio.config.pin_info("D39", 39, { 'digital' });
endfunction
