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

function retval = arduinosetup ()
  retval = 0;
  
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
