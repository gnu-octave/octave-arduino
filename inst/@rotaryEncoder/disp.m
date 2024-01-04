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

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} disp (@var{obj})
## Display the rotary encoder object in a verbose way, 
##
## @subsubheading Inputs
## @var{obj} - the arduino rotary encoder object created with rotaryEncoder
##
## @seealso{rotaryEncoder}
## @end deftypefn

function retval = disp (obj)

  printf ("  arduino rotary object with fields of: \n");
  printf ("    pulsesperrevolution = ")
  disp(obj.ppr);
  for i=1:numel(obj.pins)
    pin = obj.pins{i};
    printf ("    %s = %s\n", pin.func, pin.name)
  endfor
endfunction
