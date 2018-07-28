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

% blink the LED on D13
pkg load instrument-control

a = arduino();

unwind_protect
  printf("starting to blink...\n");
  while (true)
    writeDigitalPin(a, 'D13', 0);
    pause(0.5);
    writeDigitalPin(a, 'D13', 1);
    pause(0.5);
  endwhile
unwind_protect_cleanup
  clear a
end_unwind_protect
