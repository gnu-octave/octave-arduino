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
## @deftypefn {} {@var{outdata, outsize} =} sendCommand (@var{ar}, @var{libname}, @var{commandid}, @var{data}, @var{timeout})
## Send a command @var{commandid} @var{data} to the connected aduino @var{ar}, waiting up to @var{timeout} seconds
## for a response.
##
## @var{ar} - connected arduino object.
## @var{libname} - library sending the command. Note: currently this value being ignored.
## @var{commandid} - integer value for the command being sent to the arduino.
## @var{data} - optional data sent with the command.
## @var{timeout} - timeout to wait for data
## @var{outdata} - data returned back from the arduino in response to command
## @var{outsize} - size of data recieved out
##
## If the arduino fails to repond with a valid reply, sendCommand will error.
##
## @seealso{arduino}
## @end deftypefn

function [dataOut,payloadSize] = sendCommand (obj, libname, commandid, data, timeout)
  if nargin < 4
    show_usage();
  endif

  if (isempty(libname))
    libid = 0;
  else
    libid = obj.get_lib(libname);

    if libid == -1
      error ("sendCommand: unknown or unprogrammed libray '%s'.", libname);
    endif
  endif

  if (nargin < 5)
     timeout = 5;
  endif

  [dataOut, status] = __sendCommand__ (obj, libid, commandid, data, timeout);
 
  if status != 0
    error ("sendCommand: failed valid response err=%d", status);
  endif 
  
  payloadSize = numel(dataOut);
endfunction
