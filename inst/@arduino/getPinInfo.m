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
## @deftypefn {} {@var{pininfo} =} getPinInfo (@var{ar}, @var{pin})
## @deftypefnx {} {@var{pininfoarray} =} getPinInfo (@var{ar}, @var{pinarray})
## Get the pin information from the input pins values.
##
## getPinInfo (@var{ar}, @var{pin}) will get information for a single pin.
##
## getPinInfo (@var{ar}, @var{pinarray}) will get a cell array of pin information
## 
## @subsubheading Inputs
## @var{ar} - the connected arduino object.
##
## @var{pin} - a pin number or pin name.
##
## @var{pinarray} - the array of pin numbers or names
##
## The pininfo struct contains the following fields:
## @table @asis
## @item terminal
## Terminal number of the pin
## @item name
## String name of the pin
## @item owner
## Current item owner of the pin
## @item mode
## Current configured mode for the pin
## @end table
##
## @subsubheading Outputs
## @var{pininfo} - struct on pin information.
##
## @var{pininfolist} - cell array of pin info
##
## @seealso{arduino, configurePinResource, getResourceOwner}
## @end deftypefn

function retval = getPinInfo (obj, pins)

  if nargin != 2
    print_usage ()
  endif

  if iscell (pins)
    retval = {};
    for i=1:numel (pins)
      p = obj.get_pin(pins{i});
      inf = {};
      inf.name = p.name;
      inf.terminal = p.id;
      inf.owner = p.owner;
      inf.mode = p.mode;
      retval{end+1} = inf;
    endfor
  elseif ischar(pins)
    p = obj.get_pin(pins);
    inf = {};
    inf.name = p.name;
    inf.terminal = p.id;
    inf.owner = p.owner;
    inf.mode = p.mode;
 
    retval = inf;
  elseif isvector (pins) && numel (pins) == 1
    p = obj.get_pin(pins);
    inf = {};
    inf.name = p.name;
    inf.terminal = p.id;
    inf.owner = p.owner;
    inf.mode = p.mode;
 
    retval = inf;
  elseif isvector (pins)
    retval = {};
    for i=1:numel (pins)
      p = obj.get_pin(pins(i));
      inf = {};
      inf.name = p.name;
      inf.terminal = p.id;
      inf.owner = p.owner;
      inf.mode = p.mode;
 
      retval{end+1} = inf;
    endfor
  elseif isnumeric (pins)
    p = obj.get_pin(pins);
    inf = {};
    inf.name = p.name;
    inf.terminal = p.id;
    inf.owner = p.owner;
    inf.mode = p.mode;
    retval = inf;
  else
    error ("@arduino.getPinInfo: expected pins a array of numbers or names");
  endif
endfunction

%!shared ar
%! ar = arduino();

%!test
%! info = getPinInfo(ar, 0);
%! # terminal 0 is alwars D0 ?
%! assert (isstruct (info));
%! assert (!iscell (info));
%! assert (toupper (info.name), "D0");
%! assert (info.terminal, 0);

%!test
%! info = getPinInfo(ar, "d0");
%! # terminal 0 is alwars D0 ?
%! assert (isstruct (info));
%! assert (!iscell (info));
%! assert (toupper (info.name), "D0");
%! assert (info.terminal, 0);

%!test
%! info = getPinInfo(ar, [0 2]);
%! assert(numel(info), 2);
%! assert(iscell(info));
%! assert (toupper (info{1}.name), "D0");
%! assert (toupper (info{2}.name), "D2");

%!test
%! info = getPinInfo(ar, {"d4", 5});
%! assert(numel(info), 2);
%! assert(iscell(info));
%! assert (toupper (info{1}.name), "D4");
%! assert (toupper (info{2}.name), "D5");

