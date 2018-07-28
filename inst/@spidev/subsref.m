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
## @deftypefn {} {@{val} = } subsref (@var{dev}, @{sub})
## subref for spidev
##
## @seealso{i2cdev}
## @end deftypefn

function val = subsref (p, s)
  if isempty(s)
    error ("spidev.subsref missing index");
  endif

  if s(1).type == "."
    fld = tolower(s.subs);
    switch (fld)
      case "pins"
	val = {}
	for i = 1:numel(p.pins)
	  val{end+1} = p.pins{i}.name; 
	endfor
      case "mode"
	val = p.mode;
      case "bitrate"
	val = p.bitrate;
      case "bitorder"
	val = p.bitorder;
      case "chipselectpin"
	val = p.chipselectpin;
      otherwise
	error ("spidev.subsref invalid property '%s'", fld);
    endswitch
  else
    error("unimplemented spidev.subsref type");
  endif
endfunction
