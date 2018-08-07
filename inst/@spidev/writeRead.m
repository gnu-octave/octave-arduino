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
## Write @var{datain} uint8 data to spi device @var{spi} and return 
## back clocked out response data of same size.
##
## @var{spi} - connected spi device on arduino
##
## @var{dataIn} - uint8 sized data to send to spi device framed between SS frame.
##
## @var{dataOut} - uint8 data clocked out during send to dataIn.
##
## @seealso{arduino, spidev}
## @end deftypefn

function dataOut = writeRead (obj, dataIn)
  dataOut = [];
  persistent ARDUINO_SPI_WRITE = 0;

  if nargin < 2
    error ("@spidev.writeRead: expected dataIn");
  endif

  writeDigitalPin (obj.arduinoobj, obj.chipselectpin, 0);
  pause (.1);
  for i=1:numel (dataIn)
    # TOOO: need send which port num of spi are using ?
    [tmp, sz] = sendCommand (obj.arduinoobj, "spi", ARDUINO_SPI_WRITE, [0 dataIn(i)]);
    dataOut(i) = tmp(2);
  endfor
  pause (.1);
  writeDigitalPin (obj.arduinoobj, obj.chipselectpin, 1);
  
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

