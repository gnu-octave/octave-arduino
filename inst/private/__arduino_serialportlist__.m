# get a possible port list for the arduino

function list = __arduino_serialportlist__(debug_flag=0)
  ports = serialportlist ();

  if ismac()
    list = {};
    for i = 1:numel(ports)
      port_lower = lower(ports{i});
      # Skip Bluetooth ports and other unlikely ports
      if strfind(port_lower, "bluetooth") || ...
         strfind(port_lower, "airpods") || ...
         strfind(port_lower, "phone") || ...
         strfind(port_lower, "console") || ...
         strfind(port_lower, "debug") || ...
         strfind(port_lower, "irda") || ...
         strfind(port_lower, "virtual")

        if debug_flag
          printf("* skipping unlikely port: %s\n", ports{i});
        endif
      else
        list{end+1} = ports{i};
      endif
    endfor
  elseif isunix() && !ispc()
    list = port_sort(ports, @unix_port_compare);
  else
    list = ports;
  endif
endfunction

function res = c_strcmp(s1, s2)
  res = 0;
  l1 = length(s1);
  l2 = length(s2);
  l = min(l1, l2);
  
  if l == 0
    res = l1 - l2;
  else
    idx = find(s1(1:l) != s2(1:l), 1);
    if isempty(idx)
       res = l1 - l2; 
    else
       res = s1(idx) - s2(idx);
    endif
  endif

endfunction

function res = unix_port_compare(s1, s2)
  # we want to priortise non /dev/ttySXXX ports
  s1_p = strncmp(s1, "/dev/ttyS", 9);
  s2_p = strncmp(s2, "/dev/ttyS", 9);
  if s1_p && !s2_p
    res = 1;
  elseif !s1_p && s2_p
    res = -1;
  elseif s1_p && s2_p
    # sort numerically
    s1_p = sscanf(s1, "/dev/ttyS%d");
    s2_p = sscanf(s2, "/dev/ttyS%d");
    res = s1_p - s2_p;
  else
    res = c_strcmp(s1, s2);
  endif
endfunction

function slist = port_sort(ulist, sort_method=@c_strcmp)
  # crappy bubble sort for now
  sorted = false;
  while sorted == false
    sorted = true;
    for idx=1:length(ulist)-1
      cmp = sort_method(ulist{idx}, ulist{idx+1});
      #printf(" '%s' '%s' %d\n", ulist{idx}, ulist{idx+1}, cmp);
      #cmp = all(ulist{idx} < ulist{idx+1})
      if cmp > 0
	t = ulist{idx};
	ulist{idx} = ulist{idx+1};
	ulist{idx+1} = t;
	sorted = false;
      endif
    endfor
  endwhile
  slist = ulist;
endfunction


