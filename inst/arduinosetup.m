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
## Open the arduino config / programming tool to program the arduino hardware for usage with
## the Octave arduino functions.
##
## @seealso{arduino, __arduino_binary__}
## @end deftypefn

function retval = arduinosetup (varargin)
  retval = 0;

  if mod(nargin, 2) != 0
    error ("arduinosetup: expected property name, value pairs");
  endif
  if !iscellstr (varargin(1:2:nargin))
    error ("arduinosetup: expected property names to be strings");
  endif
  libs = {};
  for i = 1:2:nargin
     propname = tolower(varargin{i});
     propvalue = varargin{i+1};
     if strcmp(propname, "libraries")
       if iscell(propvalue)
	 libs = propvalue;
       elseif ischar(propvalue)
	 libs{end+1} = propvalue;
       else
	       error("arduinosetup Expected libraries to be a cellarray or string");
       endif
     endif
  endfor

  # we have the libs ?
  availlibs = listArduinoLibraries();
  addonlibs = __addons__ ();

  for i = 1:numel(libs)
    idx = find( cellfun(@(x) strcmpi(x.libraryname, libs{i}), addonlibs), 1);
    if isempty(idx)
       idx = find( cellfun(@(x) strcmpi(x, libs{i}), availlibs), 1);
       if isempty(idx)
	  error ("unknown library '%s'", libs{i});
       endif
       libs{i} = [];
    else
       libs{i} = addonlibs{idx};
    endif
  endfor

  template = file_in_loadpath(fullfile("private", "template.ino"));
  if isempty(template)
    error ("arduinosetup: couldn't find private/template.ino");
  endif

  # make a temp folder and create a arduino project in it
  tmpdir = tempname();
  mkdir (tmpdir);
  
  unwind_protect
    mkdir (fullfile(tmpdir, "octave"));
    filename = fullfile(tmpdir, "octave", "octave.ino");
    copyfile (template, filename, 'f');

    # copy over any lib sources in the lib dir in same folder as template.ino
    dirname = fileparts(template);
    copyfile(fullfile(dirname, "lib", "*.[ch]*"), fullfile(tmpdir, "octave"))

    fd = fopen (fullfile(tmpdir, "octave", "settings.h"), "w+t");
    fprintf(fd, "// generated from arduinosetup - comment to remiove inbuild functionality\n");
    fprintf(fd, "#define USE_SPI\n");   
    fprintf(fd, "#define USE_I2C\n");   
    fprintf(fd, "#define USE_SERVO\n");   
    fprintf(fd, "#define USE_SHIFTREG\n");
    fclose(fd);

    # requested additional libs
    fd = fopen (fullfile(tmpdir, "octave", "addons.h"), "w+t");
    fprintf(fd, "// generated from arduinosetup\n");
    for i = 1:numel(libs)
       l = libs{i};
       if !isempty(l)
	 if !isempty(l.cppheaderfile)
           copyfile(l.cppheaderfile, fullfile(tmpdir, "octave"));
	   [d,f,e] = fileparts(l.cppheaderfile);
           fprintf(fd, '#include "%s%s"\n', f,e);   
	   if !isempty(l.cppclassname)
	     fprintf (fd, "%s addon%d(octavearduino);\n", l.cppclassname, i);
           endif
	 endif
	 if !isempty(l.cppsourcefile)
           copyfile(l.cppsourcefile, fullfile(tmpdir, "octave"));
	 endif
       endif
    endfor
    fclose(fd);
    
    # start the arduino ide
    cmdline = sprintf("\"%s\" \"%s\"", __arduino_binary__ (), filename);
    printf ("Running %s\n", cmdline);
    system(cmdline);

    retval = 1;
  unwind_protect_cleanup
    confirm_recursive_rmdir(false, "local");
    rmdir(tmpdir, "s");
  end_unwind_protect
  
endfunction
