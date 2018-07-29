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
## @deftypefn {} {@var{lb} =} arduinoio.LibraryBase ()
## Base class used for arduino library plugins
##
## The return value @var{lb} is an object of the arduinio.LibraryBase class.
##
## @seealso{arduino, listArduinoLibraries, addon}
## @end deftypefn

classdef LibraryBase < handle
  # properties that may be overridden in 
  # subclasses
  properties (Access = protected)
    LibraryName = "<none set>";
    DependentLibraries = {};
    ArduinoLibraryHeaderFiles = {};
    CppHeaderFile = "";
    CppSourceFile = "";
    CppClassName = "";
    Parent = {};
    Pins = [];
  endproperties

  methods (Access=public)
    # get addonin info
    function info = AddonInfo(this)
      info = {};
      info.libraryname = this.LibraryName;
      info.dependantlibraries = this.DependentLibraries;
      info.cppheaderfile = this.CppHeaderFile;
      info.cppsourcefile = this.CppSourceFile;
      info.cppclassname = this.CppClassName;
      info.classname = class(this);
    endfunction

    # display the base class  properties
    function display(this)
      printf("%s = \n", inputname(1));
      printf("    %s with properties\n", class(this));
      if numel(this.Pins) == 0
        printf("        Pins = {}\n");
      else
        printf("        Pins = {\n");
        for i=1:numel(this.Pins)
          printf("            %s\n", this.Pins{i});
        endfor
        printf("        }\n");
      endif
    endfunction
  endmethods
endclassdef