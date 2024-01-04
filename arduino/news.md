---
layout: "default"
permalink: "/news/"
title: "Arduino Toolkit - News"
pkg_name: "arduino"
version: "0.12.1"
description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
navigation:
- id: "overview"
  name: "Overview"
  url: "/index"
- id: "Functions"
  name: "Function Reference"
  url: "/functions"
- id: "news"
  name: "News"
- id: "manual"
  name: "Manual"
  url: "/manual"
---
<pre>
Summary of important user-visible changes for arduino 0.12.1:
-------------------------------------------------------------------

  ** Bugfix for scanForArduinos to ensure release of serial port

  ** Use disp not display for object display functionality

Summary of important user-visible changes for arduino 0.12.0:
-------------------------------------------------------------------

  ** Minor doc changes

  ** New Board Configurations:
    - Arduino Nano ESP32

  ** Support for different communication baudrates

  ** Added additional scanForArduinos functionality

  ** expanded search for arduino binary

Summary of important user-visible changes for arduino 0.11.0:
-------------------------------------------------------------------

  ** New board configurations:
    - Arduino Uno WIFI r4
    - Arduino Uno Minima r4

  ** Minor doc updates

Summary of important user-visible changes for arduino 0.10.0:
-------------------------------------------------------------------

  ** New board configurations:
    - ESP32 Dev

  ** Doc corrections for using addons

  ** @arduino/arduino
    - added 'forcebuildon' input property

Summary of important user-visible changes for arduino 0.9.1:
-------------------------------------------------------------------

  ** @arduino/playTone: fix bitshifted values (Bug #62538)

  ** Save/Restore arduinobinary to prefs arduino.arduino_binary.

Summary of important user-visible changes for arduino 0.9.0:
-------------------------------------------------------------------

  ** @arduino/arduino
    - added ability to connection via ip address

  ** Core Libraries
    - added initial Wifi connectivity

  ** added sensors
    - bme280
    - bno055
    - lis3dh
    - lps22hb
    - lsm6dso
    - mpu6050
    - si7021

  ** added addons
    - SimpleStepper

  ** added QT docs

Summary of important user-visible changes for arduino 0.8.0:
-------------------------------------------------------------------
  ** New board configurations:
    - Raspberry Pi Pico
    - Arduino Nano RP2040 Connect
    - Arduino MKR1000

  ** New functions:
    - @arduino/getEndian

  ** @device/read and writeXXXXX:
    - only fix endian when host and device do not match 

  ** updates for closer matlab code compatibility

  ** updates for octave 7 compatibility

Summary of important user-visible changes for arduino 0.7.0:
-------------------------------------------------------------------

  ** New board configurations:
    - Arduino Due
    - Arduino MKRZero
    - Arduino Nano 33 BLE

  ** @arduino/arduino
    - added analogreference property
    - added matlab compatible property names
    - playTone duration bug fix

  ** New functions:
    - @arduino/getPinAlias

  ** Core Libraries:
    - provide basic debugPrint function
    - support multiple i2c device buses correctly
    - support differing spi device settings
    - use global error messages for common errors

Summary of important user-visible changes for arduino 0.6.0:
-------------------------------------------------------------------

  ** New functions:
    - arduinoio.LibraryBase/sendCommand override

  ** Modified functions:
    - added debug mode to scanForArduinos

  ** spidev, i2c, servo, rotaryEncoder, ultrasonic,
     shiftRegister and device are now classdef objects

  ** minor function documentation updates

  ** minor updates to support octave 6 compatibility

Summary of important user-visible changes for arduino 0.5.0:
-------------------------------------------------------------------
  ** Modified functions:
    - return fraction of time for rotaryEncoder.readCount (Bug #56377)

  ** New functions:
    - @arduino/getInterruptTerminals

  ** new classes
    - @ultrasonic
    - @device

  ** Depreciated
    - @spidev - use @device
    - @i2cdev - use @device

 ** New board configurations:
    - Arduino Pro Micro
    - Arduino Leonardo
    - Arduino Micro
    - Arduino Nano Every

Summary of important user-visible changes for arduino 0.4.0:
-------------------------------------------------------------------
 
  ** New addons
    - adafruit.motorshieldv2

  ** New functions:
    - @arduino/checkI2CAddress
    - arduino_bistsetup

  ** Modified functions:
    - added optional libtype specifier to listArduinoLibraries
    - bugfix to core subsref functions
    - updated property compare on core
    - attempt to use user arduino preferences as back up for arduino binary find
    - get full windows port for scanForArduinos, no case compare for board type
  
  ** minor function documentation updates

  ** Added sensors package:
    - arduinosensor.DS1307
    - arduinosensor.MPC3002
    - arduinosensor.SI7021
    - arduinosensor.GUVAS12SD

Summary of important user-visible changes for arduino 0.3.0:
-------------------------------------------------------------------

 ** added getLibName, setup and loop functions to LibraryBase

 ** Modified functions:
    - implemented playTone
    - added forcebuild property to arduino
    - @spidev/writeRead uses transaction based transfers
    - @spidev/spidev allow any CS pin to be used
    - @i2cdev/readRegister return data only

 ** New functions:
    - @rotationalEncoder
    - @arduino/getPinInfo
    - @arduino/uptime
    - @arduino/version
    - @arduino/getSharedResourceProperty
    - @arduino/setSharedResourceProperty
    - arduinoio.AddonBase
    - isarduino

 ** New addons
    - ExampleLCD.LCD
    - EEPRomAddon.EEPRom
    - RTCAddon.DS1307

 ** minor function documentation updates

 ** New board configurations:
    - Arduino Pro/Pro Mini
    - Arduino Nano
    - Lilypad

 ** updated to arduinoaddons to query using metadata

Summary of important user-visible changes for arduino 0.2.0:
-------------------------------------------------------------------

 ** update arduinosetup for windows arduino ide changes

 ** bug fixes for use with older versions of octave

 ** bug fix mode config in flash

 ** added initial support for additional board types:
    - ARM sparkfun SAMD21 dev board

 ** added manual


Summary of important user-visible changes for arduino 0.1.0:
-------------------------------------------------------------------

 ** Initial release

</pre>
