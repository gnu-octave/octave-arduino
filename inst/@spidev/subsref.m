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
## subref for spidev
##
## @seealso{spidev}
## @end deftypefn

function val = subsref (this, s)
  if isempty(s)
    error ("spidev.subsref missing index");
  endif

  if s(1).type == "."
    fld = tolower(s(1).subs);
    switch (fld)
      case "pins"
	val = {};
	for i = 1:numel(this.pins)
	  val{end+1} = this.pins{i}.name; 
	endfor
      case "mode"
	val = this.mode;
      case "bitrate"
	val = this.bitrate;
      case "bitorder"
	val = this.bitorder;
      case "chipselectpin"
	val = this.chipselectpin;
      otherwise
	error ("spidev.subsref invalid property '%s'", fld);
    endswitch
  else
    error("unimplemented spidev.subsref type");
  endif

  if (numel (s) > 1)
    val = subsref (val, s(2:end));
  endif

endfunction
