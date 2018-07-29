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
## @deftypefn {} {@var{mode} =} configurePin (@var{ar}, @var{pin})
## @deftypefnx {} {} configurePin (@var{ar}, @var{pin}, @var{mode})
## Set/Get pin @var{mode} for a specified @var{pin} on arduino connection @var{ar}.
##
## configurePin (@var{ar}, @var{pin}) will get the current mode of the specified pin.
##
## configurePin (@var{ar}, @var{pin}, @var{mode}) will attempt set the pin to the specified
## mode if the mode is unset.
##
## @var{ar} - the ardiuno object of the connection to an arduino board.
## @var{pin} - string name of the pin to set/get the mode of.
## @var{mode} - string mode to set the pin to or is currently set to.
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
## @seealso{arduino, validatePin}
## @end deftypefn

function retval = configurePin (obj, pin, mode)

  persistent ARDUINO_CONFIGPIN = 2;

  if nargin != 2 && nargin != 3 
    error ("@arduino.configurePin: expected pin name and value");
  endif

  if !ischar (pin) && !isnumeric (pin)
    error ("@arduino.configurePin: expected pin name as string");
  endif
  
  pininfo = obj.get_pin (pin);
  
  if nargin == 3
    % set mode

    if !ischar (mode)
      error ("@arduino.configurePin: expected pin mode as string");
    endif

    mode = tolower (mode);
  
    [pinstate, pinmode] = pinStateMode (mode);

    if strcmp (pinmode,"spi")
      # check special case of when pin is miso, make it an input
      idx = find (cellfun(@(x) ~isempty (strfind (x, "_miso")), pininfo.modes), 1);
      if !isempty (idx)
        pinstate = 2;
      endif
    endif

    % valid setting for this pin ?
    if !strcmpi (mode, "unset")
      validatePin (obj, pin, pinmode);
    else
      pinmode = getResourceOwner (obj, pin);
    endif

    % own this pin
    configurePinResource (obj, pin, pinmode, mode);

    # send config command to arduino
    datain = uint8 ([pininfo.id pinstate]);
  
    [dataout, status] = __sendCommand__ (obj, 0, ARDUINO_CONFIGPIN, datain);
    
    if status != 0
      error ("@arduino.configurePin: failed to set pin state err=%d", status);
    endif
  else
    % get mode ?
    
    datain = uint8 ([pininfo.id]);
    [dataout, status] = __sendCommand__ (obj, 0, ARDUINO_CONFIGPIN, datain);
    
    if status != 0
      error ("@arduino.configurePin: failed to set pin state err=%d", status);
    endif
   
    retval = pinStateMode (dataout(2));
  endif
  
endfunction

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%! configurePin(ar, "d2", "digitaloutput");
%! assert(configurePin(ar, "d2"), "digitaloutput");
%! configurePin(ar, "d2", "unset");
%! assert(configurePin(ar, "d2"), "unset");
