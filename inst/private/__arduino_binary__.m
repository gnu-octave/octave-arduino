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
  persistent arduino_binary = ""
  
  if nargin == 0
    if isempty(arduino_binary)
      arduino_binary = find_arduino_binary ();
    endif
    
  else
    % trying to set the path ?
    arduino_binary = newarduinopath;
  endif
  
  retval = arduino_binary;
endfunction

function arduino_binary = find_arduino_binary ()
  
  # use arduino_debug.exe in windoze ?
  binary_name = "arduino";
  arduino_binary = "";
  
  if (isunix ())
    binaries = strcat (binary_name, {"", ".exe"});
  else
    binaries = strcat (binary_name, {".exe"});
  endif

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
     endif
  endif
  if isempty(arduino_binary)
    error ("__arduino_binary__: can not find the arduino binary");
  endif
        
endfunction
