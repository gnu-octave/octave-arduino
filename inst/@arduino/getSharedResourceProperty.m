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
## @deftypefn {} {@var{count} =} getSharedResourceProperty (@var{ar}, @var{resource}, @var{property})
## Get the value of a property from a given resource.
##
## @subsubheading Inputs
## @var{ar} - connected arduino object
##
## @var{resource} - name of resource to get property for.
##
## @var{property} - name of property from the resource.
##
## @subsubheading Outputs
## @var{propvalue} - value of the property
##
## @seealso{getResourceCount, setSharedResourceProperty}
## @end deftypefn

function retval = getSharedResourceProperty (ar, resource, propname)
  
  if nargin != 3
    print_usage ();
  endif

  if !ischar(resource)
    error ("getSharedResourceProperty: expects resource name");
  endif

  if !ischar(propname)
    error ("getSharedResourceProperty: expects resource property name");
  endif

  resinfo = ar.get_resource(resource);
  retval =  resinfo.props.(tolower(propname));
endfunction

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%! setSharedResourceProperty(ar, "notusedname", "propname", 16);
%! assert(getSharedResourceProperty(ar,"notusedname", "propname"), 16);
