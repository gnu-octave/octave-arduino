## Copyright (C) 2020 John Donoghue <john.donoghue@ieee.org>
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
## @deftypefn {} {} delete (@var{dev})
## Free resources of a spidev object.
##
## @subsubheading Inputs
## @var{dev} - spidev object to free
##
## @seealso{spidev}
## @end deftypefn

function delete(this)
  try
    ar = this.parent;
    resource = this.resourceowner;

    if !isempty(ar)
      pins = this.pins;
      for i=1:numel(pins)
        pin = pins{i};
        if strcmp(tolower(pin.func), "cs")
          configurePinResource(ar, pin.name, pin.owner, pin.mode, true);
          configurePin(ar, pin.name, pin.mode);
        endif
      endfor

      # clean up the spi port if not used?
      count = getResourceCount(ar, resource);
      if count > 0
        count = decrementResourceCount(ar, resource);
        if count == 0
          # last user, so free pins (except ss that we already did)
          pins = getSharedResourceProperty(ar, resource, "pins");
          for i=1:numel(pins)
            pin = pins{i};
            configurePinResource(ar, pin.name, pin.owner, pin.mode, true);
            configurePin(ar, pin.name, pin.mode);
          endfor
        endif
      endif
      this.parent = [];
    endif
  catch
    # do nothing
  end_try_catch
endfunction
