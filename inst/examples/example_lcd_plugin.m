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

# test LCD plugin using the Arduini LinkSprite16x2 LCD LCD Keypad shield

# get arduino
a = arduino();

# check have the lcd addon programmed
havelcd = sum(index(a.libraries, 'examplelcd/lcd')) > 0;

if !havelcd
  error ('no LCD addon found - install it with arduinosetup');
endif

# create lcd object
lcd = addon(a, "examplelcd/lcd", "d8", "d9", "d4", "d5", "d6", "d7")

# loop, displaying date and time on LCD
while(true)
  gotoLCD(lcd, 0, 0);
  printLCD(lcd, datestr (date, "dd mmm yyyy"));
  t =  localtime(time);
  gotoLCD(lcd, 0, 1);
  printLCD(lcd, sprintf("%02d:%02d:%02d", t.hour, t.min, t.sec))
  pause(1);
endwhile
