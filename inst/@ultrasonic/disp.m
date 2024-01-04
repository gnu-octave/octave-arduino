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
## @deftypefn {} {} disp (@var{dev})
## Display ultrasonic object.
##
## @subsubheading Inputs
## @var{dev} - ultrasonic object to display
##
## @seealso{ultrasonic}
## @end deftypefn

function disp (this)
  printf ("  arduino ultrasonic object with fields of: \n\n");
  printf ("   triggerpin = %s\n", this.pins{1}.name);
  if numel(this.pins) > 1
  printf ("   echopin = %s\n", this.pins{2}.name);
  endif
  printf("\n");
endfunction
