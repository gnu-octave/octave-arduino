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
## @deftypefn {} {@var{retval} =} config_uno (@var{initdata})
## Private function for settimng allowed modes of uno board pins
## @end deftypefn

function retval = config_uno (initdata)
  retval = [];
  # defaul board info
  retval.board = "uno";
  retval.mcu = 'atmega32';
  retval.voltref = 5.0;
  retval.pins = {};
  retval.libs = {};
  
  # pin config
  #0=D0 RX
  retval.pins{end+1} = pin_info("D0", 0, { 'digital' , 'uart'});
  #1=D1 TX
  retval.pins{end+1} = pin_info("D1", 1, { 'digital' , 'uart'});
  #2=D2
  retval.pins{end+1} = pin_info("D2", 2, { 'digital' });
  #3=D3 PWM
  retval.pins{end+1} = pin_info("D3", 3, { 'digital', 'pwm' });
  #4=D4
  retval.pins{end+1} = pin_info("D4", 4, { 'digital' });
  #5=D5 PWM
  retval.pins{end+1} = pin_info("D5", 5, { 'digital', 'pwm' });
  #6=D6 PWM
  retval.pins{end+1} = pin_info("D6", 6, { 'digital', 'pwm' });
  #7=D7
  retval.pins{end+1} = pin_info("D7", 7, { 'digital' });
  #8=D8
  retval.pins{end+1} = pin_info("D8", 8, { 'digital' });
  #9=D9 PWM
  retval.pins{end+1} = pin_info("D9", 9, { 'digital', 'pwm' });
  #10=D10 PWM SS
  retval.pins{end+1} = pin_info("D10", 10, { 'digital', 'pwm', 'spi0_ss' });
  #11=D11 PWM MOSI
  retval.pins{end+1} = pin_info("D11", 11, { 'digital', 'pwm', 'spi0_mosi' });
  #12=D12 MISO
  retval.pins{end+1} = pin_info("D12", 12, { 'digital', 'pwm', 'spi0_miso' });
  #13=D13 SCK LED
  retval.pins{end+1} = pin_info("D13", 13, { 'digital', 'pwm', 'spi0_sck', 'led' });
  #14=D14 A0
  retval.pins{end+1} = pin_info("A0", 14, { 'digital', 'analog' });
  #15=D15 A1
  retval.pins{end+1} = pin_info("A1", 15, { 'digital', 'analog' });
  #16=D16 A2
  retval.pins{end+1} = pin_info("A2", 16, { 'digital', 'analog' });
  #17=D17 A3
  retval.pins{end+1} = pin_info("A3", 17, { 'digital', 'analog' });
  #18=D18 A4 I2C_SDA
  retval.pins{end+1} = pin_info("A4", 18, { 'digital', 'analog', 'i2c_sda' });
  #19=D19 A5 I2C_SCL
  retval.pins{end+1} = pin_info("A5", 19, { 'digital', 'analog', 'i2c_scl' });
  # additionals ?
  #20=D20 A6
  #21=D21 A7
endfunction
