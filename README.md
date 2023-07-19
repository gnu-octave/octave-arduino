<center>Octave Arduino Toolkit</center>
----------------------

---

Introduction
============

This is a basic implementation of the Matlab toolkit extension.

It attempts to provide the same function calls as the Matlab toolkit, as well as additional functionality, **HOWEVER**,
it is not binary compatible with matlab. (ie: you must program the arduino with the GNU octave code to commuicate with the
octave arduino toolkit).

Requirements
============

The arduino toolkit requires the [Arduino IDE](https://www.arduino.cc/en/software) for programming the arduino board, 
and the [instrument-control toolkit](https://octave.sourceforge.io/instrument-control/index.html) to communicate to 
the board.

Installing
==========

To install, run the octave package manager:

1. To install from source forge:

    `pkg install -forge arduino`

2. To install from a local tarball.

    `pkg install arduino-XXXXXXX.tar.gz`

    Where XXXXXXX is the version of the the downloaded tarball.

Usage:
======

1. Load the arduino package.
   
    `pkg load arduino`


2. If the arduino board is not programmed, program it with the arduino
   communication software.

    `arduinosetup`

    Additional libraries can be programmed with it. Use the listArduinoLibraries to
    retrieve a list of known libraries.

3. Open a connection to the arduino

    `a = arduino ()`

    **NOTE**: the board MUST be programmed before the ardino function call will be abele to open the board connection.

4. Use the arduino function calls to control arduino hardware.
   See the function list and examples directories.

Expanding the known board types
===============================

Currently the toolkit recognizes these boards:

* due

* esp32 dev

* leonardo

* lilypad

* mega2560

* micro

* mkrzero

* mkr1000

* nano

* nano every

* nano 33 ble

* nano rp2040 connect

* promini

* promicro

* raspberry pi pico

* sparkfunsamd21

* uno minima r4

* uno wifi rev2

* uno wifi r4

* uno

Additional boards can usually be added with minimal code changes.

To add an additional board:

1. The arduino core library (code programmed to the arduino) must provide a board id that is unique and matches the config id.

2. The arduinoio.boardTypeString function must return the board name when provided the id.

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

3. Communication between the arduino and Octave occurs only during arduino function calls, so data may be lost if the arduino sends
   additional information that is not read fast enough.
