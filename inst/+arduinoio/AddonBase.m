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

classdef AddonBase < handle
  ## -*- texinfo -*- 
  ## @deftypefn {} {} arduinoio.AddonBase
  ## Base class used for arduino library sensors
  ##
  ## @seealso{arduinoio.LibraryBase}
  ## @end deftypefn
  ##
  ## @subheading Properties
  ## Base properties are expected to be inherited and overwritten in inherited classes.
  ## and are constant in order to query through the metaobject mechanism.
  ##
  ## @var{Parent} - parent librarybase object
  ##
  ## @subheading Methods
  ## @deftypefn {} {@var{ab} =} AddonBase ()
  ## Constructor of base class
  ##
  ## @subsubheading Outputs
  ## The return value @var{ab} is an object of the arduinio.AddonBase class.
  ##
  ## @seealso{arduino, addon}
  ## @end deftypefn
  ##
  ## @deftypefn {} {} display ()
  ## Display the addon in a verbose way.
  ## @end deftypefn

  # properties that may be overridden in 
  # subclasses
  properties (GetAccess = public, SetAccess = protected)
    Parent = {};
  endproperties

  methods (Access=public)
    # display the base class  properties
    function display(this)
      printf("%s = \n", inputname(1));
    endfunction
  endmethods
endclassdef
