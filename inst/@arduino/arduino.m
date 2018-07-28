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
## @deftypefn {} {@var{retval} =} arduino ()
## @deftypefnx {} {@var{retval} =} arduino (@var{port})
## @deftypefnx {} {@var{retval} =} arduino (@var{port}, @{board})
## @deftypefnx {} {@var{retval} =} arduino (@var{port}, @var{board}[, [@var{propname}, @var{propvalue}]*)
## Create a arduino object with a connection to an arduino board.
## 
## @var{port} - full patth of serial port to connect to. For linux, usually /dev/ttySXXX, for windows COMXX.
##
## @var{board} - name of board to connect (default is 'uno').
##
## @var{propname}, @var{propvalue} - property name and value pair for additional properties to pass to the creation
## of the arduino object.
## Currently properties are ignored.
##
## if the arduino function is called without parameters, it will scan for the first available arduino it can find and
## connect to it.
##
## Function returns a arduino object is successfully connected.
##
## @seealso{scanForArduinos}
## @end deftypefn 

classdef arduino < handle
  properties
    name = ""
    port = "<not set>";
    board = 'uno';
    debug = false;
    config = {};
    resources = {}
    connected = false;
  endproperties
  
  methods (Access = public)
 
    function p = arduino (varargin)

      if (nargin == 0)
        arduinos = scanForArduinos (1);
        if isempty (arduinos)
          error ("arduino: No arduinos found on serial scan");
        endif

        p.board = arduinos{1}.board;
        p.config = eval (sprintf("config_%s", arduinos{1}.board));
        p.name = "arduino";
        p.port = arduinos{1}.port;
        p = __initArduino__(p);
      elseif (nargin == 1)
        arg0 = varargin{1};
        if (isa (arg0, "arduino"))
          # copy
          p.config = arg0.config;
          p.resources = arg0.resources;
          p.name = arg0.name;
          p.port = arg0.port;
          p.connected = arg0.connected;
          p.board = arg0.board;
        elseif ischar(arg0)
          # port given
          p.config = config_uno;
          p.board = "uno";
          p.name = "arduino";
          p.port = arg0;
          p.connected = false;
          p = __initArduino__(p);
        else
          error ("arduino: port must be a string");         
        endif
      else
        # at least port, board [optional property pairs]
        port = varargin{1};
        board = varargin{2};
        if isempty(port)
          arduinos = scanForArduinos (1, board);
          if isempty (arduinos)
            error ("arduino: No matching arduinos found on serial scan");
          endif
          port = arduinos{1}.port;
          board = arduinos{1}.board;
        elseif !ischar(port)
          error ("arduino: port must be a string");         
        endif
        
        if !ischar(port)
          error ("arduino: board must be a string");         
        endif

        if mod(nargin, 2) != 0
          error ("arduino: expected property name, value pairs");
        endif
        if !iscellstr (varargin(3:2:nargin))
          error ("arduino: expected property names to be strings");
        endif
        p.port = port;
        p.name = ["arduino " board];
        p.board = board;
        #p.config = eval(sprintf("config_%s", board));

        # TODO propertys to set - currently do nothing with them
        requiredlibs = {};
        for i = 3:2:nargin
          propname = tolower(varargin{i});
          propvalue = varargin{i+1};

          #printf("%s = %s\n", propname, propvalue);
          if strcmp(propname,"debug")
            if propvalue
              p.debug = 1;
            endif
          endif
          if strcmp(propname,"libraries")
             if ischar(propvalue)
               requiredlibs{end+1} = propvalue;
             elseif iscellstr(propvalue)
               requiredlibs = propvalue;
             else
               error ("arduino: expect libraries value to be a libraryname or cellarray of library names");
             endif
          endif
        endfor

        p = __initArduino__(p);

        # check have requested libs
        for i = 1:numel(requiredlibs)
          lib = requiredlibs{i};
          id = p.get_lib(lib);
          if id < 0
            availablelibs = listArduinoLibraries();
            idx = find( cellfun(@(x) strcmpi(x, lib), availablelibs), 1);
            if isempty(idx)
               error ('arduino: unknown library "%s"', lib);
            else
              error ('arduino: not configured with library "%s" - please rerun arduinosetup with library', lib);
            endif
          endif
        endfor
      endif
    endfunction

    # helper functions
    function set_debug(p, d)
      p.debug = d;
    endfunction

    function d = get_debug(p)
      d = p.debug;
    endfunction

    function id = get_lib (p, name)
      idx = find( cellfun(@(x) strcmpi(x.name, name), p.config.libs), 1);

      if isempty (idx)
        id = -1;
      else
        id = p.config.libs{idx}.id;
      endif
    endfunction

    function set_pin (p, pin, info)
      if ischar(pin)
        idx = find( cellfun(@(x) strcmpi(x.name, pin), p.config.pins), 1);
      else
        idx = find( cellfun(@(x) (x.d == pin), p.config.pins), 1);
      endif

      if isempty (idx)
        error ("arduino: unknown pin");
      endif
 
      p.config.pins{idx} = info;
    endfunction
      
    function info = get_pin (p, pin)
      if ischar(pin)
        idx = find( cellfun(@(x) strcmpi(x.name, pin), p.config.pins), 1);
      else
        idx = find( cellfun(@(x) (x.id == pin), p.config.pins), 1);
      endif

      if isempty (idx)
        error (["arduino: unknown pin " pin]);
      endif
     
      info = p.config.pins{idx};
    endfunction

    function retval = get_group(p,type)
      retval = {};

      for i = 1:numel(p.config.pins)
        pininfo = p.config.pins{i};
        idx = find( cellfun(@(x) strncmpi(x, type, length(type)), pininfo.modes), 1);
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
    endfunction

    function retval = get_pingroup(p,pin,type)
      retval = {};
      pininfo = p.get_pin(pin);
      idx = find( cellfun(@(x) strncmpi(x, type, length(type)), pininfo.modes), 1);
      if !isempty(idx)
        # possibly this will be in format of
        # type[XX]_YY where XX is a number ir: spi0, spi1 etc, 
        ##  _YY will be the pinfunction ie: scl, miso etc
        values = strsplit(pininfo.modes{idx}, "_");
        type = values{1};

        for i = 1:numel(p.config.pins)
           pininfo = p.config.pins{i};
           idx = find( cellfun(@(x) strncmpi(x, type, length(type)), pininfo.modes), 1);
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
      for i=1:numel(this.config.pins)
        pins{end+1} = this.config.pins{i}.name;
      endfor
    endfunction

    function libs = libraries(this)
      libs = {};
      for i=1:numel(this.config.libs)
        libs{end+1} = this.config.libs{i}.name;
      endfor
    endfunction

    function set_resource (p, resource, res)
      resource = tolower(resource);

      # make sure noone tries to change the name used for searching
      res.name = resource;

      idx = find( cellfun(@(x) strcmp(x.name, resource), p.resources), 1);

      if isempty (idx)
        p.resources{end+1} = res;
      else
        p.resources{idx} = res;
      endif
 
    endfunction
      
    function res = get_resource (p, resource)
      resource = tolower(resource);
      idx = find( cellfun(@(x) strcmp(x.name, resource), p.resources), 1);

      if isempty (idx)
        # none currently
        res = {};
        res.name = resource;
        res.count = 0;
        res.owner = "";
      else
        res = p.resources{idx};
      endif
     
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