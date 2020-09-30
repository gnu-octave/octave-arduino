## Copyright (C) 2020 John Donoghue <john.donoghue@ieee.org>
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
## @deftypefn {} {@var{retval} =} config_mkrzero (@var{initdata})
## Private function for setting allowed modes of mkrzero board pins
## @end deftypefn

# configuration generated from /home/jade/.arduino15/packages/arduino/hardware/samd/1.8.8/variants/mkrzero/variant.h
function retval = config_mkrzero (initdata)
  retval = {};

  # default board info - must be provided
  # will be filled in on connection.
  retval.board = '';
  retval.mcu = 'cortex-m0plus';
  retval.voltref = 3.3;
  retval.libs = {};
  retval.port = '';

  # info expected to be provided by config.
  retval.description = 'MKR Zero Board';

  # pin config
  retval.pins = {};
  retval.pins{end+1} = arduinoio.config.pin_info('D0', 0, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D1', 1, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D2', 2, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D3', 3, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D4', 4, { 'digital', 'pwm', 'spi_ss' });
  retval.pins{end+1} = arduinoio.config.pin_info('D5', 5, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D6', 6, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D7', 7, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D8', 8, { 'digital', 'pwm', 'spi_mosi' });
  retval.pins{end+1} = arduinoio.config.pin_info('D9', 9, { 'digital', 'spi_sck' });
  retval.pins{end+1} = arduinoio.config.pin_info('D10', 10, { 'digital', 'pwm', 'spi_miso' });
  retval.pins{end+1} = arduinoio.config.pin_info('D11', 11, { 'digital', 'i2c_sda' });
  retval.pins{end+1} = arduinoio.config.pin_info('D12', 12, { 'digital', 'pwm', 'i2c_scl' });
  retval.pins{end+1} = arduinoio.config.pin_info('D13', 13, { 'digital', 'uart1_rx' });
  retval.pins{end+1} = arduinoio.config.pin_info('D14', 14, { 'digital', 'uart1_tx' });
  retval.pins{end+1} = arduinoio.config.pin_info('A0', 15, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A1', 16, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A2', 17, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A3', 18, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A4', 19, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A5', 20, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A6', 21, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('D26', 26, { 'digital', 'spi1_mosi' });
  retval.pins{end+1} = arduinoio.config.pin_info('D27', 27, { 'digital', 'spi1_sck' });
  retval.pins{end+1} = arduinoio.config.pin_info('D28', 28, { 'digital', 'spi1_ss' });
  retval.pins{end+1} = arduinoio.config.pin_info('D29', 29, { 'digital', 'spi1_miso' });
  retval.pins{end+1} = arduinoio.config.pin_info('D32', 32, { 'digital', 'led' });
endfunction
