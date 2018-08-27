#!/usr/bin/python

## Copyright 2018 John Donoghue
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

def read_help (filename):
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

def read_index (filename):
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
        category.functions.append(l.strip());
    else:
      # new category name
      if len(category.functions) > 0:
        index.groups.append(category)
      category = Group(l.strip())

  # left over category ?
  if len(category.functions) > 0:
    index.groups.append(category)

  return index;

def display_func(name, ref, help):
  print "@c -----------------------------------------"
  print "@subsection ", name
  print "@cindex ", ref
  for l in help:
    print l

def process (args):
  options = { "verbose": False, "srcdir": "inst" }
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
        options["srcdir"] = val;
    elif val == "":
      if indexfile == "":
        indexfile = key

  if indexfile == "":
    raise Exception("No index filename")

  #print "options=", options

  idx = read_index(indexfile)
  for g in idx.groups:
    #print "************ ", g.name
    print "@c ---------------------------------------------------"
    print "@node ", g.name
    print "@section ", g.name
    print "@cindex ", g.name

    for f in sorted(g.functions):
      print "@c", g.name, f
      h = ""
      if "@" in f:
        #print "class func"
        path = f
        name = "@" + f
        ref = f.split("/")[-1]
        h = read_help (options["srcdir"] + "/" + path + ".m")
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
        h = read_help (options["srcdir"] + "/" + path + ".m")
      elif "/" in f:
        path = f
        name = f
        ref = f.split("/")[-1]
        h = read_help (options["srcdir"] + "/" + path + ".m")
      else:
        path = f
        name = f
        ref = f
        h = read_help (options["srcdir"] + "/" + path + ".m")

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
