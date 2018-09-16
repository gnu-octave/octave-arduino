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
## @deftypefn {} {@var{retval} =} arduinosetup ()
## @deftypefnx {} {@var{retval} =} arduinosetup (@var{propertyname}, @var{propertyvalue})
## Open the arduino config / programming tool to program the arduino hardware for usage with
## the Octave arduino functions.
##
## arduinosetup will create a temporary project  using the arduino IDE and allow 
## compiling and programming of the code to an arduino. 
##
## @subsubheading Inputs
## 
## @var{propertyname}, @var{propertyvalue} - A sequence of property name/value pairs can be given
## to set defaults while programming.
##
## Currently the following properties can be set:
## @table @asis
## @item libraries
## The value should be the name of a library, or string array of libraries to program on the
## arduino board.
## @item arduinobinary
## The value should be the name/path of the arduino IDE binary for programming. If not specified,
## the function will attempt to find the binary itself.
## @end table
##
## @subsubheading Outputs
## @var{retval} - return 1 if arduino IDE returned without an error
##
## @seealso{arduino, __arduino_binary__}
## @end deftypefn

function retval = arduinosetup (varargin)
  retval = 0;

  if mod (nargin, 2) != 0
    error ("arduinosetup: expected property name, value pairs");
  endif
  if !iscellstr (varargin(1:2:nargin))
    error ("arduinosetup: expected property names to be strings");
  endif
  
  libs = {};
  arduinobinary = {};
  for i = 1:2:nargin
    propname = tolower (varargin{i});
    propvalue = varargin{i+1};

    if strcmp (propname, "libraries")
      if iscell (propvalue)
        libs = propvalue;
      elseif ischar (propvalue)
        libs{end+1} = propvalue;
      else
        error ("arduinosetup Expected libraries to be a cellarray or string");
      endif
    elseif strcmp (propname, "arduinobinary")
      arduinobinary = propvalue;
    endif
  endfor

  if isempty(libs)
    # default libs if not are provided
    libs{end+1} = "SPI";
    libs{end+1} = "I2C";
    libs{end+1} = "Servo";
    libs{end+1} = "ShiftRegister";
  endif

  # we have the libs ?
  availlibs = listArduinoLibraries ();
  addonlibs = __addons__ ();

  builtinlibs = {};
  for i = 1:numel(libs)
    idx = find (cellfun(@(x) strcmpi(x.libraryname, libs{i}), addonlibs), 1);
    if isempty(idx)
       idx = find (cellfun(@(x) strcmpi(x, libs{i}), availlibs), 1);
       if isempty (idx)
         error ("arduinosetup: unknown library '%s'", libs{i});
       endif
       builtinlibs{end+1} = libs{i};
       libs{i} = [];
    else
       libs{i} = addonlibs{idx};
    endif
  endfor

  libfiles = arduinoio.LibFiles();
  if isempty (libfiles)
    error ("arduinosetup: couldn't find library files");
  endif

  # make a temp folder and create a arduino project in it
  tmpdir = tempname ();
  mkdir (tmpdir);
  
  unwind_protect
    mkdir (fullfile (tmpdir, "octave"));
    
    # copy all the libfiles
    copyfile (libfiles, fullfile (tmpdir, "octave"));

    fd = fopen (fullfile (tmpdir, "octave", "settings.h"), "w+t");
    fprintf (fd, "// generated from arduinosetup for buildin library configuration\n");

    fprintf (fd, "\n");
    fprintf (fd, "// override target voltage (x10) by uncommenting and providing a value\n");
    fprintf (fd, "//#define BOARD_VOLTAGE 50\n");

    fprintf (fd, "\n");
    fprintf (fd, "// builtin library support\n");

    idx = find (cellfun(@(x) strcmpi(x, "SPI"), builtinlibs), 1);
    if !isempty(idx)
      fprintf (fd, "#define USE_SPI\n");
    else
      fprintf (fd, "//#define USE_SPI\n");
    endif

    idx = find (cellfun(@(x) strcmpi(x, "I2C"), builtinlibs), 1);
    if !isempty(idx)
      fprintf (fd, "#define USE_I2C\n");
    else
      fprintf (fd, "//#define USE_I2C\n");
    endif

    idx = find (cellfun(@(x) strcmpi(x, "Servo"), builtinlibs), 1);
    if !isempty(idx)
      fprintf (fd, "#define USE_SERVO\n");
    else
      fprintf (fd, "//#define USE_SERVO\n");
    endif

    idx = find (cellfun(@(x) strcmpi(x, "ShiftRegister"), builtinlibs), 1);
    if !isempty(idx)
      fprintf (fd, "#define USE_SHIFTREG\n");
    else
      fprintf (fd, "//#define USE_SHIFTREG\n");
    endif

    idx = find (cellfun(@(x) strcmpi(x, "RotaryEncoder"), builtinlibs), 1);
    if !isempty(idx)
      fprintf (fd, "#define USE_ROTARYENCODER\n");
    else
      fprintf (fd, "//#define USE_ROTARYENCODER\n");
    endif
 
    fclose (fd);

    # requested additional libs
    fd = fopen (fullfile (tmpdir, "octave", "addons.h"), "w+t");
    fprintf(fd, "// generated from arduinosetup for addon library addidtions\n");
    for i = 1:numel (libs)
       l = libs{i};
       if !isempty (l)
	 if !isempty (l.cppheaderfile)
           copyfile (l.cppheaderfile, fullfile(tmpdir, "octave"));
	   [d,f,e] = fileparts (l.cppheaderfile);
           fprintf (fd, '#include "%s%s"\n', f,e);   
	   if !isempty (l.cppclassname)
	     fprintf (fd, "%s addon%d(octavearduino);\n", l.cppclassname, i);
           endif
	 endif
	 if !isempty (l.cppsourcefile)
           copyfile (l.cppsourcefile, fullfile(tmpdir, "octave"));
	 endif
       endif
    endfor
    fclose(fd);
    
    # start the arduino ide
    if isempty (arduinobinary)
      arduinobinary = __arduino_binary__ ();
    endif

    filename = fullfile (tmpdir, "octave", "octave.ino");
    cmdline = sprintf ("\"%s\" \"%s\"", arduinobinary, filename);
    printf ("Running %s\n", cmdline);
    [status, ~] = system (cmdline);

    retval = (status == 0);
  unwind_protect_cleanup
    confirm_recursive_rmdir (false, "local");
    rmdir(tmpdir, "s");
  end_unwind_protect
  
endfunction
