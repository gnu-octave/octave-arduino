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

% test program for octave - arduino - mcp3002 10 bit ADC (spi)

sel_pin = "d10"

# Assuming connections of
# Arduino     MCP3002
# D10      -  1 (CS)
# D11      -  5 (DI)
# D12      -  6 (DO)
# D13      -  7 (CLK)
# VCC      -  8 (VDD)
# GND      -  4 (VSS)
#             2 (CH0) - chan 0 input
#             3 (CH1) - chan 1 input

unwind_protect
  ar = arduino();

  # talk to the mpc3002 via spi - SS = D10 on uno
  # set msb mode
  #spi = spidev(ar, "d10")
  spi = device(ar, "spichipselectpin", sel_pin)

  # command (bits) in MSB mode to device
  # [START SGL ODN MSBF X X X X] [ X X X X X X X X ] 
  #   1    1   0    1   1 1 1 1    1 1 1 1 1 1 1 1 
  #      [chan 0 ] MSB    
  # data back
  #   X    X  X     X   X 0 D D    D D D D D D D D

  printf("reading ADC @ 1 Hz...\n");

  # skip first reading
  v = writeRead(spi, [ hex2dec("DF") hex2dec("FF") ]);

  while (true)
    pause(1);

    # chan 0
    v = writeRead(spi, [ hex2dec("DF") hex2dec("FF") ]);
    adc = bitand (uint16(v(1))*256 + uint16(v(2)), hex2dec('3FF'));
    volts = double(adc) * 5.0 / 1023.0;
    printf("ch0 = 0x%04X (adc) %f (volts)\n", adc, volts)

    # chan 1
    v = writeRead(spi, [ hex2dec("EF") hex2dec("FF") ]);
    adc = bitand (uint16(v(1))*256 + uint16(v(2)), hex2dec('3FF'));
    volts = double(adc) * 5.0 / 1023.0;
    printf("ch1 = 0x%04X (adc) %f (volts)\n", adc, volts)

  endwhile
unwind_protect_cleanup
  clear ar
end_unwind_protect
