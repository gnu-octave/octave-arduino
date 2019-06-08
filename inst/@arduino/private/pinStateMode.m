## Copyright (C) 2018-2019 John Donoghue <john.donoghue@ieee.org>
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
## @deftypefn {} {@var{value} =} pinStateMode (@var{pinStateVal})
## Private function
## @end deftypefn

function [pstate, pmode]  = pinStateMode (pinStateVal)

  if ischar(pinStateVal)
    switch (tolower(pinStateVal))
      case "unset"
        pstate = 0; pmode="none";
      case "analoginput"
        pstate = 1; pmode = "analog";
      case "digitalinput"
        pstate = 2; pmode="digital";
      case "digitaloutput"
        pstate = 3; pmode="digital";
      case "pullup"
        pstate = 4; pmode = "digital";
      case "i2c"
        pstate = 5; pmode = "i2c";
      case "pwm"
        pstate = 6; pmode="pwm";
      case "servo"
        pstate = 7;  pmode="pwm";
      case "spi"
        pstate = 3;  pmode="spi"; % for now just setting as output
      case "interrupt"
        pstate = 2;  pmode="interrupt"; % for now just setting as input
      otherwise
        error ("unknown pin state %s", pinStateVal);
    endswitch
  else
     switch (pinStateVal)
      case 1
        pstate = "analoginput"; pmode="analog";
      case 2
        pstate = "digitalinput"; pmode="digital";
      case 3
        pstate = "digitaloutput"; pmode="digital";
      case 4
        pstate = "pullup"; pmode="digital";
      case 5
        pstate = "i2c"; pmode="i2c";
      case 6
        pstate = "pwm"; pmode="pwm";
      case 7
        pstate = "servo"; pmode="pwm";
      case 8
        pstate = "spi";  pmode="spi";
      case 9
        pstate = "interrupt";  pmode="interrupt";
      otherwise
        pstate = "unset"; pmode="";
    endswitch
  endif
endfunction
