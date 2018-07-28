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
## @deftypefn {} {@var{pinlist} =} getPWMTerminals (@var{ar})
## Get a cell list of pin Ids available are used for PWM mode.
##
## @var{ar} - the arduino object.
##
## @var{pinlist} - cell list of pin numbers available for PWM use.
##
## @seealso{arduino}
## @end deftypefn

function retval = getPWMTerminals(obj)

  if nargin != 1
    print_usage()
  endif

  retval = getTypeTerminals(obj, "pwm");

endfunction

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%! terms = getPWMTerminals(ar);
%! assert (numel(terms) > 0)

