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
## @deftypefn {} {@var{retval} =} config_esp32_dev (@var{initdata})
## Private function for setting allowed modes of esp board pins
## @end deftypefn

# configuration generated from esp32/2.0.2/variants/esp32/pins_arduino.h
function retval = config_esp32_dev (initdata)
  retval = {};

  # default board info - must be provided
  # will be filled in on connection.
  retval.board = '';
  retval.mcu = 'eps32';
  retval.voltref = 0;
  retval.libs = {};
  retval.port = '';

  # info expected to be provided by config.
  retval.description = 'ESP32 Dev Module';

  # pin config
  retval.pins = {};
  retval.pins{end+1} = arduinoio.config.pin_info('D0', 0, { 'digital', 'pwm', 'interrupt', 'analog' }, {'a11'});
  retval.pins{end+1} = arduinoio.config.pin_info('D1', 1, { 'digital', 'pwm', 'uart0_tx', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D2', 2, { 'digital', 'pwm', 'interrupt', 'led', 'analog' }, {'a12'});
  retval.pins{end+1} = arduinoio.config.pin_info('D3', 3, { 'digital', 'pwm', 'uart0_rx', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D4', 4, { 'digital', 'pwm', 'interrupt', 'analog' }, {'a4'});
  retval.pins{end+1} = arduinoio.config.pin_info('D5', 5, { 'digital', 'pwm', 'interrupt', 'spi_ss' });
  # dont use
  #retval.pins{end+1} = arduinoio.config.pin_info('D6', 6, { 'digital', 'pwm', 'interrupt' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D7', 7, { 'digital', 'pwm', 'interrupt' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D8', 8, { 'digital', 'pwm', 'interrupt' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D9', 9, { 'digital', 'pwm', 'interrupt' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D10', 10, { 'digital', 'pwm', 'interrupt' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D11', 11, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D12', 12, { 'digital', 'pwm', 'interrupt', 'analog' }, {'a15'});
  retval.pins{end+1} = arduinoio.config.pin_info('D13', 13, { 'digital', 'pwm', 'interrupt', 'analog' }, {'a14'});
  retval.pins{end+1} = arduinoio.config.pin_info('D14', 14, { 'digital', 'pwm', 'interrupt', 'analog' }, {'a16'});
  retval.pins{end+1} = arduinoio.config.pin_info('D15', 15, { 'digital', 'pwm', 'interrupt', 'analog' }, {'a13'});
  retval.pins{end+1} = arduinoio.config.pin_info('D16', 16, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D17', 17, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D18', 18, { 'digital', 'pwm', 'interrupt', 'spi_sck' });
  retval.pins{end+1} = arduinoio.config.pin_info('D19', 19, { 'digital', 'pwm', 'interrupt', 'spi_miso' });

  #retval.pins{end+1} = arduinoio.config.pin_info('D20', 20, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D21', 21, { 'digital', 'pwm', 'interrupt', 'i2c_sda' });
  retval.pins{end+1} = arduinoio.config.pin_info('D22', 22, { 'digital', 'pwm', 'interrupt', 'i2c_scl' });
  retval.pins{end+1} = arduinoio.config.pin_info('D23', 23, { 'digital', 'pwm', 'interrupt', 'spi_mosi' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D24', 24, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D25', 25, { 'digital', 'pwm', 'interrupt', 'analog' }, {'a18'});
  retval.pins{end+1} = arduinoio.config.pin_info('D26', 26, { 'digital', 'pwm', 'interrupt', 'analog' }, {'a19'});
  retval.pins{end+1} = arduinoio.config.pin_info('D27', 27, { 'digital', 'pwm', 'interrupt', 'analog' }, {'a17'});
  #retval.pins{end+1} = arduinoio.config.pin_info('D28', 28, { 'digital', 'pwm', 'interrupt' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D29', 29, { 'digital', 'pwm', 'interrupt' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D30', 30, { 'digital', 'pwm', 'interrupt' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D31', 31, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D32', 32, { 'digital', 'pwm', 'interrupt', 'analog' }, {'a4'});
  retval.pins{end+1} = arduinoio.config.pin_info('D33', 33, { 'digital', 'pwm', 'interrupt', 'anolog' }, {'a5'});
  retval.pins{end+1} = arduinoio.config.pin_info('D34', 34, { 'digital', 'analog' }, {'a6'});
  retval.pins{end+1} = arduinoio.config.pin_info('D35', 35, { 'digital', 'analog' }, {'a7'});
  retval.pins{end+1} = arduinoio.config.pin_info('D36', 36, { 'digital', 'analog' }, {'a0'});
  retval.pins{end+1} = arduinoio.config.pin_info('D37', 37, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D38', 38, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D39', 39, { 'digital', 'analog' }, {'a3'});

%{
  analog are in the digital pins
  retval.pins{end+1} = arduinoio.config.pin_info('A0', 40, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A1', 41, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A2', 42, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A3', 43, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A4', 44, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A5', 45, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A6', 46, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A7', 47, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A8', 48, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A9', 49, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A10', 50, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A11', 51, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A12', 52, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A13', 53, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A14', 54, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A15', 55, { 'digital', 'analog' });
%}
endfunction
