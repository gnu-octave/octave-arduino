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
## @deftypefn {} {@var{outdata, outsize} =} sendCommand (@var{ar}, @var{libname}, @var{commandid})
## @deftypefnx {} {@var{outdata, outsize} =} sendCommand (@var{ar}, @var{libname}, @var{commandid}, @var{data})
## @deftypefnx {} {@var{outdata, outsize} =} sendCommand (@var{ar}, @var{libname}, @var{commandid}, @var{data}, @var{timeout})
## Send a command with option data to the connected arduino, waiting up to a specified number of seconds
## for a response.
##
## @subsubheading Inputs
## @var{ar} - connected arduino object.
##
## @var{libname} - library sending the command. The name should match a programmed 
## library of the arduino, or an error will be displayed.
##
## @var{commandid} - integer value for the command being sent to the arduino.
##
## @var{data} - optional data sent with the command.
##
## @var{timeout} - optional timeout to wait for data
##
## @subsubheading Outputs
## @var{outdata} - data returned back from the arduino in response to command
##
## @var{outsize} - size of data recieved out
##
## If the arduino fails to respond with a valid reply, sendCommand will error.
##
## @seealso{arduino}
## @end deftypefn

function [dataOut,payloadSize] = sendCommand (obj, libname, commandid, data, timeout)
  if nargin < 3
    error ('sendCommand: missing expected arguments of libname, commandid');
  endif

  if (isempty(libname))
    libid = 0;
  else
    libid = obj.get_lib(libname);

    if libid == -1
      error ("sendCommand: unknown or unprogrammed libray '%s'.", libname);
    endif
  endif

  if ! isnumeric (commandid)
    error ('sendCommand: command id should be a number');
  endif

  if (nargin < 4)
     data = [];
  endif

  if (nargin < 5)
     timeout = 5;
  endif

  [dataOut, status] = __sendCommand__ (obj, libid, commandid, data, timeout);
 
  if status != 0
    error ("sendCommand: failed err=%d: msg=%s", status, char(dataOut));
  endif 
  
  payloadSize = numel(dataOut);
endfunction

%!shared ar
%! ar = arduino();

%!error <undefined> sendCommand();

%!error <missing expected arguments> sendCommand(ar);

%!error <missing expected arguments> sendCommand(ar, "");

%!error <command id should be a number> sendCommand(ar, "", "str");

%!test
%! % valid config pin msg
%! assert(numel(sendCommand(ar, "", 2,  [2])) > 0);

# valid packet, but unknown id
%!error <Unknown cmdID> sendCommand(ar, "", 255, [2 2]);

# query config pin without the data
%!error <Invalid number of args> sendCommand(ar, "", 2);
