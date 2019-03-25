Introduction
============

This is a basic implementation of the Matlab toolkit extension.

It attempts to provide the same function calls as the Matlab toolkit, as well as additional functionality.

Requirements
============

The arduino toolkit requires the arduino ide for programming the arduino board, and the instrument-control
toolkit to communicate to the board.

Installing
==========

To install, run the octave package manager:

1. to install from source forge:
    pkg install -forge arduino

2. to install from a local tarball.
    pkg install arduino-XXXXXXX.tar.gz

Where XXXXXXX is the version of the the downloaded tarball.

Usage:
======

1. Load the arduino package.
    pkg load arduino


2. If the arduino board is not programmed, program it with the arduino
communication software.
   arduinosetup

Additional libraries can be programmed with it. Use the listArduinoLibraries to
retrieve a list of known libraries.

3. Open a connection to the arduino
   a = arduino ()

4. Use the arduino function calls to control arduino hardware.
See the function list and examples directories.

Expanding the known board types
===============================

Currently the toolkit only recognizes 2 boards: uno and mega, however additional boards
can be added with minimal code changes.

To add an additional board:
1. The arduino core library (code programmed to the arduino) must provide a board id that is unique and matches the config id.

2. the arduinoio.boardTypeString function must return the board name when provided the id.

3. A config_<boardname>.m file must be present as arduinoio.config.config_<boardname>, which
describes the pin functionality for the board.

A Matlab script in available in arduino toolkit sources that to create 90% of the config file based
on the arduino_pins header file from the arduino ide.

Adding additional addon libraries
=================================

Addon libraries can be created using a similar interface as the Matlab toolkit, or use existing Matlab code with minor changes.

Known limitations and bugs
==========================

1. Octave does not document classdef files, so documentation for the arduino class and arduinoio.LibraryBase is
not created in the function reference, however is in the reference manual.

2. Octave has issues with displaying function help after the classdef constructor is called, and may not show the
help for a given function.
