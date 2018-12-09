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
## subref for servo
##
## @seealso{servo}
## @end deftypefn

function val = subsref (p, s)
  if isempty(s)
    error ("servo.subsref missing index");
  endif

  if s(1).type == "."
    fld = tolower(s(1).subs);
    switch (fld)
      case "pins"
	val = {};
	for i = 1:numel(p.pins)
	  val{end+1} = p.pins{i}; 
	endfor
      case "parent"
	val = p.arduinoobj;
      case "minpulseduration"
	val = p.minpulseduration;
      case "maxpulseduration"
	val = p.maxpulseduration;
      case "parent"
	val = p.arduinoobj;
      otherwise
	error ("servo.subsref invalid property '%s'", fld);
    endswitch
  else
    error("unimplemented servo.subsref type");
  endif

  if (numel (s) > 1)
    val = subsref (val, s(2:end));
  endif
endfunction

%!test
%! ar = arduino();
%! s = servo (ar, "d9");
%! assert (isarduino(s.parent))
%! assert (ar.port, s.parent.port)
%! assert(s.minpulseduration > 0);
%! assert(s.maxpulseduration > 0);
%! assert (numel(s.pins) == 1)
%! fail ("s.invalid") 
