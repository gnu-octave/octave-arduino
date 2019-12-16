#!/usr/bin/python2

## Copyright 2018-2019 John Donoghue
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

import sys
import os
import re
import tempfile
import shutil
import fnmatch
import subprocess
import glob
import calendar;
import time;

class Group:
  name = "Functions"
  functions = []

  def __init__ (self, name=""):
    self.name = name
    self.functions = []

class Index:
  name = ""
  groups = []

def read_m_file(filename):
  help = []
  inhelp = False
  havehelp = False;
  with open(filename, 'rt') as f:
    for line in f:
      if not havehelp:
        if havehelp == False and inhelp == False and line.startswith('##'):
          if "texinfo" in line:
            inhelp = True
        elif inhelp == True:
          if  not line.startswith('##'):
            inhelp = False
            havehelp = True
          else:
            help.append (line[2:].strip());

  return help

def read_cc_file(filename):
  help = []
  inhelp = False
  havehelp = False;
  with open(filename, 'rt') as f:
    for line in f:
      if not havehelp:
        if havehelp == False and inhelp == False:
          if "texinfo" in line:
            inhelp = True
        elif inhelp == True:
          line = line.rstrip()
          if line[-1] == '\\':
            line = line[:-1]
          line = line.rstrip()
          line = line.replace("\\n", "\n") 
          line = line.replace("\\\"", "\"") 
          if line[-1] == '\n':
            line = line[:-1]
          if line.endswith('")'):
            line = line[:-2]
 
          if  line.startswith('{'):
            inhelp = False
            havehelp = True
          else:
            help.append (line);

  return help

def read_help (filename):
  help = []

  if filename[-2:] == ".m":
    help = read_m_file(filename)
  else:
    help = read_cc_file(filename)

  return help

def read_index (filename, ignore):
  index = Index ()

  with open(filename, 'rt') as f:
    lines = f.read().splitlines()

  #print "read", lines
  first = True
  category = Group()
  for l in lines:
    if l.startswith("#"):
      pass
    elif first:
      index.name = l;
      first = False
    elif l.startswith(" "):
        l = l.strip()
        # may be multiple functions here
        funcs = l.split()
        for f in funcs:
          if f not in ignore:
            category.functions.append(f);
    else:
      # new category name
      if len(category.functions) > 0:
        index.groups.append(category)
      category = Group(l.strip())

  # left over category ?
  if len(category.functions) > 0:
    index.groups.append(category)

  return index;

def find_func_file(fname, paths, prefix):
  for f in paths:
      name = f + "/" + fname + ".m"
      if os.path.isfile(name):
        return name
      name = f + "/" + fname + ".cc"
      if os.path.isfile(name):
        return name
      name = f + "/" + fname + ".cpp"
      if os.path.isfile(name):
        return name
      # if have a prefix, remove and try
      if prefix and fname.startswith(prefix):
        fname = fname[len(prefix):]
        name = f + "/" + fname + ".cc"
        if os.path.isfile(name):
          return name
        name = f + "/" + fname + ".cpp"
        if os.path.isfile(name):
          return name
 
  return None

def display_func(name, ref, help):
  print "@c -----------------------------------------"
  print "@subsection ", name
  print "@cindex ", ref
  for l in help:
    print l

def process (args):
  options = { "verbose": False, "srcdir": [], "funcprefix": "", "ignore": [] }
  indexfile = ""

  for a in args:
    #print a
    c=a.split("=")
    key=c[0]

    if len(c) > 1:
      val=c[1]
    else:
      val=""

    if key == "--verbose":
      options["verbose"] = True;
    elif key == "--src-dir":
      if val:
        options["srcdir"].append(val);
    elif key == "--ignore":
      if val:
        options["ignore"].append(val);
    elif key == "--func-prefix":
      if val:
        options["funcprefix"] = val;
    elif val == "":
      if indexfile == "":
        indexfile = key

  if indexfile == "":
    raise Exception("No index filename")

  if len(options["srcdir"]) == 0:
    options["srcdir"].append("inst")

  #print "options=", options

  idx = read_index(indexfile,  options["ignore"])
  for g in idx.groups:
    #print "************ ", g.name
    print "@c ---------------------------------------------------"
    print "@node ", g.name
    print "@section ", g.name
    print "@cindex ", g.name

    for f in sorted(g.functions):
      print "@c", g.name, f
      h = ""
      filename = ""
      path = ""
      if "@" in f:
        #print "class func"
        path = f
        name = "@" + f
        ref = f.split("/")[-1]
        filename = find_func_file(path, options["srcdir"], options["funcprefix"])
      elif "." in f:
        parts = f.split('.')
        cnt  = 0
        path = ""
        for p in parts:
            if cnt < len(parts)-1:
              path = path + "/+"
            else:
              path = path + "/"
            path = path + p
            cnt = cnt + 1
        name = f;
        ref = parts[-1]
        filename = find_func_file(path, options["srcdir"], options["funcprefix"])
      elif "/" in f:
        path = f
        name = f
        ref = f.split("/")[-1]
        filename = find_func_file(path, options["srcdir"], options["funcprefix"])
      else:
        path = f
        name = f
        ref = f
        filename = find_func_file(path, options["srcdir"], options["funcprefix"])

      if not filename:
        sys.stderr.write("Warning: Cant find source file for {}\n".format(path))
      else:
        h = read_help (filename)

      if h:
        display_func (name, ref, h)

    
def show_usage():
  print sys.argv[0], "[options] indexfile"

if __name__ == "__main__":
  if len(sys.argv) > 1:
    status = process(sys.argv[1:])
    sys.exit(status)
  else:
    show_usage()
