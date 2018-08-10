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
## Display spidev object.
##
## @seealso{spidev}
## @end deftypefn

function display (this)
  printf ("%s = \n", inputname (1));
  printf ("  arduino spidev object with fields of: \n\n");
  printf ("   chipselectpin = %s\n", this.chipselectpin);
  printf ("            mode = %d\n", this.mode);
  printf ("        bitorder = %s\n", this.bitorder);
  printf ("         bitrate = %d\n", this.bitrate);
  printf ("            pins = ");
  for i=1:numel(this.pins)
    printf("%s(%s) ", this.pins{i}.name, this.pins{i}.func)
  endfor
  printf("\n");
  printf("\n");
endfunction
