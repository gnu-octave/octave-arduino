## Copyright (C) 2018-2019 John Donoghue <john.donoghue@ieee.org>
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


classdef LibraryBase < handle
  ## -*- texinfo -*- 
  ## @deftypefn {} {} arduinoio.LibraryBase
  ## Base class used for arduino library plugins
  ##
  ## @seealso{arduino, listArduinoLibraries, addon}
  ## @end deftypefn
  ##
  ## @subheading Properties
  ## Base properties are expected to be inherited and overwritten in 
  ## inherited classes and are constant in order to query through the 
  ## metaobject mechanism.
  ##
  ## @var{LibraryName} - name of the addon library
  ##
  ## @var{DependentLibraries} - array of dependent library names that
  ##  must be included when installing this plugin.
  ##
  ## @var{CppHeaderFile} - name (if any) of header file that will be
  ## included into the arduino project when adding this library.
  ##
  ## @var{CppSourceFile} - name (if any) of source file that will be
  ## included into the arduino project when adding this library.
  ##
  ## @var{CppClassName} - name of the cpp class for the addon library.
  ## project when adding this library.
  ##
  ## @var{Pins} - pins allocated to the addon
  ##
  ## @var{Parent} - parent arduino object.
  ##
  ## @subheading Methods
  ## @deftypefn {} {@var{lb} =} LibraryBase ()
  ## Constructor of base class
  ##
  ## The constructor is usually not called but called indirectly
  ## from the addon function.
  ##
  ## @subsubheading Outputs
  ## The return value @var{lb} is an object of the arduinio.LibraryBase class.
  ##
  ## @seealso{arduino, listArduinoLibraries, addon}
  ## @end deftypefn
  ##
  ## @deftypefn {} {} disp ()
  ## Display the addon in a verbose way.
  ## @end deftypefn

  # properties that may be overridden in 
  # subclasses
  properties (Access = protected)
    LibraryName = "<none set>";
    DependentLibraries = {};
    ArduinoLibraryHeaderFiles = {};
    CppHeaderFile = "";
    CppSourceFile = "";
    CppClassName = "";
  endproperties
  
  properties (GetAccess = public, SetAccess = protected)  
    Parent = {};
    Pins = [];
  endproperties
  
  methods (Static)
    function info = AddonInfo(fullclassname)
      info = {};
      info.libraryname = "";
      info.dependentlibraries = "";
      info.cppheaderfile = "";
      info.cppsourcefile = "";
      info.cppclassname = "";
      info.arduinolibraryheaderfiles = "";
 
      data = meta.class.fromName(fullclassname);

      for ic = 1:numel(data.Properties)
        p = data.Properties{ic};
        if p.Constant
          pname = lower(p.Name);
          pvalue = p.DefaultValue;
          if isfield(info, pname)
            info.(pname) = pvalue;
          endif
        endif
     endfor

     info.classname = data.Name;

    endfunction
  endmethods

  methods (Access=public)
    # display the base class  properties
    function disp(this)
      printf("    %s with properties\n", class(this));
      if numel(this.Pins) == 0
        printf("        Pins = {}\n");
      else
        printf("        Pins = {\n");
        for i=1:numel(this.Pins)
          if isnumeric(this.Pins{i})
            printf("            %d\n", this.Pins{i});
          else
            printf("            %s\n", this.Pins{i});
          endif
        endfor
        printf("        }\n");
      endif
    endfunction

    # overrides of arduino that matlab documentation indirectly
    # seems to indicate in the examples
    function [dataout, datasize] = sendCommand(this, varargin)
      [dataout, datasize] = sendCommand(this.Parent, varargin{:}) 
    endfunction

  endmethods
endclassdef
