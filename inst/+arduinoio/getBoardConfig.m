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
## @deftypefn {} {@var{retval} =} arduinoio.GetBoardConfig (@var{boardname})
## Return the configuration for a known arduino board type
##
## Function is used to get the expected pin/board configuration for a named board type
## which is used to verify and identify the functionaly of the board.
##
## @var{boardname} - name of board to get configuration of ie: "uno"
##
## @var{retval} configuration struct.
## @end deftypefn

function config = getBoardConfig (board)
  config = eval(sprintf("arduinoio.config.config_%s", board));
endfunction

%!test
%! c = arduinoio.getBoardConfig("uno");
%! assert(c.board, "uno");
