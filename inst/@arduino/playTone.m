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
## @deftypefn {} {} playTone (@var{obj}, @var{pin}, @var{freq}, @var{duration})
## Play a tone of a given frequency on a specified pin.
##
## Currently function does nothing.
##
## @end deftypefn

function playTone (obj, pin, freq, duration)
  warning ('playTone: currently does nothing');
endfunction
