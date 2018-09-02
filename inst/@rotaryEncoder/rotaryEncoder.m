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
## @deftypefn {} {@var{obj} =} rotaryEncoder (@var{ar}, @var{chanApin}, @var{chanBpin})
## @deftypefnx {} {@var{obj} =} rotaryEncoder (@var{ar}, @var{chanApin}, @var{chanBpin}, @var{ppr})
## Create a roraryEncoder object controlled by the input pins.
##
## @subsubheading Inputs
## @var{ar} - connected arduino object.
##
## @var{chanApin} - pin used for channel A
##
## @var{chanBpin} - pin used for channel B
##
## @var{ppr} - count of encoder pulsed required for a full revolution of the encoder.
##
## @subsubheading Outputs
## @var{obj} - created rotary encoder object
##
## @subsubheading Example
## @example
## a = arduino ();
## enc = rotatyEncoder(a, "d2", "d3", 180);
## @end example
##
## @seealso{arduino}
## @end deftypefn

function obj = rotaryEncoder(ar, pinA, pinB, ppr)
  persistent ARDUINO_ROTARYENCODER_CONFIG = 1;

  if (nargin == 1 && isa (ar, "rotaryEncoder"))
    register = ar;   # Copy constructor
  elseif nargin < 3
    error ('rotaryEncoder: Expected pinA and pinB');
  else
    p.parent = ar;

    pins = {};
    pins{end+1} = ar.get_pin(pinA);
    pins{end}.func = "channela";

    # pin used also to address this obj
    p.id = pins{1}.id;

    pins{end+1} = ar.get_pin(pinB);
    pins{end}.func = "channelb";

    if nargin < 4
      ppr = [];
    endif

    if isempty(ppr)
      ppr = 0;
    endif

    if ! isnumeric(ppr) || ppr < 0
      error('rotaryEncoder:  ppr should be a positive number')
    endif

    # verify pins support digital i/o
    for i = 1:numel(pins)
      pin = pins{i}.name;
      validatePin(ar, pin, "digital");
    endfor

    p.pins = pins;
    p.ppr = ppr;

    try
      for i=1:numel(pins)
        pin = pins{i}.name;
        configurePin(ar, pin, "pullup");
      endfor

      [tmp, sz] = sendCommand(ar, "rotaryencoder", ARDUINO_ROTARYENCODER_CONFIG, [p.id 1 pins{2}.id]);
    catch
      # on error, restore pin state
      for i=1:numel(pins)
        pin = pins{i};
        configurePinResource(ar, pin.name, pin.owner, pin.mode, true)
        configurePin(ar, pin.name, pin.mode)
      endfor
      rethrow (lasterror);
    end_try_catch

    obj = class (p, "rotaryEncoder");
  endif
endfunction

%!shared ar
%! ar = arduino();

%!test
%! obj = rotaryEncoder(ar, "d2", "d3");
%! assert (isa (register, "rotaryEncoder"))

%!test
%! obj = rotaryEncoder(ar, "d2", "d3", 100);
%! assert (isa (register, "rotaryEncoder"))

%!error rotaryEncoder(ar);

%!error rotaryEncoder(ar, "d2");
