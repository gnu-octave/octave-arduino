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
## @deftypefn {} {@var{mode} =} configurePinResource (@var{ar}, @var{pin})
## @deftypefnx {} {} configurePinResource (@var{ar}, @var{pin}, @var{owner}, @var{mode})
## @deftypefnx {} {} configurePinResource (@var{ar}, @var{pin}, @var{owner}, @var{mode}, @var{force})
## Set/Get pin @var{mode} for a specified @var{pin} on arduino connection @var{ar}.
##
## configurePinResource (@var{ar}, @var{pin}) will get the current mode of the specified pin.
##
## configurePinResource (@var{ar}, @var{pin}, @var{owner}, @var{mode}) will attempt set the pin to the specified
## mode and owner.
##
## If the pin is already owned by another owner, the configure will fail unless the force option is used.
## If the mode is lready set, configure will fail unless force is used.
##
## @var{ar} - the ardiuno object of the connection to an arduino board.
##
## @var{pin} - string name of the pin to set/get the mode of.
##
## @var{mode} - string mode tto set the pin to or is currently set to.
##
## @var{owner} - string name to use as the pin owner.
##
## @var{force} - boolean to force mode change. If not set, it will be false.
##
## Modes can be:
## @itemize @bullet
## @item AnalogInput
## Acquire analog signals from pin
## @item DigitalInput
## acquire digital signals from pin
## @item DigitalOutput
## generate digital signals from pin
## @item I2C
## specify a pin to use with I2C protocol
## @item Pullup
## specify pin to use a pullup switch
## @item PWM
## Specify pin to use a pulse width modulator
## @item Servo 
## Specify pin to use a servo
## @item SPI
## Specify a pin to use with SPI protocol
## @item Unset
## Clears pin designation. The pin is no longer reserved and can be automatically
## set at the next operation.
## @end itemize
##
## @seealso{arduino, configurePin}
## @end deftypefn

function retval = configurePinResource (obj, pin, owner, mode, forceconfig)
  if nargin != 2 && nargin != 4 && nargin != 5 
    error ('@arduino.configurePinResource: invalid number of arduments supplied');
  endif
  
  if !ischar(pin)
    error ("@arduino.configurePinResource: expected pin name as string");
  endif
  
  pininfo = obj.get_pin (pin);

  if nargin == 2
    % return current mode
    retval = pininfo.mode;
  else 
    if nargin == 4
      forceconfig = false;
    endif
  
    if !isempty (pininfo.owner) && !strcmpi (pininfo.owner, owner) && !forceconfig
      error ("@arduino.configurePinResource: pin already owned");
    endif

    if !strcmpi (pininfo.mode, "unset") && !strcmpi (pininfo.mode, mode) && !forceconfig && !strcmpi (mode, "unset")
      error ("@arduino.configurePinResource: pin mode already set");
    endif

    if (strcmpi (mode, "unset"))
      owner = "";
    endif
    
    pininfo.owner = owner;
    pininfo.mode = mode;
    
    obj.set_pin (pin, pininfo);
  
  endif
  
endfunction

%!shared ar
%! ar = arduino();

%!test
%! configurePinResource(ar, "d2", "test", "digitaloutput");
%! assert(getResourceOwner(ar,"d2"), "test")
%! assert(getTerminalMode(ar, "d2"), "digitaloutput");

%!test
%! configurePinResource(ar, "a0", "test1", "analoginput");
%! assert(getResourceOwner(ar,"a0"), "test1")
%! assert(getTerminalMode(ar, "a0"), "analoginput");
