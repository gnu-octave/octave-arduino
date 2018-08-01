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
## @deftypefn {} {@var{retval} =} display (@var{register})
## Display the register object in a verbose way, 
##
## @var{register} - the arduino regsiter object created with shiftRegister.
##
## @seealso{shiftRegister}
## @end deftypefn

function retval = display (register)

  printf ("%s = \n", inputname (1));
  printf ("  arduino shift register object with fields of: \n");
  printf ("    model = ")
  disp(register.model);
  for i=1:numel(register.pins)
    pin = register.pins{i};
    printf ("    %s = %s\n", pin.func, pin.name)
  endfor
  #printf ("    clockpin = ")
  #disp(register.clockpin);
  #printf ("    resetpin = ")
  #disp(register.resetpin);
endfunction
