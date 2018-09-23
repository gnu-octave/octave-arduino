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
## @deftypefn {} {@var{dataOut} =} readWrite (@var{spi}, @var{dataIn})
## Write uint8 data to spi device and return 
## back clocked out response data of same size.
##
## @subsubheading Inputs
## @var{spi} - connected spi device on arduino
##
## @var{dataIn} - uint8 sized data to send to spi device framed between SS frame.
##
## @subsubheading Outputs
## @var{dataOut} - uint8 data clocked out during send to dataIn.
##
## @seealso{arduino, spidev}
## @end deftypefn

function dataOut = writeRead (this, dataIn)
  dataOut = [];

  persistent ARDUINO_SPI_READ_WRITE = 2;

  if nargin < 2
    error ("@spidev.writeRead: expected dataIn");
  endif

  [tmp, sz] = sendCommand (this.parent, this.resourceowner, ARDUINO_SPI_READ_WRITE, [this.id uint8(dataIn)]);
  if sz > 0
    dataOut = tmp(2:end);
  endif
endfunction

%!shared arduinos
%! arduinos = scanForArduinos(1);

%!assert(numel(arduinos), 1);

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%! spi = spidev(ar, "d10");
%! assert(!isempty(spi));
%! data = writeRead(spi, 1);
%! assert(numel(data), 1);

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%! spi = spidev(ar, "d10");
%! assert(!isempty(spi));
%! data = writeRead(spi, [1 1 1]);
%! assert(numel(data), 3);

