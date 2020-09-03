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
## @deftypefn {} {[@var{count}, @var{time}] =} readCount (@var{obj})
## @deftypefnx {} {[@var{count}, @var{time}] =} readCount (@var{obj}, @var{name}, @var{value})
## read count value from the rotary encoder.
##
## subsubheading Inputs
## @var{obj} - rotary encoder object created with rotaryEncoder call.
##
## @var{name}, @var{value} - optional name,value pairs
##
## Valid option name pairs currently are:
## @table @asis
## @item reset
## Reset the count after reading (if true)
## @end table
##
## @subsubheading Outputs
## @var{count} - returned count read from the encoder.
##
## @var{time} - seconds since arduino started
##
## @seealso{rotaryEncoder, resetCount}
## @end deftypefn

function [value, time] = readCount(obj, reset, resetvalue)
  persistent ARDUINO_ROTARYENCODER_READCOUNT = 2;

  if nargin != 1 && nargin != 3
    error ("arduino: expected rotaryencoder object and optional property name, value pairs");
  endif

  if nargin != 3
    reset = "reset";
    resetvalue = false;
  endif

  if !strcmpi (reset, "reset")
    error ("arduino: expected property name of 'reset'");
  endif
  if !(isnumeric(resetvalue) || islogical(resetvalue)) || (resetvalue != 0 && resetvalue != 1)
    error ("arduino: expected resetvalue of 0 or 1");
  endif
 
  # attempt to clock out precision bits
  [tmp, sz] = sendCommand(obj.parent, "rotaryencoder", ARDUINO_ROTARYENCODER_READCOUNT, [obj.id resetvalue]);
  value = typecast(uint16(tmp(2))*256 + uint16(tmp(3)), 'int16');

  time = uint32(tmp(4))*(256*256*256) + uint32(tmp(5))*(256*256) + uint32(tmp(6))*256 + uint32(tmp(7));
  time = double(time)/1000.0;
endfunction

%!test
%! ar = arduino ();
%! e = rotaryEncoder(ar, "d2","d3");
%! readCount(e);
%! readCount(e, "reset", 0);
%! readCount(e, "reset", 1);
%! readCount(e, "reset", true);
%! delete(e)

%!error readCount();
