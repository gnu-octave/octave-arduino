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
## @deftypefn {} {@var{val} = } subsasgn (@var{dev}, @var{sub})
## subsasgn for device
##
## @seealso{device}
## @end deftypefn

function this = subsasgn (this, s, val)
  if isempty(s)
    error ("device.subsasgn missing index");
  endif

  if strcmp(this.interface, "Serial")
    if s(1).type == "."
      fld = tolower(s(1).subs);
      switch (fld)
        case "timeout"
          if !isnumeric(val) || val < 0 || val > 8
	     error ("expected numeric time out between 0 to 8 seconds", fld);
	  endif
	  this.device.timeout = val;
        otherwise
	  error ("device.subsasgn invalid or readonly property '%s'", fld);
      endswitch
    else
      error("unimplemented device.subsasgn type");
    endif
  else
      error("unimplemented device.subsasgn device");
  endif
endfunction

