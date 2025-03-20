## Copyright (C) 2018-2025 John Donoghue <john.donoghue@ieee.org>
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
## @deftypefn {} {@var{retval} =} scanForArduinos ()
## @deftypefnx {} {@var{retval} =} scanForArduinos (@var{maxCount})
## @deftypefnx {} {@var{retval} =} scanForArduinos (@var{"debug"})
## @deftypefnx {} {@var{retval} =} scanForArduinos (@var{maxCount}, @var{type})
## @deftypefnx {} {@var{retval} =} scanForArduinos (@var{propertyname}, @var{propertvalue} ...)
## Scan system for programmed serial connected arduino boards.
##
## scanForArduinos will scan the system for programmed arduino boards 
## and return at most @var{maxCount} of them as a cell array 
## in @var{retval}.
##
## @subsubheading Inputs
## @var{maxCount} - max number of arduino boards to detect.
## if @var{maxCount} is not specified, or is a less than 1, the 
## function will return as many arduino boards as it can detect.
##
## @var{type} - optional board type to match. If specified, the board 
## type must match for the arduino to be added to the return list.
##
## @var{"debug"} - if single input parameter is "debug", the 
## scanForArduinos will display debug information as it scans
## all available ports for arduinos.
##
## @var{propertyname}, @var{propertyvalue} - property name/value pairs to match search with.
## @table @asis
## @item 'BaudRate'
## Numeric BaudRate to use when trying to scan for arduinos.
## @item 'MaxCount'
## Max number of arduinos to scan for.
## @item 'BoardType'
## Boardtype to match.
## @item 'Debug'
## Logical flag for debug mode.
## @end table
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

function arduinos = scanForArduinos (varargin)

  # maxCount, typestr

  arduinos = {};
  debug_flag = false;

  maxCount = 0;
  typestr = "";
  baudrate = [];

  if nargin == 1
    typestr = "";
    if ischar(varargin{1})
      if strcmp(varargin{1}, "debug")
        debug_flag = 1; 
      else
        error ("scanForArduinos: invalid argument");
      endif
    elseif isnumeric(varargin{1})
      maxCount = int32(varargin{1});
    else
      error ("scanForArduinos: invalid argument");
    endif
  elseif nargin == 2 && isnumeric(varargin{1}) && ischar(varargin{2})
    # maxCount and boardtype
    maxCount = int32(varargin{1});
    typestr = varargin{2};
  elseif nargin >= 2
    # properties
    if mod (nargin, 2) != 0
        error ("scanForArduins: expected property name, value pairs");
    endif
    if !iscellstr (varargin (1:2:nargin))
      error ("scanForArduinos: expected property names to be strings");
    endif
 
    for i = 1:2:nargin
      propname = tolower (varargin{i});
      propvalue = varargin{i+1};

      if strcmp (propname,"debug")
        if propvalue
          debug_flag = 1;
        else
          debug_flag = 0;
        endif
      endif
      if strcmp (propname,"boardtype")
        boardstr = propvalue;
      endif
      if strcmp (propname,"baudrate")
        baudrate = propvalue;
      endif
      if strcmp (propname,"maxcount")
        maxCount = propvalue;
      endif
    endfor
  endif

  if ! isnumeric (maxCount) || maxCount < 0
    error ("scanForArduinos expected maxCount to be a number");
  endif
  if ! ischar (typestr) && !isempty (typestr)
    error ("scanForArduinos expected typestr to be a board type");
  elseif ischar (typestr)
    typestr = tolower (typestr);
  else
    typestr = "";
  endif

  if isempty(baudrate)
    baudrate = 9600;
    if !isempty(typestr)
      # get default baudrate for baud
      try
        c = arduinoio.getBoardConfig(typestr);
        baudrate = c.baudrate;
      catch err
        error ("scanForArduinos: unknown board type");
      end_try_catch
    endif
  endif

  if ! isnumeric (baudrate) || baudrate < 1200
    error ("scanForArduinos expected baudrate to be a number >= 1200");
  endif

  # get list of serial ports to try
  ports = serialportlist ();

  if ismac()
    filtered_ports = {};
    for i = 1:numel(ports)
      port_lower = lower(ports{i});
      # Skip Bluetooth ports and other unlikely ports
      if strfind(port_lower, "bluetooth") || ...
         strfind(port_lower, "airpods") || ...
         strfind(port_lower, "phone") || ...
         strfind(port_lower, "console") || ...
         strfind(port_lower, "debug") || ...
         strfind(port_lower, "irda") || ...
         strfind(port_lower, "virtual")

        if debug_flag
          printf("* skipping unlikely port: %s\n", ports{i});
        endif
      else
        # add in reverse order since arduinos are typically at the end
        filtered_ports = [ports{i}; filtered_ports];
      endif
    endfor
    ports = filtered_ports;
  endif

  for i = 1:numel (ports)
    try
      s = {};
      unwind_protect
        portname = ports{i};

        if debug_flag
          printf("* trying comport %s\n", portname);	
        endif
        s = arduino(portname, "", "Debug", debug_flag, "BaudRate", baudrate, "_scan_only", 1);

        if isempty (typestr) || strcmpi(s.board, typestr)
          info = {};
          info.port = portname;
          info.board = s.board;
          arduinos{end+1} = info;
          
          if debug_flag
            printf(" ** found board %s\n", info.board);
          endif

          if numel (arduinos) == maxCount
            break;
          endif
        endif
	
      unwind_protect_cleanup
        if !isempty (s)
          delete(s);
        endif
      end_unwind_protect

    catch err
      % do nothing
      if debug_flag
        printf(" ** %s\n", err.message);
      endif
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
%! a = scanForArduinos("BaudRate", 115200, "BoardType", "Uno"); 

%!error <scanForArduinos: unknown board type> scanForArduinos(1, "madeuparduinoname");
