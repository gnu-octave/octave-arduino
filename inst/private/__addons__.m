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
## @deftypefn {} {@var{retval} =} __addons__ ()
## Private function to get information aabout all user
## plugins
## @end deftypefn

function addonfiles = __addons__ ()
  addonfiles = {};

  addonpathfix = fileparts (mfilename ('fullpath'));

  # how can we look for +arduinioaddons in the load path
  # genpath and dir_in_loadpath wont do it, so have to do it the hard way
  loadpaths = strsplit (path (), pathsep);
  addondirs = {};
  for i = 1:numel (loadpaths)
    checkpath = fullfile (loadpaths{i}, "+arduinoioaddons");
    if exist (checkpath, "dir")
      addondirs{end+1} = checkpath;
    endif
  endfor
  
  # we expect <+arduinoioaddons>/+AddonFolderName/<Addonname.m>
  for i=1:numel (addondirs)
    files = dir (addondirs{i});
    for j = 1:numel (files)
      if files(j).isdir && files(j).name(1) != '.'
        searchname = fullfile (addondirs{i}, files(j).name, "*.m");
        f1 = files (j).name;
        if f1(1) == "+"
          f1 = f1(2:end);
        endif

        files2 = dir (searchname);
        folder = fileparts(searchname);
        for k = 1:numel (files2)
          finfo = {};
          [d2,f2,e2] = fileparts (files2(k).name);
          classname = sprintf ("arduinoioaddons.%s.%s", f1, f2);
          if is_arduino_addon_class(classname)
            z = eval(sprintf ("%s.AddonInfo('%s')", classname, classname));
            
            z.scriptfile = fullfile (folder, files2(k).name);
          
            # paths are wrong, as mfilename isnt giving use a path from within the class
            # so for now, fixing here
            z.cppheaderfile = strrep (z.cppheaderfile, addonpathfix, folder);
            z.cppsourcefile = strrep (z.cppsourcefile, addonpathfix, folder);
  
            addonfiles{end+1} = z;
          endif
        endfor
      endif
    endfor
  endfor
endfunction

function retval = is_arduino_addon_class(classname)
  classinfo = meta.class.fromName(classname);
  if !isempty(classinfo)
    idx = find( cellfun(@(x) strcmpi(x.Name, "arduinoio.LibraryBase"), classinfo.SuperClassList), 1);
    retval = !isempty(idx);
  else
    retval = false;
  endif
endfunction
