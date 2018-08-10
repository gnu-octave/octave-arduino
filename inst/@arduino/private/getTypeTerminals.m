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
## @deftypefn {} {@var{retval} =} getTypeTerminals (@var{ar}, @var{ar})
# Private function
## @end deftypefn

function retval = getTypeTerminals(obj, type)

    if nargin != 2
      print_usage()
    endif

    retval = {};

    for i=1:numel(obj.config.pins)
      pininfo = obj.config.pins{i};
      # strncmp do can patch spi from spiX_XX etc
      idx = find( cellfun(@(x) strncmpi(x, type, length(type)), pininfo.modes), 1);
      if !isempty(idx)
	      retval{end+1}=pininfo.id;
      endif
   endfor

endfunction
