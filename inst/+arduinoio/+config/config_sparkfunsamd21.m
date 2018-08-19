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
## @deftypefn {} {@var{retval} =} config_sparkfunsamd21 (@var{initdata})
## Private function for setting allowed modes of sparkfun samd21 mini/dev board pins
## @end deftypefn

function retval = config_sparkfunsamd21 (initdata)
  retval = {};

  # default board info - must be provided
  # will be filled in on connection.
  retval.board = '';
  retval.board = '';
  retval.mcu = 'samd21';
  retval.voltref = 3.3;
  retval.libs = {};
  retval.port = '';

  # info expected to be provided by config.
  retval.description = 'Sparkfun SAMD21 Dev/Mini Board';

  # pin config
  retval.pins = {};
  retval.pins{end+1} = arduinoio.config.pin_info('D0', 0, { 'digital', 'i2s_fs', 'uart' });
  retval.pins{end+1} = arduinoio.config.pin_info('D1', 1, { 'digital', 'i2s_sck', 'uart' });
  retval.pins{end+1} = arduinoio.config.pin_info('D2', 2, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D3', 3, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D4', 4, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D5', 5, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D6', 6, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D7', 7, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D8', 8, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D9', 9, { 'digital', 'i2s_sd', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D10', 10, { 'digital', 'spi_ss', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D11', 11, { 'digital', 'spi_mosi', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D12', 12, { 'digital', 'spi_miso', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D13', 13, { 'digital', 'led_13', 'spi_sck', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('A0', 14, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A1', 15, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A2', 16, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A3', 17, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A4', 18, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A5', 19, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('D20', 20, { 'digital', 'i2c_sda' });
  retval.pins{end+1} = arduinoio.config.pin_info('D21', 21, { 'digital', 'i2c_scl' });
  # pins 22-24 ??
  retval.pins{end+1} = arduinoio.config.pin_info('D25', 25, { 'digital', 'led_rxl' });
  retval.pins{end+1} = arduinoio.config.pin_info('D26', 26, { 'digital', 'led_txl' });
endfunction
