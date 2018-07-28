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
## @deftypefn {} {} display (@var{dev})
## Display i2cdev object.
##
## @seealso{i2cdev}
## @end deftypefn

function display (p)
  printf ("%s = \n", inputname (1));
  printf ("  arduino i2cdev object with fields of: \n\n");
  printf ("         address = %d (0x%02X)\n", p.address, p.address);
  printf ("             bus = %d\n", p.bus);
  printf ("        bitorder = %s\n", p.bitorder);
  printf ("            pins = ");
  for i=1:2
    printf("%s(%s) ", p.pins{i}.name, p.pins{i}.func)
  endfor
  printf("\n");
  % Mode, Bitrate, Bitorder
  printf ("\n");
endfunction
