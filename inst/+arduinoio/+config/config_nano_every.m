## Copyright (C) 2019 John Donoghue <john.donoghue@ieee.org>
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
## @deftypefn {} {@var{retval} =} config_every (@var{initdata})
## Private function for setting allowed modes of nano_every board pins
## @end deftypefn

function retval = config_nano_every (initdata)
  retval = [];
  # default board info - must be provided
  # will be filled in on connection
  retval.board = "nano_every";
  retval.baudrate = 9600;
  retval.mcu = '';
  retval.voltref = 50;
  retval.libs = {};
  retval.port = "";

  # info expected to be provided by config.
  retval.description = 'Arduino Nano Every Board';
  
  # pin config
  retval.pins = {};
  retval.pins{end+1} = arduinoio.config.pin_info("D0", 0, { 'digital' , 'uart1_tx'});
  retval.pins{end+1} = arduinoio.config.pin_info("D1", 1, { 'digital' , 'uart1_rx'});
  retval.pins{end+1} = arduinoio.config.pin_info("D2", 2, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info("D3", 3, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info("D4", 4, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info("D5", 5, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info("D6", 6, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info("D7", 7, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info("D8", 8, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info("D9", 9, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info("D10", 10, { 'digital', 'pwm', 'spi0_ss' });
  retval.pins{end+1} = arduinoio.config.pin_info("D11", 11, { 'digital', 'spi0_mosi' });
  retval.pins{end+1} = arduinoio.config.pin_info("D12", 12, { 'digital', 'spi0_miso' });
  retval.pins{end+1} = arduinoio.config.pin_info("D13", 13, { 'digital', 'spi0_sck', 'led' });
  retval.pins{end+1} = arduinoio.config.pin_info("A0", 14, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info("A1", 15, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info("A2", 16, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info("A3", 17, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info("A4", 18, { 'digital', 'analog', 'i2c_sda' });
  retval.pins{end+1} = arduinoio.config.pin_info("A5", 19, { 'digital', 'analog', 'i2c_scl' });
  retval.pins{end+1} = arduinoio.config.pin_info("A6", 20, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info("A7", 21, { 'digital', 'analog' });
endfunction
