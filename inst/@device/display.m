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

## -*- texinfo -*- 
## @deftypefn {} {} display (@var{dev})
## Display device object.
##
## @subsubheading Inputs
## @var{dev} - device object to display
##
## @seealso{device}
## @end deftypefn

function display (this)
  printf ("%s = \n", inputname (1));
  printf ("  device object with fields of: \n\n");
  printf ("       interface = %s\n", this.interface);

  if strcmp(this.interface, "SPI")
    printf ("spichipselectpin = %s\n", this.device.chipselectpin);
    for i=1:numel(this.pins)
      if ! any(strcmp(this.pins{i}.func,{"ss", "cs"})) 
        printf("%16s = %s\n", [ this.pins{i}.func "pin"], this.pins{i}.name)
      endif
    endfor
    printf ("         spimode = %d\n", this.device.mode);
    printf ("        bitorder = %s\n", this.device.bitorder);
    printf ("         bitrate = %d\n", this.device.bitrate);
  else
    printf ("      i2caddress = %d (0x%02X)\n", this.device.address, this.device.address);
    printf ("             bus = %d\n", this.device.bus);
    printf ("         bitrate = %d\n", this.device.bitrate);
    for i=1:2
      printf("%16s = %s\n", [ this.pins{i}.func "pin"], this.pins{i}.name)
    endfor
    % Mode, Bitrate, Bitorder
  endif
  printf("\n");
endfunction
