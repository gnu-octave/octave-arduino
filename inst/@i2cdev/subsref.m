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
## subref for i2cdev
##
## @seealso{i2cdev}
## @end deftypefn

function val = subsref (p, s)
  if isempty(s)
    error ("i2cdev.subsref missing index");
  endif

  if s(1).type == "."
    fld = tolower(s(1).subs);
    switch (fld)
      case "pins"
	val = {};
	for i = 1:numel(p.pins)
	  val{end+1} = p.pins{i}.name; 
	endfor
      case "parent"
	val = p.arduinoobj;
      case "bus"
	val = p.bus;
      case "address"
	val = p.address;
      case "bitorder"
	val = p.bitorder;
      otherwise
	error ("i2cdev.subsref invalid property '%s'", fld);
    endswitch
  else
    error("unimplemented i2cdev.subsref type");
  endif
endfunction

%!test
%! ar = arduino();
%! i2c = i2cdev (ar, 0x22);
%! assert (isarduino(i2c.parent))
%! assert (i2c.address, 0x22)
%! assert (numel(i2c.pins) == 2)
%! fail ("i2c.invalid") 
