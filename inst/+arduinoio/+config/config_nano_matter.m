## Copyright (C) 2025 John Donoghue <john.donoghue@ieee.org>
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
## @deftypefn {} {@var{retval} =} config_nano_matter (@var{initdata})
## Private function for setting allowed modes of mano matter board pins
## @end deftypefn

function retval = config_nano_matter (initdata)
  retval = {};

  retval.board = 'nano_matter';
  retval.baudrate = 9600;
  retval.mcu = 'MGM240S';
  retval.voltref = 3.3;
  retval.libs = {};
  retval.port = '';

  # info expected to be provided by config.
  retval.description = 'Arduino Nano Matter';

  # pin config
  retval.pins = {};
  retval.pins{end+1} = arduinoio.config.pin_info('D0', 0, { 'digital', 'pwm', 'uart1_tx', 'spi1_mosi' });
  retval.pins{end+1} = arduinoio.config.pin_info('D1', 1, { 'digital', 'pwm', 'uart1_rx', 'spi1_miso' });
  retval.pins{end+1} = arduinoio.config.pin_info('D2', 2, { 'digital', 'pwm', 'spi_sck' });
  retval.pins{end+1} = arduinoio.config.pin_info('D3', 3, { 'digital', 'pwm', 'spi1_ss' });
  retval.pins{end+1} = arduinoio.config.pin_info('D4', 4, { 'digital', 'pwm', 'i2c1_sda' });
  retval.pins{end+1} = arduinoio.config.pin_info('D5', 5, { 'digital', 'pwm', 'i2c1_scl' });
  retval.pins{end+1} = arduinoio.config.pin_info('D6', 6, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D7', 7, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D8', 8, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D9', 9, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D10', 10, { 'digital', 'pwm', 'spi_ss' });
  retval.pins{end+1} = arduinoio.config.pin_info('D11', 11, { 'digital', 'pwm', 'spi_mosi' });
  retval.pins{end+1} = arduinoio.config.pin_info('D12', 12, { 'digital', 'pwm', 'spi_miso' });
  retval.pins{end+1} = arduinoio.config.pin_info('D13', 13, { 'digital', 'pwm', 'spi_sck' });
  retval.pins{end+1} = arduinoio.config.pin_info('A0', 14, { 'digital', 'analog', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('A1', 15, { 'digital', 'analog', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('A2', 16, { 'digital', 'analog', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('A3', 17, { 'digital', 'analog', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('A4', 18, { 'digital', 'analog', 'pwm', 'i2c_sda' });
  retval.pins{end+1} = arduinoio.config.pin_info('A5', 19, { 'digital', 'analog', 'pwm', 'i2c_scl' });
  retval.pins{end+1} = arduinoio.config.pin_info('A6', 20, { 'digital', 'analog', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('A7', 21, { 'digital', 'analog', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D22', 22, { 'digital', 'led' });
  retval.pins{end+1} = arduinoio.config.pin_info('D23', 23, { 'digital', 'led1' });
  retval.pins{end+1} = arduinoio.config.pin_info('D24', 24, { 'digital', 'led2' });
endfunction
