## Copyright (C) 2023 John Donoghue <john.donoghue@ieee.org>
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
## @deftypefn {} {@var{retval} =} config_uno_wifi_r4 (@var{initdata})
## Private function for setting allowed modes of uno board pins
## @end deftypefn

function retval = config_uno_wifi_r4 (initdata)
  retval = {};

  retval.board = 'uno_wifi_r4';
  retval.mcu = 'Renesis RA4M1';
  retval.baudrate = 9600;
  retval.voltref = 0;
  retval.libs = {};
  retval.port = '';

  # info expected to be provided by config.
  retval.description = 'Arduino Uno WIFI R4 Board';

  # pin config
  retval.pins = {};
  retval.pins{end+1} = arduinoio.config.pin_info('D0', 0, { 'digital', 'uart2_tx' });
  retval.pins{end+1} = arduinoio.config.pin_info('D1', 1, { 'digital', 'uart2_rx' });
  retval.pins{end+1} = arduinoio.config.pin_info('D2', 2, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D3', 3, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D4', 4, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D5', 5, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D6', 6, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D7', 7, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D8', 8, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D9', 9, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D10', 10, { 'digital', 'spi_ss', 'can0_tx', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D11', 11, { 'digital', 'spi_mosi', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D12', 12, { 'digital', 'spi_miso' });
  retval.pins{end+1} = arduinoio.config.pin_info('D13', 13, { 'digital', 'led', 'spi_sck', 'can0_rx' });
  retval.pins{end+1} = arduinoio.config.pin_info('A0', 14, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A1', 15, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A2', 16, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A3', 17, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A4', 18, { 'digital', 'analog', 'i2c_sda' });
  retval.pins{end+1} = arduinoio.config.pin_info('A5', 19, { 'digital', 'analog', 'i2c_scl' });
  retval.pins{end+1} = arduinoio.config.pin_info('D20', 20, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D21', 21, { 'digital' });

  retval.pins{end+1} = arduinoio.config.pin_info('D22', 22, { 'uart1_tx' });
  retval.pins{end+1} = arduinoio.config.pin_info('D23', 23, { 'uart1_rx' });
  retval.pins{end+1} = arduinoio.config.pin_info('D24', 24, { 'uart3_tx' });
  retval.pins{end+1} = arduinoio.config.pin_info('D25', 25, { 'uart3_rx' });

  retval.pins{end+1} = arduinoio.config.pin_info('D26', 26, { 'i2c1_scl' });
  retval.pins{end+1} = arduinoio.config.pin_info('D27', 27, { 'i2c1_sda' });
endfunction
