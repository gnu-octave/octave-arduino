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
## GNU General Public License for more details. see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} __sendCommand__ (@var{obj}, @var{cmd}, @var{data}, @var{timeout})
## Private function
## @end deftypefn

## Author: jdonoghue <jdonoghue@JYRW4S1>
## Created: 2018-05-15

function [dataOut, errcode] = __sendCommand__ (obj, libid, cmd, data, timeout)
   if nargin < 3
     error ("@arduino.__sendCommand__: expected command");
   endif
 
   % send command and get back reponse
   if !isa(obj.connected, "octave_serial")
     error ("@arduino.__sendCommand__: not connected to a arduino");
   endif
   
   % connected yet ?
   
   % simple procol here, each field is a byte
   % sends A5 EXT CMD datasize [data,,,]
   % currently ext is 0 - may use later to identify module to send to ?
   % A5 00 00 00 = reset
   % A5 00 01 00 = req board info
   dataOut = [];
   errcode = -1;
   
   if (nargin < 4)
     data = [];
   endif

   if (nargin < 5)
     timeout = 0.5;
   endif

   set(obj.connected, "timeout", timeout*10);
   
   hdr = uint8([ hex2dec("A5") libid cmd numel(data)]);
   len = srl_write(obj.connected, [hdr data]);

   if (obj.debug)
     printf(">> "); printf("%d ", [hdr data]); printf("\n");
   endif
   
# TODO: current serial doesnt have a way to know if any data is awaiting
# so try read what we need first without waiting ?

   # read in initial part
   [tmpdataOut, tmpdataSize] = srl_read (obj.connected, 4);
   if (obj.debug)
     printf("<< "); printf("%d ", tmpdataOut); printf("\n");
   endif
   if tmpdataSize < 4
     errcode = 1;
     dataOut = "Undersized packet header";
   elseif tmpdataOut(1) != hex2dec("A5") || (tmpdataOut(3) != cmd && tmpdataOut(3) != 255)
     errcode = 2;
     dataOut = "Malformed packet header";
   else
     expectlen =  tmpdataOut(4);
     if expectlen > 0
       [dataOut, tmpdataSize] = srl_read (obj.connected, expectlen);
       if (obj.debug)
         printf("<< "); printf("%d ", dataOut); printf("\n");
       endif
     else
	 tmpdataSize = 0;
     endif
     if tmpdataSize != expectlen
         errcode = 3;
         dataOut = "Malformed packet body";
     elseif tmpdataOut(3) == 255
	 # valid packet, but was coz we got an error
         errcode = 10;
	 if expectlen == 0
           dataOut = "Recieved error status";;
	 else
           dataOut = char(dataOut);
	 endif
     else
	 errcode = 0;
	 # all is good
     endif

   endif
endfunction
