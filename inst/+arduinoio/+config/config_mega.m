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
## @deftypefn {} {@var{retval} =} config_mega (@var{initdata})
## Private function for setting allowed modes of mega board pins
## @end deftypefn

function retval = config_mega (initdata)
  retval = [];

  # default board info - must be provided
  # will be filled in on connection.
  retval.board = '';
  retval.mcu = '';
  retval.voltref = 0;
  retval.libs = {};
  retval.port = '';

  # info expected to be provided by config.
  retval.description = 'Arduino Mega2560/1260 Board';

  # pin config
  retval.pins = {};
  retval.pins{end+1} = arduinoio.config.pin_info('D0', 0, { 'digital', 'uart' });
  retval.pins{end+1} = arduinoio.config.pin_info('D1', 1, { 'digital', 'uart' });
  retval.pins{end+1} = arduinoio.config.pin_info('D2', 2, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D3', 3, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D4', 4, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D5', 5, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D6', 6, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D7', 7, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D8', 8, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D9', 9, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D10', 10, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D11', 11, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D12', 12, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D13', 13, { 'digital', 'led', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D14', 14, { 'digital', 'uart3' });
  retval.pins{end+1} = arduinoio.config.pin_info('D15', 15, { 'digital', 'uart3' });
  retval.pins{end+1} = arduinoio.config.pin_info('D16', 16, { 'digital', 'uart2' });
  retval.pins{end+1} = arduinoio.config.pin_info('D17', 17, { 'digital', 'uart2' });
  retval.pins{end+1} = arduinoio.config.pin_info('D18', 18, { 'digital', 'uart1' });
  retval.pins{end+1} = arduinoio.config.pin_info('D19', 19, { 'digital', 'uart1' });
  retval.pins{end+1} = arduinoio.config.pin_info('D20', 20, { 'digital', 'i2c_sda' });
  retval.pins{end+1} = arduinoio.config.pin_info('D21', 21, { 'digital', 'i2c_scl' });
  retval.pins{end+1} = arduinoio.config.pin_info('D22', 22, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D23', 23, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D24', 24, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D25', 25, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D26', 26, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D27', 27, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D28', 28, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D29', 29, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D30', 30, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D31', 31, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D32', 32, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D33', 33, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D34', 34, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D35', 35, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D36', 36, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D37', 37, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D38', 38, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D39', 39, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D40', 40, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D41', 41, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D42', 42, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D43', 43, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D44', 44, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D45', 45, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D46', 46, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D47', 47, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D48', 48, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D49', 49, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D50', 50, { 'digital', 'spi_miso' });
  retval.pins{end+1} = arduinoio.config.pin_info('D51', 51, { 'digital', 'spi_mosi' });
  retval.pins{end+1} = arduinoio.config.pin_info('D52', 52, { 'digital', 'spi_sck' });
  retval.pins{end+1} = arduinoio.config.pin_info('D53', 53, { 'digital', 'spi_ss' });
  retval.pins{end+1} = arduinoio.config.pin_info('A0', 54, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A1', 55, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A2', 56, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A3', 57, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A4', 58, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A5', 59, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A6', 60, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A7', 61, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A8', 62, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A9', 63, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A10', 64, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A11', 65, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A12', 66, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A13', 67, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A14', 68, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A15', 69, { 'digital', 'analog' });
endfunction
