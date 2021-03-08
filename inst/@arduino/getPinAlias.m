## Copyright (C) 2021 John Donoghue <john.donoghue@ieee.org>
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
## @deftypefn {} {@var{ouy} =} getPinAlias (@var{ar}, @var{pin})
## Get the pin actual pin name from a pin alias.
##
## For example, the arduino Leonardo, pin "D4" is also "A6".
## 
## @subsubheading Inputs
## @var{ar} - the connected arduino object.
##
## @var{pin} - a pin name.
##
## @subsubheading Outputs
## @var{out} - alias pin name, or same as @var{pin} if the pin doesnt have any alias names.
##
## @seealso{arduino, configurePinResource, getResourceOwner}
## @end deftypefn

function retval = getPinAlias (obj, pin)

  if nargin != 2
    print_usage ()
  endif

  if !ischar(pin)
    error ("Expected pin name")
  endif

  p = obj.get_altpin(pin);

  if isempty(p)
    p = obj.get_pin(pin);
  endif

  retval = p.name;
endfunction

%!test
%! ar = arduino();
%! pin = getPinAlias(ar, "D0");
%! assert (toupper (pin), "D0");
%! clear a

