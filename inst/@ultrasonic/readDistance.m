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
## @deftypefn {} {@var{distance} =} readDistance (@var{dev})
## Read the distance from a ultrasonic device
##
## @subsubheading Inputs
## @var{dev} - connected ultrasonic device opened using ultrasonic
##
## @subsubheading Outputs
## @var{distance} - distance value in meters from the ultrasonic device, or Inf if out of sensor range
##
## @seealso{arduino, ultrasonicdev}
## @end deftypefn

function out = readDistance (dev)
  persistent ARDUINO_ULTRASONIC_READ = 2;

  persistent endian;
  if isempty(endian)
    [~, ~, endian] = computer ();
  endif

  if nargin != 1
    print_usage ();
  endif

  [tmp, sz] = sendCommand (dev.parent, "ultrasonic", ARDUINO_ULTRASONIC_READ, [dev.id]);

  value = uint32(tmp(2))*(256*256*256) + uint32(tmp(3))*(256*256) + uint32(tmp(4))*256 + uint32(tmp(5));

  if value == 0 || value == 0xffffffff
    out = Inf;
  else
    out = double(value)*0.0344/2/100; % meters
  endif
endfunction

%!test
%! ar = arduino();
%! x = ultrasonic(ar, "d9");
%! v = readDistance(x);

%!error <'readDistance' undefined> readDistance()
