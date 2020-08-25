## Copyright (C) 2018-2019 John Donoghue <john.donoghue@ieee.org>
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

classdef arduino < handle
  ## -*- texinfo -*- 
  ## @deftypefn {} {@var{retval} =} arduino ()
  ## @deftypefnx {} {@var{retval} =} arduino (@var{port})
  ## @deftypefnx {} {@var{retval} =} arduino (@var{port}, @var{board})
  ## @deftypefnx {} {@var{retval} =} arduino (@var{port}, @var{board}[, [@var{propname}, @var{propvalue}]*)
  ## Create a arduino object with a connection to an arduino board.
  ## 
  ## @subsubheading Inputs
  ## @var{port} - full path of serial port to connect to. For Linux,
  ## usually /dev/ttySXXX, for windows COMXX.
  ##
  ## @var{board} - name of board to connect (default is 'uno').
  ##
  ## @var{propname}, @var{propvalue} - property name and value pair
  ## for additional properties to pass to the creation of the 
  ## arduino object.
  ##
  ## Currently properties are ignored.
  ##
  ## if the arduino function is called without parameters, it will scan
  ## for the first available arduino it can find and connect to it.
  ##
  ## @subsubheading Outputs
  ## @var{retval} - a successfully connected arduino object.
  ##
  ## @subsubheading Properties
  ## The arduino object has the following public properties:
  ## @table @asis
  ## @item name
  ## name assigned to the arduino object
  ## @item debug
  ## true / false flag for whether debug in turned on
  ## @item port (read only)
  ## the communications port the board is connected to.
  ## @item board  (read only)
  ## The name of the board type that the arduino connected to
  ## @item libraries (read only)
  ## The libraries currently programmed onto the board
  ## @item availablepins
  ## The pins available for use on the board
  ## @end table
  ## @seealso{scanForArduinos, arduinosetup}
  ## @end deftypefn 

  properties (Access = private)
    config = {};
    resources = {};
    connected = false;
  endproperties

  properties (Access = public)
    name = "";
    debug = false;
  endproperties
  
  methods (Access = public)
 
    function this = arduino (varargin)

      if (nargin == 0)
        arduinos = scanForArduinos (1);
        if isempty (arduinos)
          error ("arduino: No arduinos found on serial scan");
        endif

        this.name = "arduino";
        this = __initArduino__ (this, arduinos{1}.port, arduinos{1}.board);
      elseif (nargin == 1)
        arg0 = varargin{1};
        if (isa (arg0, "arduino"))
          # copy
          this.config = arg0.config;
          this.resources = arg0.resources;
          this.name = arg0.name;
          this.connected = arg0.connected;
        elseif ischar(arg0)
          # port given
          this.name = "arduino";
          this.connected = false;
          this = __initArduino__ (this, arg0, "");
        else
          error ("arduino: port must be a string");         
        endif
      else
        # at least port, board [optional property pairs]
        port = varargin{1};
        board = varargin{2};
        if isempty (port)
          arduinos = scanForArduinos (1, board);
          if isempty (arduinos)
            error ("arduino: No matching arduinos found on serial scan");
          endif
          port = arduinos{1}.port;
          board = arduinos{1}.board;
        elseif !ischar (port)
          error ("arduino: port must be a string");         
        endif
        
        if !ischar (port)
          error ("arduino: board must be a string");         
        endif

        if mod (nargin, 2) != 0
          error ("arduino: expected property name, value pairs");
        endif
        if !iscellstr (varargin (3:2:nargin))
          error ("arduino: expected property names to be strings");
        endif
        this.name = ["arduino " board];

        requiredlibs = {};
        forcebuild = false;
        for i = 3:2:nargin
          propname = tolower (varargin{i});
          propvalue = varargin{i+1};

          #printf("%s = %s\n", propname, propvalue);
          if strcmp (propname,"debug")
            if propvalue
              this.debug = 1;
            endif
          endif
          if strcmp (propname,"libraries")
            if ischar (propvalue)
              requiredlibs{end+1} = propvalue;
            elseif iscellstr (propvalue)
              requiredlibs = propvalue;
            else
              error ("arduino: expect libraries value to be a libraryname or cellarray of library names");
            endif
          endif
          if strcmp (propname,"forcebuild")
            if islogical (propvalue) || (isnumeric(propvalue) && (propvalue == 1 || propvalue == 0))
              forcebuild = propvalue;
            else
              error ("arduino: expect forcebuild to be true or false");
            endif
          endif
        endfor

        this = __initArduino__ (this, port, board);

        # check have requested libs
        reprogram = false;

        for i = 1:numel (requiredlibs)
          lib = requiredlibs{i};
          id = this.get_lib (lib);
          if id < 0
            availablelibs = listArduinoLibraries ();
            idx = find( cellfun(@(x) strcmpi(x, lib), availablelibs), 1);
            if isempty (idx)
              error ('arduino: unknown library "%s"', lib);
            elseif forcebuild
              warning ('arduino: not configured with library "%s" - will need to reprogram', lib);
              reprogram = true;
            else
              error ('arduino: not configured with library "%s" - please rerun arduinosetup with library, or set forcebuild', lib);
            endif
          endif
        endfor

        if reprogram
          printf("starting reprogram process ....\n")

          # free arduino resources, reprom and then reinit
          this = __freeArduino__(this);

          if !arduinosetup ('libraries', requiredlibs);
            error ("arduinosetup returned a failure, so did not reprogram")
          endif

          this = __initArduino__ (this, port, board);
        endif
      endif
    endfunction
  endmethods

  methods (Hidden = true)
    # helper functions
    function set_debug (this, d)
      this.debug = d;
    endfunction

    function d = get_debug (this)
      this = this.debug;
    endfunction

    # helper functions that get/set values in the private config
    function m = get_mcu (this)
      m = this.config.mcu;
    endfunction

    function id = get_lib (this, name)
      idx = find( cellfun(@(x) strcmpi(x.name, name), this.config.libs), 1);

      if isempty (idx)
        id = -1;
      else
        id = this.config.libs{idx}.id;
      endif
    endfunction

    function set_pin (this, pin, info)
      if ischar(pin)
        idx = find (cellfun(@(x) strcmpi (x.name, pin), this.config.pins), 1);
      else
        idx = find (cellfun(@(x) (x.d == pin), this.config.pins), 1);
      endif

      if isempty (idx)
        error ("arduino: unknown pin");
      endif
 
      this.config.pins{idx} = info;
    endfunction
      
    function info = get_pin (this, pin)
      if ischar(pin)
        idx = find (cellfun(@(x) strcmpi (x.name, pin), this.config.pins), 1);
      else
        idx = find (cellfun(@(x) (x.id == pin), this.config.pins), 1);
      endif

      if isempty (idx)
        error (["arduino: unknown pin " pin]);
      endif
     
      info = this.config.pins{idx};
    endfunction

    function retval = get_group(this,type)
      retval = {};

      for i = 1:numel (this.config.pins)
        pininfo = this.config.pins{i};
        idx = find (cellfun(@(x) strncmpi (x, type, length (type)), pininfo.modes), 1);
        if !isempty(idx)
          values = strsplit (pininfo.modes{idx}, "_");
          info = {};
          info.name = pininfo.name;
          info.func = values{2};
          info.mode = pininfo.mode;
          info.owner = pininfo.owner;
          retval{end+1}= info;
        endif
      endfor
    endfunction

    function retval = get_pingroup(this, pin, type)
      retval = {};
      pininfo = this.get_pin(pin);
      idx = find (cellfun(@(x) strncmpi(x, type, length(type)), pininfo.modes), 1);
      if !isempty (idx)
        # possibly this will be in format of
        # type[XX]_YY where XX is a number ir: spi0, spi1 etc, 
        ##  _YY will be the pinfunction ie: scl, miso etc
        values = strsplit (pininfo.modes{idx}, "_");
        type = values{1};

        for i = 1:numel (this.config.pins)
           pininfo = this.config.pins{i};
           idx = find (cellfun(@(x) strncmpi(x, type, length (type)), pininfo.modes), 1);
           if !isempty(idx)
             values = strsplit(pininfo.modes{idx}, "_");
             info = {};
             info.name = pininfo.name;
             info.func = values{2};
             info.mode = pininfo.mode;
             info.owner = pininfo.owner;
             retval{end+1}= info;
           endif
        endfor
      endif
    endfunction

    function pins = availablepins(this)
      pins = {};
      for i=1:numel (this.config.pins)
        pins{end+1} = this.config.pins{i}.name;
      endfor
    endfunction

    function libs = libraries(this)
      libs = {};
      for i=1:numel (this.config.libs)
	if ! strcmpi(this.config.libs{i}.name, "core")
          libs{end+1} = this.config.libs{i}.name;
	endif
      endfor
    endfunction

    function p = port(this)
      p = this.config.port;
    endfunction

    function b = board(this)
      b = this.config.board;
    endfunction

    function set_resource (this, resource, res)
      resource = tolower (resource);

      # make sure noone tries to change the name used for searching
      res.name = resource;

      idx = find (cellfun(@(x) strcmp(x.name, resource), this.resources), 1);

      if isempty (idx)
        this.resources{end+1} = res;
      else
        this.resources{idx} = res;
      endif
 
    endfunction
      
    function res = get_resource (this, resource)
      resource = tolower(resource);
      idx = find (cellfun(@(x) strcmp(x.name, resource), this.resources), 1);

      if isempty (idx)
        # none currently
        res = {};
        res.name = resource;
        res.count = 0;
        res.owner = "";
        res.props = struct();
      else
        res = this.resources{idx};
      endif
     
    endfunction

    function v = board_voltage (this)
      v = this.config.voltref;
    endfunction
  endmethods 
endclassdef

%!shared arduinos
%! arduinos = scanForArduinos(1);

%!assert(numel(arduinos), 1);

%!test
%! ar = arduino();
%! assert(!isempty(ar));
%! assert(ar.port, arduinos{1}.port);
%! assert(ar.board, arduinos{1}.board);
%! assert(numel(ar.availablepins) > 0);

%!test
%! ar = arduino(arduinos{1}.port);
%! assert(!isempty(ar));
%! assert(ar.port, arduinos{1}.port);
%! assert(ar.board, arduinos{1}.board);

%!test
%! ar = arduino(arduinos{1}.port, arduinos{1}.board);
%! assert(!isempty(ar));
%! assert(isa(ar, "arduino"))
%! assert(ar.port, arduinos{1}.port);
%! assert(ar.board, arduinos{1}.board);

%!test
%! ar = arduino();
%! # verify have compiled support for functions we will be testing
%! assert(!isempty(find(cellfun(@(x) strcmpi(x, "spi"), ar.libraries()), 1)))
%! assert(!isempty(find(cellfun(@(x) strcmpi(x, "i2c"), ar.libraries()), 1)))
%! assert(!isempty(find(cellfun(@(x) strcmpi(x, "servo"), ar.libraries()), 1)))
%! assert(!isempty(find(cellfun(@(x) strcmpi(x, "shiftregister"), ar.libraries()), 1)))
%! assert(!isempty(find(cellfun(@(x) strcmpi(x, "rotaryencoder"), ar.libraries()), 1)))
