## Copyright (C) 2021 John Donoghue <john.donoghue@ieee.org>
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
## @deftypefn {} {@var{retval} =} config_due (@var{initdata})
## Private function for setting allowed modes of due board pins
## @end deftypefn

function retval = config_due (initdata)
  retval = {};

  # default board info - must be provided
  # will be filled in on connection.
  retval.board = '';
  retval.board = '';
  retval.mcu = 'cortex-m3';
  retval.voltref = 3.3;
  retval.libs = {};
  retval.port = '';

  # info expected to be provided by config.
  retval.description = 'Arduino Due Board';

  # pin config
  retval.pins = {};
  retval.pins{end+1} = arduinoio.config.pin_info('D0', 0, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D1', 1, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D2', 2, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D3', 3, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D4', 4, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D5', 5, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D6', 6, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D7', 7, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D8', 8, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D9', 9, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D10', 10, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D11', 11, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D12', 12, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D13', 13, { 'digital', 'led_13', 'led' });
  retval.pins{end+1} = arduinoio.config.pin_info('D14', 14, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D15', 15, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D16', 16, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D17', 17, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D18', 18, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D19', 19, { 'digital' });
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
  retval.pins{end+1} = arduinoio.config.pin_info('D44', 44, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D45', 45, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D46', 46, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D47', 47, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D48', 48, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D49', 49, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D50', 50, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D51', 51, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D52', 52, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D53', 53, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D54', 54, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D55', 55, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D56', 56, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D57', 57, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D58', 58, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D59', 59, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D60', 60, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D61', 61, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D62', 62, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D63', 63, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D64', 64, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D65', 65, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('A0', 66, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A1', 67, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A2', 68, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A3', 69, { 'digital', 'analog' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D70', 70, { 'digital', 'wire1_sda' });
  retval.pins{end+1} = arduinoio.config.pin_info('A4', 70, { 'digital', 'analog' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D71', 71, { 'digital', 'wire1_scl' });
  retval.pins{end+1} = arduinoio.config.pin_info('A5', 71, { 'digital', 'analog' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D72', 72, { 'digital', 'led_rxl' });
  retval.pins{end+1} = arduinoio.config.pin_info('A6', 72, { 'digital', 'analog' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D73', 73, { 'digital', 'led_txl' });
  retval.pins{end+1} = arduinoio.config.pin_info('A7', 73, { 'digital', 'analog' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D74', 74, { 'digital', 'spi_miso' });
  retval.pins{end+1} = arduinoio.config.pin_info('A8', 74, { 'digital', 'analog' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D75', 75, { 'digital', 'spi_mosi' });
  retval.pins{end+1} = arduinoio.config.pin_info('A9', 75, { 'digital', 'analog' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D76', 76, { 'digital', 'spi_sck' });
  retval.pins{end+1} = arduinoio.config.pin_info('A10', 76, { 'digital', 'analog' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D77', 77, { 'digital', 'spi_ss0' });
  retval.pins{end+1} = arduinoio.config.pin_info('A11', 77, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('D78', 78, { 'digital', 'spi_ss3' });
  retval.pins{end+1} = arduinoio.config.pin_info('D86', 86, { 'digital', 'spi_ss2' });
  retval.pins{end+1} = arduinoio.config.pin_info('D87', 87, { 'digital', 'spi_ss1' });
endfunction
