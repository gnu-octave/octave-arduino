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
## @deftypefn {} {@var{dev} =} spidev (@var{ar}, @var{cspin})
## @deftypefnx {} {@var{dev} =} spidev (@var{ar}, @var{cspin}, @var{propname}, @var{propvalue})
## Create an spidev object to communicate to the SPI port on a connected arduino.
##
## @subsubheading Inputs
## @var{ar} - connected arduino object
##
## @var{cspin} - chip select pin of selected SPI port.
##
## @var{propname}, @var{propvalue} - property name/value pair for values to pass to devices.
##
## Currently known properties:
## @table @asis
## @item bitrate
## bit rate speed in Mbs
## @item bitorder
## 'msbfirst' or 'lsbfirst'
## @item mode
## SPI mode 0 - 3.
## @end table
##
## @subsubheading Outputs
## @var{dev} - created spidev object
##
## @seealso{arduino, readWrite}
## @end deftypefn

function this = spidev (varargin)
  ARDUINO_SPI_CONFIG = 1;
  
  if nargin < 2
    error ("expects arduino object and chipselect pin");
  endif
  
  ar = varargin{1};
  cspin = varargin{2};
  
  if mod(nargin, 2) != 0
    error ("arduino: expected property name, value pairs");
  endif
  if !iscellstr (varargin(3:2:nargin))
    error ("arduino: expected property names to be strings");
  endif
  
  this.chipselectpin = "";
  this.mode = 0;
  this.bitrate = 4000000;
  this.bitorder = 'msbfirst';
  
  for i = 3:2:nargin
    propname = tolower(varargin{i});
    propvalue = varargin{i+1};
    
    % printf("%s = %s\n", propname, propvalue);
    if propname == "bitrate"
      if !isnumeric (propvalue)
        error("bitrate should be a number")
      endif
      this.bitrate = propvalue;
    elseif propname == "mode"
      if !isnumeric(propvalue) || propvalue < 0 || propvalue > 3
        error("mode should be a number betwwen 0 - 3");
      endif
      this.mode = propvalue;
    elseif propname == "bitorder"
      if !ischar(propvalue)
        error("bitorder should be a string");
      endif
      this.bitorder = tolower(propvalue);
      if this.bitorder != "msbfirst" && this.bitorder != "lsbfirst"
        error("bitorder should be 'msbfirst' or 'lsbfirst'");
      endif
    endif
        
  endfor
      
  if (!isa (ar, "arduino"))
    error("expects arduino object");
  endif
  
  this.chipselectpin = cspin;
  this.arduinoobj = ar;
  
  # check if is valid CS pin
  validatePin(ar,cspin,'SPI')
  
  % TODO on calling setup with the CS pin, returns back the other pins that we then setup as used ?
  % sendCommand
  # there only ever one port ??? with CS able to be completely independant ??
  tmp_pins = ar.get_pingroup(cspin, "SPI");
  if numel(tmp_pins) != 4
    error ("expected 4 SPI pins but only have %d", numel(tmp_pins))
  endif
  this.pins = tmp_pins;
  
  # TODO: save old modes and set them via force if we fail trying to alloc the whole group
  try
    for i=1:4
      configurePin(ar, tmp_pins{i}.name, "spi")
      
      switch(tolower(tmp_pins{i}.func))
        case "ss"
          this.chipselectpin = tmp_pins{i}.name;
          # override mode for digital out on SS
          configurePinResource (ar, tmp_pins{i}.name, getResourceOwner (ar, tmp_pins{i}.name), "digitaloutput", true);
        case "mosi"
          #
        case "miso"
          # override mode for digital in on miso
          #configurePinResource (ar, tmp_pins{i}.name, getResourceOwner (ar, tmp_pins{i}.name), "digitalinput", true);
          #
        case "sck"
          #
      endswitch
            
    endfor
          
    bitorder = 0;
    if strcmp(this.bitorder, 'lsbfirst')
      bitorder = 1;
    endif
          
    [tmp, sz] = sendCommand(this.arduinoobj, "spi", ARDUINO_SPI_CONFIG, [0 1 this.mode bitorder]);
    
  catch
    for i=1:4
      configurePinResource(ar, tmp_pins{i}.name, tmp_pins{i}.owner, tmp_pins{i}.mode, true)
      configurePin(ar, tmp_pins{i}.name, tmp_pins{i}.mode)
    endfor
    rethrow (lasterror);
  end_try_catch
          
  this = class(this, "spidev");
endfunction

%!shared arduinos
%! arduinos = scanForArduinos(1);

%!assert(numel(arduinos), 1);

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%!
%! # validate SPI pins not allocated
%! assert(configurePin(ar, "d10"), "unset") ## ss
%! assert(configurePin(ar, "d11"), "unset") ## mosi
%! assert(configurePin(ar, "d12"), "unset") ## miso
%! assert(configurePin(ar, "d13"), "unset") ## sck
%!
%! spi = spidev(ar, "d10");
%! assert(!isempty(spi));
%! assert(spi.chipselectpin, "d10");
%!
%! # validate SPI pins allocated
%! assert(configurePin(ar, "d10"), 'digitaloutput') ## ss
%! assert(configurePin(ar, "d11"), 'digitaloutput') ## mosi
%! assert(configurePin(ar, "d12"), 'digitalinput')  ## miso
%! assert(configurePin(ar, "d13"), 'digitaloutput') ## sck
%! clear spi
%! # check now pins unset
%! # currently not done as classdef destroy doesnt work correctly
%! # assert(configurePin(ar, "d10"), "unset") 

