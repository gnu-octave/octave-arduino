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
## @deftypefn {} {@var{pinlist} =} getI2CTerminals (@var{ar})
## Get a cell list of pin Ids available are used for I2C mode.
##
## @var{ar} - the arduino object.
##
## @var{pinlist} - cell list of pin numbers available for I2C use.
##
## @seealso{arduino}
## @end deftypefn

function retval = getI2CTerminals(obj)

  if nargin != 1
    print_usage()
  endif

  retval = getTypeTerminals(obj, "i2c");

endfunction

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%! terms = getI2CTerminals(ar);
%! assert (numel(terms) > 0)
%! # should be pairs of i2c pins
%! assert (mod(numel(terms),2), 0)
