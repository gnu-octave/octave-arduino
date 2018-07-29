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
## @deftypefn {} {@var{retval} =} addon (@var{ar}, @var{addonname})
## @deftypefnx {} {@var{retval} =} addon (@var{ar}, @var{addonname}, varargs)
## Create an addon object using the addon named class of @{addonname}.
##
##
## @var{retval} is an cell array of string library names. 
##
## @{addonname} is the name of the addon to create. The addon name can be a user 
## addon or an inbuilt addon, however must appeart in the listArduinoLibraries 
## output and have been programmed onto the arduino.
##
## @var{varargs} are optional values that will be provided verbatim to the
## the addon class constructor.
##
## @seealso{arduino, arduinosetup, listArduinoLibraries}
## @end deftypefn

function retval = addon (ar, addonname, varargin)
  
  if (! isa (ar, "arduino"))
    error("addon: expected first arguiment to be a arduino object");
  endif

  # verify arduino has the plugin name
  p = ar.get_lib (addonname);
  if p == -1
    error ("addon: arduino has not been programmed with a plugin named '%s'\n", addonname);
  endif

  availlibs = listArduinoLibraries ();
  addonlibs = __addons__ ();

  # get addonin for the requested library
  idx = find (cellfun(@(x) strcmpi(x.libraryname, addonname), addonlibs), 1);
  if isempty (idx)
    #if not found, was an inbuilt one ?
    # verify can find the lib and get/make constructor of it
    idx = find (cellfun(@(x) strcmpi(x, addonname), availlibs), 1);
    if isempty (idx)
      error ("addon: unknown library '%s'", addonname);
    endif

    # a known normal addon like spi   
    if strcmpi (addonname, "spi")
      lib = "spidev";  
    elseif strcmpi (addonname, "i2c")
      lib = "i2cdev"; 
    elseif strcmpi (addonname, "servo")
      lib = "servo"; 
    else
      error ("addon: unknown builtin library '%s'", addonname);
    endif
  else
    # user addon constructor
    lib = addonlibs{idx}.classname;
  endif

  # get constructor function handle
  constructor = str2func (lib);

  # create object
  retval = constructor (ar, varargin{:});

endfunction

%!test
%! a = arduino();
%! # do equivalent of s = spidev(a, "d10");
%! s = addon(a, "spi", "d10");
%! assert(class(s), "spidev");