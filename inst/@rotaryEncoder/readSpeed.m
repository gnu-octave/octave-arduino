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
## @deftypefn {} {@var{speed} =} readSpeed (@var{obj})
## read rotational speed from the rotary encoder.
##
## @subsubheading Inputs
## @var{obj} - rotary encoder object created with rotaryEncoder call.
##
## @subsubheading Outputs
## @var{speed} - returned speed in revolutions per minute read from the encoder.
##
## @seealso{rotaryEncoder, resetCount}
## @end deftypefn

function value = readSpeed(obj, varargin)
  persistent ARDUINO_ROTARYENCODER_READSPEED = 3;

  # attempt to clock out precision bits
  [tmp, sz] = sendCommand(obj.parent, "rotaryencoder", ARDUINO_ROTARYENCODER_READSPEED, [obj.id]);
  value = typecast(uint16(tmp(2))*256 + uint16(tmp(3)), 'int16');
  value = (double(value)/1000.0)*60; # cnts per min
  if obj.ppr > 0
    value = value / obj.ppr;
  else
    value = 0;
  endif
endfunction

%!test
%! ar = arduino ();
%! e = rotaryEncoder(ar, "d2","d3");
%! readSpeed(e);
%! delete(e)
