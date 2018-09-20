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
## @deftypefn {} {} setSharedResourceProperty (@var{ar}, @var{resource}, @var{propname}, @var{propvalue})
## @deftypefnx {} {} setSharedResourceProperty (@var{ar}, @var{resource}, @var{propname}, @var{propvalue}, __)
## Set propery values for a given resource.
##
## @subsubheading Inputs
## @var{ar} - connected arduino object
##
## @var{resource} - name of resource to get property for.
##
## @var{propname} - name of property from the resource.
##
## @var{propvalue} - value of property from the resource.
##
## Multiple @var{propname}, @var{propvalue} pairs can be given.
##
## @subsubheading Outputs
## None
##
## @seealso{getSharedResourceProperty}
## @end deftypefn

function setSharedResourceProperty (varargin)
  
  if nargin < 4
    print_usage ();
  endif

  if mod(nargin, 2) != 0
    error ("{getSharedResourceProperty: expected property name, value pairs");
  endif

  if !iscellstr (varargin(3:2:nargin))
    error ("{getSharedResourceProperty: expected property names to be strings");
  endif

  ar = varargin{1};
  resource = varargin{2};

  if !ischar(resource)
    error ("getSharedResourceProperty: expects resource name");
  endif

  resinfo = ar.get_resource(resource);
  for i = 3:2:nargin
    propname = tolower(varargin{i});
    propvalue = varargin{i+1};
    resinfo.props.(propname) = propvalue;
  endfor
  ar.set_resource(resource, resinfo);
endfunction

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%! setSharedResourceProperty(ar, "notusedname", "propname1", 16);
%! setSharedResourceProperty(ar, "notusedname", "propname2", 32);
%! assert(getSharedResourceProperty(ar,"notusedname", "propname1"), 16);
%! setSharedResourceProperty(ar, "notusedname", "propname1", []);
%! assert(getSharedResourceProperty(ar,"notusedname", "propname1"), []);
