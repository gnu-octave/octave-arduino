## Copyright (C) 2018-2020 John Donoghue <john.donoghue@ieee.org>
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

classdef spidev < handle
  ## -*- texinfo -*- 
  ## @deftypefn {} {@var{dev} =} spidev (@var{ar}, @var{cspin})
  ## @deftypefnx {} {@var{dev} =} spidev (@var{ar}, @var{cspin}, @var{propname}, @var{propvalue})
  ##
  ## @code{spidev} is depreciated and will be removed in a future version.
  ## Use @code{device} instead.
  ##
  ## Create an spidev object to communicate to the SPI port on a connected arduino.
  ##
  ## @subsubheading Inputs
  ## @var{ar} - connected arduino object
  ##
  ## @var{cspin} - chip select pin for attached spi device.
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
  ## @subsubheading Properties
  ## The spidev object has the following public properties:
  ## @table @asis
  ## @item parent
  ## The parent (arduino) for this device
  ## @item pins
  ## pins used by this object
  ## @item mode
  ## mode used for created object
  ## @item bitrate
  ## Bitrate set for object
  ## @item bitorder
  ## Bitorder set for object
  ## @item chipselectpin
  ## Pin used for chipselect
  ## @end table
  ##
  ## @seealso{arduino, readWrite}
  ## @end deftypefn

  properties (Access = private)
    id = [];
    chipselectpin = "";
    mode = 0;
    bitrate = 4000000;
    bitorder = 'msbfirst';
    parent = [];
    resourceowner = "spi";
    pins = {};
  endproperties

  methods (Access = public)
    function this = spidev (varargin)
      ARDUINO_SPI_CONFIG = 1;

      persistent warned = false;
      if (! warned)
        warned = true;
        warning ("Octave:deprecated-function",
                 "spidev is obsolete and will be removed from a future version of arduino, please use 'device' instead");
      endif
 
      if nargin < 2
        error ("spidev: expects arduino object and chipselect pin");
      endif
 
      ar = varargin{1};
      cspin = varargin{2};
 
      if mod(nargin, 2) != 0
        error ("spidev: expected property name, value pairs");
      endif
      if !iscellstr (varargin(3:2:nargin))
        error ("spidev: expected property names to be strings");
      endif

      isfirst = getResourceCount(ar,"spi") == 0;

      for i = 3:2:nargin
        propname = tolower(varargin{i});
        propvalue = varargin{i+1};
    
        % printf("%s = %s\n", propname, propvalue);
        if strcmp (propname, "bitrate")
          if !isnumeric (propvalue)
            error("bitrate should be a number")
          endif
          this.bitrate = propvalue;
        elseif strcmp (propname, "mode")
          if !isnumeric (propvalue) || propvalue < 0 || propvalue > 3
            error("mode should be a number betwwen 0 - 3");
          endif
          this.mode = propvalue;
        elseif strcmp (propname, "bitorder")
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
      this.parent = ar;
      this.resourceowner = "spi";
  
      # check if is valid CS pin that can use as output
      validatePin(ar, cspin, 'digital')
      if strcmp(getResourceOwner(ar, cspin), this.resourceowner)
        error ("pin %s is already in use by SPI", cspin)
      endif
  
      if isfirst
        terms = getSPITerminals(ar);
        tmp_pins = ar.get_pingroup(terms{1}, "SPI");

        if numel(tmp_pins) != 4
          error ("expected 4 SPI pins but only have %d", numel(tmp_pins))
        endif

        setSharedResourceProperty(ar, this.resourceowner, "pins", tmp_pins);
      endif

      tmp_pins = getSharedResourceProperty(ar, this.resourceowner, "pins");
      cs_is_ss = false;
      cspin = getPinInfo(ar, cspin);
      cspin.func = "cs";

      for i=1:4
        # verify cs pin is either SS pin, or a not a spi pin
        if strcmp(tolower(tmp_pins{i}.func), "ss")
          if strcmpi(tmp_pins{i}.name, cspin.name)
            cs_is_ss = true;
          endif
        else
          # check not trying to set CS to a spi pin
          if strcmpi(tmp_pins{i}.name, cspin.name)
            error ("can not set cspin to a SPI function pin");
          endif
        endif
      endfor

      if !cs_is_ss
        tmp_pins{end+1} = cspin;
      endif

      this.pins = tmp_pins;
      this.id = cspin.terminal;
  
      try
        for i=1:numel(tmp_pins)
          if isfirst
            if strcmp(tolower(tmp_pins{i}.func), "ss") || strcmp(tolower(tmp_pins{i}.func), "cs")
              configurePin(ar, tmp_pins{i}.name, "digitaloutput")
              configurePinResource (ar, tmp_pins{i}.name, "spi", "digitaloutput", true);
            else
              configurePin(ar, tmp_pins{i}.name, "spi")
            endif
          else
            # only allocate cs pin if not first device
            if strcmp(tolower(tmp_pins{i}.func), "cs")
              configurePin(ar, tmp_pins{i}.name, "digitaloutput")
              configurePinResource (ar, tmp_pins{i}.name, "spi", "digitaloutput", true);
            endif
          endif
        endfor

        bitorder = 0;
        if strcmp(this.bitorder, 'lsbfirst')
          bitorder = 1;
        endif

        [tmp, sz] = sendCommand(this.parent, this.resourceowner, ARDUINO_SPI_CONFIG, [this.id 1 this.mode bitorder]);

        incrementResourceCount(ar, this.resourceowner);
      catch
        for i=1:numel(tmp_pins)
          if strcmp(tolower(tmp_pins{i}.func), "cs") || isfirst
            configurePinResource(ar, tmp_pins{i}.name, tmp_pins{i}.owner, tmp_pins{i}.mode, true)
            configurePin(ar, tmp_pins{i}.name, tmp_pins{i}.mode)
          endif
        endfor
        rethrow (lasterror);
      end_try_catch
    endfunction
  endmethods
endclassdef

%!shared arduinos
%! arduinos = scanForArduinos(1);

%!assert(numel(arduinos), 1);

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%!
%! spipins = getSPITerminals(ar);
%! assert (numel(spipins), 4);
%!
%! # validate SPI pins not allocated
%! assert(configurePin(ar, "d10"), "unset")
%! assert(configurePin(ar, spipins{1}), "unset")
%! assert(configurePin(ar, spipins{2}), "unset")
%! assert(configurePin(ar, spipins{3}), "unset")
%! assert(configurePin(ar, spipins{4}), "unset")
%!
%! spi = spidev(ar, "d10");
%! assert(!isempty(spi));
%! assert(spi.chipselectpin, "d10");
%!
%! # validate SPI pins allocated
%! assert(configurePin(ar, "d10"), "digitaloutput")
%! #assert(configurePin(ar, spipins{1}), 'digitaloutput') ## ss
%! #assert(configurePin(ar, spipins{2}), 'digitaloutput') ## mosi
%! #assert(configurePin(ar, spipins{3}), 'digitalinput')  ## miso
%! #assert(configurePin(ar, spipins{4}), 'digitaloutput') ## sck
%!
%! delete(spi);
%!
%! # check now pins unset
%! assert(configurePin(ar, "d10"), "unset")
%! assert(configurePin(ar, spipins{1}), "unset")
%! assert(configurePin(ar, spipins{2}), "unset")
%! assert(configurePin(ar, spipins{3}), "unset")
%! assert(configurePin(ar, spipins{4}), "unset")

%!test
%! ar = arduino();
%! spi = spidev(ar, "d10");
%! fail ('spidev(ar, "d10");', 'pin d10 is already in use') 
%! spi2 = spidev(ar, "d5");
%! delete(spi);
%! delete(spi2);
