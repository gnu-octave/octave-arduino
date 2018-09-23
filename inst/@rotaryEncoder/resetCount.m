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
## @deftypefn {} reset (@var{obj})
## @deftypefnx {} reset (@var{obj}, @var{cnt})
## reset the rotary encoder count values
##
## @subsubheading Inputs
## @var{obj} - the rotaryEncoder object
##
## @var{cnt} - optional count value to reset to
##
## @seealso{rotaryEncoder, readCount}
## @end deftypefn

function resetCount(obj, cnt)
  persistent ARDUINO_ROTARYENCODER_RESETCOUNT = 0;

  if nargin < 2
    cnt = 0;
  endif

  if cnt < -32000 || cnt > 32000
    error ("@rotaryEncoder.resetCount: reset count out of supported range");
  endif

  cnt = uint16(cnt);

  [tmp, sz] = sendCommand(obj.parent, "rotaryencoder", ARDUINO_ROTARYENCODER_RESETCOUNT, [obj.id bitand(bitshift(cnt, -8),255) bitand(cnt,255)]);
endfunction

%!shared ar
%! ar = arduino ();

%!testif !isempty(find(cellfun(@(x) strcmp(x, "rotaryencoder"), ar.libraries()), 1))
%! e = rotaryEncoder(ar, "d2","d3");
%! resetCount(e);
%! resetCount(e, 10);
