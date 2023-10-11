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
  retval.baudrate = 9600;
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
  retval.pins{end+1} = arduinoio.config.pin_info('D2', 2, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D3', 3, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D4', 4, { 'digital', 'pwm', 'interrupt' }); # D87
  retval.pins{end+1} = arduinoio.config.pin_info('D5', 5, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D6', 6, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D7', 7, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D8', 8, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D9', 9, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D10', 10, { 'digital', 'pwm', 'interrupt' }); # D77
  retval.pins{end+1} = arduinoio.config.pin_info('D11', 11, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D12', 12, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D13', 13, { 'digital', 'pwm' 'led_13', 'led', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D14', 14, { 'digital', 'uart3_tx', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D15', 15, { 'digital', 'uart3_rx', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D16', 16, { 'digital', 'uart2_tx', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D17', 17, { 'digital', 'uart2_rx', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D18', 18, { 'digital', 'uart1_tx', 'interrupt'});
  retval.pins{end+1} = arduinoio.config.pin_info('D19', 19, { 'digital', 'uart1_tx', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D20', 20, { 'digital', 'i2c0_sda', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D21', 21, { 'digital', 'i2c0_scl', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D22', 22, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D23', 23, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D24', 24, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D25', 25, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D26', 26, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D27', 27, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D28', 28, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D29', 29, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D30', 30, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D31', 31, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D32', 32, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D33', 33, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D34', 34, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D35', 35, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D36', 36, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D37', 37, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D38', 38, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D39', 39, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D40', 40, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D41', 41, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D42', 42, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D43', 43, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D44', 44, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D45', 45, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D46', 46, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D47', 47, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D48', 48, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D49', 49, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D50', 50, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D51', 51, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D52', 52, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D53', 53, { 'digital', 'interrupt' });
  # analogs
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

  retval.pins{end+1} = arduinoio.config.pin_info('D66', 66, { 'digital' }); # DAC0
  retval.pins{end+1} = arduinoio.config.pin_info('D67', 67, { 'digital' }); # DAC1
  retval.pins{end+1} = arduinoio.config.pin_info('D68', 68, { 'digital' }); # CANRX
  retval.pins{end+1} = arduinoio.config.pin_info('D69', 69, { 'digital' }); # CANTX
  retval.pins{end+1} = arduinoio.config.pin_info('D70', 70, { 'digital', 'i2c1_sda' });
  retval.pins{end+1} = arduinoio.config.pin_info('D71', 71, { 'digital', 'i2c1_scl' });
  retval.pins{end+1} = arduinoio.config.pin_info('D72', 72, { 'digital', 'led_rxl' });
  retval.pins{end+1} = arduinoio.config.pin_info('D73', 73, { 'digital', 'led_txl' });

  retval.pins{end+1} = arduinoio.config.pin_info('D74', 74, { 'digital', 'spi_miso' });
  retval.pins{end+1} = arduinoio.config.pin_info('D75', 75, { 'digital', 'spi_mosi' });
  retval.pins{end+1} = arduinoio.config.pin_info('D76', 76, { 'digital', 'spi_sck' });
  retval.pins{end+1} = arduinoio.config.pin_info('D77', 77, { 'digital', 'spi_ss' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D78', 78, { 'digital', 'spi_ss3' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D86', 86, { 'digital', 'spi_ss2' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D87', 87, { 'digital', 'spi_ss1' });
endfunction
