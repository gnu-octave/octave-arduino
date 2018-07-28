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

% example control servo on D9
% scans servo between min - max position
pkg load instrument-control

a = arduino();

unwind_protect
  # hobby servo with puslses between 1ms - 2 ms 
  s = servo(a, 'd9', 'MinPulseDuration', 1e-3, 'MaxPulseDuration', 2e-3)
  # go mid position
  writePosition(s, .5);

  # loop, slowly going between min - max pos
  speed = 0.02;
  pauseval = .05;
  printf("scanning ...\n");
  while(true)
    pos = readPosition(s);
    pos = pos + speed;
    if(pos > 1)
      pos = 1;
      speed = -speed;
    endif
    if(pos < 0)
      pos = 0;
      speed = -speed;
    endif

    writePosition(s, pos); 
    pause(pauseval);

  endwhile
unwind_protect_cleanup
  clear a
end_unwind_protect
