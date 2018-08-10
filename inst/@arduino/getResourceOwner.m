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
## @deftypefn {} {@var{owner} =} getResourceOwner (@var{ar}, @var{terminal})
## Get the owner of pin allocated previously by configurePinResource.
##
## @var{ar} - connected arduino object
##
## @var{terminal} - terminal number to get owner of.
##
## @var{owner} = owner of the terminal pin, or "" if not owned.
##
## @seealso{configurePinResource}
## @end deftypefn

function retval = getResourceOwner (obj, terminal)
  
  if nargin != 2
    print_usage ();
  endif

  # note: matlab expects a number only - we will use either if or pin name
  if !ischar(terminal) && !isnumeric(terminal)
    error ("getResourceOwner: expects terminal id or pin name");
  endif

  pininfo = obj.get_pin(terminal);
  
  retval = pininfo.owner;
endfunction

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%! configurePin(ar, "d2", "digitaloutput");
%! assert(getResourceOwner(ar,"d2"), "digital");

