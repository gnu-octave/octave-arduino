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
## @deftypefnx {} {@var{pinlist} =} getI2CTerminals (@var{ar}, @var{bus})
## Get a cell list of pin Ids available are used for I2C mode.
##
## @subsubheading Inputs
## @var{ar} - the arduino object.
##
## @var{bus} - optional bus number 0 or 1 for boards that support more than 1 bus.
##
## @subsubheading Outputs
## @var{pinlist} - cell list of pin numbers available for I2C use.
##
## @seealso{arduino}
## @end deftypefn

function retval = getI2CTerminals (obj, bus)

  if nargin < 1 || nargin > 2
    print_usage()
  endif

  if nargin < 2
    bus = 0;
  endif

  retval = getTypeTerminals(obj, sprintf("i2c%d", bus));
  if isempty(retval) && bus == 0
    retval = getTypeTerminals(obj, "i2c");
  endif

endfunction

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%! terms = getI2CTerminals(ar);
%! assert (numel(terms) > 0)
%! # should be pairs of i2c pins
%! assert (mod(numel(terms),2), 0)
