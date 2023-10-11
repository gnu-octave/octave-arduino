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

#Usage: octave --eval "make_conf('/usr/share/arduino/hardware/arduino/avr/variants/mega/pins_arduino.h')"

function retval = make_conf (header_file)

  if nargin != 1
    error ('Expected single input argument of header filename')
  endif

  pins = {};
  ispwm = {};
  isalong = {};
  num_digital_pins = 0;
  num_analog_pins = 0;

  fd = fopen (header_file, "rt");
  while !feof(fd)
    l = fgetl(fd);
    [t, m] = regexp(l, '#define\s+(\w+)\s+([^\s]+)$', 'tokens', 'match');
    if !isempty(t)
      toks = t(1){1};

      if numel(toks) == 2
        if strcmpi(toks{1}, "NUM_DIGITAL_PINS")
	  cnt = strrep(toks{2}, "u", "");
          num_digital_pins = str2num(cnt);
        elseif strcmpi(toks{1}, "NUM_ANALOG_INPUTS")
	  cnt = strrep(toks{2}, "u", "");
          num_analog_pins = str2num(cnt);
        else 
          idx = index(toks{1}, "PIN_");
          if idx > 0
            name = tolower(strtrim(toks{1}(idx+4:end)));
	    # id have other crap in it ?
	    id = strrep(toks{2}, "u", "");
            id = str2num(id);

	    if !isempty(id)

              # we have pin already ? 
              idx = find (cellfun(@(x) (x.id == id), pins), 1);
              if isempty(idx)
                p = [];
                p.id = id;
                p.name = sprintf("D%d", id);
                p.modes = { 'digital' };

                pins{end+1} = p;
                idx = numel(pins);
              endif

              if name(1) == 'a'
                pins{idx}.name = toupper(name);
                pins{idx}.modes{end+1} = "analog";
              elseif strncmp(name, "wire_", 5)
                pins{idx}.modes{end+1} = ["i2c" name(5:end)];
              elseif strncmp(name, "pin_led_", 8)
                pins{idx}.modes{end+1} = ["led"];
              else
                pins{idx}.modes{end+1} = name;
              endif
            endif  
          elseif strcmp(toks{1}, "LED_BUILTIN")
            id = str2num(toks{2});
	    if !isempty(id)

              idx = find (cellfun(@(x) (x.id == id), pins), 1);
              if isempty(idx)
                p = {};
                p.id = id;
                p.name = sprintf("D%d", id);
                p.modes = { 'digital' };

                pins{end+1} = p;
                idx = numel(pins);
              endif
            
              pins{idx}.modes{end+1} = "led";
            endif
          endif  
        endif
      endif
    endif
    
    [t, m] = regexp(l, '#define\s+digitalPinHasPWM\((\w+)\)\s+(.*)$', 'tokens', 'match');
    if ! isempty(t)
      toks = t(1){1};
      if numel(toks) == 2
         ispwm.var = toks{1};
	 testv = strrep(toks{2}, "u", "");
         ispwm.test = testv;
	 ispwm = {};
      endif
    endif
 
    [t, m] = regexp(l, '#define\s+analogInputToDigitalPin\((\w+)\)\s+(.*)$', 'tokens', 'match');
    if ! isempty(t)
      toks = t(1){1};
      if numel(toks) == 2
         isanalog.var = toks{1};
	 testv = strrep(toks{2}, "u", "");
	 # simple expect analog after digital
	 testv = sprintf("(p + %d)", num_digital_pins);
         isanalog.test = testv;
	 #isanalog={};
      endif
    endif

  endwhile

  fclose(fd);

  #num_digital_pins
  #num_analog_pins

  # fill in any missing digitals
  for i=0:num_analog_pins-1
    name = sprintf("A%d", i);
    idx = find (cellfun(@(x) (strcmpi(x.name,name)), pins), 1);
    if isempty(idx)
      t = sprintf("%s=%i; id=(%s);", isanalog.var, i, isanalog.test);
      eval(t);
      if id >= 0
        p = {};
        p.id = id;
        p.name = sprintf("A%d", i);
        p.modes = { 'digital', 'analog' };
        pins{end+1} = p;
        idx = numel(pins);
      endif
    endif
  endfor

  # fill in any missing digitals
  for i=0:num_digital_pins-1
    idx = find (cellfun(@(x) (x.id == i), pins), 1);
    if isempty(idx)
      p = {};
      p.id = i;
      p.name = sprintf("D%d", i);
      p.modes = { 'digital' };

      pins{end+1} = p;
      idx = numel(pins);
    endif
    if !isempty(ispwm)
      t = sprintf("%s=%i; pwm=(%s);", ispwm.var, i, ispwm.test);
      eval(t);
      if pwm
        pins{idx}.modes{end+1} = "pwm";
      endif
    endif
  endfor

  # sort by pin num (id)
  [tmp ind]=sort(cellfun(@(x) (x.id), pins));

  # output file
  printf ("# configuration generated from %s\n", header_file)
  printf("function retval = config_XXX (initdata)\n");
  printf("  retval = {};\n");
  printf("\n");
  printf("  # default board info - must be provided\n");
  printf("  # will be filled in on connection.\n");
  printf("  retval.board = '';\n");
  printf("  retval.baudrate = 9600;\n");
  printf("  retval.mcu = '';\n");
  printf("  retval.voltref = 0;\n");
  printf("  retval.libs = {};\n");
  printf("  retval.port = '';\n");
  printf("\n");
  printf("  # info expected to be provided by config.\n");
  printf("  retval.description = 'a board description';\n");
  printf("\n");

  printf("  # pin config\n");
  printf("  retval.pins = {};\n");
  for i = 1:numel(ind)
    p = pins{ind(i)};
    modes = [ "'" p.modes{1} "'"];
    for m = 2:numel(p.modes)
      modes = [ modes ", '" p.modes{m} "'" ];
    endfor
    printf("  retval.pins{end+1} = arduinoio.config.pin_info('%s', %d, { %s });\n", p.name, p.id, modes);
  endfor

  printf("endfunction\n");
endfunction
