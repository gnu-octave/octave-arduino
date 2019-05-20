## Copyright (C) 2019 John Donoghue <john.donoghue@ieee.org>
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
## @deftypefn {} {@var{retval} =} arduino_bistsetup ()
## @deftypefnx {} {@var{retval} =} arduino_bistsetup (@var{propertyname}, @var{propertyvalue})
## Install on an arduino the required core libraries to run the BIST tests
##
## As part of the setup, the arduino IDE will be opened to allow programming
## the arduino board.
##
## @subsubheading Inputs
## 
## @var{propertyname}, @var{propertyvalue} - A sequence of property name/value pairs can be given
## to set defaults while programming.
##
## Currently the following properties can be set:
## @table @asis
## @item arduinobinary
## The value should be the name/path of the arduino IDE binary for programming. If not specified,
## the function will attempt to find the binary itself.
## @item debug
## Set the debug flag when checking the arduino
## @end table
##
## @subsubheading Outputs
## @var{retval} - return 1 if everything installed ok
##
## @seealso{arduino, arduinosetup}
## @end deftypefn

function retval = arduino_bistsetup (varargin)
  retval = 0;

  if mod (nargin, 2) != 0
    error ("arduinosetup: expected property name, value pairs");
  endif
  if !iscellstr (varargin(1:2:nargin))
    error ("arduinosetup: expected property names to be strings");
  endif
  
  arduinobinary = {};
  debug = false;
  for i = 1:2:nargin
    propname = tolower (varargin{i});
    propvalue = varargin{i+1};

    if strcmp (propname, "arduinobinary")
      arduinobinary = propvalue;
    elseif strcmp (propname, "debug")
      debug = propvalue;
    elseif
      warning ("arduino_bistsetup: unknown property '%s', ignoring it", propname);
    endif
  endfor

  printf ("** Installing core libraries on arduino - please press upload in the IDE, and after completion, close the IDE\n"); 
  if ! arduinosetup ('libraries', listArduinoLibraries('core'), varargin{:})
    error ("Failed to program the arduino");
  endif

  unwind_protect
    printf ("** Checking for any arduinos\n"); 
    ars = scanForArduinos();
    printf ("Found %d\n", numel(ars));

    printf ("** Checking can open an arduino\n"); 
    ar = arduino ([], "uno", 'debug', debug);
    if ! isarduino(ar)
      error ('Couldnt load find an arduino UNO board')
    endif

    printf ("** Checking arduino version\n"); 
    p = pkg('list', 'arduino');
    if isempty(p)
      error ('No arduino package found');
    endif
    ver = p{1}.version

    if ! strcmp(ver, version(ar))
      error ('Arduino version did not match %s : %s', ver, version(ar));
    endif

    printf ('Arduino has been programmed and is ready for BIST testing\n');
    printf (['run: __run_test_suite__({"' p{1}.dir '"}, {})\n']);
  unwind_protect_cleanup
    clear ar
  end_unwind_protect
  
endfunction
