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

# example using a 74HC595 shift register
# breakout board https://www.sparkfun.com/products/10680


# arduino      shiftRegister (sparkfun breakout)
# d2           14 io            (ser_in)
# d3           11 clk           (clock)
# d4           12 latch         (l_clk)
# d5           10 reset         (/reset)
# 5V           16 vcc           (Vcc)
# gnd          8  gnd           (Gnd)
# gnd          13 oe            (oe)

a = arduino("","", 'Libraries', { "ShiftRegister" })
reg = shiftRegister(a, '74HC595', 'd2', 'd3', 'd4', 'd5');
reset(reg);
val = uint8(1)
while(true)
  write(reg, val);
  pause(1);
  val = val + uint8(1)
endwhile
