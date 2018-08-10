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
## Display servo object.
##
## @seealso{servo}
## @end deftypefn

function display (this)
  printf ("%s = \n", inputname (1));
  printf ("  arduino servo object with fields of: \n\n");
  printf ("                pins = %s\n", this.pins{1}.name );
  printf ("    minpulseduration = %f\n", this.minpulseduration);
  printf ("    maxpulseduration = %f\n", this.maxpulseduration);
endfunction
