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
## @deftypefn {} {@var{val} = } subsref (@var{dev}, @var{sub})
## subref for shiftRegister
##
## @seealso{shiftRegister}
## @end deftypefn

function val = subsref (p, s)
  if isempty(s)
    error ("shiftRegister.subsref missing index");
  endif

  if s(1).type == "."
    fld = tolower(s.subs);
    switch (fld)
      case "pins"
	val = {};
	for i = 1:numel(p.pins)
	  val{end+1} = p.pins{i}.name; 
	endfor
      case "parent"
	val = p.parent;
      case "model"
	val = p.model;
      otherwise
	error ("shiftRegister.subsref invalid property '%s'", fld);
    endswitch
  else
    error("unimplemented shiftRegister.subsref type");
  endif
endfunction

%!test
%! ar = arduino();
%! r = shiftRegister(ar, '74hc164', "d2", "d3");
%! assert (isarduino(r.parent))
%! assert (r.model, "74HC164")
%! assert (numel(r.pins) == 2)
%! fail ("r.invalid") 
