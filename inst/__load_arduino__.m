## Copyright (C) 2023 John Donoghue
##  
## This program is free software; you can redistribute it and/or
## modify it under the terms of the GNU General Public License as
## published by the Free Software Foundation; either version 3 of the
## License, or (at your option) any later version.
##      
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
## General Public License for more details.
##      
## You should have received a copy of the GNU General Public License
## along with this program; if not, see
## <http:##www.gnu.org/licenses/>.
          
## -*- texinfo -*-
## @deftypefn {} {} __load_arduino__ ()
## Undocumented internal function of arduino package.
## @end deftypefn
        
## PKG_ADD: __load_arduino__ ()

function __load_arduino__ ()
  if exist ("isfolder") == 0
    if (isdir (fullfile (fileparts (mfilename ("fullpath")), "sensors")))
      addpath (fullfile (fileparts (mfilename ("fullpath")), "sensors"));
    endif
  else
    if (isfolder (fullfile (fileparts (mfilename ("fullpath")), "sensors")))
      addpath (fullfile (fileparts (mfilename ("fullpath")), "sensors"));
    endif
  endif

  # on package load, attempt to load docs
  try
    pkg_dir = fileparts (fullfile (mfilename ("fullpath")));
    doc_file = fullfile (pkg_dir, "doc", "arduino.qch");
    if exist(doc_file, "file")
      if exist("__event_manager_register_documentation__")
        __event_manager_register_documentation__ (doc_file);
      elseif exist("__event_manager_register_doc__")
        __event_manager_register_doc__ (doc_file);
      endif
    endif
  catch
    # do nothing
  end_try_catch
endfunction
