## Copyright (C) 2021 John Donoghue <john.donoghue@ieee.org>
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
## @deftypefn {} {@var{retval} =} __recvResponse__ (@var{obj}, @var{lib}, @var{cmd}, @var{timeout})
## Private function
## @end deftypefn

function [dataOut, errcode] = __recvResponse__ (obj, libid, cmd, timeout)
   
   dataOut = [];
   errcode = 0;
   
   set(obj.connected, "timeout", timeout*10);
   
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
   elseif tmpdataOut(1) != hex2dec("A5") || tmpdataOut(2) != libid || (tmpdataOut(3) != cmd && tmpdataOut(3) < 253)
     errcode = 2;
     dataOut = "Malformed packet header";
   elseif (tmpdataOut(3) == 254)
     # got a wait for response value - length is expected to be 0
     if (obj.debug)
       printf("* wait for response\n");
     endif
 
     set(obj.connected, "timeout", -1);

     [tmpdataOut, tmpdataSize] = srl_read (obj.connected, 4);
     if (obj.debug)
       printf("<< "); printf("%d ", tmpdataOut); printf("\n");
     endif
     if tmpdataSize < 4
       errcode = 1;
       dataOut = "Undersized packet header";
     elseif tmpdataOut(1) != hex2dec("A5") || tmpdataOut(2) != libid || (tmpdataOut(3) != cmd && tmpdataOut(3) != 255)
       errcode = 2;
       dataOut = "Malformed packet header";
     endif
   endif

   if(errcode == 0)
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
     elseif tmpdataOut(3) == 253
         # valid but was a debug message
	 if obj.debug
           s = char(dataOut);
           printf("DEBUG: %s\n", s);
	 endif
        
	[dataOut, errcode] = __recvResponse__ (obj, libid, cmd, timeout); 
     else
	 errcode = 0;
	 # all is good
     endif

   endif
endfunction
