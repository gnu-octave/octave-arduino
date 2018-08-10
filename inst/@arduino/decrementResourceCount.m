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
## @deftypefn {} {@var{count} =} decrementResourceCount (@var{ar}, @var{resource})
## Decrement the @var{count} value of a a named resource by 1 and return the
## new count
##
## @var{ar} - connected arduino object
##
## @var{resource} - name of resource to decrement count.
##
## @var{count} = count of uses registered to resource.
##
## @seealso{getResourceCount. incrementResourceCount}
## @end deftypefn

function retval = decrementResourceCount (ar, resource)
  
  if nargin != 2
    print_usage ();
  endif

  if !ischar (resource)
    error ("@arduino.decrementResourceCount: expects resource name");
  endif

  resinfo = ar.get_resource (resource);
  if resinfo.count == 0
    error ("@arduino.decrementResourceCount: resource count is 0");
  endif

  resinfo.count --;
  ar.set_resource (resource, resinfo);
  retval = resinfo.count;
endfunction

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%! assert(getResourceCount(ar,"notusedname"), 0);
%! assert(incrementResourceCount(ar,"notusedname"), 1);
%! assert(getResourceCount(ar,"notusedname"), 1);
%! assert(decrementResourceCount(ar,"notusedname"), 0);
%! assert(getResourceCount(ar,"notusedname"), 0);
