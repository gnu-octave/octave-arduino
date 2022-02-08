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

## -*- texinfo -*- 
## @deftypefn {} {} display (@var{ar})
## Display the arduino object in a verbose way, showing the board and available pins.
##
## @subsubheading Inputs
## @var{ar} - the arduino object.
##
## If the arduino object has debug mode set, additional information will be displayed.
##
## @seealso{arduino}
## @end deftypefn

function display (ar)

  printf ("%s = \n", inputname (1));
  if isobject(ar.connected)
    printf ("  arduino object with fields of: \n");

    if isa(ar.connected, "octave_tcp")
      printf ("   deviceaddress = ")
      disp (ar.config.deviceaddress);
    endif

    printf ("            port = ")
    disp (ar.config.port);
  
    printf ("           board = ")
    disp (ar.config.board);
    printf ("       libraries = {\n")
    libs = ar.libraries ();
    for i=1:numel (libs)
      printf ("              %s\n", libs{i});
    endfor
    printf("        }\n");

    # group pins where can
    nextpin = "";
    startpin = {};
    endpin = {};
    printf ("        availablepins = {\n")
    for i=1:numel (ar.config.pins)
      pin = ar.config.pins{i};
      if !strcmpi(nextpin, pin.name)
        if !isempty(endpin)
          printf ("              %s - %s\n", startpin.name, endpin.name);
        elseif !isempty(startpin)
          printf ("              %s\n", startpin.name);
        endif
        startpin = pin;
        endpin = {};
      else
        if isempty(startpin)
          startpin = pin;
        else
          endpin = pin;
        endif
      endif
      parts = sscanf(pin.name, "%c %d");
      nextpin = sprintf("%c%d", char(parts(1)), parts(2)+1);
    endfor
  
    if !isempty(endpin)
      printf ("              %s - %s\n", startpin.name, endpin.name);
    elseif !isempty(startpin)
      printf ("              %s\n", startpin.name);
    endif
   
    printf("        }\n");
  else
    printf ("      arduino object disconnected\n");
  endif
  
  if ar.debug
    printf ("       config = \n");
    disp (ar.config);
  endif
endfunction
