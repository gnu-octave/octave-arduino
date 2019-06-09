## Copyright (C) 2019 John Donoghue <john.donoghue@ieee.org>
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
## subref for ultrasonic
##
## @seealso{ultrasonic}
## @end deftypefn

function val = subsref (p, s)
  if isempty(s)
    error ("ultrasonic.subsref missing index");
  endif

  if s(1).type == "."
    fld = tolower(s(1).subs);
    switch (fld)
      case "pins"
	val = {};
	for i = 1:numel(p.pins)
	  val{end+1} = p.pins{i}.name; 
	endfor
      case "outputformat"
	val = p.outputformat;
      case "parent"
	val = p.parent;
      case "triggerpin"
	val = p.pins{1}.name;
      case "echopin"
	if numel(p.pins) > 1
	  val = p.pins{2}.name;
	else
	  val = [];
	endif
      otherwise
	error ("ultrasonic.subsref invalid property '%s'", fld);
    endswitch
  else
    error("unimplemented ultrasonic.subsref type");
  endif

  if (numel (s) > 1)
    val = subsref (val, s(2:end));
  endif
endfunction

%!test
%! ar = arduino();
%! x = ultrasonic (ar, "d2", "d3");
%! assert (isarduino(x.parent))
%! assert (x.triggerpin, "d2")
%! assert (x.echopin, "d3")
%! assert (numel(x.pins) == 2)
%! fail ("x.invalid") 
