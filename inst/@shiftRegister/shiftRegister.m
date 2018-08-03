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
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{register} =} shiftRegister (@var{ar}, @var{shifttype}, @var{dataPin}, @var{clockPin} ...)
## @deftypefnx {} {@var{register} =} shiftRegister (@var{ar},'74hc164', @var{dataPin}, @var{clockPin}, @var{resetPin})
## @deftypefnx {} {@var{register} =} shiftRegister (@var{ar},'74hc165', @var{dataPin}, @var{clockPin}, @var{loadPin}, @var{clockEnablePin})
## @deftypefnx {} {@var{register} =} shiftRegister(@var{ar},'74hc595', @var{dataPin}, @var{clockPin}, @var{latchPin} , @var{resetPin})
## Create shift register of type @var{shifttype}, controlled by the input pin types.
##
## Common function parameter definition:
##
## @var{ar} - connected arduino object.
##
## @var{shifttype} - string name of the shift register type.
##
## @var{dataPin} - pin used for data in/out of the device.
##
## @var{clockPin} - pin used for clocking data on the shiftRegister.
##
## @var{register} - register object
##
## Other variables are dependant on the shift register type:
## @table @asis
## @item '74hc164'
## Additional inputs:
##
## @var{resetPin} - optional  pin for resetting the shift register.
##
## @item '74hc165'
## Additional inputs:
##
## @var{loadPin} - load pin to the shift register.
## @var{clockEnablePin} - clock enable pin.
##
## @item '74hc595'
## Additional inputs:
##
## @var{latchPin} - latching data to the shift register.
## @var{resetPin} - optional pin for resetting the shift register.
##
## @end table
## @seealso{arduino}
## @end deftypefn

function register = shiftRegister(ar,type,dataPin,clockPin, varargin)
  persistent ARDUINO_SHIFTREG_CONFIG = 1;

  if (nargin == 1 && isa (ar, "shiftRegister"))
    register = ar;   # Copy constructor
  elseif nargin < 4
    error ('Expected type, dataPin and clockPin');
  else
    p.parent = ar;
    p.model = toupper(type);
    p.datapin = dataPin;
    p.clockpin = clockPin;
    p.id = 0;

    pins = {};
    pins{end+1} = ar.get_pin(dataPin);
    pins{end}.func = "datapin";

    # datapin used also to address this register
    p.id = pins{1}.id;

    pins{end+1} = ar.get_pin(clockPin);
    pins{end}.func = "clockpin";

    init_data = [];

    switch (p.model)
      case '74HC164'
         init_data = [0 pins{2}.id];
      case '74HC165'
        init_data = [1 pins{2}.id];
        if nargin != 6
          error('74HC165 expects loadPin and clockEnablePin');
        endif
        pins{end+1} = ar.get_pin(varargin{1});
        pins{end}.func = "loadpin";
        pins{end+1} = ar.get_pin(varargin{2});
        pins{end}.func = "clockenablepin";
        init_data = [ init_data pins{3}.id pins{4}.id ];
      case '74HC595'
        init_data = [2 pins{2}.id];
        if nargin != 5 && nargin != 6
          error('74HC595 expects latchPin and optional resetPin');
        endif
        pins{end+1} = ar.get_pin(varargin{1});
        pins{end}.func = "latchpin";
        init_data = [ init_data pins{end}.id  ];
        # optional reset
        if nargin == 6
          pins{end+1} = ar.get_pin(varargin{2});
          pins{end}.func = "resetpin";
          init_data = [ init_data pins{end}.id  ];
        endif
      otherwise
        error ("Unknown shiftRegister type '%s'", p.model);
    endswitch

    # verify pins support digital i/o
    for i = 1:numel(pins)
      pin = pins{i}.name;
      validatePin(ar, pin, "digital");
    endfor

    p.pins = pins;

    # TODO: save old modes and set them via force if we fail trying to alloc the whole group
    try
      for i=1:numel(pins)
        pin = pins{i}.name;
        configurePin(ar, pin, "digitaloutput");
      endfor

      [tmp, sz] = sendCommand(ar, "shiftregister", ARDUINO_SHIFTREG_CONFIG, [p.id 1 init_data]);
    catch
      # restore pin state
      for i=1:numel(pins)
        pin = pins{i};
        configurePinResource(ar, pin.name, pin.owner, pin.mode, true)
        configurePin(ar, pin.name, pin.mode)
      endfor
      rethrow (lasterror);
    end_try_catch

    register = class (p, "shiftRegister");
  endif
endfunction

%!shared ar
%! ar = arduino();

%!test
%! # validate pins not allocated
%! #assert(configurePin(ar, "d10"), "unset") ## ss
%! #assert(configurePin(ar, "d11"), "unset") ## mosi
%! #assert(configurePin(ar, "d12"), "unset") ## miso
%! #assert(configurePin(ar, "d13"), "unset") ## sck
%! 
%! register = shiftRegister(ar, '74hc164', "d2", "d3");
%! assert (isa (register, "shiftRegister"))
%!
%! #pins allocated ?
