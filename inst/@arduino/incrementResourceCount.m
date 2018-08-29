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
## @deftypefn {} {@var{count} =} incrementResourceCount (@var{ar}, @var{resource})
## Increment the count value of a named resource by 1 and return the
## new count
##
## @subsubheading Inputs
## @var{ar} - connected arduino object
##
## @var{resource} - name of resource to increment count.
##
## @subsubheading Outputs
## @var{count} = count of uses registered to resource.
##
## @seealso{getResourceCount. decrementResourceCount}
## @end deftypefn

function retval = incrementResourceCount (ar, resource)
  
  if nargin != 2
    print_usage ();
  endif

  if !ischar (resource)
    error ("@arduino.getResourceCount: expects resource name");
  endif

  resinfo = ar.get_resource (resource);
  resinfo.count ++;
  ar.set_resource (resource, resinfo);
  retval = resinfo.count;
endfunction

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%! assert(getResourceCount(ar,"notusedname"), 0);
%! assert(incrementResourceCount(ar,"notusedname"), 1);
%! assert(getResourceCount(ar,"notusedname"), 1);
%! assert(incrementResourceCount(ar,"notusedname"), 2);
