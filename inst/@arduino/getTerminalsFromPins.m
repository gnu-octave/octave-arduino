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
## @deftypefn {} {@var{pinnums} =} getTerminalsFromPins (@var{ar}, @var{pins})
## Get the terminal number for each pin.
##
## @var{ar} - connected arduino object
##
## @var{pins} - single pin name orcell or vector array of pin names.
##
## @var{pinnums} - pin number of each named pin. If the input was a single string, returns a number.
## if the input pins was a vector or cell araay, return a cell array of npin numbers corresponding
## to each input pin name.
##
## @seealso{arduino, getPinsFromTerminals}
## @end deftypefn

function retval = getTerminalsFromPins(obj, pins)

  if nargin != 2
    print_usage()
  endif

  if iscell (pins)
    retval = {};
    for i=1:numel(pins)
	    retval{end+1} = obj.get_pin(pins{i}).id;
    endfor
  elseif ischar(pins)
    retval = obj.get_pin(pins).id;
  elseif isvector (pins)
    retval = {};
    for i=1:numel(pins)
	    retval{end+1} = obj.get_pin(pins(i)).id;
    endfor
  else
    error ("getTerminalFromPins: expected pins as cell or string");
  endif
endfunction
