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
## @deftypefn {} {@var{count} =} getResourceCount (@var{ar}, @var{resource})
## Get the @var{count} of uses of @var{resource}.
##
## @var{ar} - connected arduino object
##
## @var{resource} - name of resource to get count for.
##
## @var{count} = count of uses registered to resource.
##
## @seealso{incrementResourceCount. decrementResourceCount}
## @end deftypefn

function retval = getResourceCount (ar, resource)
  
  if nargin != 2
    print_usage ();
  endif

  if !ischar(resource)
    error ("getResourceCount: expects resource name");
  endif

  resinfo = ar.get_resource(resource);
  retval =  resinfo.count;
endfunction

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%! assert(getResourceCount(ar,"notusedname"), 0);
