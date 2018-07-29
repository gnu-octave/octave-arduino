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
## @deftypefn {} {@var{retval} =} display (@var{ar})
## Display the arduino ovject in a verbose way, showing the board, board and available pins.
##
## @var{ar} - the arduino object.
##
## if the arduino has debig mode set, additional information will be displayed.
##
## @seealso{arduino}
## @end deftypefn

function retval = display (ar)

  printf ("%s = \n", inputname (1));
  printf ("  arduino object with fields of: \n");
  printf ("    port = ")
  disp (ar.port);
  
  printf ("    board = ")
  disp (ar.board);
  printf ("    libraries = {\n")
  libs = ar.libraries ();
  for i=1:numel (libs)
    printf ("      %s\n", libs{i});
  endfor
  printf("    }\n");
  printf ("    availablepins = {\n")
  for i=1:numel (ar.config.pins)
    printf ("      %s\n", ar.config.pins{i}.name);
  endfor
  printf("    }\n");
  if ar.debug
    printf ("   config = \n");
    disp (ar.config);
  endif
endfunction
