## Copyright (C) 2018-2021 John Donoghue <john.donoghue@ieee.org>
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
## @deftypefn {} {} playTone (@var{ar}, @var{pin}, @var{freq}, @var{duration})
## Play a tone of a given frequency on a specified pin.
##
## @subsubheading Inputs
## @var{ar} - connected arduino object
##
## @var{pin} - digital pin to play tone on
##
## @var{freq} - frequency in  hertz to play between 0 and 32767Hz.
##
## @var{duration} duration in seconds to play tone between 0 and 30 seconds
##
## If duration is 0 or not specified, tone will continue to play until next tone is commanded.
## If frequency is 0, tone will stop playing
##
## @strong{NOTE:} use of playTone can interfere with PWM output.
## @end deftypefn

function playTone (obj, pin, freq, duration)
  ARDUINO_PLAYTONE = 6;

  if nargin < 3
    error ("@arduino.playTone: expected pin name and frequency");
  endif
  if nargin < 4
    duration = 0;
  endif
  if !ischar(pin) && !isnumeric(pin)
    error ("@arduino.playTone: expected pin name as string");
  endif
  if (!isnumeric(freq) || freq < 0 || freq > 32767)
    error ("@arduino.playTone: expected freq between 0 .. 32767");
  endif  
  if (!isnumeric(duration) || duration < 0 || duration > 30)
    error ("@arduino.playTone: expected duration between 0 .. 30");
  endif  
  
  pininfo = obj.get_pin(pin);

  # first use ?
  if strcmp(pininfo.mode, "unset")
    configurePin(obj, pin, "digitaloutput")
  else
    [pinstate, pinmode] = pinStateMode(pininfo.mode);
    if !strcmp(pinmode, "digital")
      error ("@arduino.playTone: pin is in an incompatable mode");
    endif
  endif

  freq = uint16(freq);
  freqh = bitshift (freq, -8);
  freql = bitand(freq, hex2dec('FF'));

  duration = uint16(duration*10);
  durh = bitshift (duration, -8);
  durl = bitand(duration, hex2dec('FF'));

  datain = uint8([pininfo.id freqh freql durh durl]);
  
  [dataout, status] = __sendCommand__ (obj, 0, ARDUINO_PLAYTONE, datain);
  
  if status != 0
    error ("@arduino.playTone: failed to set tone err=%d - %s", status, char(dataout));
  endif 
 
endfunction

%!shared ar
%! ar = arduino();

%!test
%! if !strcmp(ar.Board, "due")
%! playTone(ar,"d2", 0, 0);
%! playTone(ar,"d2", 220, 1);
%! playTone(ar, "d2", 0);
%! else
%! # due doesnt have playTone
%! endif

%!error <undefined> playTone()

%!error <expected pin name and frequency> playTone(ar)

%!error <unknown pin nopin> playTone(ar, "nopin", 220)
