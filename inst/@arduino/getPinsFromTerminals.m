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
## @deftypefn {} {@var{pinnames} =} getPinsFromTerminals (@var{ar}, @var{terminals})
## Get the pin names from the input terminal values.
## 
## @var{ar} - the connected arduino object.
## @var{terminals} - the numeric pin number, or array of pin numbers to get pin names.
## @var{pinnames} - the string names of each input pin. If terminals was a signle value, the return
## will be a single string, otherwise it will return a cell array of each pin name.
## @seealso{arduino, getTerminalsFromPins}
## @end deftypefn

function retval = getPinsFromTerminals(obj, terminals)

  if nargin != 2
    print_usage()
  endif

  if iscell (terminals)
    retval = {};
    for i=1:numel(terminals)
      retval{end+1} = obj.get_pin(terminals{i}).name;
    endfor
  elseif isvector (terminals) && numel (terminals) == 1
    retval = obj.get_pin(terminals).name;
  elseif isvector (terminals)
    retval = {};
    for i=1:numel(terminals)
      retval{end+1} = obj.get_pin(terminals(i)).name;
    endfor
  elseif isnumeric(terminals)
      retval = obj.get_pin(terminals).name;
  else
    error ("getPinsFromTerminals: expected terminals as vector");
  endif
endfunction

%!shared ar
%! ar = arduino();

%!assert(!isempty(ar));

%!test
%! terms = getPinsFromTerminals(ar, 0);
%! # terminal 0 is alwars D0 ?
%! assert(ischar(terms));
%! assert(toupper(terms), "D0");

%!test
%! terms = getPinsFromTerminals(ar, [0 2]);
%! assert(numel(terms), 2);
%! assert(iscell(terms));
%! assert(ischar(terms{1}));
%! assert(toupper(terms{1}), "D0");
%! assert(toupper(terms{2}), "D2");

