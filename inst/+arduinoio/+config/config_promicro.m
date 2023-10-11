## Copyright (C) 2019-2021 John Donoghue <john.donoghue@ieee.org>
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
## @deftypefn {} {@var{retval} =} config_promicro (@var{initdata})
## Private function for setting allowed modes of promicro board pins
## @end deftypefn

function retval = config_promicro (initdata)
  retval = {};

  # default board info - must be provided
  # will be filled in on connection.
  retval.board = 'promicro';
  retval.baudrate = 9600;
  retval.mcu = '';
  retval.voltref = 0;
  retval.libs = {};
  retval.port = '';

  # info expected to be provided by config.
  retval.description = 'Arduino Pro Micro Board';

  # pin config
  retval.pins = {};
  retval.pins{end+1} = arduinoio.config.pin_info('D0', 0, { 'digital', 'uart1_rx' });
  retval.pins{end+1} = arduinoio.config.pin_info('D1', 1, { 'digital', 'uart1_tx' });
  retval.pins{end+1} = arduinoio.config.pin_info('D2', 2, { 'digital', 'i2c_sda', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D3', 3, { 'digital', 'i2c_scl', 'interrupt', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D4', 4, { 'digital' }, {"A6"}); # share A6
  retval.pins{end+1} = arduinoio.config.pin_info('D5', 5, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D6', 6, { 'digital', 'pwm' }, {"A7"}); # share A7
  retval.pins{end+1} = arduinoio.config.pin_info('D7', 7, { 'digital', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D8', 8, { 'digital' }, {"A8"}); # share A8
  retval.pins{end+1} = arduinoio.config.pin_info('D9', 9, { 'digital', 'pwm' }, {"A9"}); # share A9
  retval.pins{end+1} = arduinoio.config.pin_info('D10', 10, { 'digital', 'pwm' }, {"A10"}); # share A10

#  retval.pins{end+1} = arduinoio.config.pin_info('D11', 11, { 'digital', 'pwm' });
#  retval.pins{end+1} = arduinoio.config.pin_info('D12', 12, { 'digital' });
#  retval.pins{end+1} = arduinoio.config.pin_info('D13', 13, { 'digital', 'led', 'pwm' });

  retval.pins{end+1} = arduinoio.config.pin_info('D14', 14, { 'digital', 'spi_miso' });
  retval.pins{end+1} = arduinoio.config.pin_info('D15', 15, { 'digital', 'spi_sck' });
  retval.pins{end+1} = arduinoio.config.pin_info('D16', 16, { 'digital', 'spi_mosi' });
  retval.pins{end+1} = arduinoio.config.pin_info('D17', 17, { 'digital', 'spi_ss', 'led' });

  retval.pins{end+1} = arduinoio.config.pin_info('A0', 18, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A1', 19, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A2', 20, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A3', 21, { 'digital', 'analog' });

#  retval.pins{end+1} = arduinoio.config.pin_info('A4', 22, { 'digital', 'analog' });
#  retval.pins{end+1} = arduinoio.config.pin_info('A5', 23, { 'digital', 'analog' });

  retval.pins{end+1} = arduinoio.config.pin_info('D24', 24, { 'digital' }); # A6

  retval.pins{end+1} = arduinoio.config.pin_info('D30', 30, { 'digital', 'led' });
endfunction
