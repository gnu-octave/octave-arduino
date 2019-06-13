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
## @deftypefn {} {@var{dev} =} device (@var{ar}, 'I2CAddress', @var{address})
## @deftypefnx {} {@var{dev} =} device (@var{ar}, 'SPIChipSelectPin', @var{pin})
## @deftypefnx {} {@var{dev} =} device (..., @var{propname}, @var{propvalue})
## Create an i2c or spi object to communicate on a connected arduino.
##
## @subsubheading Inputs
## @var{ar} - connected arduino object
##
## @var{propname}, @var{propvalue} - property name/value pair for values to pass to devices.
##
## A property of 'i2caddress' or 'spichipselectpin' must be specified to denote the device type to create.
##
## @var{i2caddress} - address to use for device on I2C bus.
##
## @var{pin} - pin to use for device SPI chip select.
##
## Additional properties can also be specified for the device object
##
## Currently known input I2C properties values:
## @table @asis
## @item bus
## bus number (when arduino board supports multiple I2C buses)
## with value of 0 or 1.
## @end table
##
## Currently known input SPI properties values:
## @table @asis
## @item bitrate
## bit rate speed in Mbs
## @item bitorder
## 'msbfirst' or 'lsbfirst'
## @item spimode
## SPI mode 0 - 3.
## @end table
##
## @subsubheading Outputs
## @var{dev} - new created device object.
## 
## @subsubheading Properties
## The object has the following public properties:
## @table @asis
## @item parent
## The parent (arduino) for this device
## @item interface
## The interface type for this device ("SPI" or "I2C")
## @end table
## 
## In addition, depending on type, the object will have these properties:
##
## @subsubheading I2C Properties
## The object has the following public properties:
## @table @asis
## @item bus
## bus used for created object
## @item i2caddress
## I2C address set for object
## @item sclpin
## the SCL pin of the device
## @item sdapin
## the SDA pin of the device
## @end table
##
## @subsubheading SPI Properties
## The object has the following public properties:
## @table @asis
## @item spimode
## mode used for created object
## @item bitrate
## Bitrate set for object
## @item bitorder
## Bitorder set for object
## @item spichipselectpin
## Pin used for chipselect
## @item mosipin
## Pin used for mosi
## @item misopin
## Pin used for miso
## @item sckpin
## Pin used for sckpin
## @end table
##
## @seealso{arduino, i2cdev, spidev}
## @end deftypefn

function this = device(varargin)
  persistent ARDUINO_I2C_CONFIG = 1;
  persistent ARDUINO_SPI_CONFIG = 1;

  if nargin < 3
    error("expects arduino object and properties");
  endif

  # parse args
  p = inputParser();
  p.CaseSensitive = false;
  p.FunctionName = 'device';
  p.KeepUnmatched = true;
  p.addRequired('ar', @isarduino);
  p.addParameter('I2CAddress', -1, @isnumeric);
  p.addParameter('SPIChipSelectPin', "");
  p.parse(varargin{:});

  this.parent = p.Results.ar;
  this.id = [];
  this.device = {};
  this.pins = {};
  this.interface = "";
  this.resourceowner = "";

  pin_type = @(x) !isempty(getPinInfo(this.parent, x));

  if p.Results.I2CAddress != -1 && isempty(p.Results.SPIChipSelectPin)
    this.interface = "I2C";

    bus_type = @(x) (isnumeric(x) && x >= 0 && x <= 1);

    p = inputParser();
    p.FunctionName = 'device';
    p.CaseSensitive = false;
    p.addRequired('ar', @isarduino);
    p.addParameter('I2CAddress', "", @isnumeric);
    p.addParameter('Bus', 0, bus_type);
    p.addParameter('BitRate', 100000, @isnumeric);
    p.parse(varargin{:});

    this.id = [];
  
    this.device.address = p.Results.I2CAddress;
    this.device.bus = p.Results.Bus;
    this.device.bitrate = p.Results.BitRate;

    this.resourceowner = "i2c";

    name = "i2c_";
    if this.device.bus > 0
      name = ["i2c" num2str(bus) "_"]; 
    endif
    this.pins = this.parent.get_group(name);
    if numel(this.pins) != 2
       error("expected 2 I2C pins but only have %d", numel(this.pins) )
    endif

    # set pins
    try
      for i=1:2
        configurePin(this.parent, this.pins{i}.name, "i2c")
      endfor
      # TODO: bitrate etc
      [tmp, sz] = sendCommand(this.parent, "i2c", ARDUINO_I2C_CONFIG, [this.device.bus 1]);
    catch
      for i=1:2
        configurePinResource(this.parent, this.pins{i}.name, this.pins{i}.owner, this.pins{i}.mode, true)
        configurePin(this.parent, this.pins{i}.name, this.pins{i}.mode)
      endfor
      rethrow (lasterror)
    end_try_catch

    this.cleanup = onCleanup (@() cleanupI2Cdevice (this.parent, this.resourceowner, this.pins));
 
  elseif p.Results.I2CAddress == -1 && !isempty(p.Results.SPIChipSelectPin)
    this.interface = "SPI";

    bitorder_type = @(x) (ischar(x) && any(stricmp(x, {"msbfirst", "lsbfirst"})));
    mode_type = @(x) (isnumeric(x) && x >= 0 && x <= 3);

    p = inputParser();
    p.FunctionName = 'device';
    p.CaseSensitive = false;
    p.addRequired('ar', @isarduino);
    p.addParameter('SPIChipSelectPin', "", pin_type);
    p.addParameter('SPIMode', 0, mode_type);
    p.addParameter('BitRate', 4000000, @isnumeric);
    p.addParameter('BitOrder', "mbsfirst", bitorder_type);
    p.parse(varargin{:});

    this.device.chipselectpin = p.Results.SPIChipSelectPin;
    this.device.mode = p.Results.SPIMode;
    this.device.bitrate = p.Results.BitRate;
    this.device.bitorder = tolower(p.Results.BitOrder);

    this.resourceowner = "spi";

    isfirst = getResourceCount(this.parent,"spi") == 0;

    # check if is valid CS pin that can use as output
    validatePin(this.parent, this.device.chipselectpin, 'digital')
    if strcmp(getResourceOwner(this.parent, this.device.chipselectpin), this.resourceowner)
      error ("pin %s is already in use by SPI", this.device.chipselectpin)
    endif
  
    if isfirst
      terms = getSPITerminals(this.parent);
      tmp_pins = this.parent.get_pingroup(terms{1}, "SPI");

      if numel(tmp_pins) != 4
        error ("expected 4 SPI pins but only have %d", numel(tmp_pins))
      endif

      setSharedResourceProperty(this.parent, this.resourceowner, "pins", tmp_pins);
    endif

    tmp_pins = getSharedResourceProperty(this.parent, this.resourceowner, "pins");
    cs_is_ss = false;
    cspin = getPinInfo(this.parent, this.device.chipselectpin);
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
            configurePin(this.parent, tmp_pins{i}.name, "digitaloutput")
            configurePinResource (this.parent, tmp_pins{i}.name, "spi", "digitaloutput", true);
          else
            configurePin(this.parent, tmp_pins{i}.name, "spi")
          endif
        else
          # only allocate cs pin if not first device
          if strcmp(tolower(tmp_pins{i}.func), "cs")
            configurePin(this.parent, tmp_pins{i}.name, "digitaloutput")
            configurePinResource (this.parent, tmp_pins{i}.name, "spi", "digitaloutput", true);
          endif
        endif
      endfor
          
      bitorder = 0;
      if strcmp(this.device.bitorder, 'lsbfirst')
        bitorder = 1;
      endif
          
      [tmp, sz] = sendCommand(this.parent, this.resourceowner, ARDUINO_SPI_CONFIG, [this.id 1 this.device.mode bitorder]);
  
      incrementResourceCount(this.parent, this.resourceowner);
    catch
      for i=1:numel(tmp_pins)
        if strcmp(tolower(tmp_pins{i}.func), "cs") || isfirst
          configurePinResource(this.parent, tmp_pins{i}.name, tmp_pins{i}.owner, tmp_pins{i}.mode, true)
          configurePin(this.parent, tmp_pins{i}.name, tmp_pins{i}.mode)
        endif
      endfor
      rethrow (lasterror);
    end_try_catch

    # set clean up function
    this.cleanup = onCleanup (@() cleanupSPIdevice (this.parent, this.resourceowner, cspin));
 
  else
    error ('device expected I2cAddress or SPIChipSelectPin property');
  endif

  this = class (this, "device");
endfunction

# private clean up allocated pins
function cleanupI2Cdevice(ar, resource, pins)
  # currently doing nothing
  x = resource;
endfunction

# private clean up allocated pins
function cleanupSPIdevice(ar, resource, cspin)
  # free CS
  configurePinResource(ar, cspin.name, cspin.owner, cspin.mode, true);
  configurePin(ar, cspin.name, cspin.mode);

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
endfunction

%!shared arduinos
%! arduinos = scanForArduinos(1);

%!assert(numel(arduinos), 1);

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%! pins = getI2CTerminals(ar);
%! # check pins not allocated
%! for i=1:numel(pins)
%!  p = pins{i};
%!  assert(configurePin(ar, p), "unset")
%! endfor
%! i2c = device(ar, 'i2caddress', 10);
%! assert(!isempty(i2c));
%! assert(i2c.interface, "I2C");
%! assert(i2c.i2caddress, 10);
%! # check pins allocated
%! for i=1:numel(pins)
%!  p = pins{i};
%!  assert(!strcmpi(configurePin(ar, p), "unset"))
%! endfor
%! clear i2c
%! # TODO check pins unallocated when we have implemented a free of shared spi bus
%! # for i=1:numel(pins)
%! #  p = pins{i};
%! #  assert(configurePin(ar, p), "unset")
%! # endfor

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
%! spi = device(ar, "spichipselectpin", "d10");
%! assert(!isempty(spi));
%! assert(spi.spichipselectpin, "d10");
%! assert(spi.interface, "SPI");
%!
%! # validate SPI pins allocated
%! assert(configurePin(ar, "d10"), "digitaloutput")
%! #assert(configurePin(ar, spipins{1}), 'digitaloutput') ## ss
%! #assert(configurePin(ar, spipins{2}), 'digitaloutput') ## mosi
%! #assert(configurePin(ar, spipins{3}), 'digitalinput')  ## miso
%! #assert(configurePin(ar, spipins{4}), 'digitaloutput') ## sck
%!
%! clear spi
%!
%! # check now pins unset
%! assert(configurePin(ar, "d10"), "unset")
%! assert(configurePin(ar, spipins{1}), "unset")
%! assert(configurePin(ar, spipins{2}), "unset")
%! assert(configurePin(ar, spipins{3}), "unset")
%! assert(configurePin(ar, spipins{4}), "unset")

%!test
%! ar = arduino();
%! spi = device(ar, "spichipselectpin", "d10");
%! fail ('device(ar, "spichipselectpin", "d10");', 'pin d10 is already in use') 
%! spi2 = device(ar, "spichipselectpin", "d5");