Introduction
============

This is a basic implementation of the Matlab toolkit extension.

Where possible, it attempts to use the same function calls as the matlab toolkit.

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
    pkg install ardion-XXXXXXX.tar.gz

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

Currently the toolkit only recogises 2 boards: uno and mega, however additional boards
can be added with mimimal code changes.

To add an addiyional board
1. The arduino core library (code programmed to the arduino) must provide a board id that is unique.
Currently 0=uno, 1=mega

2. the arduinoio.boardTypeString function must return the board name when provided the id.

3. A config_<boardname>.m file must be present as arduinoio.config.config_<boardname>, which
describes the pin functionality for the board.

A matlab script in available in arduino toolkit sources that to create 90% of the config file based
on the arduino_pins header file from the arduino ide.

Adding additional addon libraries
=================================

Addon libraries can be created using a similar interface as the matlab toolkit.

Known limitations and bugs
==========================

1. Octave does not document classdef files, so documentation for the arduinoclass and ardionio.LibraryBase is
not created.

2. Octave has issues with displaying function help after the classdef constructor is called, and may not show the
help for a given function.

3. Currently only the base io, spi, i2c and shiftregister support is available, encoders have not been implemented.
