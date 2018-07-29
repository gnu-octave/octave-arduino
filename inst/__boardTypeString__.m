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
## GNU General Public License for more details. see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =}  __boardTypeString__ (@var{type})
## Private function to set convert board id to a (lowercase) string
## @end deftypefn

function retval = __boardTypeString__ (id)

  if nargin != 1
    error ('expected id');
  endif
  if ~isnumeric (id)
    error ('expected id as a number');
  endif
  if ischar (id)
    id = int (id);
  endif

  # TODO: instead of hard coded here, could we scan the conf_ boards ?

  switch (id)
    case 0
      retval = "uno";
    otherwise
      retval = "unknown";
  endswitch

endfunction

%!test
%! assert(__boardTypeString__ (0), "uno")
%! assert(__boardTypeString__ (-1), "unknown")
