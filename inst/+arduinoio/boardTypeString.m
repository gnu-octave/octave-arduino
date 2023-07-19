## Copyright (C) 2018-2021 John Donoghue <john.donoghue@ieee.org>
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details. see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =}  __boardTypeString__ (@var{type})
## Helper function to set convert board id to a (lowercase) string
## @end deftypefn

function retval = boardTypeString (id)

  if nargin != 1
    error ('expected id');
  endif
  if ~isnumeric (id)
    error ('expected id as a number');
  endif
  if ischar (id)
    id = int (id);
  endif

  switch (id)
    case 0
      retval = "uno";
    case 1
      retval = "mega2560";
    case 2
      retval = "nano";
    case 5
      retval = "uno_wifi_r2";
    case 6
      retval = "nano_every";
    case 10
      retval = "lilypad";
    case 20
      retval = "promini";
    case 21
      retval = "promicro";
    case 22
      retval = "leonardo";
    case 23
      retval = "micro";
    #case 40
    #  retval = "zero";
    case 41
      retval = "sparkfunsamd21";
    case 45
      retval = "due";
    case 50
      retval = "mkrzero";
    case 51
      retval = "mkr1000";
    case 60
      retval = "nano_33_ble";
    case 100
      retval = "raspi_pico";
    case 101
      retval = "nano_rp2040_connect";
    case 111
      retval = "esp32_dev";
    case 112
      retval = "uno_wifi_r4";
    case 113
      retval = "uno_minima_r4";
    otherwise
      retval = "unknown";
  endswitch

endfunction

%!test
%! assert(arduinoio.boardTypeString (0), "uno")
%! assert(arduinoio.boardTypeString (1), "mega2560")
%! assert(arduinoio.boardTypeString (10), "lilypad")
%! assert(arduinoio.boardTypeString (-1), "unknown")
