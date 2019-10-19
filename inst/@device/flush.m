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
## @deftypefn {} {@var{data} =} flush (@var{dev})
## @deftypefnx {} {@var{data} =} flush (@var{dev}, "input")
## @deftypefnx {} {@var{data} =} flush (@var{dev}, "output")
## Flush the serial port buffers
##
## @subsubheading Inputs
## @var{dev} - connected serial device opened using device
##
## If an additional parameter is provided of "input" or "output",
## then only the input or output buffer will be flushed
##
## @subsubheading Outputs
## None
##
## @seealso{arduino, device, read}
## @end deftypefn

function flush (dev, buffer)
  if nargin < 2
    buffer = "all";
  endif

  if !strcmp(dev.interface, "Serial")
    error("@device.flush: not a Serial device");
  endif

  if  !ischar (buffer)
    error("@device.flush: expected flushtype to be a string");
  endif

  if strcmp(buffer, "all") || strcmp(buffer, "input")
    # flush input by reading all pending data
    sz = 32;
    while sz >= 32
      tmp = read(dev, 32);
      sz = length(tmp);
    endwhile
    elseif strcmp(buffer, "output")
    # nothing to do as we dont have any pending output buffer
  else
    error("@device.flush: invalid flushbyte '%s'", buffer);
  endif
endfunction
