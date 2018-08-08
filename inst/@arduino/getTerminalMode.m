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
## @deftypefn {} {@var{mode} =} getTerminalMode (@var{ar}, @var{terminal})
## Get the mode of a pin allocated previously by configurePinResource.
##
## @var{ar} - connected arduino object
##
## @var{terminal} - terminal number to get owner of.
##
## @var{mode} = mode of the terminal pin, or "not_set" if not owned.
##
## @seealso{configurePinResource, getResourceOwner}
## @end deftypefn

function retval = getTerminalMode (obj, terminal)

  if nargin != 2
    print_usage ()
  endif

  pininfo = obj.get_pin (terminal);

  retval = pininfo.mode;
endfunction

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%! term = getTerminalsFromPins(ar, "d2");
%! configurePin(ar, "d2", "digitaloutput");
%! assert(getTerminalMode(ar, term), "digitaloutput");
%! configurePin(ar, "d2", "unset");
%! assert(getTerminalMode(ar, term), "unset");
