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
## @deftypefn {} {@var{retval} =} __initArduino__ (@var{obj}, @var{port}, @var{board})
## Private function
## @end deftypefn

function retval = __initArduino__ (obj, port, board)
 
   % send command and get back reponse
   ARDUINO_INIT = 1;
   ARDUINO_GETLIB  = 8;
   
   ok = false;
   
   if !isempty(port) || !ischar(port)
     obj.connected = serial (port, 9600, 2);
     # need wait for aduino to potentially startup
     pause(2);
     
     [dataout, status] = __sendCommand__(obj, 0, ARDUINO_INIT);
     if status != 0
       error ("__initArduino__: failed valid response err=%d", status);
     endif 
     % uno r3 - atmega32 1E 95 0F
     sig = (uint32(dataout(1))*256*256) + (uint32(dataout(2))*256) + uint32(dataout(3));
     % work out mcu
     switch sig
	 case 0
	   mcu = "";
         case { hex2dec("1E9502"),  hex2dec("009502") }
	   mcu = "atmega32";
         case { hex2dec("1E950F"),  hex2dec("00950F") }
	   mcu = "atmega328p";
         case { hex2dec("1E9514"),  hex2dec("009514") }
	   mcu = "atmega328pu";
         case hex2dec("1E9801")
	   mcu= "atmega2560";
         case hex2dec("1E9703")
	   mcu = "atmega1280";
         case hex2dec("1E9702")
	   mcu = "atmega128";
	 otherwise
	   mcu = sprintf("unknown_mcu(%X)", sig);
     endswitch

     boardtype = arduinoio.boardTypeString(dataout(4));
     voltref = double(dataout(5))/10.0;
     numlib = uint8(dataout(6));

     % check board against config info
     if ~isempty(board) && (board != boardtype)
       warning("connected %s arduino does not match requested board type %s", boardtype, obj.board)
     endif

     obj.config = arduinoio.getBoardConfig(boardtype);
     # update values that could change
     obj.config.port = port;
     obj.config.board = boardtype;
     obj.config.voltref = voltref;
     if ! isempty(mcu)
       obj.config.mcu = mcu;
     elseif isempty(obj.config.mcu)
       obj.config.mcu = "unknown";
     endif
     obj.config.libs = {};

     # query libs
     for libid = 0:numlib-1
       [dataout, status] = __sendCommand__(obj, 0, ARDUINO_GETLIB, [libid]);
       if status != 0
         error ("__initArduino__: failed get lib 0 err=%d", status);
       else
	 lib = {};
         lib.id = libid;
	 lib.name = lower(char(dataout(2:end)));
	 obj.config.libs{end+1} = lib;
       endif 
     endfor
   else
     error ("__initArduino__: expected a valid port");
   endif
   
   retval = obj;
   
endfunction
