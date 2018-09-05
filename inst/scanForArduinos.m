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
## @deftypefn {} {@var{retval} =} scanForArduinos (@var{maxCount})
## @deftypefnx {} {@var{retval} =} scanForArduinos (@var{maxCount}, @var{type})
## Scan system for programmed arduino boards.
##
## scanForArduinos will scan the system for programmed arduino boards and return at 
## most @var{maxCount} of them as a cell array in @var{retval}.
##
## @subsubheading Inputs
## @var{maxCount} - max number of arduino boards to detect.
## if @var{maxCount} is not specified, or is a less than 1, the function will return as many
## arduino boards as it can detect.
##
## @var{type} - optional board type to match. If specified, the board type must match for the arduino to be added to the
## return list.
##
## @subsubheading Outputs
## @var{retval} structure cell array of matching detected arduino boards.
##
## Each cell value of the cell array will contain a structure with values of:
## @table @asis
## @item port 
## the serial port the arduino is connected to
## @item board
## the board type of the arduino
## @end table
##
## @seealso{arduino}
## @end deftypefn

function arduinos = scanForArduinos (maxCount, typestr)

  arduinos = {};
  ARDUINO_INIT_COMMAND = 1;

  if nargin > 2
    print_usage ();
  elseif nargin == 1
    typestr = "";
  elseif nargin == 0
    maxCount = 0;
    typestr = "";
  endif

  if ! isnumeric (maxCount)
    error ("scanForArduinos expected maxCount to be a number");
  endif
  if ! ischar (typestr) && !isempty (typestr)
    error ("scanForArduinos expected typestr to be a board type");
  elseif ischar (typestr)
    typestr = tolower (typestr);
  else
    typestr = "";
  endif

  # get list of serial ports to try
  ports = instrhwinfo ('serial');

  for i = 1:numel (ports)
    try
      s = {};
      unwind_protect
        if isunix
          portname = ["/dev/" ports{i}];
        else
          portname = ports{i};
        endif
        s = serial (portname, 9600, 1);
        pause(2);
     
        hdr = uint8 ([ hex2dec("A5") 0 ARDUINO_INIT_COMMAND 0]);
        len = srl_write (s, hdr);
        [tmpdataOut, tmpdataSize] = srl_read (s, 4);
        
        if tmpdataSize == 4 && tmpdataOut(1) == hex2dec("A5") && tmpdataOut(3) == ARDUINO_INIT_COMMAND
          expectlen =  tmpdataOut(4);

          [dataout, datasize] = srl_read (s, expectlen);

          # init returns the following info
          sig = (uint32 (dataout(1))*256*256) + (uint32 (dataout(2))*256) + uint32 (dataout(3));
          board = dataout(4);
          voltref = double (dataout(5))/10.0;
          if isempty (typestr) || (aruinoio.boardTypeString (board) == typestr)
            info = {};
            info.port = portname;
            info.board = arduinoio.boardTypeString (board);
            arduinos{end+1} = info;
          
            if numel (arduinos) == maxCount
              break;
            endif
	  endif
        endif

      unwind_protect_cleanup
        if !isempty (s)
          srl_close (s);
        endif
      end_unwind_protect

    catch err
      % do nothing
    end_try_catch
  endfor
endfunction

%!test
%! # assuming that to test, we have at least one board available
%! arduinos = scanForArduinos(1);
%! assert(numel(arduinos), 1);
%! assert(!isempty(arduinos{1}.port))
%! assert(!isempty(arduinos{1}.board))

%!test
%! arduinos = scanForArduinos(1, "madeuparduinoname");
%! assert(isempty(arduinos));
