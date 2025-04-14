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
## @deftypefn {} {@var{retval} =} __arduino__binary__ (})
## @deftypefnx {} {@var{retval} =} __arduino__binary__ (@var{newpath})
## Private function to set arduino path
## @seealso{arduinosetup}
## @end deftypefn

function retval = __arduino_binary__ (newarduinopath)
  persistent arduino_binary = "";
  
  if nargin == 0
    if isempty(arduino_binary)
      arduino_binary = find_arduino_binary ();
    endif
    
  else
    % trying to set the path ?
    arduino_binary = newarduinopath;
    setpref('arduino', 'arduino_binary', arduino_binary);
  endif
  
  retval = arduino_binary;
endfunction

function arduino_binary = find_arduino_binary ()
  
  # use arduino_debug.exe in windoze ?
  binary_name = {"arduino", "arduino-ide"};
  arduino_binary = "";
  have_prefs = false;

  binary = getpref("arduino", "arduino_binary", "");
  if !isempty(binary)
    have_prefs = true;
    t = file_in_path (getenv ("PATH"), binary);
    if !isempty(t)
      arduino_binary = t;
    endif
  endif
  
  if (isunix ())
    binaries = {}'
    for idx=1:numel(binary_name)
      binaries{end+1} = binary_name{idx};
      binaries{end+1} = strcat (binary_name{idx}, ".exe");
    endfor
  else
    binaries = {}'
    for idx=1:numel(binary_name)
      binaries{end+1} = strcat (binary_name{idx}, ".exe");
    endfor
  endif

  # do we have a ARDUINO_HOME ?
  if isempty (arduino_binary)
    if isenv("ARDUINO_HOME")
      n=0;
      while (n < numel (binaries) && isempty (arduino_binary))
        arduino_binary = file_in_path (getenv ("ARDUINO_HOME"), binaries{++n});
      endwhile
    endif
  endif

  # can we find in path
  n = 0;
  while (n < numel (binaries) && isempty (arduino_binary))
    arduino_binary = file_in_path (getenv ("PATH"), binaries{++n});
  endwhile

  % if a pc, and have the winqueryreg function, try find the path
  if isempty(arduino_binary) && ispc ()
    if exist('winqueryreg') == 5
      try
        arduino_binary = winqueryreg("HKLM", 'SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\arduino.exe');
      end_try_catch 
      if isempty(arduino_binary)
        # try win32 registry
        try
          arduino_binary = fullfile(winqueryreg("HKLM", 'SOFTWARE\WOW6432Node\Arduino', 'install_dir'), 'arduino.exe');
        end_try_catch
      endif
    endif
    if isempty(arduino_binary)
      trypath = "C:\\Program Files (x86)\\Arduino\\arduino.exe";
      if exist (trypath, "file")
        arduino_binary = trypath;
      endif
    endif
    if isempty(arduino_binary)
      trypath = fullfile (getenv ("LOCALAPPDATA"), "Programs", "Arduino IDE", "Arduino IDE.exe");
      if exist (trypath, "file")
        arduino_binary = trypath;
      endif
    endif
    if isempty(arduino_binary)
      trypath = fullfile (getenv ("PROGRAMFILES"), "Arduino IDE", "Arduino IDE.exe");
      if exist (trypath, "file")
        arduino_binary = trypath;
      endif
    endif
  endif

  % look for arduino prefs file
  if isempty (arduino_binary)
    if ispc ()
      prefsfile = fullfile (getenv ("LOCALAPPDATA"), "Arduino15", "preferences.txt");
    else
      prefsfile = fullfile (getenv ("HOME"), ".arduino15", "preferences.txt");
    endif

    fd = fopen (prefsfile, "rt");
    if fd != -1
      try
        trypaths = {};
        while ! feof (fd)
          l = fgetl (fd);
          str  = regexp (l, "last\.ide\.(?<version>\\d.*)\.hardwarepath=(?<path>.*)$", "names");
          if ! isempty (str)
            trypaths{end+1} = str;
          endif
        endwhile

        if !isempty (trypaths)
          % sort so will try newest ver first
          [~, sortidx] = sort(arrayfun( @(x) x{1}.version, trypaths, 'uniformoutput', false), 'descend');
          for idx = 1:length(sortidx)
            if isempty (arduino_binary)
              [trypath,~,~] = fileparts (trypaths{idx}.path);
              n = 0;
              while (n < numel (binaries) && isempty (arduino_binary))
                arduino_binary = file_in_path (trypath, binaries{++n});
              endwhile
            endif
          endfor
        endif

      end_try_catch
      fclose (fd);
    endif
  endif

  if isempty(arduino_binary)
    error ("__arduino_binary__: can not find the arduino binary");
  elseif !have_prefs
    setpref('arduino', 'arduino_binary', arduino_binary);
  endif
        
endfunction
