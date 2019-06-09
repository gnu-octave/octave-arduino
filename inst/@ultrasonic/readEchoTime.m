## Copyright (C) 2019 John Donoghue <john.donoghue@ieee.org>
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

## -*- texinfo -*- 
## @deftypefn {} {@var{time} =} readEchoTime (@var{dev})
## Measure the time for waves to reflect back to the ultrasonic device
##
## @subsubheading Inputs
## @var{dev} - connected ultrasonic device opened using ultrasonic()
##
## @subsubheading Outputs
## @var{time} - time in seconds, or Inf if out of sensor range
##
## @seealso{arduino, ultrasonic}
## @end deftypefn

function out = readEchoTime (dev)
  persistent ARDUINO_ULTRASONIC_READ = 2;

  if nargin != 1
    print_usage ();
  endif

  precision = dev.outputformat;

  [tmp, sz] = sendCommand (dev.parent, "ultrasonic", ARDUINO_ULTRASONIC_READ, [dev.id]);

  value = uint32(tmp(2))*(256*256*256) + uint32(tmp(3))*(256*256) + uint32(tmp(4))*256 + uint32(tmp(5));

  if value == 0 || value == 0xffffffff
    out = Inf;
  else
    # seconds
    out = double(value)/1000000.0;
  endif
  # TODO precision can be double or duration - currently octave doesnt know duration
endfunction

%!test
%! ar = arduino();
%! x = ultrasonic(ar, "d9");
%! v = readEchoTime(x);

%!error <'readEchoTime' undefined> readEchoTime()
