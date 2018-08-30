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
## @deftypefn {} {@var{filelist} =} arduinoio.LibFiles ()
## Get the list of files used for the buildin arduino library
## @subsubheading Outputs
## @var{filelist} - string cell array of files for the arduino project
## @end deftypefn

function files = LibFiles()
  files = {};
  script = mfilename('fullpath');
  [path,~] = fileparts(script);
  filelist = dir(fullfile(path, "lib", "*.*"));
  for i=1:numel(filelist)
    files{end+1} = fullfile(fullfile(path, "lib"), filelist(i).name);
  endfor
endfunction
