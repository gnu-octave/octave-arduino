---
layout: "default"
permalink: "/manual/"
title: "Arduino Toolkit - Manual"
pkg_name: "arduino"
version: "0.10.0"
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
  url: "/news"
- id: "manual"
  name: "Manual"
- id: "Installing-and-loading-1"
  name: "&nbsp;&nbsp; Installing and loading"
  url: "/manual/#Installing-and-loading-1"
- id: "Hardware-setup-1"
  name: "&nbsp;&nbsp; Hardware setup"
  url: "/manual/#Hardware-setup-1"
- id: "Connecting-to-an-arduino-1"
  name: "&nbsp;&nbsp; Connecting to an arduino"
  url: "/manual/#Connecting-to-an-arduino-1"
- id: "Basic-Input-and-Output-Overview-1"
  name: "&nbsp;&nbsp; Basic Input and Output Overview"
  url: "/manual/#Basic-Input-and-Output-Overview-1"
- id: "Protocol-based-I_002fO-Overview-1"
  name: "&nbsp;&nbsp; Protocol based I/O Overview"
  url: "/manual/#Protocol-based-I_002fO-Overview-1"
- id: "Addons-Overview-1"
  name: "&nbsp;&nbsp; Addons Overview"
  url: "/manual/#Addons-Overview-1"
- id: "Sensors-Overview-1"
  name: "&nbsp;&nbsp; Sensors Overview"
  url: "/manual/#Sensors-Overview-1"
- id: "Examples-1"
  name: "&nbsp;&nbsp; Examples"
  url: "/manual/#Examples-1"
- id: "Function-Reference-1"
  name: "&nbsp;&nbsp; Function Reference"
  url: "/manual/#Function-Reference-1"
---
<h1 class="settitle" align="center">Arduino Toolkit - a somewhat Matlab compatible arduino toolkit for GNU octave.</h1>
<div class="top" id="Top">
<div class="header">
<p>
Next: <a href="#Installing-and-loading" accesskey="n" rel="next">Installing and loading</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Introduction"></span><h1 class="top">Introduction</h1>
<p>The Arduino toolkit is a somewhat Matlab compatible arduino toolkit for GNU octave.
</p>
<div class="Contents_element" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>
<div class="contents">
<ul class="no-bullet">
  <li><a id="toc-Installing-and-loading-1" href="#Installing-and-loading">1 Installing and loading</a>
  <ul class="no-bullet">
    <li><a id="toc-Online-Direct-install" href="#Online-Direct-install">1.1 Online Direct install</a></li>
    <li><a id="toc-Off_002dline-install" href="#Off_002dline-install">1.2 Off-line install</a></li>
    <li><a id="toc-Loading" href="#Loading">1.3 Loading</a></li>
  </ul></li>
  <li><a id="toc-Hardware-setup-1" href="#Hardware-setup">2 Hardware setup</a>
  <ul class="no-bullet">
    <li><a id="toc-Programming-the-Arduino" href="#Programming-the-Arduino">2.1 Programming the Arduino</a></li>
    <li><a id="toc-Known-Arduino-Board-Types" href="#Known-Arduino-Board-Types">2.2 Known Arduino Board Types</a></li>
  </ul></li>
  <li><a id="toc-Connecting-to-an-arduino-1" href="#Connecting-to-an-arduino">3 Connecting to an arduino</a>
  <ul class="no-bullet">
    <li><a id="toc-Connecting-to-a-single-arduino" href="#Connecting-to-a-single-arduino">3.1 Connecting to a single arduino</a></li>
    <li><a id="toc-Connecting-to-a-specific-arduino" href="#Connecting-to-a-specific-arduino">3.2 Connecting to a specific arduino</a></li>
    <li><a id="toc-Querying-available-arduinos" href="#Querying-available-arduinos">3.3 Querying available arduinos</a></li>
  </ul></li>
  <li><a id="toc-Basic-Input-and-Output-Overview-1" href="#Basic-Input-and-Output-Overview">4 Basic Input and Output Overview</a>
  <ul class="no-bullet">
    <li><a id="toc-Performing-Digital-I_002fO" href="#Performing-Digital-I_002fO">4.1 Performing Digital I/O</a></li>
    <li><a id="toc-Performing-Analog-Input" href="#Performing-Analog-Input">4.2 Performing Analog Input</a></li>
  </ul></li>
  <li><a id="toc-Protocol-based-I_002fO-Overview-1" href="#Protocol-based-I_002fO-Overview">5 Protocol based I/O Overview</a>
  <ul class="no-bullet">
    <li><a id="toc-SPI-communication" href="#SPI-communication">5.1 SPI communication</a></li>
    <li><a id="toc-I2C-communication" href="#I2C-communication">5.2 I2C communication</a></li>
    <li><a id="toc-Servo-communication" href="#Servo-communication">5.3 Servo communication</a></li>
    <li><a id="toc-Shift-Registers" href="#Shift-Registers">5.4 Shift Registers</a></li>
    <li><a id="toc-Rotary-Encoders" href="#Rotary-Encoders">5.5 Rotary Encoders</a></li>
    <li><a id="toc-Ultrasonic-Sensors" href="#Ultrasonic-Sensors">5.6 Ultrasonic Sensors</a></li>
    <li><a id="toc-Serial-communication" href="#Serial-communication">5.7 Serial communication</a></li>
  </ul></li>
  <li><a id="toc-Addons-Overview-1" href="#Addons-Overview">6 Addons Overview</a>
  <ul class="no-bullet">
    <li><a id="toc-Addon-Introduction" href="#Addon-Introduction">6.1 Addon Introduction</a></li>
    <li><a id="toc-Creating-an-addon" href="#Creating-an-addon">6.2 Creating an addon</a>
    <ul class="no-bullet">
      <li><a id="toc-Addon-package-directory" href="#Addon-package-directory">6.2.1 Addon package directory</a></li>
      <li><a id="toc-Addon-package-_002em-file" href="#Addon-package-_002em-file">6.2.2 Addon package .m file</a></li>
      <li><a id="toc-Addon-package-header-file" href="#Addon-package-header-file">6.2.3 Addon package header file</a></li>
      <li><a id="toc-Verify-octave-can-see-the-addon" href="#Verify-octave-can-see-the-addon">6.2.4 Verify octave can see the addon</a></li>
    </ul></li>
    <li><a id="toc-Using-addons" href="#Using-addons">6.3 Using addons</a>
    <ul class="no-bullet">
      <li><a id="toc-Programming-the-arduino-with-the-addon" href="#Programming-the-arduino-with-the-addon">6.3.1 Programming the arduino with the addon</a></li>
      <li><a id="toc-Creating-a-addon-object" href="#Creating-a-addon-object">6.3.2 Creating a addon object</a></li>
    </ul></li>
  </ul></li>
  <li><a id="toc-Sensors-Overview-1" href="#Sensors-Overview">7 Sensors Overview</a>
  <ul class="no-bullet">
    <li><a id="toc-Matlab-Compatible-Sensors" href="#Matlab-Compatible-Sensors">7.1 Matlab Compatible Sensors</a>
    <ul class="no-bullet">
      <li><a id="toc-Overview" href="#Overview">7.1.1 Overview</a></li>
      <li><a id="toc-Available-Sensors" href="#Available-Sensors">7.1.2 Available Sensors</a></li>
    </ul></li>
    <li><a id="toc-Lightweight-Arduino-Sensors" href="#Lightweight-Arduino-Sensors">7.2 Lightweight Arduino Sensors</a>
    <ul class="no-bullet">
      <li><a id="toc-Overview-1" href="#Overview-1">7.2.1 Overview</a></li>
      <li><a id="toc-Available-Sensors-1" href="#Available-Sensors-1">7.2.2 Available Sensors</a></li>
    </ul></li>
  </ul></li>
  <li><a id="toc-Examples-1" href="#Examples">8 Examples</a>
  <ul class="no-bullet">
    <li><a id="toc-Blinking-an-LED" href="#Blinking-an-LED">8.1 Blinking an LED</a></li>
    <li><a id="toc-Using-I2C-to-communicate-with-an-EEPROM" href="#Using-I2C-to-communicate-with-an-EEPROM">8.2 Using I2C to communicate with an EEPROM</a></li>
    <li><a id="toc-Using-SPI-to-communicate-with-a-mcp3002-10-bit-ADC" href="#Using-SPI-to-communicate-with-a-mcp3002-10-bit-ADC">8.3 Using SPI to communicate with a mcp3002 10 bit ADC</a></li>
  </ul></li>
  <li><a id="toc-Function-Reference-1" href="#Function-Reference">9 Function Reference</a>
  <ul class="no-bullet">
    <li><a id="toc-General-Functions-1" href="#General-Functions">9.1 General Functions</a>
    <ul class="no-bullet">
      <li><a id="toc-arduinosetup" href="#arduinosetup">9.1.1 arduinosetup</a></li>
      <li><a id="toc-isarduino" href="#isarduino">9.1.2 isarduino</a></li>
      <li><a id="toc-listArduinoLibraries" href="#listArduinoLibraries">9.1.3 listArduinoLibraries</a></li>
      <li><a id="toc-scanForArduinos" href="#scanForArduinos">9.1.4 scanForArduinos</a></li>
    </ul></li>
    <li><a id="toc-Arduino-Functions-1" href="#Arduino-Functions">9.2 Arduino Functions</a>
    <ul class="no-bullet">
      <li><a id="toc-_0040arduino_002farduino" href="#g_t_0040arduino_002farduino">9.2.1 @arduino/arduino</a></li>
      <li><a id="toc-_0040arduino_002fcheckI2CAddress" href="#g_t_0040arduino_002fcheckI2CAddress">9.2.2 @arduino/checkI2CAddress</a></li>
      <li><a id="toc-_0040arduino_002fconfigurePin" href="#g_t_0040arduino_002fconfigurePin">9.2.3 @arduino/configurePin</a></li>
      <li><a id="toc-_0040arduino_002fconfigurePinResource" href="#g_t_0040arduino_002fconfigurePinResource">9.2.4 @arduino/configurePinResource</a></li>
      <li><a id="toc-_0040arduino_002fdecrementResourceCount" href="#g_t_0040arduino_002fdecrementResourceCount">9.2.5 @arduino/decrementResourceCount</a></li>
      <li><a id="toc-_0040arduino_002fdelete" href="#g_t_0040arduino_002fdelete">9.2.6 @arduino/delete</a></li>
      <li><a id="toc-_0040arduino_002fdisplay" href="#g_t_0040arduino_002fdisplay">9.2.7 @arduino/display</a></li>
      <li><a id="toc-_0040arduino_002fgetEndian" href="#g_t_0040arduino_002fgetEndian">9.2.8 @arduino/getEndian</a></li>
      <li><a id="toc-_0040arduino_002fgetI2CTerminals" href="#g_t_0040arduino_002fgetI2CTerminals">9.2.9 @arduino/getI2CTerminals</a></li>
      <li><a id="toc-_0040arduino_002fgetInterruptTerminals" href="#g_t_0040arduino_002fgetInterruptTerminals">9.2.10 @arduino/getInterruptTerminals</a></li>
      <li><a id="toc-_0040arduino_002fgetLEDTerminals" href="#g_t_0040arduino_002fgetLEDTerminals">9.2.11 @arduino/getLEDTerminals</a></li>
      <li><a id="toc-_0040arduino_002fgetMCU" href="#g_t_0040arduino_002fgetMCU">9.2.12 @arduino/getMCU</a></li>
      <li><a id="toc-_0040arduino_002fgetPWMTerminals" href="#g_t_0040arduino_002fgetPWMTerminals">9.2.13 @arduino/getPWMTerminals</a></li>
      <li><a id="toc-_0040arduino_002fgetPinAlias" href="#g_t_0040arduino_002fgetPinAlias">9.2.14 @arduino/getPinAlias</a></li>
      <li><a id="toc-_0040arduino_002fgetPinInfo" href="#g_t_0040arduino_002fgetPinInfo">9.2.15 @arduino/getPinInfo</a></li>
      <li><a id="toc-_0040arduino_002fgetPinsFromTerminals" href="#g_t_0040arduino_002fgetPinsFromTerminals">9.2.16 @arduino/getPinsFromTerminals</a></li>
      <li><a id="toc-_0040arduino_002fgetResourceCount" href="#g_t_0040arduino_002fgetResourceCount">9.2.17 @arduino/getResourceCount</a></li>
      <li><a id="toc-_0040arduino_002fgetResourceOwner" href="#g_t_0040arduino_002fgetResourceOwner">9.2.18 @arduino/getResourceOwner</a></li>
      <li><a id="toc-_0040arduino_002fgetSPITerminals" href="#g_t_0040arduino_002fgetSPITerminals">9.2.19 @arduino/getSPITerminals</a></li>
      <li><a id="toc-_0040arduino_002fgetServoTerminals" href="#g_t_0040arduino_002fgetServoTerminals">9.2.20 @arduino/getServoTerminals</a></li>
      <li><a id="toc-_0040arduino_002fgetSharedResourceProperty" href="#g_t_0040arduino_002fgetSharedResourceProperty">9.2.21 @arduino/getSharedResourceProperty</a></li>
      <li><a id="toc-_0040arduino_002fgetTerminalMode" href="#g_t_0040arduino_002fgetTerminalMode">9.2.22 @arduino/getTerminalMode</a></li>
      <li><a id="toc-_0040arduino_002fgetTerminalsFromPins" href="#g_t_0040arduino_002fgetTerminalsFromPins">9.2.23 @arduino/getTerminalsFromPins</a></li>
      <li><a id="toc-_0040arduino_002fincrementResourceCount" href="#g_t_0040arduino_002fincrementResourceCount">9.2.24 @arduino/incrementResourceCount</a></li>
      <li><a id="toc-_0040arduino_002fisTerminalAnalog" href="#g_t_0040arduino_002fisTerminalAnalog">9.2.25 @arduino/isTerminalAnalog</a></li>
      <li><a id="toc-_0040arduino_002fisTerminalDigital" href="#g_t_0040arduino_002fisTerminalDigital">9.2.26 @arduino/isTerminalDigital</a></li>
      <li><a id="toc-_0040arduino_002fplayTone" href="#g_t_0040arduino_002fplayTone">9.2.27 @arduino/playTone</a></li>
      <li><a id="toc-_0040arduino_002freadAnalogPin" href="#g_t_0040arduino_002freadAnalogPin">9.2.28 @arduino/readAnalogPin</a></li>
      <li><a id="toc-_0040arduino_002freadDigitalPin" href="#g_t_0040arduino_002freadDigitalPin">9.2.29 @arduino/readDigitalPin</a></li>
      <li><a id="toc-_0040arduino_002freadVoltage" href="#g_t_0040arduino_002freadVoltage">9.2.30 @arduino/readVoltage</a></li>
      <li><a id="toc-_0040arduino_002freset" href="#g_t_0040arduino_002freset">9.2.31 @arduino/reset</a></li>
      <li><a id="toc-_0040arduino_002fsendCommand" href="#g_t_0040arduino_002fsendCommand">9.2.32 @arduino/sendCommand</a></li>
      <li><a id="toc-_0040arduino_002fsetSharedResourceProperty" href="#g_t_0040arduino_002fsetSharedResourceProperty">9.2.33 @arduino/setSharedResourceProperty</a></li>
      <li><a id="toc-_0040arduino_002fuptime" href="#g_t_0040arduino_002fuptime">9.2.34 @arduino/uptime</a></li>
      <li><a id="toc-_0040arduino_002fvalidatePin" href="#g_t_0040arduino_002fvalidatePin">9.2.35 @arduino/validatePin</a></li>
      <li><a id="toc-_0040arduino_002fversion" href="#g_t_0040arduino_002fversion">9.2.36 @arduino/version</a></li>
      <li><a id="toc-_0040arduino_002fwriteDigitalPin" href="#g_t_0040arduino_002fwriteDigitalPin">9.2.37 @arduino/writeDigitalPin</a></li>
      <li><a id="toc-_0040arduino_002fwritePWMDutyCycle" href="#g_t_0040arduino_002fwritePWMDutyCycle">9.2.38 @arduino/writePWMDutyCycle</a></li>
      <li><a id="toc-_0040arduino_002fwritePWMVoltage" href="#g_t_0040arduino_002fwritePWMVoltage">9.2.39 @arduino/writePWMVoltage</a></li>
    </ul></li>
    <li><a id="toc-Arduino-I2C-Functions-1" href="#Arduino-I2C-Functions">9.3 Arduino I2C Functions</a>
    <ul class="no-bullet">
      <li><a id="toc-_0040device_002fdelete" href="#g_t_0040device_002fdelete">9.3.1 @device/delete</a></li>
      <li><a id="toc-_0040device_002fdisplay" href="#g_t_0040device_002fdisplay">9.3.2 @device/display</a></li>
      <li><a id="toc-_0040device_002fread" href="#g_t_0040device_002fread">9.3.3 @device/read</a></li>
      <li><a id="toc-_0040device_002freadRegister" href="#g_t_0040device_002freadRegister">9.3.4 @device/readRegister</a></li>
      <li><a id="toc-_0040device_002fsubsref" href="#g_t_0040device_002fsubsref">9.3.5 @device/subsref</a></li>
      <li><a id="toc-_0040device_002fwrite" href="#g_t_0040device_002fwrite">9.3.6 @device/write</a></li>
      <li><a id="toc-_0040device_002fwriteRegister" href="#g_t_0040device_002fwriteRegister">9.3.7 @device/writeRegister</a></li>
      <li><a id="toc-_0040i2cdev_002fdelete" href="#g_t_0040i2cdev_002fdelete">9.3.8 @i2cdev/delete</a></li>
      <li><a id="toc-_0040i2cdev_002fdisplay" href="#g_t_0040i2cdev_002fdisplay">9.3.9 @i2cdev/display</a></li>
      <li><a id="toc-_0040i2cdev_002fi2cdev" href="#g_t_0040i2cdev_002fi2cdev">9.3.10 @i2cdev/i2cdev</a></li>
      <li><a id="toc-_0040i2cdev_002fread" href="#g_t_0040i2cdev_002fread">9.3.11 @i2cdev/read</a></li>
      <li><a id="toc-_0040i2cdev_002freadRegister" href="#g_t_0040i2cdev_002freadRegister">9.3.12 @i2cdev/readRegister</a></li>
      <li><a id="toc-_0040i2cdev_002fsubsref" href="#g_t_0040i2cdev_002fsubsref">9.3.13 @i2cdev/subsref</a></li>
      <li><a id="toc-_0040i2cdev_002fwrite" href="#g_t_0040i2cdev_002fwrite">9.3.14 @i2cdev/write</a></li>
      <li><a id="toc-_0040i2cdev_002fwriteRegister" href="#g_t_0040i2cdev_002fwriteRegister">9.3.15 @i2cdev/writeRegister</a></li>
      <li><a id="toc-scanI2Cbus" href="#scanI2Cbus">9.3.16 scanI2Cbus</a></li>
    </ul></li>
    <li><a id="toc-Arduino-Rotary-Encoder-Functions-1" href="#Arduino-Rotary-Encoder-Functions">9.4 Arduino Rotary Encoder Functions</a>
    <ul class="no-bullet">
      <li><a id="toc-_0040rotaryEncoder_002fdelete" href="#g_t_0040rotaryEncoder_002fdelete">9.4.1 @rotaryEncoder/delete</a></li>
      <li><a id="toc-_0040rotaryEncoder_002fdisplay" href="#g_t_0040rotaryEncoder_002fdisplay">9.4.2 @rotaryEncoder/display</a></li>
      <li><a id="toc-_0040rotaryEncoder_002freadCount" href="#g_t_0040rotaryEncoder_002freadCount">9.4.3 @rotaryEncoder/readCount</a></li>
      <li><a id="toc-_0040rotaryEncoder_002freadSpeed" href="#g_t_0040rotaryEncoder_002freadSpeed">9.4.4 @rotaryEncoder/readSpeed</a></li>
      <li><a id="toc-_0040rotaryEncoder_002fresetCount" href="#g_t_0040rotaryEncoder_002fresetCount">9.4.5 @rotaryEncoder/resetCount</a></li>
      <li><a id="toc-_0040rotaryEncoder_002frotaryEncoder" href="#g_t_0040rotaryEncoder_002frotaryEncoder">9.4.6 @rotaryEncoder/rotaryEncoder</a></li>
      <li><a id="toc-_0040rotaryEncoder_002fsubsref" href="#g_t_0040rotaryEncoder_002fsubsref">9.4.7 @rotaryEncoder/subsref</a></li>
    </ul></li>
    <li><a id="toc-Arduino-Servo-Functions-1" href="#Arduino-Servo-Functions">9.5 Arduino Servo Functions</a>
    <ul class="no-bullet">
      <li><a id="toc-_0040servo_002fdelete" href="#g_t_0040servo_002fdelete">9.5.1 @servo/delete</a></li>
      <li><a id="toc-_0040servo_002fdisplay" href="#g_t_0040servo_002fdisplay">9.5.2 @servo/display</a></li>
      <li><a id="toc-_0040servo_002freadPosition" href="#g_t_0040servo_002freadPosition">9.5.3 @servo/readPosition</a></li>
      <li><a id="toc-_0040servo_002fservo" href="#g_t_0040servo_002fservo">9.5.4 @servo/servo</a></li>
      <li><a id="toc-_0040servo_002fsubsref" href="#g_t_0040servo_002fsubsref">9.5.5 @servo/subsref</a></li>
      <li><a id="toc-_0040servo_002fwritePosition" href="#g_t_0040servo_002fwritePosition">9.5.6 @servo/writePosition</a></li>
    </ul></li>
    <li><a id="toc-Arduino-Shiftregister-Functions-1" href="#Arduino-Shiftregister-Functions">9.6 Arduino Shiftregister Functions</a>
    <ul class="no-bullet">
      <li><a id="toc-_0040shiftRegister_002fdelete" href="#g_t_0040shiftRegister_002fdelete">9.6.1 @shiftRegister/delete</a></li>
      <li><a id="toc-_0040shiftRegister_002fdisplay" href="#g_t_0040shiftRegister_002fdisplay">9.6.2 @shiftRegister/display</a></li>
      <li><a id="toc-_0040shiftRegister_002fread" href="#g_t_0040shiftRegister_002fread">9.6.3 @shiftRegister/read</a></li>
      <li><a id="toc-_0040shiftRegister_002freset" href="#g_t_0040shiftRegister_002freset">9.6.4 @shiftRegister/reset</a></li>
      <li><a id="toc-_0040shiftRegister_002fshiftRegister" href="#g_t_0040shiftRegister_002fshiftRegister">9.6.5 @shiftRegister/shiftRegister</a></li>
      <li><a id="toc-_0040shiftRegister_002fsubsref" href="#g_t_0040shiftRegister_002fsubsref">9.6.6 @shiftRegister/subsref</a></li>
      <li><a id="toc-_0040shiftRegister_002fwrite" href="#g_t_0040shiftRegister_002fwrite">9.6.7 @shiftRegister/write</a></li>
    </ul></li>
    <li><a id="toc-Arduino-SPI-Functions-1" href="#Arduino-SPI-Functions">9.7 Arduino SPI Functions</a>
    <ul class="no-bullet">
      <li><a id="toc-_0040device_002fdelete-1" href="#g_t_0040device_002fdelete-1">9.7.1 @device/delete</a></li>
      <li><a id="toc-_0040device_002fdisplay-1" href="#g_t_0040device_002fdisplay-1">9.7.2 @device/display</a></li>
      <li><a id="toc-_0040device_002fsubsref-1" href="#g_t_0040device_002fsubsref-1">9.7.3 @device/subsref</a></li>
      <li><a id="toc-_0040device_002fwriteRead" href="#g_t_0040device_002fwriteRead">9.7.4 @device/writeRead</a></li>
      <li><a id="toc-_0040spidev_002fdelete" href="#g_t_0040spidev_002fdelete">9.7.5 @spidev/delete</a></li>
      <li><a id="toc-_0040spidev_002fdisplay" href="#g_t_0040spidev_002fdisplay">9.7.6 @spidev/display</a></li>
      <li><a id="toc-_0040spidev_002fspidev" href="#g_t_0040spidev_002fspidev">9.7.7 @spidev/spidev</a></li>
      <li><a id="toc-_0040spidev_002fsubsref" href="#g_t_0040spidev_002fsubsref">9.7.8 @spidev/subsref</a></li>
      <li><a id="toc-_0040spidev_002fwriteRead" href="#g_t_0040spidev_002fwriteRead">9.7.9 @spidev/writeRead</a></li>
    </ul></li>
    <li><a id="toc-Arduino-Serial-Functions-1" href="#Arduino-Serial-Functions">9.8 Arduino Serial Functions</a>
    <ul class="no-bullet">
      <li><a id="toc-_0040device_002fdelete-2" href="#g_t_0040device_002fdelete-2">9.8.1 @device/delete</a></li>
      <li><a id="toc-_0040device_002fdevice" href="#g_t_0040device_002fdevice">9.8.2 @device/device</a></li>
      <li><a id="toc-_0040device_002fdisplay-2" href="#g_t_0040device_002fdisplay-2">9.8.3 @device/display</a></li>
      <li><a id="toc-_0040device_002fflush" href="#g_t_0040device_002fflush">9.8.4 @device/flush</a></li>
      <li><a id="toc-_0040device_002fread-1" href="#g_t_0040device_002fread-1">9.8.5 @device/read</a></li>
      <li><a id="toc-_0040device_002fsubsref-2" href="#g_t_0040device_002fsubsref-2">9.8.6 @device/subsref</a></li>
      <li><a id="toc-_0040device_002fwrite-1" href="#g_t_0040device_002fwrite-1">9.8.7 @device/write</a></li>
    </ul></li>
    <li><a id="toc-Arduino-Device-Functions-1" href="#Arduino-Device-Functions">9.9 Arduino Device Functions</a>
    <ul class="no-bullet">
      <li><a id="toc-_0040device_002fdelete-3" href="#g_t_0040device_002fdelete-3">9.9.1 @device/delete</a></li>
      <li><a id="toc-_0040device_002fdevice-1" href="#g_t_0040device_002fdevice-1">9.9.2 @device/device</a></li>
      <li><a id="toc-_0040device_002fdisplay-3" href="#g_t_0040device_002fdisplay-3">9.9.3 @device/display</a></li>
      <li><a id="toc-_0040device_002fflush-1" href="#g_t_0040device_002fflush-1">9.9.4 @device/flush</a></li>
      <li><a id="toc-_0040device_002fread-2" href="#g_t_0040device_002fread-2">9.9.5 @device/read</a></li>
      <li><a id="toc-_0040device_002freadRegister-1" href="#g_t_0040device_002freadRegister-1">9.9.6 @device/readRegister</a></li>
      <li><a id="toc-_0040device_002fsubsref-3" href="#g_t_0040device_002fsubsref-3">9.9.7 @device/subsref</a></li>
      <li><a id="toc-_0040device_002fwrite-2" href="#g_t_0040device_002fwrite-2">9.9.8 @device/write</a></li>
      <li><a id="toc-_0040device_002fwriteRead-1" href="#g_t_0040device_002fwriteRead-1">9.9.9 @device/writeRead</a></li>
      <li><a id="toc-_0040device_002fwriteRegister-1" href="#g_t_0040device_002fwriteRegister-1">9.9.10 @device/writeRegister</a></li>
    </ul></li>
    <li><a id="toc-Arduino-Ultrasonic-Functions-1" href="#Arduino-Ultrasonic-Functions">9.10 Arduino Ultrasonic Functions</a>
    <ul class="no-bullet">
      <li><a id="toc-_0040ultrasonic_002fdelete" href="#g_t_0040ultrasonic_002fdelete">9.10.1 @ultrasonic/delete</a></li>
      <li><a id="toc-_0040ultrasonic_002fdisplay" href="#g_t_0040ultrasonic_002fdisplay">9.10.2 @ultrasonic/display</a></li>
      <li><a id="toc-_0040ultrasonic_002freadDistance" href="#g_t_0040ultrasonic_002freadDistance">9.10.3 @ultrasonic/readDistance</a></li>
      <li><a id="toc-_0040ultrasonic_002freadEchoTime" href="#g_t_0040ultrasonic_002freadEchoTime">9.10.4 @ultrasonic/readEchoTime</a></li>
      <li><a id="toc-_0040ultrasonic_002fsubsref" href="#g_t_0040ultrasonic_002fsubsref">9.10.5 @ultrasonic/subsref</a></li>
      <li><a id="toc-_0040ultrasonic_002fultrasonic" href="#g_t_0040ultrasonic_002fultrasonic">9.10.6 @ultrasonic/ultrasonic</a></li>
    </ul></li>
    <li><a id="toc-Arduino-Addons-1" href="#Arduino-Addons">9.11 Arduino Addons</a>
    <ul class="no-bullet">
      <li><a id="toc-addon" href="#addon">9.11.1 addon</a></li>
      <li><a id="toc-arduinoioaddons_002eEEPRomAddon_002eEEPRom" href="#arduinoioaddons_002eEEPRomAddon_002eEEPRom">9.11.2 arduinoioaddons.EEPRomAddon.EEPRom</a></li>
      <li><a id="toc-arduinoioaddons_002eExampleAddon_002eEcho" href="#arduinoioaddons_002eExampleAddon_002eEcho">9.11.3 arduinoioaddons.ExampleAddon.Echo</a></li>
      <li><a id="toc-arduinoioaddons_002eExampleLCD_002eLCD" href="#arduinoioaddons_002eExampleLCD_002eLCD">9.11.4 arduinoioaddons.ExampleLCD.LCD</a></li>
      <li><a id="toc-arduinoioaddons_002eRTCAddon_002eDS1307" href="#arduinoioaddons_002eRTCAddon_002eDS1307">9.11.5 arduinoioaddons.RTCAddon.DS1307</a></li>
      <li><a id="toc-arduinoioaddons_002eSimpleStepper_002eSimpleStepper" href="#arduinoioaddons_002eSimpleStepper_002eSimpleStepper">9.11.6 arduinoioaddons.SimpleStepper.SimpleStepper</a></li>
      <li><a id="toc-arduinoioaddons_002eadafruit_002edcmotorv2" href="#arduinoioaddons_002eadafruit_002edcmotorv2">9.11.7 arduinoioaddons.adafruit.dcmotorv2</a></li>
      <li><a id="toc-arduinoioaddons_002eadafruit_002emotorshieldv2" href="#arduinoioaddons_002eadafruit_002emotorshieldv2">9.11.8 arduinoioaddons.adafruit.motorshieldv2</a></li>
      <li><a id="toc-arduinoioaddons_002eadafruit_002estepper" href="#arduinoioaddons_002eadafruit_002estepper">9.11.9 arduinoioaddons.adafruit.stepper</a></li>
    </ul></li>
    <li><a id="toc-Arduino-Sensors-1" href="#Arduino-Sensors">9.12 Arduino Sensors</a>
    <ul class="no-bullet">
      <li><a id="toc-arduinosensor_002eDS1307" href="#arduinosensor_002eDS1307">9.12.1 arduinosensor.DS1307</a></li>
      <li><a id="toc-arduinosensor_002eGUVAS12SD" href="#arduinosensor_002eGUVAS12SD">9.12.2 arduinosensor.GUVAS12SD</a></li>
      <li><a id="toc-arduinosensor_002eMPC3002" href="#arduinosensor_002eMPC3002">9.12.3 arduinosensor.MPC3002</a></li>
      <li><a id="toc-arduinosensor_002eSI7021" href="#arduinosensor_002eSI7021">9.12.4 arduinosensor.SI7021</a></li>
    </ul></li>
    <li><a id="toc-Arduino-I_002fO-package-1" href="#Arduino-I_002fO-package">9.13 Arduino I/O package</a>
    <ul class="no-bullet">
      <li><a id="toc-arduinoio_002eAddonBase" href="#arduinoio_002eAddonBase">9.13.1 arduinoio.AddonBase</a></li>
      <li><a id="toc-arduinoio_002eFilePath" href="#arduinoio_002eFilePath">9.13.2 arduinoio.FilePath</a></li>
      <li><a id="toc-arduinoio_002eLibFiles" href="#arduinoio_002eLibFiles">9.13.3 arduinoio.LibFiles</a></li>
      <li><a id="toc-arduinoio_002eLibraryBase" href="#arduinoio_002eLibraryBase">9.13.4 arduinoio.LibraryBase</a></li>
      <li><a id="toc-arduinoio_002egetBoardConfig" href="#arduinoio_002egetBoardConfig">9.13.5 arduinoio.getBoardConfig</a></li>
    </ul></li>
    <li><a id="toc-Matlab-Compatability-Classes-1" href="#Matlab-Compatability-Classes">9.14 Matlab Compatability Classes</a>
    <ul class="no-bullet">
      <li><a id="toc-matlabshared_002eaddon_002eLibraryBase" href="#matlabshared_002eaddon_002eLibraryBase">9.14.1 matlabshared.addon.LibraryBase</a></li>
    </ul></li>
    <li><a id="toc-Sensors-1" href="#Sensors">9.15 Sensors</a>
    <ul class="no-bullet">
      <li><a id="toc-bme280" href="#bme280">9.15.1 bme280</a></li>
      <li><a id="toc-bno055" href="#bno055">9.15.2 bno055</a></li>
      <li><a id="toc-lis3dh" href="#lis3dh">9.15.3 lis3dh</a></li>
      <li><a id="toc-lps22hb" href="#lps22hb">9.15.4 lps22hb</a></li>
      <li><a id="toc-lsm6dso" href="#lsm6dso">9.15.5 lsm6dso</a></li>
      <li><a id="toc-mpu6050" href="#mpu6050">9.15.6 mpu6050</a></li>
      <li><a id="toc-si7021" href="#si7021">9.15.7 si7021</a></li>
    </ul></li>
    <li><a id="toc-Test-Functions-1" href="#Test-Functions">9.16 Test Functions</a>
    <ul class="no-bullet">
      <li><a id="toc-arduino_005fbistsetup" href="#arduino_005fbistsetup">9.16.1 arduino_bistsetup</a></li>
    </ul></li>
  </ul></li>
  <li><a id="toc-GNU-General-Public-License" href="#Copying">Appendix A GNU General Public License</a></li>
  <li><a id="toc-Index-1" href="#Index" rel="index">Index</a></li>
</ul>
</div>
</div>
<hr>
<div class="chapter" id="Installing-and-loading">
<div class="header">
<p>
Next: <a href="#Hardware-setup" accesskey="n" rel="next">Hardware setup</a>, Previous: <a href="#Top" accesskey="p" rel="prev">Introduction</a>, Up: <a href="#Top" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Installing-and-loading-1"></span><h2 class="chapter">1 Installing and loading</h2>
<span id="index-Installing-and-loading"></span>
<p>The Arduino toolkit must be installed and then loaded to be used.
</p>
<p>It can be installed in <acronym>GNU</acronym> Octave directly from octave-forge,
or can be installed in an off-line mode via a downloaded tarball.
</p>
<table class="cartouche" border="1"><tr><td>
<p><strong>NOTE</strong>
</p>
<p>The toolkit requires the <a href="https://www.arduino.cc/en/software">Arduino IDE</a> in order to program Arduino devices.
</p></td></tr></table>
<table class="cartouche" border="1"><tr><td>
<p><strong>NOTE</strong>
</p>
<p>The toolkit has a dependency on the instrument-control package, so it must be installed in order
to successfully install the Arduino toolkit
</p></td></tr></table>
<p>The toolkit must be then be loaded once per each <acronym>GNU</acronym> Octave session in order to use its functionality.
</p>
<ul class="section-toc">
<li><a href="#Online-Direct-install" accesskey="1">Online Direct install</a></li>
<li><a href="#Off_002dline-install" accesskey="2">Off-line install</a></li>
<li><a href="#Loading" accesskey="3">Loading</a></li>
</ul>
<div class="section" id="Online-Direct-install">
<h3 class="section">1.1 Online Direct install</h3>
<span id="index-Online-install"></span>
<p>With an internet connection available, the Arduino package can be installed from
octave-forge using the following command within <acronym>GNU</acronym> Octave:
</p>
<div class="example">
<pre class="example">pkg install -forge arduino
</pre></div>
<p>The latest released version of the toolkit will be downloaded and installed.
</p>
</div>
<div class="section" id="Off_002dline-install">
<h3 class="section">1.2 Off-line install</h3>
<span id="index-Off_002dline-install"></span>
<p>With the arduino toolkit package already downloaded, and in the current directory when running
<acronym>GNU</acronym> Octave, the package can be installed using the following command within <acronym>GNU</acronym> Octave:
</p>
<div class="example">
<pre class="example">pkg install arduino-0.10.0.tar.gz
</pre></div>
</div>
<div class="section" id="Loading">
<h3 class="section">1.3 Loading</h3>
<span id="index-Loading"></span>
<p>Regardless of the method of installing the Arduino toolkit, in order to use its functions,
the toolkit must be loaded using the pkg load command:
</p>
<div class="example">
<pre class="example">pkg load arduino
</pre></div>
<p>The toolkit must be loaded on each <acronym>GNU</acronym> Octave session.
</p>
<hr>
</div>
</div>
<div class="chapter" id="Hardware-setup">
<div class="header">
<p>
Next: <a href="#Connecting-to-an-arduino" accesskey="n" rel="next">Connecting to an arduino</a>, Previous: <a href="#Installing-and-loading" accesskey="p" rel="prev">Installing and loading</a>, Up: <a href="#Top" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Hardware-setup-1"></span><h2 class="chapter">2 Hardware setup</h2>
<span id="index-Hardware-setup"></span>
<p>In order to use the arduino hardware with the toolkit, it must be programmed with
special firmware.
</p>
<ul class="section-toc">
<li><a href="#Programming-the-Arduino" accesskey="1">Programming the Arduino</a></li>
<li><a href="#Known-Arduino-Board-Types" accesskey="2">Known Arduino Board Types</a></li>
</ul>
<div class="section" id="Programming-the-Arduino">
<h3 class="section">2.1 Programming the Arduino</h3>
<span id="index-Programming-the-Arduino"></span>
<p>To program the hardware, using a default configuration, run the arduinosetup command:
</p>
<div class="example">
<pre class="example">arduinosetup
</pre></div>
<p>A temporary Arduino project will be created, with the Arduino toolkit files copied to it and the Arduino IDE will open.
</p>
<p>Set the board type and port correctly for the connected Arduino and press the upload button on the IDE.
</p>
<p>The sources will be compiled and then uploaded to the connected arduino board.
</p>
<p>After successful upload the Arduino IDE should be closed.
</p>
<table class="cartouche" border="1"><tr><td>
<p><strong>NOTE</strong>
</p>
<p>The arduino programming is not compatible with the Matlab arduino library, so must be programmed by
the Octave Arduino toolkit to communicate to the arduino, even if it was previously used to work with Matlab.
</p></td></tr></table>
<table class="cartouche" border="1"><tr><td>
<p><strong>NOTE</strong>
</p>
<p>The toolkit requires the <a href="https://www.arduino.cc/en/software">Arduino IDE</a> in order to program the Arduino device.
</p>
<p>The binary can set using the &rsquo;arduinobinary&rsquo; property when running setup.
</p>
<p>For arduino IDEs before version 2, if the toolkit can not find the IDE, run the IDE manually, close it and retry programming
the Arduino. Otherwise, use the &rsquo;arduino&rsquo; binary property.
</p></td></tr></table>
</div>
<div class="section" id="Known-Arduino-Board-Types">
<h3 class="section">2.2 Known Arduino Board Types</h3>
<span id="index-Known-Arduino-Board-Types"></span>
<p>The board type must be known in order to successfully detect and connect to the Arduino board after programming.
</p>
<p>Currently, known boards are:
</p><ul>
<li> Arduino Due
</li><li> Arduino UNO
</li><li> Arduino Mega 2560
</li><li> Arduino Nano
</li><li> Arduino Nano Every
</li><li> Arduino Nano 33 BLE
</li><li> Arduino Nano RP2040 Connect
</li><li> Arduino Pro/Pro Mini
</li><li> Arduino Pro Micro
</li><li> Arduino Leonardo
</li><li> Arduino Micro
</li><li> Arduino MKR1000
</li><li> Arduino MKRZero
</li><li> Sparkfun SAMD21
</li><li> Arduino Lilypad
</li><li> Arduino UNO WiFi rev2
<table class="cartouche" border="1"><tr><td>
<p><strong>NOTE</strong>
</p>
<p>The Arduino servo library code may require modifications to
 eliminate conflicts between servos and the tone library
</p></td></tr></table>
</li><li> Raspberry Pi Pico
</li><li> EPS32 Dev
</li></ul>
<p>Additional boards can be added easily, however require minor code changes.
</p>
<hr>
</div>
</div>
<div class="chapter" id="Connecting-to-an-arduino">
<div class="header">
<p>
Next: <a href="#Basic-Input-and-Output-Overview" accesskey="n" rel="next">Basic Input and Output Overview</a>, Previous: <a href="#Hardware-setup" accesskey="p" rel="prev">Hardware setup</a>, Up: <a href="#Top" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Connecting-to-an-arduino-1"></span><h2 class="chapter">3 Connecting to an arduino</h2>
<span id="index-Connecting-to-an-arduino"></span>
<p>To control an arduino device, a connection must be made to it by creating an arduino object.
</p>
<ul class="section-toc">
<li><a href="#Connecting-to-a-single-arduino" accesskey="1">Connecting to a single arduino</a></li>
<li><a href="#Connecting-to-a-specific-arduino" accesskey="2">Connecting to a specific arduino</a></li>
<li><a href="#Querying-available-arduinos" accesskey="3">Querying available arduinos</a></li>
</ul>
<div class="section" id="Connecting-to-a-single-arduino">
<h3 class="section">3.1 Connecting to a single arduino</h3>
<span id="index-Connecting-to-a-single-arduino"></span>
<p>Assuming a single arduino device is connected to the computer, creating an arduino object with no arguments will
find the connected arduino and connect to it:
</p>
<div class="example">
<pre class="example">ar = arduino()
</pre></div>
</div>
<div class="section" id="Connecting-to-a-specific-arduino">
<h3 class="section">3.2 Connecting to a specific arduino</h3>
<span id="index-Connecting-to-a-specific-arduino"></span>
<p>Where multiple arduinos may be connected to the computer, a specific board can be connected by
specifying the name of the port it is connected to:
</p>
<div class="example">
<pre class="example">ar = arduino(&quot;/dev/ttyACM0&quot;)
</pre></div>
<p>The port name will be operating system dependent.
</p>
</div>
<div class="section" id="Querying-available-arduinos">
<h3 class="section">3.3 Querying available arduinos</h3>
<span id="index-Querying-available-arduinos"></span>
<p>To list the ports of all <em>programmed</em> available arduinos, the scanForArduinos function can be used:
</p>
<div class="example">
<pre class="example">scanForArduinos
</pre></div>
<p>It will provide a list of all available boards it can find with the port they are connected to.
</p>
<table class="cartouche" border="1"><tr><td>
<p><strong>NOTE</strong>
</p>
<p>The scanForArduinos function will only detect boards that have been programmed using the arduinosetup command
</p></td></tr></table>
<hr>
</div>
</div>
<div class="chapter" id="Basic-Input-and-Output-Overview">
<div class="header">
<p>
Next: <a href="#Protocol-based-I_002fO-Overview" accesskey="n" rel="next">Protocol based I/O Overview</a>, Previous: <a href="#Connecting-to-an-arduino" accesskey="p" rel="prev">Connecting to an arduino</a>, Up: <a href="#Top" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Basic-Input-and-Output-Overview-1"></span><h2 class="chapter">4 Basic Input and Output Overview</h2>
<span id="index-Basic-Input-and-Output-Overview"></span>
<p>Basic input and output can be performed on a connected arduino device using by calling the read and write functions
for a specific named pin on the arduino.
</p>
<p>A list of available pins can get found from the pins property of the connected arduino object and are also displayed
as part of the default shown properties:
</p>
<div class="example">
<pre class="example">ar = arduino();
% get the pin names
pins = ar.availablepins
</pre></div>
<p>Pin generally follow a naming scheme of D&lt;number&gt; for digital pins and A&lt;number&gt; for analog pins.
</p>
<p>Digital pins can be used to read and write digital data, but can not read analog voltages.
Analog pins can perform digital I/O as well as reading voltages.
</p>
<ul class="section-toc">
<li><a href="#Performing-Digital-I_002fO" accesskey="1">Performing Digital I/O</a></li>
<li><a href="#Performing-Analog-Input" accesskey="2">Performing Analog Input</a></li>
</ul>
<div class="section" id="Performing-Digital-I_002fO">
<h3 class="section">4.1 Performing Digital I/O</h3>
<span id="index-Performing-Digital-I_002fO"></span>
<p>A pin&rsquo;s digital logic value can be true (1) or false (0) and can be set using the writeDigitalPin function.
</p>
<p>The following example attempts to set the D2 pin of the connected arduino object &quot;ar&quot; to true, waits 5 seconds and
then sets it to false:
</p>
<div class="example">
<pre class="example">writeDigitalPin (ar,  &quot;d2&quot;, true);
pause 5
writeDigitalPin (ar,  &quot;d2&quot;, false);
</pre></div>
<p>Using the readDigitalPin will read the current logic state of the pin.
</p>
<div class="example">
<pre class="example">value = readDigitalPin (ar,  &quot;d2&quot;);
</pre></div>
</div>
<div class="section" id="Performing-Analog-Input">
<h3 class="section">4.2 Performing Analog Input</h3>
<span id="index-Performing-Analog-Input"></span>
<p>For analog pins, the voltage level can be read using a analog to digital conversion and will return a voltage level
between 0 and the boards voltage (nominally 5V):
</p>
<div class="example">
<pre class="example">value = readVoltage (ar,  &quot;a0&quot;);
</pre></div>
<p>The raw digital value of the pin can also be read instead of a voltage, giving a value between 0 and 2^x where x is
the number of bits used by the analog to digital converter.
</p>
<div class="example">
<pre class="example">value = readAnalogPin (ar,  &quot;a0&quot;);
</pre></div>
<hr>
</div>
</div>
<div class="chapter" id="Protocol-based-I_002fO-Overview">
<div class="header">
<p>
Next: <a href="#Addons-Overview" accesskey="n" rel="next">Addons Overview</a>, Previous: <a href="#Basic-Input-and-Output-Overview" accesskey="p" rel="prev">Basic Input and Output Overview</a>, Up: <a href="#Top" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Protocol-based-I_002fO-Overview-1"></span><h2 class="chapter">5 Protocol based I/O Overview</h2>
<span id="index-Protocol-based-I_002fO-Overview"></span>
<p>The arduino toolkit supports more complex I/O for SPI, I2C, Servo control and more.
</p>
<ul class="section-toc">
<li><a href="#SPI-communication" accesskey="1">SPI communication</a></li>
<li><a href="#I2C-communication" accesskey="2">I2C communication</a></li>
<li><a href="#Servo-communication" accesskey="3">Servo communication</a></li>
<li><a href="#Shift-Registers" accesskey="4">Shift Registers</a></li>
<li><a href="#Rotary-Encoders" accesskey="5">Rotary Encoders</a></li>
<li><a href="#Ultrasonic-Sensors" accesskey="6">Ultrasonic Sensors</a></li>
<li><a href="#Serial-communication" accesskey="7">Serial communication</a></li>
</ul>
<div class="section" id="SPI-communication">
<h3 class="section">5.1 SPI communication</h3>
<span id="index-SPI-communication"></span>
<p>SPI communication can be performed by creating a SPI device object and then calling the writeRead function:
</p>
<div class="example">
<pre class="example">spi = device (ar,  &quot;spichipselectpin&quot;, &quot;d2&quot;);
</pre></div>
<p>The function call expects a connected arduino object as the first argument, followed by the chip select pin of the SPI device.
</p>
<p>After a device is created, a write to device followed by read can can be made using the writeRead function:
</p>
<div class="example">
<pre class="example">spi = device (ar,  &quot;spichipselectpin&quot;, &quot;d2&quot;);
data = writeRead (spi,  100);
</pre></div>
</div>
<div class="section" id="I2C-communication">
<h3 class="section">5.2 I2C communication</h3>
<span id="index-I2C-communication"></span>
<p>I2C communication can be performed by creating an I2C device object for a specific I2C address.
</p>
<p>The following example creates an I2C device that will communicate with a I2C device at address 100&quot;
</p><div class="example">
<pre class="example">i2c = device (ar,  &quot;i2caddress&quot;, 100);
</pre></div>
<p>After creating an I2C device, data can be read and written using read, write, readRegister and writeRegister. The data to send 
and receive will be device dependent.
</p>
</div>
<div class="section" id="Servo-communication">
<h3 class="section">5.3 Servo communication</h3>
<span id="index-Servo-communication"></span>
<p>Servo communication can be performed after creating a servo device object to operate on a PWM pin:
</p>
<div class="example">
<pre class="example">servoobj = servo(ar, &quot;d9&quot;, &quot;minpulseduration&quot;, 1.0e-3, ...
  &quot;maxpulseduration&quot;, 2e-3);
</pre></div>
<p>The servo function expects the connected arduino object and the PWM pin that the servo is connected to. Optional properties 
can be specified to control the setup of device.
</p>
<p>In the example, the min and max pulse width values are set.
</p>
<p>Using the servo object the current position and be read or set with values ranging between 0 to 1, with 0 being the minimum 
pulse width and 1 being the maximum.
</p>
<p>The following example sets the servo to its middle position.
</p>
<div class="example">
<pre class="example">servoobj = servo(ar, &quot;d9&quot;, &quot;minpulseduration&quot;, 1.0e-3, ...
  &quot;maxpulseduration&quot;, 2e-3);
writePosition (servoobj, 0.5);
</pre></div>
</div>
<div class="section" id="Shift-Registers">
<h3 class="section">5.4 Shift Registers</h3>
<span id="index-Shift-Registers"></span>
<p>A shift register can be controlled by creating a shiftRegister object:
</p>
<div class="example">
<pre class="example">registerobj = shiftRegister(ar, '74hc164', &quot;d2&quot;, &quot;d3&quot;);
</pre></div>
<p>The parameters required are dependent on the type of shift register created.
</p>
<p>Once a register object has been created, it can be read and written to using the read and write functions.
</p>
</div>
<div class="section" id="Rotary-Encoders">
<h3 class="section">5.5 Rotary Encoders</h3>
<span id="index-Rotary-Encoder"></span>
<p>A rotary encoder can be created by creating a rotaryEncoder object.
</p>
<div class="example">
<pre class="example">encoder = rotaryEncoder(ar, &quot;d2&quot;, &quot;d3&quot;, 180);
</pre></div>
<p>Using the created object, the rotary encoder value and speed can be read.
</p>
</div>
<div class="section" id="Ultrasonic-Sensors">
<h3 class="section">5.6 Ultrasonic Sensors</h3>
<span id="index-Ultrasonic-Sensors"></span>
<p>An ultrasonic sensor can be read by creating an ultrasonic object.
</p>
<div class="example">
<pre class="example">sensor = ultrasonic(ar, &quot;d9&quot;, &quot;d10&quot;);
</pre></div>
<p>Using the created object, the sensor distance and echo time and be read.
</p>
</div>
<div class="section" id="Serial-communication">
<h3 class="section">5.7 Serial communication</h3>
<span id="index-Serial-communication"></span>
<p>Serial communication can be performed on devices that support multiple serial devices such as the leonardo and mega2560 boards. 
The communications port to Octave is reserved and can not be used as a user controlled communications port.
</p>
<p>Serial communication can be performed by creating a serial device object and then calling the read and write functions:
</p>
<div class="example">
<pre class="example">ser = device (ar,  &quot;serial&quot;, 1);
</pre></div>
<p>The function call expects a connected arduino object as the first argument, followed &quot;serial&quot; and serial id.
</p>
<p>After a device is created, the device can be read and written:
</p>
<div class="example">
<pre class="example">ser = device (ar,  &quot;serial&quot;, 1);
write(ser, &quot;hello&quot;);
data = read(ser, 100);
</pre></div>
<hr>
</div>
</div>
<div class="chapter" id="Addons-Overview">
<div class="header">
<p>
Next: <a href="#Sensors-Overview" accesskey="n" rel="next">Sensors Overview</a>, Previous: <a href="#Protocol-based-I_002fO-Overview" accesskey="p" rel="prev">Protocol based I/O Overview</a>, Up: <a href="#Top" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Addons-Overview-1"></span><h2 class="chapter">6 Addons Overview</h2>
<span id="index-Addons-Overview"></span>
<p>This chapter provides an overview of the arduino package addon functionality for adding
additional addons to arduino.
</p>
<ul class="section-toc">
<li><a href="#Addon-Introduction" accesskey="1">Addon Introduction</a></li>
<li><a href="#Creating-an-addon" accesskey="2">Creating an addon</a></li>
<li><a href="#Using-addons" accesskey="3">Using addons</a></li>
</ul>
<div class="section" id="Addon-Introduction">
<h3 class="section">6.1 Addon Introduction</h3>
<span id="index-Addon-Introduction"></span>
<p>Addons provide a way of adding additional functionality to the arduino toolkit
that provides Matlab access directly to the arduino hardware.
</p>
<p>Addons are implemented in two parts.
</p><ol>
<li> code running on the arduino that implements the required functionality
</li><li> a octave wrapper class that provides the Matlab interface and communication to the code.
</li></ol>
<p>Both parts are required to create a plugin.
</p>
<p>The arduino toolkit provides a number of pre-created addons. These can be seen using
the following command:
</p>
<div class="example">
<pre class="example"><code>
listArduinoLibraries
</code>
</pre></div>
<p>The command will display all known arduino libraries (addons as well as core libraries), however
addons typically use a &quot;foldername/classname&quot; for this naming.
</p>
<p><strong>See also:</strong> listArduinoLibraries.
</p>
</div>
<div class="section" id="Creating-an-addon">
<h3 class="section">6.2 Creating an addon</h3>
<span id="index-Creating-an-addon"></span>
<p>An addon requires at minimum 3 things:
</p><ol>
<li> A addon package directory that will contain the addon files
</li><li> A Matlab file within that directory that is a subclass of arduinoio.LibraryBase
</li><li> A arduino source/header file that contains the arduino code to load, sub-classed for LibraryBase
</li></ol>
<p>So the addon directory structure at a minimum will be:
</p><div class="example">
<pre class="example"><code>
  +arduinoioaddons  (dir) [somewhere in the octave load path]
    +MyAddons (dir)
      MyAddon1.m 
      MyAddon1.h
</code>
</pre></div>
<ul class="section-toc">
<li><a href="#Addon-package-directory" accesskey="1">Addon package directory</a></li>
<li><a href="#Addon-package-_002em-file" accesskey="2">Addon package .m file</a></li>
<li><a href="#Addon-package-header-file" accesskey="3">Addon package header file</a></li>
<li><a href="#Verify-octave-can-see-the-addon" accesskey="4">Verify octave can see the addon</a></li>
</ul>
<div class="subsection" id="Addon-package-directory">
<h4 class="subsection">6.2.1 Addon package directory</h4>
<span id="index-Addon-package-directory"></span>
<p>The addon architecture looks for plugins in the octave load path in a package directory called 
+arduinoioaddons
</p>
<p>So this directory must be created somewhere within the paths that octave will check for 
functions.
</p>
<p>In addition, the addon architecture expects plugins to be contained in a sub directory within
the +arduinoioaddons folder. The subdirectory must begin with a &rsquo;+&rsquo;.
</p>
<p>Multiple plugin .m files can be within the same sub directory.
</p>
</div>
<div class="subsection" id="Addon-package-_002em-file">
<h4 class="subsection">6.2.2 Addon package .m file</h4>
<span id="index-Addon-package-_002em-file"></span>
<p>The Matlab interface file within the addon directory provides the Matlab interface for the arduino code
as well as provides information about the addon.
</p>
<span id="Class-inheritance-and-required-properties"></span><h4 class="subsubheading">Class inheritance and required properties</h4>
<p>The interface file must be a subclass of arduinoio.LibraryBase and must contain some constant properties values that provide the information.
</p>
<p>A minimum example of required is below:
</p><div class="example">
<pre class="example"><code>
classdef MyAddon1 &lt; arduinoio.LibraryBase
  properties(Access = protected, Constant = true)
    LibraryName = 'MyAddons/MyAddon1';
    CppHeaderFile = fullfile(arduinoio.FilePath(mfilename('fullpath')), 'MyAddon1.h');
    CppClassName = 'MyAddon1';
  endproperties
  .
  .
  .
endclassdef
</code>
</pre></div>
<p>The following constant properties can be set within the addon:
</p><dl compact="compact">
<dt><span>LibraryName</span></dt>
<dd><p>(Required) The name of the addon. My convention this is usually the directoryname / theclassname
</p></dd>
<dt><span>CppHeaderFile</span></dt>
<dd><p>(Required) The header file for the arduino code
</p></dd>
<dt><span>CppSourceFile</span></dt>
<dd><p>(Optional) The source file (if any) for the arduino code
</p></dd>
<dt><span>CppClassName</span></dt>
<dd><p>(Required) The classname used within the cppheaderfile for the arduino library
</p></dd>
<dt><span>DependantLibraries</span></dt>
<dd><p>(Optional) Any additional addons or cores that are needed for this library to be used
</p></dd>
<dt><span>ArduinoLibraryHeaderFiles</span></dt>
<dd><p>(Optional) Any additional header files that need to be included
</p></dd>
</dl>
<span id="Class-constructor"></span><h4 class="subsubheading">Class constructor</h4>
<p>The Matlab class constructor will be called from the addon function when creating a
instance of the addon and should initialize at least two properties in inherited from
arduinoio.LibraryBase:
</p>
<ol>
<li> Parent
should be set to the first input argument (the arduino class)
</li><li> Pins
should be set to a list of pins that are used for the plugin
</li></ol>
<div class="example">
<pre class="example"><code>
classdef MyAddon1 &lt; arduinoio.LibraryBase
  .
  .
  methods
    function obj = MyAddon1(parentObj, varargin)
      obj.Parent = parentObj;
      # no pins being used
      obj.Pins = [];
      # send any command to the arduino during setup ?
    endfunction
    .
    .
  endmethods
endclassdef
</code>
</pre></div>
<span id="Class-functions"></span><h4 class="subsubheading">Class functions</h4>
<p>The class functions will usually communicate to the arduino and use the response for 
what is returned to the user.
</p>
<p>By convention, the commands sent to the arduino are defined as constants in the class file but do not have to be.
</p><div class="example">
<pre class="example"><code>
classdef MyAddon1 &lt; arduinoio.LibraryBase
  properties(Access = private, Constant = true)
    INIT_COMMAND = hex2dec('00');
    FUNC1_COMMAND = hex2dec('01');
  endproperties
  .
  .
  methods
    function obj = MyAddon1(parentObj, varargin)
      obj.Parent = parentObj;
      # no pins being used
      obj.Pins = [];
      # send any command to the arduino during setup ?
      sendCommand(obj.Parent, obj.LibraryName, obj.INIT_COMMAND, []);
    endfunction
    function retval = func1(obj)
       cmdID = obj.FUNC1_COMMAND;
       retval = sendCommand(obj.Parent, obj.LibraryName, cmdID, []);
    endfunction
    .
    .
  endmethods
endclassdef
</code>
</pre></div>
<table class="cartouche" border="1"><tr><td>
<p><strong>NOTE</strong>
</p>
<p>the sendCommand uses the objects parent for the arduino,  the objects library name and the command id
</p></td></tr></table>
<p><strong>See also:</strong> sendCommand.
</p>
</div>
<div class="subsection" id="Addon-package-header-file">
<h4 class="subsection">6.2.3 Addon package header file</h4>
<span id="index-Addon-package-header-file"></span>
<p>The header file should contain a class that matches the functionally and information of the matlab file
and provides the ability to register the code on the arduino.
</p>
<p>The following things should occur in the arduino class files:
</p><ol>
<li> The class name within the file must be the same as the one set in the .m file
CppClassName property.
</li><li> The libName variable must be the same as the LibraryName property.
</li><li> The constructor should call registerLibrary
</li><li> the commandHandler function to act on cmdID values that match the commands that will be sent from .m file and send
 data back using sendResponseMsg
</li><li> on receiving unknown cmdID values, the commandHandler should use sendUnknownCmdIDMsg
</li></ol>
<p>An example, matching the previous .m file code is below:
</p><div class="example">
<pre class="example"><code>
#include &quot;LibraryBase.h&quot;
#define MYADDON1_INIT  0x00
#define MYADDON1_FUNC1 0x01
class MyAddon1 : public LibraryBase
{
  uint8_t cnt;
public:
  MyAddon1(OctaveArduinoClass&amp; a)
  {
    libName = &quot;MyAddons/MyAddon1&quot;;
    a.registerLibrary(this);
  }
  void commandHandler(uint8_t cmdID, uint8_t* data, uint8_t datasz)
  {
    switch (cmdID)
      {
      case MYADDON1_INIT:
        {
          cnt = 0;
          sendResponseMsg(cmdID, 0,0);
          break;
        }
      case MYADDON1_FUNC1:
        {
          // func 1 is just returning a uint8 count of number of times called
          cnt ++;
          sendResponseMsg(cmdID, &amp;cnt, 1);
          break;
        }
      default:
        {
          // notify of invalid cmd
          sendUnknownCmdIDMsg();
        }
      }
  }
}
</code>;
</pre></div>
<p>The body of functions can be in the CppSourceFile file is it is defined or within the header file as illustrated above.
</p>
</div>
<div class="subsection" id="Verify-octave-can-see-the-addon">
<h4 class="subsection">6.2.4 Verify octave can see the addon</h4>
<span id="index-Verify-octave-can-see-the-addon"></span>
<p>Use the listArduinoLibaries command to verify that the new addon appears in the list of known libraries.
</p>
<p>If it does not, ensure that the +arduinoioaddons directory is within one of the octave class paths, and that the directory
structure and inheritance requirements have been met.
</p>
</div>
</div>
<div class="section" id="Using-addons">
<h3 class="section">6.3 Using addons</h3>
<span id="index-Using-Addons"></span>
<ul class="section-toc">
<li><a href="#Programming-the-arduino-with-the-addon" accesskey="1">Programming the arduino with the addon</a></li>
<li><a href="#Creating-a-addon-object" accesskey="2">Creating a addon object</a></li>
</ul>
<div class="subsection" id="Programming-the-arduino-with-the-addon">
<h4 class="subsection">6.3.1 Programming the arduino with the addon</h4>
<span id="index-Programming-the-arduino-with-the-addon"></span>
<p>To use a addon, the code must be programmed onto the arduino.
</p>
<p>Using the libraries command, when creating a arduino object, the arduino can be reprogrammed if the library does not already
exist on the arduino.
</p>
<div class="example">
<pre class="example"><code>
  ar = arduino([],[], 'libraries', 'MyAddons/MyAddon1', 'forcebuild', true)
</code>
</pre></div>
<p>The libraries property of the arduino object should list the libraries programmed on the arduino.
</p>
<p>Alternatively, the library can be added using the libraries property and arduinosetup
</p>
<p><strong>See also:</strong> arduino, arduinosetup.
</p>
</div>
<div class="subsection" id="Creating-a-addon-object">
<h4 class="subsection">6.3.2 Creating a addon object</h4>
<span id="index-Creating-a-addon-object"></span>
<p>An object of the addon type can be created using the addon command.
</p>
<div class="example">
<pre class="example"><code>
  ar = arduino([],[], 'libraries', 'MyAddons/MyAddon1', 'forcebuild', true)
  obj = addon(ar, &quot;MyAddons/MyAddon1&quot;);
</code>
</pre></div>
<hr>
</div>
</div>
</div>
<div class="chapter" id="Sensors-Overview">
<div class="header">
<p>
Next: <a href="#Examples" accesskey="n" rel="next">Examples</a>, Previous: <a href="#Addons-Overview" accesskey="p" rel="prev">Addons Overview</a>, Up: <a href="#Top" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Sensors-Overview-1"></span><h2 class="chapter">7 Sensors Overview</h2>
<span id="index-Sensors-Overview"></span>
<p>There are two types of sensors available:
</p><ol>
<li> Matlab compatible(ish) sensors for environment and IMU.
</li><li> Additional lightweight wrappers for some chips in a arduinosensor namespace.
</li></ol>
<ul class="section-toc">
<li><a href="#Matlab-Compatible-Sensors" accesskey="1">Matlab Compatible Sensors</a></li>
<li><a href="#Lightweight-Arduino-Sensors" accesskey="2">Lightweight Arduino Sensors</a></li>
</ul>
<div class="section" id="Matlab-Compatible-Sensors">
<h3 class="section">7.1 Matlab Compatible Sensors</h3>
<span id="index-Matlab-Compatible-Sensor"></span>
<ul class="section-toc">
<li><a href="#Overview" accesskey="1">Overview</a></li>
<li><a href="#Available-Sensors" accesskey="2">Available Sensors</a></li>
</ul>
<div class="subsection" id="Overview">
<h4 class="subsection">7.1.1 Overview</h4>
<p>Matlab compatible functions are provided for a number of sensors, using a similar function naming as
provided by the Matlab arduino package.
</p>
</div>
<div class="subsection" id="Available-Sensors">
<h4 class="subsection">7.1.2 Available Sensors</h4>
<span id="index-Available-Sensors"></span>
<p>The functions for each sensor is listed in the function reference, <a href="#Sensors">Sensors</a> and provides for:
</p>
<dl compact="compact">
<dt><span>bme280</span></dt>
<dd><p>BME280 temperature, pressure and humidity sensor
</p></dd>
<dt><span>bno005</span></dt>
<dd><p>BNO055 acceleration, angular velocity, orientation and magnetic field sensor
</p></dd>
<dt><span>lis3dh</span></dt>
<dd><p>LIS3DH acceleration sensor
</p></dd>
<dt><span>lps22hb</span></dt>
<dd><p>LPS22HB temperature and pressure sensor
</p></dd>
<dt><span>lsm6dso</span></dt>
<dd><p>LSM6DSO acceleration, angular velocity sensor
</p></dd>
<dt><span>mpu6050</span></dt>
<dd><p>MPU-6050  acceleration, angular velocity sensor
</p></dd>
<dt><span>SI7021</span></dt>
<dd><p>SI7021 temperature and humidity sensor
</p></dd>
</dl>
</div>
</div>
<div class="section" id="Lightweight-Arduino-Sensors">
<h3 class="section">7.2 Lightweight Arduino Sensors</h3>
<span id="index-Arduino-Sensor"></span>
<ul class="section-toc">
<li><a href="#Overview-1" accesskey="1">Overview</a></li>
<li><a href="#Available-Sensors-1" accesskey="2">Available Sensors</a></li>
</ul>
<div class="subsection" id="Overview-1">
<h4 class="subsection">7.2.1 Overview</h4>
<p>Arduino sensors are a collection of lightweight wrappers around other underlying protocols for 
providing specific sensor functionality.
</p>
<p>For instance a DS1307 chip communicates using I2C protocol and so a DS1307 class exists that
provides the conversion/commands in order to communicate to the chip.
</p>
<p>Using the class, providing the functionality is very easy:
</p><div class="example">
<pre class="example"><code>
a = arduino()
rtc = arduinosensor.DS1307(a)
# get and display rtc time as a date string
datestr(rtc.clock)
</code>
</pre></div>
<p>It is lightweight compared to the addon functionality, as it only requires a wrapper class rather than add on code,
however it is limited to then using available addon and core codes rather than creating new ones.
</p>
<p>Currently the are only a small number of sensors available, however this will be built upon in future versions.
</p>
</div>
<div class="subsection" id="Available-Sensors-1">
<h4 class="subsection">7.2.2 Available Sensors</h4>
<span id="index-Available-Sensors-1"></span>
<p>The functions for each sensor is listed in the function reference, <a href="#Arduino-Sensors">Arduino Sensors</a> and provides for:
</p>
<dl compact="compact">
<dt><span>DS1307</span></dt>
<dd><p>DS1307 RTC clock using i2c.
</p></dd>
<dt><span>MPC3002</span></dt>
<dd><p>MPC3002 ADC using SPI
</p></dd>
<dt><span>SI7021</span></dt>
<dd><p>SI7021 temperature and humidity sensor
</p></dd>
<dt><span>GUVAS12SD</span></dt>
<dd><p>GUVAS12SD analog UV-B sensor
</p></dd>
</dl>
<hr>
</div>
</div>
</div>
<div class="chapter" id="Examples">
<div class="header">
<p>
Next: <a href="#Function-Reference" accesskey="n" rel="next">Function Reference</a>, Previous: <a href="#Sensors-Overview" accesskey="p" rel="prev">Sensors Overview</a>, Up: <a href="#Top" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Examples-1"></span><h2 class="chapter">8 Examples</h2>
<span id="index-Examples"></span>
<ul class="section-toc">
<li><a href="#Blinking-an-LED" accesskey="1">Blinking an LED</a></li>
<li><a href="#Using-I2C-to-communicate-with-an-EEPROM" accesskey="2">Using I2C to communicate with an EEPROM</a></li>
<li><a href="#Using-SPI-to-communicate-with-a-mcp3002-10-bit-ADC" accesskey="3">Using SPI to communicate with a mcp3002 10 bit ADC</a></li>
</ul>
<div class="section" id="Blinking-an-LED">
<h3 class="section">8.1 Blinking an LED</h3>
<span id="index-Blinking-an-LED"></span>
<p>This example shows blinking the inbuilt LED on the Arduino board. Code is available by running:
</p><div class="example">
<pre class="example">edit examples/example_blink
</pre></div>
<span id="Hardware-setup-2"></span><h3 class="heading">Hardware setup</h3>
<p>This example uses in the builtin LED, so requires only a connection of the Arduino board to
computer for communication.
</p>
<span id="Create-an-Arduino-object"></span><h3 class="heading">Create an Arduino object</h3>
<div class="example">
<pre class="example">ar = arduino ();
</pre></div>
<p>If you have more than one Arduino board connected, you may need to specify the port in order to
connect to the correct device.
</p>
<span id="Query-Device-for-pins-connected-to-builtin-LED"></span><h3 class="heading">Query Device for pins connected to builtin LED</h3>
<p>The pin connected to the Arduino UNO built in led if D13.
</p>
<div class="example">
<pre class="example">led_pin = &quot;d13&quot;;
</pre></div>
<p>The connected pins can be queried programatically if desired.
</p>
<div class="example">
<pre class="example">pins = getLEDTerminals (ar);
</pre></div>
<p>Connected to a Arduino UNO would return a list pins containing only one item &rsquo;13&rsquo;.
</p>
<p>The terminal number can be converted to a pin using getPinsFromTerminals:
</p>
<div class="example">
<pre class="example">led_pin = getPinsFromTerminals (ar, pins{1});
</pre></div>
<span id="Turn-the-LED-off"></span><h3 class="heading">Turn the LED off</h3>
<p>Write a 0 value to the pin to turn it off.
</p>
<div class="example">
<pre class="example">writeDigitalPin (ar, led_pin, 0);
</pre></div>
<span id="Turn-the-LED-on"></span><h3 class="heading">Turn the LED on</h3>
<p>Write a 1 value to the pin to turn it on
</p>
<div class="example">
<pre class="example">writeDigitalPin (ar, led_pin, 1);
</pre></div>
<span id="Making-the-LED-blink"></span><h3 class="heading">Making the LED blink</h3>
<p>Add a while loop with a pause between the changes in the pin state to blink.
</p>
<div class="example">
<pre class="example">while true
  writeDigitalPin (ar, led_pin, 0);
  pause (0.5)
  writeDigitalPin (ar, led_pin, 1);
  pause (0.5)
endwhile
</pre></div>
</div>
<div class="section" id="Using-I2C-to-communicate-with-an-EEPROM">
<h3 class="section">8.2 Using I2C to communicate with an EEPROM</h3>
<span id="index-Using-I2C-to-communicate-with-an-EEPROM"></span>
<p>This example shows using I2C to communicate with a EEPROM chip. Code is available by running:
</p><div class="example">
<pre class="example">edit examples/example_i2c_eeprom
</pre></div>
<span id="Hardware-setup-3"></span><h3 class="heading">Hardware setup</h3>
<p>Using an Arduino UNO, the board should be configured with the following connections between the board and a 24XX256 EEPROM chip:
</p>
<dl compact="compact">
<dt><span>A4</span></dt>
<dd><p>Connected to pin 5 of EEPROM
</p></dd>
<dt><span>A5</span></dt>
<dd><p>Connected to pin 6 of EEPROM
</p></dd>
<dt><span>5V</span></dt>
<dd><p>Connected to pin 8 of EEPROM
</p></dd>
<dt><span>GND</span></dt>
<dd><p>Connected to pin 1,2,3,4 of EEPROM
</p></dd>
</dl>
<span id="Create-an-Arduino-object-1"></span><h3 class="heading">Create an Arduino object</h3>
<div class="example">
<pre class="example">ar = arduino ();
</pre></div>
<p>If you have more than one Arduino board connected, you may need to specify the port in order to
connect to the correct device.
</p>
<span id="Query-I2C-pins"></span><h3 class="heading">Query I2C pins</h3>
<p>Display the I2C terminals of the board:
</p>
<div class="example">
<pre class="example">getI2CTerminals(ar)
</pre></div>
<span id="Scan-the-arduino-for-the-connected-device"></span><h3 class="heading">Scan the arduino for the connected device</h3>
<div class="example">
<pre class="example">scanI2Cbus(ar)
</pre></div>
<p>The devices listed should contain 0x50, the address of the EEPROM chip.
</p>
<span id="Create-an-I2C-object-to-communicate-to-the-EEPROM"></span><h3 class="heading">Create an I2C object to communicate to the EEPROM</h3>
<div class="example">
<pre class="example">eeprom = device (ar, &quot;i2caddress&quot;, 0x50)
</pre></div>
<span id="Write-data-to-the-EEPROM"></span><h3 class="heading">Write data to the EEPROM</h3>
<p>The EEPROM expects the first byte to be the page number, the second the offset, followed by data,
so to write 1 2 3 4, starting address 0 (page 0, offset 0):
</p>
<div class="example">
<pre class="example">write(eeprom, [0 0 1 2 3 4])
</pre></div>
<span id="Reading-from-the-EEPROM"></span><h3 class="heading">Reading from the EEPROM</h3>
<p>Reading from the EEPROM requires first writing the address to read from, in this case, if we
want to read the 3, 4, this would be page 0, offset 2:
</p>
<div class="example">
<pre class="example">write(eeprom, [0 2])
</pre></div>
<p>Next read the 2 bytes:
</p>
<div class="example">
<pre class="example">data = read(eeprom, 2)
</pre></div>
</div>
<div class="section" id="Using-SPI-to-communicate-with-a-mcp3002-10-bit-ADC">
<h3 class="section">8.3 Using SPI to communicate with a mcp3002 10 bit ADC</h3>
<span id="index-Using-SPI-to-communicate-with-a-mcp3002-10-bit-ADC"></span>
<p>This example shows using SPI to communicate with an mcp3002 10 bit ADC. Code is available by running:
</p><div class="example">
<pre class="example">edit examples/example_spi_mcp3002
</pre></div>
<span id="Hardware-setup-4"></span><h3 class="heading">Hardware setup</h3>
<p>Using an Arduino UNO, the board should be configured with the following connections between the board and a mcp3002 chip:
</p>
<dl compact="compact">
<dt><span>D10</span></dt>
<dd><p>Connected to pin 1 (CS) of MCP3002
</p></dd>
<dt><span>D11</span></dt>
<dd><p>Connected to pin 5 (DI) of MCP3002
</p></dd>
<dt><span>D12</span></dt>
<dd><p>Connected to pin 6 (DO) of MCP3002
</p></dd>
<dt><span>D13</span></dt>
<dd><p>Connected to pin 7 (CLK) MCP3002
</p></dd>
<dt><span>VCC</span></dt>
<dd><p>Connected to pin 8 (VDD) MCP3002
</p></dd>
<dt><span>GND</span></dt>
<dd><p>Connected to pin 4 (VSS) MCP3002
</p></dd>
<dt><span>Analog input</span></dt>
<dd><p>Connected from pin 2 of the MCP3002 to a LOW (&lt; 5V) voltage to measure
</p></dd>
</dl>
<span id="Create-an-Arduino-object-2"></span><h3 class="heading">Create an Arduino object</h3>
<div class="example">
<pre class="example">ar = arduino ();
</pre></div>
<p>If you have more than one Arduino board connected, you may need to specify the port in order to
connect to the correct device.
</p>
<span id="Create-an-SPI-object-to-communicate-to-the-MCP3002"></span><h3 class="heading">Create an SPI object to communicate to the MCP3002</h3>
<div class="example">
<pre class="example">adc = device(ar, &quot;spichipselectpin&quot;, &quot;d10&quot;)
</pre></div>
<p>The d10 is the chip select pin connected from the Arduino to the MCP3002.
</p>
<span id="Read-the-ADC"></span><h3 class="heading">Read the ADC</h3>
<p>The MCP3002 expects specific commands in order to read a channel.
</p>
<p>For illustration for the command to read chan 0 in single ended mode:
</p><div class="example">
<pre class="example">command (bits) in MSB mode to device:
[START SGL ODN MSBF X X X X] [ X X X X X X X X ] 
   1    1   0    1   1 1 1 1    1 1 1 1 1 1 1 1 
      [chan 0 ] MSB    
data back:
   X    X  X     X   X 0 D D    D D D D D D D D
</pre></div>
<p>D is a output data bit
</p>
<p>X is a don&rsquo;t care what value is input/output
</p>
<p>The first byte contains the command and start of the data read back, the second bytes is written to clock out
the rest of the ADC data.
</p>
<p>In hex, this corresponds to 0xDF 0xFF,
</p>
<div class="example">
<pre class="example">data = writeRead(adc, [hex2dec(&quot;DF&quot;) hex2dec(&quot;FF&quot;)])
</pre></div>
<p>Of the data returned, the last 10 bits is the actual data, so convert data to a 16 bit value:
</p><div class="example">
<pre class="example">val = uint16(data(1))*256 + uint16(data(2))
</pre></div>
<p>Then bitand it to remove the non value parts, to get the ADC value:
</p><div class="example">
<pre class="example">val = bitand (val, hex2dec('3FF'))
</pre></div>
<p>To make the value correspond to a voltage it needs to be scaled as 0 will be 0 Volts, 1023 will be 5 Volts.
</p><div class="example">
<pre class="example">volts = double(val) * 5.0 / 1023.0;
</pre></div>
<hr>
</div>
</div>
<div class="chapter" id="Function-Reference">
<div class="header">
<p>
Next: <a href="#Copying" accesskey="n" rel="next">GNU General Public License</a>, Previous: <a href="#Examples" accesskey="p" rel="prev">Examples</a>, Up: <a href="#Top" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Function-Reference-1"></span><h2 class="chapter">9 Function Reference</h2>
<span id="index-Function-Reference"></span>
<p>The functions currently available in the Arduino toolkit are described below;
</p>
<ul class="section-toc">
<li><a href="#General-Functions" accesskey="1">General Functions</a></li>
<li><a href="#Arduino-Functions" accesskey="2">Arduino Functions</a></li>
<li><a href="#Arduino-I2C-Functions" accesskey="3">Arduino I2C Functions</a></li>
<li><a href="#Arduino-Rotary-Encoder-Functions" accesskey="4">Arduino Rotary Encoder Functions</a></li>
<li><a href="#Arduino-Servo-Functions" accesskey="5">Arduino Servo Functions</a></li>
<li><a href="#Arduino-Shiftregister-Functions" accesskey="6">Arduino Shiftregister Functions</a></li>
<li><a href="#Arduino-SPI-Functions" accesskey="7">Arduino SPI Functions</a></li>
<li><a href="#Arduino-Serial-Functions" accesskey="8">Arduino Serial Functions</a></li>
<li><a href="#Arduino-Device-Functions" accesskey="9">Arduino Device Functions</a></li>
<li><a href="#Arduino-Ultrasonic-Functions">Arduino Ultrasonic Functions</a></li>
<li><a href="#Arduino-Addons">Arduino Addons</a></li>
<li><a href="#Arduino-Sensors">Arduino Sensors</a></li>
<li><a href="#Arduino-I_002fO-package">Arduino I/O package</a></li>
<li><a href="#Matlab-Compatability-Classes">Matlab Compatability Classes</a></li>
<li><a href="#Sensors">Sensors</a></li>
<li><a href="#Test-Functions">Test Functions</a></li>
</ul>
<hr>
<div class="section" id="General-Functions">
<div class="header">
<p>
Next: <a href="#Arduino-Functions" accesskey="n" rel="next">Arduino Functions</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="General-Functions-1"></span><h3 class="section">9.1 General Functions</h3>
<span id="index-General-Functions"></span>
<ul class="section-toc">
<li><a href="#arduinosetup" accesskey="1">arduinosetup</a></li>
<li><a href="#isarduino" accesskey="2">isarduino</a></li>
<li><a href="#listArduinoLibraries" accesskey="3">listArduinoLibraries</a></li>
<li><a href="#scanForArduinos" accesskey="4">scanForArduinos</a></li>
</ul>
<div class="subsection" id="arduinosetup">
<h4 class="subsection">9.1.1 arduinosetup</h4>
<span id="index-arduinosetup"></span>
<dl class="def">
<dt id="index-arduinosetup-1"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduinosetup</strong> <em>()</em><a href='#index-arduinosetup-1' class='copiable-anchor'></a></span></dt>
<dt id="index-arduinosetup-2"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduinosetup</strong> <em>(<var>propertyname</var>, <var>propertyvalue</var>)</em><a href='#index-arduinosetup-2' class='copiable-anchor'></a></span></dt>
<dd><p>Open the arduino config / programming tool to program the arduino hardware for usage with
 the Octave arduino functions.
</p>
<p>arduinosetup will create a temporary project  using the arduino IDE and allow
 compiling and programming of the code to an arduino.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>propertyname</var>, <var>propertyvalue</var> - A sequence of property name/value pairs can be given
 to set defaults while programming.
</p>
<p>Currently the following properties can be set:
 </p><dl compact="compact">
<dt><span>libraries</span></dt>
<dd><p>The value should be the name of a library, or string array of libraries to program on the
 arduino board.
 </p></dd>
<dt><span>arduinobinary</span></dt>
<dd><p>The value should be the name/path of the arduino IDE binary for programming. If not specified,
 the function will use getpref preferences of arduino.arduino_binary, and if not found, the
 function will attempt to find the binary itself.
</p>
<p>If provided, the value will be saved to preferences for future calls.
 </p></dd>
</dl>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> - return 1 if arduino IDE returned without an error
</p>
<p><strong>See also:</strong> arduino, __arduino_binary__.
 </p></dd></dl>
</div>
<div class="subsection" id="isarduino">
<h4 class="subsection">9.1.2 isarduino</h4>
<span id="index-isarduino"></span>
<dl class="def">
<dt id="index-isarduino-1"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>isarduino</strong> <em>(<var>obj</var>)</em><a href='#index-isarduino-1' class='copiable-anchor'></a></span></dt>
<dd><p>Check if input value is an arduino object
</p>
<p>Function is essentially just a call of
 <code>
 retval = isa(obj, &quot;arduino&quot;);
 </code>
</p>
<span id="Inputs-1"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - The object to check
</p>
<span id="Outputs-1"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> is true, if obj is an arduino object, false otherwise.
</p>
<p><strong>See also:</strong> arduino.
 </p></dd></dl>
</div>
<div class="subsection" id="listArduinoLibraries">
<h4 class="subsection">9.1.3 listArduinoLibraries</h4>
<span id="index-listArduinoLibraries"></span>
<dl class="def">
<dt id="index-listArduinoLibraries-1"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>listArduinoLibraries</strong> <em>()</em><a href='#index-listArduinoLibraries-1' class='copiable-anchor'></a></span></dt>
<dt id="index-listArduinoLibraries-2"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>listArduinoLibraries</strong> <em>(<var>libtypes</var>)</em><a href='#index-listArduinoLibraries-2' class='copiable-anchor'></a></span></dt>
<dd><p>Retrieve list of all known arduino library modules that are available.
</p>
<span id="Inputs-2"></span><h4 class="subsubheading">Inputs</h4>
<p><var>libtypes</var> - optional specifier for type of libraries to list.
</p>
<p>Options are:
 </p><dl compact="compact">
<dt><span>all</span></dt>
<dd><p>List core and addons
 </p></dd>
<dt><span>core</span></dt>
<dd><p>List core only libraries
 </p></dd>
<dt><span>addons</span></dt>
<dd><p>List addons only
 </p></dd>
</dl>
<p>When no libtypes is specified, all libraries are shown.
</p>
<span id="Outputs-2"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> is an cell array of string library names that are
 available for programming to the arduino.
</p>
<p><strong>See also:</strong> arduino, arduinosetup.
 </p></dd></dl>
</div>
<div class="subsection" id="scanForArduinos">
<h4 class="subsection">9.1.4 scanForArduinos</h4>
<span id="index-scanForArduinos"></span>
<dl class="def">
<dt id="index-scanForArduinos-1"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>scanForArduinos</strong> <em>(<var>maxCount</var>)</em><a href='#index-scanForArduinos-1' class='copiable-anchor'></a></span></dt>
<dt id="index-scanForArduinos-2"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>scanForArduinos</strong> <em>(<var>&quot;debug&quot;</var>)</em><a href='#index-scanForArduinos-2' class='copiable-anchor'></a></span></dt>
<dt id="index-scanForArduinos-3"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>scanForArduinos</strong> <em>(<var>maxCount</var>, <var>type</var>)</em><a href='#index-scanForArduinos-3' class='copiable-anchor'></a></span></dt>
<dd><p>Scan system for programmed arduino boards.
</p>
<p>scanForArduinos will scan the system for programmed arduino boards
 and return at most <var>maxCount</var> of them as a cell array
 in <var>retval</var>.
</p>
<span id="Inputs-3"></span><h4 class="subsubheading">Inputs</h4>
<p><var>maxCount</var> - max number of arduino boards to detect.
 if <var>maxCount</var> is not specified, or is a less than 1, the
 function will return as many arduino boards as it can detect.
</p>
<p><var>type</var> - optional board type to match. If specified, the board
 type must match for the arduino to be added to the return list.
</p>
<p><var>&quot;debug&quot;</var> - if single input parameter is &quot;debug&quot;, the
 scanForArduinos will display debug information as it scans
 all available ports for arduinos.
</p>
<span id="Outputs-3"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> structure cell array of matching detected arduino boards.
</p>
<p>Each cell value of the cell array will contain a structure with values of:
 </p><dl compact="compact">
<dt><span>port</span></dt>
<dd><p>the serial port the arduino is connected to
 </p></dd>
<dt><span>board</span></dt>
<dd><p>the board type of the arduino
 </p></dd>
</dl>
<p><strong>See also:</strong> arduino.
 </p></dd></dl>
<hr>
</div>
</div>
<div class="section" id="Arduino-Functions">
<div class="header">
<p>
Next: <a href="#Arduino-I2C-Functions" accesskey="n" rel="next">Arduino I2C Functions</a>, Previous: <a href="#General-Functions" accesskey="p" rel="prev">General Functions</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Arduino-Functions-1"></span><h3 class="section">9.2 Arduino Functions</h3>
<span id="index-Arduino-Functions"></span>
<ul class="section-toc">
<li><a href="#g_t_0040arduino_002farduino" accesskey="1">@arduino/arduino</a></li>
<li><a href="#g_t_0040arduino_002fcheckI2CAddress" accesskey="2">@arduino/checkI2CAddress</a></li>
<li><a href="#g_t_0040arduino_002fconfigurePin" accesskey="3">@arduino/configurePin</a></li>
<li><a href="#g_t_0040arduino_002fconfigurePinResource" accesskey="4">@arduino/configurePinResource</a></li>
<li><a href="#g_t_0040arduino_002fdecrementResourceCount" accesskey="5">@arduino/decrementResourceCount</a></li>
<li><a href="#g_t_0040arduino_002fdelete" accesskey="6">@arduino/delete</a></li>
<li><a href="#g_t_0040arduino_002fdisplay" accesskey="7">@arduino/display</a></li>
<li><a href="#g_t_0040arduino_002fgetEndian" accesskey="8">@arduino/getEndian</a></li>
<li><a href="#g_t_0040arduino_002fgetI2CTerminals" accesskey="9">@arduino/getI2CTerminals</a></li>
<li><a href="#g_t_0040arduino_002fgetInterruptTerminals">@arduino/getInterruptTerminals</a></li>
<li><a href="#g_t_0040arduino_002fgetLEDTerminals">@arduino/getLEDTerminals</a></li>
<li><a href="#g_t_0040arduino_002fgetMCU">@arduino/getMCU</a></li>
<li><a href="#g_t_0040arduino_002fgetPWMTerminals">@arduino/getPWMTerminals</a></li>
<li><a href="#g_t_0040arduino_002fgetPinAlias">@arduino/getPinAlias</a></li>
<li><a href="#g_t_0040arduino_002fgetPinInfo">@arduino/getPinInfo</a></li>
<li><a href="#g_t_0040arduino_002fgetPinsFromTerminals">@arduino/getPinsFromTerminals</a></li>
<li><a href="#g_t_0040arduino_002fgetResourceCount">@arduino/getResourceCount</a></li>
<li><a href="#g_t_0040arduino_002fgetResourceOwner">@arduino/getResourceOwner</a></li>
<li><a href="#g_t_0040arduino_002fgetSPITerminals">@arduino/getSPITerminals</a></li>
<li><a href="#g_t_0040arduino_002fgetServoTerminals">@arduino/getServoTerminals</a></li>
<li><a href="#g_t_0040arduino_002fgetSharedResourceProperty">@arduino/getSharedResourceProperty</a></li>
<li><a href="#g_t_0040arduino_002fgetTerminalMode">@arduino/getTerminalMode</a></li>
<li><a href="#g_t_0040arduino_002fgetTerminalsFromPins">@arduino/getTerminalsFromPins</a></li>
<li><a href="#g_t_0040arduino_002fincrementResourceCount">@arduino/incrementResourceCount</a></li>
<li><a href="#g_t_0040arduino_002fisTerminalAnalog">@arduino/isTerminalAnalog</a></li>
<li><a href="#g_t_0040arduino_002fisTerminalDigital">@arduino/isTerminalDigital</a></li>
<li><a href="#g_t_0040arduino_002fplayTone">@arduino/playTone</a></li>
<li><a href="#g_t_0040arduino_002freadAnalogPin">@arduino/readAnalogPin</a></li>
<li><a href="#g_t_0040arduino_002freadDigitalPin">@arduino/readDigitalPin</a></li>
<li><a href="#g_t_0040arduino_002freadVoltage">@arduino/readVoltage</a></li>
<li><a href="#g_t_0040arduino_002freset">@arduino/reset</a></li>
<li><a href="#g_t_0040arduino_002fsendCommand">@arduino/sendCommand</a></li>
<li><a href="#g_t_0040arduino_002fsetSharedResourceProperty">@arduino/setSharedResourceProperty</a></li>
<li><a href="#g_t_0040arduino_002fuptime">@arduino/uptime</a></li>
<li><a href="#g_t_0040arduino_002fvalidatePin">@arduino/validatePin</a></li>
<li><a href="#g_t_0040arduino_002fversion">@arduino/version</a></li>
<li><a href="#g_t_0040arduino_002fwriteDigitalPin">@arduino/writeDigitalPin</a></li>
<li><a href="#g_t_0040arduino_002fwritePWMDutyCycle">@arduino/writePWMDutyCycle</a></li>
<li><a href="#g_t_0040arduino_002fwritePWMVoltage">@arduino/writePWMVoltage</a></li>
</ul>
<div class="subsection" id="g_t_0040arduino_002farduino">
<h4 class="subsection">9.2.1 @arduino/arduino</h4>
<span id="index-arduino"></span>
<dl class="def">
<dt id="index-arduino-1"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduino</strong> <em>()</em><a href='#index-arduino-1' class='copiable-anchor'></a></span></dt>
<dt id="index-arduino-2"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduino</strong> <em>(<var>port</var>)</em><a href='#index-arduino-2' class='copiable-anchor'></a></span></dt>
<dt id="index-arduino-3"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduino</strong> <em>(<var>port</var>, <var>board</var>)</em><a href='#index-arduino-3' class='copiable-anchor'></a></span></dt>
<dt id="index-arduino-4"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduino</strong> <em>(<var>port</var>, <var>board</var>[, [<var>propname</var>, <var>propvalue</var>]*)</em><a href='#index-arduino-4' class='copiable-anchor'></a></span></dt>
<dt id="index-arduino-5"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduino</strong> <em>(<var>iaddress</var>)</em><a href='#index-arduino-5' class='copiable-anchor'></a></span></dt>
<dt id="index-arduino-6"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduino</strong> <em>(<var>ipaddress</var>, <var>board</var>)</em><a href='#index-arduino-6' class='copiable-anchor'></a></span></dt>
<dd><p>Create a arduino object with a connection to an arduino board.
</p>
<span id="Inputs-4"></span><h4 class="subsubheading">Inputs</h4>
<p><var>port</var> - full path of serial port to connect to. For Linux,
 usually /dev/ttySXXX, for windows COMXX.
</p>
<p><var>board</var> - name of board to connect (default is &rsquo;uno&rsquo;).
</p>
<p><var>propname</var>, <var>propvalue</var> - property name and value pair
 for additional properties to pass to the creation of the
 arduino object.
</p>
<p>Currently properties are ignored.
</p>
<p>if the arduino function is called without parameters, it will scan
 for the first available arduino it can find and connect to it.
</p>
<span id="Outputs-4"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> - a successfully connected arduino object.
</p>
<span id="Properties"></span><h4 class="subsubheading">Properties</h4>
<p>The arduino object has the following public properties:
 </p><dl compact="compact">
<dt><span>name</span></dt>
<dd><p>name assigned to the arduino object
 </p></dd>
<dt><span>debug</span></dt>
<dd><p>true / false flag for whether debug in turned on
 </p></dd>
<dt><span>forcebuildon</span></dt>
<dd><p>true / false flag for whether to force show of the arduino IDE to
 reprogram the arduino
 </p></dd>
<dt><span>port (read only)</span></dt>
<dd><p>the communications port the board is connected to.
 </p></dd>
<dt><span>board  (read only)</span></dt>
<dd><p>The name of the board type that the arduino connected to
 </p></dd>
<dt><span>libraries (read only)</span></dt>
<dd><p>The libraries currently programmed onto the board
 </p></dd>
<dt><span>availablepins</span></dt>
<dd><p>The pins available for use on the board
 </p></dd>
<dt><span>analogreference</span></dt>
<dd><p>The analog voltage reference
 </p></dd>
</dl>
<p><strong>See also:</strong> scanForArduinos, arduinosetup.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fcheckI2CAddress">
<h4 class="subsection">9.2.2 @arduino/checkI2CAddress</h4>
<span id="index-checkI2CAddress"></span>
<dl class="def">
<dt id="index-checkI2CAddress-1"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>checkI2CAddress</strong> <em>(<var>ar</var>, <var>address</var>)</em><a href='#index-checkI2CAddress-1' class='copiable-anchor'></a></span></dt>
<dt id="index-checkI2CAddress-2"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>checkI2CAddress</strong> <em>(<var>ar</var>, <var>address</var>, <var>bus</var>)</em><a href='#index-checkI2CAddress-2' class='copiable-anchor'></a></span></dt>
<dd><p>Check that an address of given address responds on the I2C bus
</p>
<span id="Inputs-5"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - arduino object connected to a arduino board.
</p>
<p><var>address</var> - I2C address number to check
</p>
<p><var>bus</var> - bus number to check for I2C device, when multiple buses are available.
 If the bus is not specified, it will default to 0.
</p>
<span id="Outputs-5"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> - boolean value of true if address responds on the I2C bus
</p>
<span id="Example"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 # create arduino connection.
 ar = arduino();
 # scan for devices on the I2C bus
 checkI2CAddress (ar)
 # output if a device using that address is attached
 ans =
   1
 </code>
 </pre></div>
<p><strong>See also:</strong> arduino, scanI2Cbus.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fconfigurePin">
<h4 class="subsection">9.2.3 @arduino/configurePin</h4>
<span id="index-configurePin"></span>
<dl class="def">
<dt id="index-configurePin-1"><span class="category">: </span><span><em><var>currmode</var> =</em> <strong>configurePin</strong> <em>(<var>ar</var>, <var>pin</var>)</em><a href='#index-configurePin-1' class='copiable-anchor'></a></span></dt>
<dt id="index-configurePin-2"><span class="category">: </span><span><em></em> <strong>configurePin</strong> <em>(<var>ar</var>, <var>pin</var>, <var>mode</var>)</em><a href='#index-configurePin-2' class='copiable-anchor'></a></span></dt>
<dd><p>Set/Get pin mode for a specified pin on arduino connection.
</p>
<p>configurePin (<var>ar</var>, <var>pin</var>) will get the current mode of the specified pin.
</p>
<p>configurePin (<var>ar</var>, <var>pin</var>, <var>mode</var>) will attempt set the pin to the specified
 mode if the mode is unset.
</p>
<span id="Inputs-6"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the arduino object of the connection to an arduino board.
</p>
<p><var>pin</var> - string name of the pin to set/get the mode of.
</p>
<p><var>mode</var> - string mode to set the pin to.
</p>
<span id="Outputs-6"></span><h4 class="subsubheading">Outputs</h4>
<p><var>mode</var> - string current mode of the pin.
</p>
<p>Valid modes can be:
 </p><ul>
<li> AnalogInput
 - Acquire analog signals from pin
 </li><li> DigitalInput
 - Acquire digital signals from pin
 </li><li> DigitalOutput
 - Generate digital signals from pin
 </li><li> I2C
 - Specify a pin to use with I2C protocol
 </li><li> Pullup
 - Specify pin to use a pullup switch
 </li><li> PWM
 - Specify pin to use a pulse width modulator
 </li><li> Servo
 - Specify pin to use a servo
 </li><li> SPI
 - Specify a pin to use with SPI protocol
 </li><li> Interrupt
 - Specify a pin to use for with interrupts
 </li><li> Reserved
 - Specify a pin to be reserved
 </li><li> Unset
 - Clears pin designation. The pin is no longer reserved and can be automatically
 set at the next operation.
 </li></ul>
<p><strong>See also:</strong> arduino.
</p>
</dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fconfigurePinResource">
<h4 class="subsection">9.2.4 @arduino/configurePinResource</h4>
<span id="index-configurePinResource"></span>
<dl class="def">
<dt id="index-configurePinResource-1"><span class="category">: </span><span><em><var>currmode</var> =</em> <strong>configurePinResource</strong> <em>(<var>ar</var>, <var>pin</var>)</em><a href='#index-configurePinResource-1' class='copiable-anchor'></a></span></dt>
<dt id="index-configurePinResource-2"><span class="category">: </span><span><em></em> <strong>configurePinResource</strong> <em>(<var>ar</var>, <var>pin</var>, <var>owner</var>, <var>mode</var>)</em><a href='#index-configurePinResource-2' class='copiable-anchor'></a></span></dt>
<dt id="index-configurePinResource-3"><span class="category">: </span><span><em></em> <strong>configurePinResource</strong> <em>(<var>ar</var>, <var>pin</var>, <var>owner</var>, <var>mode</var>, <var>force</var>)</em><a href='#index-configurePinResource-3' class='copiable-anchor'></a></span></dt>
<dd><p>Set/Get pin mode for a specified pin on arduino connection.
</p>
<p>configurePinResource (<var>ar</var>, <var>pin</var>) will get the current mode of the specified pin.
</p>
<p>configurePinResource (<var>ar</var>, <var>pin</var>, <var>owner</var>, <var>mode</var>) will attempt set the pin to the specified
 mode and owner.
</p>
<p>If the pin is already owned by another owner, the configure will fail unless the force option is used.
 If the mode is already set, configure will fail unless force is used.
</p>
<span id="Inputs-7"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the arduino object of the connection to an arduino board.
</p>
<p><var>pin</var> - string name of the pin to set/get the mode of.
</p>
<p><var>mode</var> - string mode to set the pin to.
</p>
<p><var>owner</var> - string name to use as the pin owner.
</p>
<p><var>force</var> - boolean to force mode change. If not set, it will be false.
</p>
<span id="Outputs-7"></span><h4 class="subsubheading">Outputs</h4>
<p><var>currmode</var> - current string mode of the pin.
</p>
<p>Valid modes can be:
 </p><ul>
<li> AnalogInput
 - Acquire analog signals from pin
 </li><li> DigitalInput
 - Acquire digital signals from pin
 </li><li> DigitalOutput
 - Generate digital signals from pin
 </li><li> I2C
 - Specify a pin to use with I2C protocol
 </li><li> Pullup
 - Specify pin to use a pullup switch
 </li><li> PWM
 - Specify pin to use a pulse width modulator
 </li><li> Servo
 - Specify pin to use a servo
 </li><li> SPI
 - Specify a pin to use with SPI protocol
 </li><li> Interrupt
 - Specify a pin to use with interrupts
 </li><li> Reserved
 - Pin marked reserved, but not for of any particular mode
 </li><li> Unset
 - Clears pin designation. The pin is no longer reserved and can be automatically
 set at the next operation.
 </li></ul>
<p><strong>See also:</strong> arduino, configurePin.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fdecrementResourceCount">
<h4 class="subsection">9.2.5 @arduino/decrementResourceCount</h4>
<span id="index-decrementResourceCount"></span>
<dl class="def">
<dt id="index-decrementResourceCount-1"><span class="category">: </span><span><em><var>count</var> =</em> <strong>decrementResourceCount</strong> <em>(<var>ar</var>, <var>resource</var>)</em><a href='#index-decrementResourceCount-1' class='copiable-anchor'></a></span></dt>
<dd><p>Decrement the count of a named resource by 1 and return the
 new count.
</p>
<span id="Inputs-8"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>resource</var> - name of resource to decrement count.
</p>
<span id="Outputs-8"></span><h4 class="subsubheading">Outputs</h4>
<p><var>count</var> = count of uses registered to resource.
</p>
<p><strong>See also:</strong> getResourceCount. incrementResourceCount.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fdelete">
<h4 class="subsection">9.2.6 @arduino/delete</h4>
<span id="index-delete"></span>
<dl class="def">
<dt id="index-delete-11"><span class="category">: </span><span><em></em> <strong>delete</strong> <em>(<var>dev</var>)</em><a href='#index-delete-11' class='copiable-anchor'></a></span></dt>
<dd><p>Free resources of an arduino object.
</p>
<span id="Inputs-9"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - object to free
</p>
<p><strong>See also:</strong> arduino.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fdisplay">
<h4 class="subsection">9.2.7 @arduino/display</h4>
<span id="index-display"></span>
<dl class="def">
<dt id="index-display-11"><span class="category">: </span><span><em></em> <strong>display</strong> <em>(<var>ar</var>)</em><a href='#index-display-11' class='copiable-anchor'></a></span></dt>
<dd><p>Display the arduino object in a verbose way, showing the board and available pins.
</p>
<span id="Inputs-10"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the arduino object.
</p>
<p>If the arduino object has debug mode set, additional information will be displayed.
</p>
<p><strong>See also:</strong> arduino.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fgetEndian">
<h4 class="subsection">9.2.8 @arduino/getEndian</h4>
<span id="index-getEndian"></span>
<dl class="def">
<dt id="index-getEndian-1"><span class="category">: </span><span><em><var>mcu</var> =</em> <strong>getEndian</strong> <em>(<var>ar</var>)</em><a href='#index-getEndian-1' class='copiable-anchor'></a></span></dt>
<dd><p>Get the endian used by the connected arduino.
</p>
<span id="Inputs-11"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - arduino object connected to a arduino board.
</p>
<span id="Outputs-9"></span><h4 class="subsubheading">Outputs</h4>
<p><var>endian</var> - string representing the endian used by the arduino board.
</p>
<p>&rsquo;L&rsquo; means little endian,
 &rsquo;B&rsquo; means big endian
</p>
<p><strong>See also:</strong> arduino, getMCU.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fgetI2CTerminals">
<h4 class="subsection">9.2.9 @arduino/getI2CTerminals</h4>
<span id="index-getI2CTerminals"></span>
<dl class="def">
<dt id="index-getI2CTerminals-1"><span class="category">: </span><span><em><var>pinlist</var> =</em> <strong>getI2CTerminals</strong> <em>(<var>ar</var>)</em><a href='#index-getI2CTerminals-1' class='copiable-anchor'></a></span></dt>
<dt id="index-getI2CTerminals-2"><span class="category">: </span><span><em><var>pinlist</var> =</em> <strong>getI2CTerminals</strong> <em>(<var>ar</var>, <var>bus</var>)</em><a href='#index-getI2CTerminals-2' class='copiable-anchor'></a></span></dt>
<dd><p>Get a cell list of pin Ids available are used for I2C mode.
</p>
<span id="Inputs-12"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the arduino object.
</p>
<p><var>bus</var> - optional bus number 0 or 1 for boards that support more than 1 bus.
</p>
<span id="Outputs-10"></span><h4 class="subsubheading">Outputs</h4>
<p><var>pinlist</var> - cell list of pin numbers available for I2C use.
</p>
<p><strong>See also:</strong> arduino.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fgetInterruptTerminals">
<h4 class="subsection">9.2.10 @arduino/getInterruptTerminals</h4>
<span id="index-getInterruptTerminals"></span>
<dl class="def">
<dt id="index-getInterruptTerminals-1"><span class="category">: </span><span><em><var>pinlist</var> =</em> <strong>getInterruptTerminals</strong> <em>(<var>ar</var>)</em><a href='#index-getInterruptTerminals-1' class='copiable-anchor'></a></span></dt>
<dd><p>Get a cell list of pin Ids available have interrupt functionality
</p>
<span id="Inputs-13"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the arduino object.
</p>
<span id="Outputs-11"></span><h4 class="subsubheading">Outputs</h4>
<p><var>pinlist</var> - cell list of pin numbers available for interrupt use.
</p>
<p><strong>See also:</strong> arduino.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fgetLEDTerminals">
<h4 class="subsection">9.2.11 @arduino/getLEDTerminals</h4>
<span id="index-getLEDTerminals"></span>
<dl class="def">
<dt id="index-getLEDTerminals-1"><span class="category">: </span><span><em><var>pinlist</var> =</em> <strong>getLEDTerminals</strong> <em>(<var>ar</var>)</em><a href='#index-getLEDTerminals-1' class='copiable-anchor'></a></span></dt>
<dd><p>Get a cell list of pin Ids available are connected natively to LEDs.
</p>
<span id="Inputs-14"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the arduino object.
</p>
<span id="Outputs-12"></span><h4 class="subsubheading">Outputs</h4>
<p><var>pinlist</var> - cell list of pin numbers available for LED use.
</p>
<p><strong>See also:</strong> arduino.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fgetMCU">
<h4 class="subsection">9.2.12 @arduino/getMCU</h4>
<span id="index-getMCU"></span>
<dl class="def">
<dt id="index-getMCU-1"><span class="category">: </span><span><em><var>mcu</var> =</em> <strong>getMCU</strong> <em>(<var>ar</var>)</em><a href='#index-getMCU-1' class='copiable-anchor'></a></span></dt>
<dd><p>Get the MCU used by the connected arduino.
</p>
<span id="Inputs-15"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - arduino object connected to a arduino board.
</p>
<span id="Outputs-13"></span><h4 class="subsubheading">Outputs</h4>
<p><var>mcu</var> - string representing the mcu used by the arduino board.
</p>
<p><strong>See also:</strong> arduino.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fgetPWMTerminals">
<h4 class="subsection">9.2.13 @arduino/getPWMTerminals</h4>
<span id="index-getPWMTerminals"></span>
<dl class="def">
<dt id="index-getPWMTerminals-1"><span class="category">: </span><span><em><var>pinlist</var> =</em> <strong>getPWMTerminals</strong> <em>(<var>ar</var>)</em><a href='#index-getPWMTerminals-1' class='copiable-anchor'></a></span></dt>
<dd><p>Get a cell list of pin Ids available for PWM use.
</p>
<span id="Inputs-16"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the arduino object.
</p>
<span id="Outputs-14"></span><h4 class="subsubheading">Outputs</h4>
<p><var>pinlist</var> - cell list of pin numbers available for PWM use.
</p>
<p><strong>See also:</strong> arduino.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fgetPinAlias">
<h4 class="subsection">9.2.14 @arduino/getPinAlias</h4>
<span id="index-getPinAlias"></span>
<dl class="def">
<dt id="index-getPinAlias-1"><span class="category">: </span><span><em><var>ouy</var> =</em> <strong>getPinAlias</strong> <em>(<var>ar</var>, <var>pin</var>)</em><a href='#index-getPinAlias-1' class='copiable-anchor'></a></span></dt>
<dd><p>Get the pin actual pin name from a pin alias.
</p>
<p>For example, the arduino Leonardo, pin &quot;D4&quot; is also &quot;A6&quot;.
</p>
<span id="Inputs-17"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the connected arduino object.
</p>
<p><var>pin</var> - a pin name.
</p>
<span id="Outputs-15"></span><h4 class="subsubheading">Outputs</h4>
<p><var>out</var> - alias pin name, or same as <var>pin</var> if the pin doesnt have any alias names.
</p>
<p><strong>See also:</strong> arduino, configurePinResource, getResourceOwner.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fgetPinInfo">
<h4 class="subsection">9.2.15 @arduino/getPinInfo</h4>
<span id="index-getPinInfo"></span>
<dl class="def">
<dt id="index-getPinInfo-1"><span class="category">: </span><span><em><var>pininfo</var> =</em> <strong>getPinInfo</strong> <em>(<var>ar</var>, <var>pin</var>)</em><a href='#index-getPinInfo-1' class='copiable-anchor'></a></span></dt>
<dt id="index-getPinInfo-2"><span class="category">: </span><span><em><var>pininfoarray</var> =</em> <strong>getPinInfo</strong> <em>(<var>ar</var>, <var>pinarray</var>)</em><a href='#index-getPinInfo-2' class='copiable-anchor'></a></span></dt>
<dd><p>Get the pin information from the input pins values.
</p>
<p>getPinInfo (<var>ar</var>, <var>pin</var>) will get information for a single pin.
</p>
<p>getPinInfo (<var>ar</var>, <var>pinarray</var>) will get a cell array of pin information
</p>
<span id="Inputs-18"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the connected arduino object.
</p>
<p><var>pin</var> - a pin number or pin name.
</p>
<p><var>pinarray</var> - the array of pin numbers or names
</p>
<p>The pininfo struct contains the following fields:
 </p><dl compact="compact">
<dt><span>terminal</span></dt>
<dd><p>Terminal number of the pin
 </p></dd>
<dt><span>name</span></dt>
<dd><p>String name of the pin
 </p></dd>
<dt><span>owner</span></dt>
<dd><p>Current item owner of the pin
 </p></dd>
<dt><span>mode</span></dt>
<dd><p>Current configured mode for the pin
 </p></dd>
</dl>
<span id="Outputs-16"></span><h4 class="subsubheading">Outputs</h4>
<p><var>pininfo</var> - struct on pin information.
</p>
<p><var>pininfolist</var> - cell array of pin info
</p>
<p><strong>See also:</strong> arduino, configurePinResource, getResourceOwner.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fgetPinsFromTerminals">
<h4 class="subsection">9.2.16 @arduino/getPinsFromTerminals</h4>
<span id="index-getPinsFromTerminals"></span>
<dl class="def">
<dt id="index-getPinsFromTerminals-1"><span class="category">: </span><span><em><var>pinnames</var> =</em> <strong>getPinsFromTerminals</strong> <em>(<var>ar</var>, <var>terminals</var>)</em><a href='#index-getPinsFromTerminals-1' class='copiable-anchor'></a></span></dt>
<dd><p>Get the pin names from the input terminal values.
</p>
<span id="Inputs-19"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the connected arduino object.
</p>
<p><var>terminals</var> - the numeric pin number, or array of pin numbers to get pin names.
</p>
<span id="Outputs-17"></span><h4 class="subsubheading">Outputs</h4>
<p><var>pinnames</var> - the string names of each input pin. If terminals was a single value, the return
 will be a single string, otherwise it will return a cell array of each pin name.
</p>
<p><strong>See also:</strong> arduino, getTerminalsFromPins.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fgetResourceCount">
<h4 class="subsection">9.2.17 @arduino/getResourceCount</h4>
<span id="index-getResourceCount"></span>
<dl class="def">
<dt id="index-getResourceCount-1"><span class="category">: </span><span><em><var>count</var> =</em> <strong>getResourceCount</strong> <em>(<var>ar</var>, <var>resource</var>)</em><a href='#index-getResourceCount-1' class='copiable-anchor'></a></span></dt>
<dd><p>Get the count of uses of  a given resource.
</p>
<span id="Inputs-20"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>resource</var> - name of resource to get count for.
</p>
<span id="Outputs-18"></span><h4 class="subsubheading">Outputs</h4>
<p><var>count</var> = count of uses registered to resource.
</p>
<p><strong>See also:</strong> incrementResourceCount. decrementResourceCount.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fgetResourceOwner">
<h4 class="subsection">9.2.18 @arduino/getResourceOwner</h4>
<span id="index-getResourceOwner"></span>
<dl class="def">
<dt id="index-getResourceOwner-1"><span class="category">: </span><span><em><var>owner</var> =</em> <strong>getResourceOwner</strong> <em>(<var>ar</var>, <var>terminal</var>)</em><a href='#index-getResourceOwner-1' class='copiable-anchor'></a></span></dt>
<dd><p>Get the owner of pin allocated previously by configurePinResource.
</p>
<span id="Inputs-21"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>terminal</var> - terminal number to get owner of.
</p>
<span id="Outputs-19"></span><h4 class="subsubheading">Outputs</h4>
<p><var>owner</var> = owner of the terminal pin, or &quot;&quot; if not owned.
</p>
<p><strong>See also:</strong> configurePinResource.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fgetSPITerminals">
<h4 class="subsection">9.2.19 @arduino/getSPITerminals</h4>
<span id="index-getSPITerminals"></span>
<dl class="def">
<dt id="index-getSPITerminals-1"><span class="category">: </span><span><em><var>pinlist</var> =</em> <strong>getSPITerminals</strong> <em>(<var>ar</var>)</em><a href='#index-getSPITerminals-1' class='copiable-anchor'></a></span></dt>
<dd><p>Get a cell list of pin Ids available for SPI mode.
</p>
<span id="Inputs-22"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the arduino object.
</p>
<span id="Outputs-20"></span><h4 class="subsubheading">Outputs</h4>
<p><var>pinlist</var> - cell list of pin numbers available for SPI use.
</p>
<p><strong>See also:</strong> arduino.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fgetServoTerminals">
<h4 class="subsection">9.2.20 @arduino/getServoTerminals</h4>
<span id="index-getServoTerminals"></span>
<dl class="def">
<dt id="index-getServoTerminals-1"><span class="category">: </span><span><em><var>pinlist</var> =</em> <strong>getServoTerminals</strong> <em>(<var>ar</var>)</em><a href='#index-getServoTerminals-1' class='copiable-anchor'></a></span></dt>
<dd><p>Get a cell list of pin Ids available for servo use.
</p>
<span id="Inputs-23"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the arduino object.
</p>
<span id="Outputs-21"></span><h4 class="subsubheading">Outputs</h4>
<p><var>pinlist</var> - cell list of pin numbers available for servo use.
</p>
<p><strong>See also:</strong> arduino, getPWMTerminals.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fgetSharedResourceProperty">
<h4 class="subsection">9.2.21 @arduino/getSharedResourceProperty</h4>
<span id="index-getSharedResourceProperty"></span>
<dl class="def">
<dt id="index-getSharedResourceProperty-1"><span class="category">: </span><span><em><var>count</var> =</em> <strong>getSharedResourceProperty</strong> <em>(<var>ar</var>, <var>resource</var>, <var>property</var>)</em><a href='#index-getSharedResourceProperty-1' class='copiable-anchor'></a></span></dt>
<dd><p>Get the value of a property from a given resource.
</p>
<span id="Inputs-24"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>resource</var> - name of resource to get property for.
</p>
<p><var>property</var> - name of property from the resource.
</p>
<span id="Outputs-22"></span><h4 class="subsubheading">Outputs</h4>
<p><var>propvalue</var> - value of the property
</p>
<p><strong>See also:</strong> getResourceCount, setSharedResourceProperty.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fgetTerminalMode">
<h4 class="subsection">9.2.22 @arduino/getTerminalMode</h4>
<span id="index-getTerminalMode"></span>
<dl class="def">
<dt id="index-getTerminalMode-1"><span class="category">: </span><span><em><var>mode</var> =</em> <strong>getTerminalMode</strong> <em>(<var>ar</var>, <var>terminal</var>)</em><a href='#index-getTerminalMode-1' class='copiable-anchor'></a></span></dt>
<dd><p>Get the mode of a pin allocated previously by configurePinResource.
</p>
<span id="Inputs-25"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>terminal</var> - terminal number to get owner of.
</p>
<span id="Outputs-23"></span><h4 class="subsubheading">Outputs</h4>
<p><var>mode</var> - mode of the terminal pin, or &quot;not_set&quot; if not owned.
</p>
<p><strong>See also:</strong> configurePinResource, getResourceOwner.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fgetTerminalsFromPins">
<h4 class="subsection">9.2.23 @arduino/getTerminalsFromPins</h4>
<span id="index-getTerminalsFromPins"></span>
<dl class="def">
<dt id="index-getTerminalsFromPins-1"><span class="category">: </span><span><em><var>pinnums</var> =</em> <strong>getTerminalsFromPins</strong> <em>(<var>ar</var>, <var>pins</var>)</em><a href='#index-getTerminalsFromPins-1' class='copiable-anchor'></a></span></dt>
<dd><p>Get the terminal number for each pin.
</p>
<span id="Inputs-26"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>pins</var> - single pin name or cell or vector array of pin names.
</p>
<span id="Outputs-24"></span><h4 class="subsubheading">Outputs</h4>
<p><var>pinnums</var> - pin number of each named pin. If the input was a single string, returns a number.
 if the input pins was a vector or cell array, return a cell array of pin numbers corresponding
 to each input pin name.
</p>
<p><strong>See also:</strong> arduino, getPinsFromTerminals.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fincrementResourceCount">
<h4 class="subsection">9.2.24 @arduino/incrementResourceCount</h4>
<span id="index-incrementResourceCount"></span>
<dl class="def">
<dt id="index-incrementResourceCount-1"><span class="category">: </span><span><em><var>count</var> =</em> <strong>incrementResourceCount</strong> <em>(<var>ar</var>, <var>resource</var>)</em><a href='#index-incrementResourceCount-1' class='copiable-anchor'></a></span></dt>
<dd><p>Increment the count value of a named resource by 1 and return the
 new count
</p>
<span id="Inputs-27"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>resource</var> - name of resource to increment count.
</p>
<span id="Outputs-25"></span><h4 class="subsubheading">Outputs</h4>
<p><var>count</var> = count of uses registered to resource.
</p>
<p><strong>See also:</strong> getResourceCount. decrementResourceCount.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fisTerminalAnalog">
<h4 class="subsection">9.2.25 @arduino/isTerminalAnalog</h4>
<span id="index-isTerminalAnalog"></span>
<dl class="def">
<dt id="index-isTerminalAnalog-1"><span class="category">: </span><span><em><var>ret</var> =</em> <strong>isTerminalAnalog</strong> <em>(<var>obj</var>, <var>terminal</var>)</em><a href='#index-isTerminalAnalog-1' class='copiable-anchor'></a></span></dt>
<dd><p>Return true if pin is capable of analog input
</p>
<span id="Inputs-28"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the connected arduino object
</p>
<p><var>terminal</var> is a terminal number to check
</p>
<span id="Outputs-26"></span><h4 class="subsubheading">Outputs</h4>
<p><var>ret</var> return 1 if terminal is a analog pin, 0 otherwise
</p>
</dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fisTerminalDigital">
<h4 class="subsection">9.2.26 @arduino/isTerminalDigital</h4>
<span id="index-isTerminalDigital"></span>
<dl class="def">
<dt id="index-isTerminalDigital_0028obj_002c"><span class="category">: </span><span><em><var>ret</var> =</em> <strong>isTerminalDigital(<var>obj</var>,</strong> <em><var>terminal</var>)</em><a href='#index-isTerminalDigital_0028obj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Return true if pin is capable of digital functions
</p>
<span id="Inputs-29"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the connected arduino object
</p>
<p><var>terminal</var> is a terminal number to check
</p>
<span id="Outputs-27"></span><h4 class="subsubheading">Outputs</h4>
<p><var>ret</var> return 1 if terminal is a digital pin, 0 otherwise
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fplayTone">
<h4 class="subsection">9.2.27 @arduino/playTone</h4>
<span id="index-playTone"></span>
<dl class="def">
<dt id="index-playTone-1"><span class="category">: </span><span><em></em> <strong>playTone</strong> <em>(<var>ar</var>, <var>pin</var>, <var>freq</var>, <var>duration</var>)</em><a href='#index-playTone-1' class='copiable-anchor'></a></span></dt>
<dd><p>Play a tone of a given frequency on a specified pin.
</p>
<span id="Inputs-30"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>pin</var> - digital pin to play tone on
</p>
<p><var>freq</var> - frequency in  hertz to play between 0 and 32767Hz.
</p>
<p><var>duration</var> duration in seconds to play tone between 0 and 30 seconds
</p>
<p>If duration is 0 or not specified, tone will continue to play until next tone is commanded.
 If frequency is 0, tone will stop playing
</p>
<p><strong>NOTE:</strong> use of playTone can interfere with PWM output.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002freadAnalogPin">
<h4 class="subsection">9.2.28 @arduino/readAnalogPin</h4>
<span id="index-readAnalogPin"></span>
<dl class="def">
<dt id="index-readAnalogPin-1"><span class="category">: </span><span><em><var>value</var> =</em> <strong>readAnalogPin</strong> <em>(<var>ar</var>, <var>pin</var>)</em><a href='#index-readAnalogPin-1' class='copiable-anchor'></a></span></dt>
<dd><p>Read analog voltage of  <var>pin</var>.
</p>
<span id="Inputs-31"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object.
</p>
<p><var>pin</var> - string name of the pin to read.
</p>
<span id="Outputs-28"></span><h4 class="subsubheading">Outputs</h4>
<p><var>value</var> - analog value of the pin
</p>
<span id="Example-1"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 ar = arduino ();
 readAnalogPin(ar, &quot;A4&quot;);
 ans =
     87
 </code>
 </pre></div>
<p><strong>See also:</strong> arduino, readVoltage.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002freadDigitalPin">
<h4 class="subsection">9.2.29 @arduino/readDigitalPin</h4>
<span id="index-readDigitalPin"></span>
<dl class="def">
<dt id="index-readDigitalPin-1"><span class="category">: </span><span><em><var>value</var> =</em> <strong>readDigitalPin</strong> <em>(<var>obj</var>, <var>pin</var>)</em><a href='#index-readDigitalPin-1' class='copiable-anchor'></a></span></dt>
<dd><p>Read digital value from a digital I/O pin.
</p>
<span id="Inputs-32"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object.
</p>
<p><var>pin</var> - string name of the pin to read.
</p>
<span id="Outputs-29"></span><h4 class="subsubheading">Outputs</h4>
<p><var>value</var> - the logical value (0, 1, true false) of the current pin state.
</p>
<span id="Example-2"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino ();
 pinvalue = readDigitalPin (a, 'D5');
 </code>
 </pre></div>
<p><strong>See also:</strong> arduino, writeDigitalPin.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002freadVoltage">
<h4 class="subsection">9.2.30 @arduino/readVoltage</h4>
<span id="index-readVoltage"></span>
<dl class="def">
<dt id="index-readVoltage-1"><span class="category">: </span><span><em><var>voltage</var> =</em> <strong>readVoltage</strong> <em>(<var>ar</var>, <var>pin</var>)</em><a href='#index-readVoltage-1' class='copiable-anchor'></a></span></dt>
<dd><p>Read analog voltage of a pin.
</p>
<span id="Inputs-33"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino.
</p>
<p><var>pin</var> - pin name or number to query for voltage
</p>
<span id="Outputs-30"></span><h4 class="subsubheading">Outputs</h4>
<p><var>voltage</var> - scaled pin value as a voltage
</p>
<span id="Example-3"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 ar = arduino ();
 readVoltage(ar, &quot;A4&quot;);
 ans =
     1.401
 </code>
 </pre></div>
<p><strong>See also:</strong> arduino, readAnalogPin.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002freset">
<h4 class="subsection">9.2.31 @arduino/reset</h4>
<span id="index-reset"></span>
<dl class="def">
<dt id="index-reset-2"><span class="category">: </span><span><em></em> <strong>reset</strong> <em>(<var>ar</var>)</em><a href='#index-reset-2' class='copiable-anchor'></a></span></dt>
<dd><p>Send reset command to arduino hardware to force a hardware reset.
</p>
<span id="Inputs-34"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object.
</p>
<p><strong>See also:</strong> arduino.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fsendCommand">
<h4 class="subsection">9.2.32 @arduino/sendCommand</h4>
<span id="index-sendCommand"></span>
<dl class="def">
<dt id="index-sendCommand-1"><span class="category">: </span><span><em><var>outdata, outsize</var> =</em> <strong>sendCommand</strong> <em>(<var>ar</var>, <var>libname</var>, <var>commandid</var>)</em><a href='#index-sendCommand-1' class='copiable-anchor'></a></span></dt>
<dt id="index-sendCommand-2"><span class="category">: </span><span><em><var>outdata, outsize</var> =</em> <strong>sendCommand</strong> <em>(<var>ar</var>, <var>libname</var>, <var>commandid</var>, <var>data</var>)</em><a href='#index-sendCommand-2' class='copiable-anchor'></a></span></dt>
<dt id="index-sendCommand-3"><span class="category">: </span><span><em><var>outdata, outsize</var> =</em> <strong>sendCommand</strong> <em>(<var>ar</var>, <var>libname</var>, <var>commandid</var>, <var>data</var>, <var>timeout</var>)</em><a href='#index-sendCommand-3' class='copiable-anchor'></a></span></dt>
<dd><p>Send a command with option data to the connected arduino, waiting up to a specified number of seconds
 for a response.
</p>
<span id="Inputs-35"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object.
</p>
<p><var>libname</var> - library sending the command. The name should match a programmed
 library of the arduino, or an error will be displayed.
</p>
<p><var>commandid</var> - integer value for the command being sent to the arduino.
</p>
<p><var>data</var> - optional data sent with the command.
</p>
<p><var>timeout</var> - optional timeout to wait for data
</p>
<span id="Outputs-31"></span><h4 class="subsubheading">Outputs</h4>
<p><var>outdata</var> - data returned back from the arduino in response to command
</p>
<p><var>outsize</var> - size of data received
</p>
<p>If the arduino fails to respond with a valid reply, sendCommand will error.
</p>
<p><strong>See also:</strong> arduino.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fsetSharedResourceProperty">
<h4 class="subsection">9.2.33 @arduino/setSharedResourceProperty</h4>
<span id="index-setSharedResourceProperty"></span>
<dl class="def">
<dt id="index-setSharedResourceProperty-1"><span class="category">: </span><span><em></em> <strong>setSharedResourceProperty</strong> <em>(<var>ar</var>, <var>resource</var>, <var>propname</var>, <var>propvalue</var>)</em><a href='#index-setSharedResourceProperty-1' class='copiable-anchor'></a></span></dt>
<dt id="index-setSharedResourceProperty-2"><span class="category">: </span><span><em></em> <strong>setSharedResourceProperty</strong> <em>(<var>ar</var>, <var>resource</var>, <var>propname</var>, <var>propvalue</var>, ___)</em><a href='#index-setSharedResourceProperty-2' class='copiable-anchor'></a></span></dt>
<dd><p>Set property values for a given resource.
</p>
<span id="Inputs-36"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>resource</var> - name of resource to get property for.
</p>
<p><var>propname</var> - name of property from the resource.
</p>
<p><var>propvalue</var> - value of property from the resource.
</p>
<p>Multiple <var>propname</var>, <var>propvalue</var> pairs can be given.
</p>
<span id="Outputs-32"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>
<span id="Example-4"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 ar = arduino();
 setSharedResourceProperty(ar, &quot;myresource&quot;, &quot;myproperty&quot;, [1 2 3])
 </code>
 </pre></div>
<p><strong>See also:</strong> getSharedResourceProperty.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fuptime">
<h4 class="subsection">9.2.34 @arduino/uptime</h4>
<span id="index-uptime"></span>
<dl class="def">
<dt id="index-uptime-1"><span class="category">: </span><span><em><var>sec</var> =</em> <strong>uptime</strong> <em>(<var>ar</var>)</em><a href='#index-uptime-1' class='copiable-anchor'></a></span></dt>
<dd><p>Get the number of seconds the arduino board has been running concurrently.
</p>
<span id="Inputs-37"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the arduino object of the connection to an arduino board.
</p>
<span id="Outputs-33"></span><h4 class="subsubheading">Outputs</h4>
<p><var>sec</var> - the number seconds the board has been running. Note that the count will wrap around after
 approximately 50 days.
</p>
<p><strong>See also:</strong> arduino.
</p>
</dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fvalidatePin">
<h4 class="subsection">9.2.35 @arduino/validatePin</h4>
<span id="index-validatePin"></span>
<dl class="def">
<dt id="index-validatePin-1"><span class="category">: </span><span><em></em> <strong>validatePin</strong> <em>(<var>ar</var>, <var>pin</var>, <var>type</var>)</em><a href='#index-validatePin-1' class='copiable-anchor'></a></span></dt>
<dd><p>Validate that the mode is allowed for specified pin
</p>
<p>If the mode is not valid, and error will be thrown.
</p>
<span id="Inputs-38"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>pin</var> -  name of pin to query mode validity of
</p>
<p><var>mode</var> - mode to query
</p>
<p>Known modes are:
 </p><ul>
<li> &rsquo;I2C&rsquo;
 </li><li> &rsquo;SPI&rsquo;
 </li><li> &rsquo;PWM&rsquo;
 </li><li> &rsquo;Servo&rsquo;
 </li><li> &rsquo;analog&rsquo;
 </li><li> &rsquo;digital&rsquo;
</li></ul>
<p><strong>See also:</strong> arduino, configurePin.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fversion">
<h4 class="subsection">9.2.36 @arduino/version</h4>
<span id="index-version"></span>
<dl class="def">
<dt id="index-version-1"><span class="category">: </span><span><em><var>ver</var> =</em> <strong>version</strong> <em>(<var>ar</var>)</em><a href='#index-version-1' class='copiable-anchor'></a></span></dt>
<dd><p>Get version of library code installed on arduino board
</p>
<span id="Inputs-39"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the arduino object of the connection to an arduino board.
</p>
<span id="Outputs-34"></span><h4 class="subsubheading">Outputs</h4>
<p><var>ver</var> - version string in format of X.Y.Z.
</p>
<p><strong>See also:</strong> arduino.
</p>
</dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fwriteDigitalPin">
<h4 class="subsection">9.2.37 @arduino/writeDigitalPin</h4>
<span id="index-writeDigitalPin"></span>
<dl class="def">
<dt id="index-writeDigitalPin-1"><span class="category">: </span><span><em></em> <strong>writeDigitalPin</strong> <em>(<var>ar</var>, <var>pin</var>, <var>value</var>)</em><a href='#index-writeDigitalPin-1' class='copiable-anchor'></a></span></dt>
<dd><p>Write digital value to a digital I/O pin.
</p>
<span id="Inputs-40"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object.
</p>
<p><var>pin</var> - string name of the pin to write to.
</p>
<p><var>value</var> - the logical value (0, 1, true false) to write to the pin.
</p>
<p>If pin was unconfigured before using, pin is set into digital mode.
</p>
<span id="Example-5"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino();
 writeDigitalPin(a,'D5',1);
 </code>
 </pre></div>
<p><strong>See also:</strong> arduino, readDigitalPin.
</p>
</dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fwritePWMDutyCycle">
<h4 class="subsection">9.2.38 @arduino/writePWMDutyCycle</h4>
<span id="index-writePWMDutyCycle"></span>
<dl class="def">
<dt id="index-writePWMDutyCyle"><span class="category">: </span><span><em></em> <strong>writePWMDutyCyle</strong> <em>(<var>ar</var>, <var>pin</var>, <var>value</var>)</em><a href='#index-writePWMDutyCyle' class='copiable-anchor'></a></span></dt>
<dd><p>Set pin to output a square wave with a specified duty cycle.
</p>
<span id="Inputs-41"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>pin</var> - pin to write to.
</p>
<p><var>value</var> - duty cycle value where 0 = off, 0.5 = 50% on, 1 = always on.
</p>
<span id="Example-6"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino();
 writePWMDutyCycle(a,'D5',0.5);
 </code>
 </pre></div>
<p><strong>See also:</strong> arduino, writePWMVoltage.
</p>
</dd></dl>
</div>
<div class="subsection" id="g_t_0040arduino_002fwritePWMVoltage">
<h4 class="subsection">9.2.39 @arduino/writePWMVoltage</h4>
<span id="index-writePWMVoltage"></span>
<dl class="def">
<dt id="index-writePWMVoltage-1"><span class="category">: </span><span><em></em> <strong>writePWMVoltage</strong> <em>(<var>ar</var>, <var>pin</var>, <var>voltage</var>)</em><a href='#index-writePWMVoltage-1' class='copiable-anchor'></a></span></dt>
<dd><p>Emulate an approximate voltage out of a pin using PWM.
</p>
<span id="Inputs-42"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>pin</var> - pin to write to.
</p>
<p><var>voltage</var> - voltage to emulate with PWM, between 0 - 5.0
</p>
<span id="Example-7"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino();
 writePWMVoltage(a,'D5',1.0);
 </code>
 </pre></div>
<p><strong>See also:</strong> arduino, writePWMDutyCycle.
 </p></dd></dl>
<hr>
</div>
</div>
<div class="section" id="Arduino-I2C-Functions">
<div class="header">
<p>
Next: <a href="#Arduino-Rotary-Encoder-Functions" accesskey="n" rel="next">Arduino Rotary Encoder Functions</a>, Previous: <a href="#Arduino-Functions" accesskey="p" rel="prev">Arduino Functions</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Arduino-I2C-Functions-1"></span><h3 class="section">9.3 Arduino I2C Functions</h3>
<span id="index-Arduino-I2C-Functions"></span>
<ul class="section-toc">
<li><a href="#g_t_0040device_002fdelete" accesskey="1">@device/delete</a></li>
<li><a href="#g_t_0040device_002fdisplay" accesskey="2">@device/display</a></li>
<li><a href="#g_t_0040device_002fread" accesskey="3">@device/read</a></li>
<li><a href="#g_t_0040device_002freadRegister" accesskey="4">@device/readRegister</a></li>
<li><a href="#g_t_0040device_002fsubsref" accesskey="5">@device/subsref</a></li>
<li><a href="#g_t_0040device_002fwrite" accesskey="6">@device/write</a></li>
<li><a href="#g_t_0040device_002fwriteRegister" accesskey="7">@device/writeRegister</a></li>
<li><a href="#g_t_0040i2cdev_002fdelete" accesskey="8">@i2cdev/delete</a></li>
<li><a href="#g_t_0040i2cdev_002fdisplay" accesskey="9">@i2cdev/display</a></li>
<li><a href="#g_t_0040i2cdev_002fi2cdev">@i2cdev/i2cdev</a></li>
<li><a href="#g_t_0040i2cdev_002fread">@i2cdev/read</a></li>
<li><a href="#g_t_0040i2cdev_002freadRegister">@i2cdev/readRegister</a></li>
<li><a href="#g_t_0040i2cdev_002fsubsref">@i2cdev/subsref</a></li>
<li><a href="#g_t_0040i2cdev_002fwrite">@i2cdev/write</a></li>
<li><a href="#g_t_0040i2cdev_002fwriteRegister">@i2cdev/writeRegister</a></li>
<li><a href="#scanI2Cbus">scanI2Cbus</a></li>
</ul>
<div class="subsection" id="g_t_0040device_002fdelete">
<h4 class="subsection">9.3.1 @device/delete</h4>
<span id="index-delete-1"></span>
<dl class="def">
<dt id="index-delete-12"><span class="category">: </span><span><em></em> <strong>delete</strong> <em>(<var>dev</var>)</em><a href='#index-delete-12' class='copiable-anchor'></a></span></dt>
<dd><p>Free resources of a device object.
</p>
<span id="Inputs-43"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - object to free
</p>
<p><strong>See also:</strong> device.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002fdisplay">
<h4 class="subsection">9.3.2 @device/display</h4>
<span id="index-display-1"></span>
<dl class="def">
<dt id="index-display-12"><span class="category">: </span><span><em></em> <strong>display</strong> <em>(<var>dev</var>)</em><a href='#index-display-12' class='copiable-anchor'></a></span></dt>
<dd><p>Display device object.
</p>
<span id="Inputs-44"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - device object to display
</p>
<p><strong>See also:</strong> device.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002fread">
<h4 class="subsection">9.3.3 @device/read</h4>
<span id="index-read"></span>
<dl class="def">
<dt id="index-read-5"><span class="category">: </span><span><em><var>data</var> =</em> <strong>read</strong> <em>(<var>dev</var>, <var>numbytes</var>)</em><a href='#index-read-5' class='copiable-anchor'></a></span></dt>
<dt id="index-read-6"><span class="category">: </span><span><em><var>data</var> =</em> <strong>read</strong> <em>(<var>dev</var>, <var>numbytes</var>, <var>precision</var>)</em><a href='#index-read-6' class='copiable-anchor'></a></span></dt>
<dd><p>Read a specified number of bytes from a i2c or serial device object
 using optional precision for bytesize.
</p>
<span id="Inputs-45"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - connected i2c or serial device opened using device
</p>
<p><var>numbytes</var> - number of bytes to read.
</p>
<p><var>precision</var> - Optional precision for the output data read data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<span id="Outputs-35"></span><h4 class="subsubheading">Outputs</h4>
<p><var>data</var> - data read from the device
</p>
<p><strong>See also:</strong> arduino, device.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002freadRegister">
<h4 class="subsection">9.3.4 @device/readRegister</h4>
<span id="index-readRegister"></span>
<dl class="def">
<dt id="index-readRegister-3"><span class="category">: </span><span><em><var>data</var> =</em> <strong>readRegister</strong> <em>(<var>dev</var>, <var>reg</var>, <var>numbytes</var>)</em><a href='#index-readRegister-3' class='copiable-anchor'></a></span></dt>
<dt id="index-readRegister-4"><span class="category">: </span><span><em><var>data</var> =</em> <strong>readRegister</strong> <em>(<var>dev</var>, <var>reg</var>, <var>numbytes</var>, <var>precision</var>)</em><a href='#index-readRegister-4' class='copiable-anchor'></a></span></dt>
<dd><p>Read a specified number of bytes from a register of an i2cdev object
 using optional precision for bytesize.
</p>
<span id="Inputs-46"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - connected i2c device opened using device
</p>
<p><var>reg</var> - registry value number
</p>
<p><var>numbytes</var> - number of bytes to read.
</p>
<p><var>precision</var> - Optional precision for the output data read data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<span id="Output"></span><h4 class="subsubheading">Output</h4>
<p><var>data</var> - data read from device.
</p>
<p><strong>See also:</strong> arduino, device.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002fsubsref">
<h4 class="subsection">9.3.5 @device/subsref</h4>
<span id="index-subsref"></span>
<dl class="def">
<dt id="index-subsref-10"><span class="category">: </span><span><em><var>val</var> =</em> <strong>subsref</strong> <em>(<var>dev</var>, <var>sub</var>)</em><a href='#index-subsref-10' class='copiable-anchor'></a></span></dt>
<dd><p>subref for device
</p>
<p><strong>See also:</strong> device.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002fwrite">
<h4 class="subsection">9.3.6 @device/write</h4>
<span id="index-write"></span>
<dl class="def">
<dt id="index-write-5"><span class="category">: </span><span><em></em> <strong>write</strong> <em>(<var>dev</var>, <var>datain</var>)</em><a href='#index-write-5' class='copiable-anchor'></a></span></dt>
<dt id="index-write-6"><span class="category">: </span><span><em></em> <strong>write</strong> <em>(<var>dev</var>, <var>datain</var>, <var>precision</var>)</em><a href='#index-write-6' class='copiable-anchor'></a></span></dt>
<dd><p>Write data to a I2C or serial device object
 using optional precision for the data byte used for the data.
</p>
<span id="Inputs-47"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - connected i2c or serial device opened using device
</p>
<p><var>datain</var> - data to write to device. Datasize should not exceed the constraints
 of the data type specified for the precision.
</p>
<p><var>precision</var> - Optional precision for the input write data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<p><strong>See also:</strong> arduino, device, read.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002fwriteRegister">
<h4 class="subsection">9.3.7 @device/writeRegister</h4>
<span id="index-writeRegister"></span>
<dl class="def">
<dt id="index-writeRegister-3"><span class="category">: </span><span><em></em> <strong>writeRegister</strong> <em>(<var>dev</var>, <var>reg</var>, <var>datain</var>)</em><a href='#index-writeRegister-3' class='copiable-anchor'></a></span></dt>
<dt id="index-writeRegister-4"><span class="category">: </span><span><em></em> <strong>writeRegister</strong> <em>(<var>dev</var>, <var>dev</var>, <var>datain</var>, <var>precision</var>)</em><a href='#index-writeRegister-4' class='copiable-anchor'></a></span></dt>
<dd><p>Write data to i2c device object at a given registry position
 using optional precision for the data byte used for the data.
</p>
<span id="Inputs-48"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - connected i2c device opened using device
</p>
<p><var>reg</var> - registry position to write to.
</p>
<p><var>datain</var> - data to write to device. Datasize should not exceed the constraints
 of the data type specified for the precision.
</p>
<p><var>precision</var> - Optional precision for the input write data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<p><strong>See also:</strong> arduino, device, read.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040i2cdev_002fdelete">
<h4 class="subsection">9.3.8 @i2cdev/delete</h4>
<span id="index-delete-2"></span>
<dl class="def">
<dt id="index-delete-13"><span class="category">: </span><span><em></em> <strong>delete</strong> <em>(<var>dev</var>)</em><a href='#index-delete-13' class='copiable-anchor'></a></span></dt>
<dd><p>Free resources of a i2cdev object.
</p>
<span id="Inputs-49"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - object to free
</p>
<p><strong>See also:</strong> i2cdev.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040i2cdev_002fdisplay">
<h4 class="subsection">9.3.9 @i2cdev/display</h4>
<span id="index-display-2"></span>
<dl class="def">
<dt id="index-display-13"><span class="category">: </span><span><em></em> <strong>display</strong> <em>(<var>dev</var>)</em><a href='#index-display-13' class='copiable-anchor'></a></span></dt>
<dd><p>Display i2cdev object.
</p>
<span id="Inputs-50"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - i2cdev object
</p>
<p><strong>See also:</strong> i2cdev.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040i2cdev_002fi2cdev">
<h4 class="subsection">9.3.10 @i2cdev/i2cdev</h4>
<span id="index-i2cdev"></span>
<dl class="def">
<dt id="index-i2cdev-1"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>i2cdev</strong> <em>(<var>ar</var>, <var>address</var>)</em><a href='#index-i2cdev-1' class='copiable-anchor'></a></span></dt>
<dt id="index-i2cdev-2"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>i2cdev</strong> <em>(<var>ar</var>, <var>address</var>, <var>propname</var>, <var>propvalue</var>)</em><a href='#index-i2cdev-2' class='copiable-anchor'></a></span></dt>
<dd>
<p><code>i2cdev</code> is depreciated and will be removed in a future version.
 Use <code>device</code> instead.
</p>
<p>Create an i2cdev object to communicate to the i2c port on a connected arduino.
</p>
<span id="Inputs-51"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>address</var> - address to use for device on I2C bus.
</p>
<p><var>propname</var>, <var>propvalue</var> - property name/value pair for values to pass to devices.
</p>
<p>Currently known properties:
 </p><dl compact="compact">
<dt><span>bus</span></dt>
<dd><p>bus number (when arduino board supports multiple I2C buses)
 with value of 0 or 1.
 </p></dd>
</dl>
<span id="Outputs-36"></span><h4 class="subsubheading">Outputs</h4>
<p><var>dev</var> - new created i2cdev object.
</p>
<span id="Properties-1"></span><h4 class="subsubheading">Properties</h4>
<p>The i2cdev object has the following public properties:
 </p><dl compact="compact">
<dt><span>parent</span></dt>
<dd><p>The parent (arduino) for this device
 </p></dd>
<dt><span>pins</span></dt>
<dd><p>pins used by this object
 </p></dd>
<dt><span>bus</span></dt>
<dd><p>bus used for created object
 </p></dd>
<dt><span>address</span></dt>
<dd><p>I2C address set for object
 </p></dd>
</dl>
<p><strong>See also:</strong> arduino.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040i2cdev_002fread">
<h4 class="subsection">9.3.11 @i2cdev/read</h4>
<span id="index-read-1"></span>
<dl class="def">
<dt id="index-read-7"><span class="category">: </span><span><em><var>data</var> =</em> <strong>read</strong> <em>(<var>dev</var>, <var>numbytes</var>)</em><a href='#index-read-7' class='copiable-anchor'></a></span></dt>
<dt id="index-read-8"><span class="category">: </span><span><em><var>data</var> =</em> <strong>read</strong> <em>(<var>dev</var>, <var>numbytes</var>, <var>precision</var>)</em><a href='#index-read-8' class='copiable-anchor'></a></span></dt>
<dd><p>Read a specified number of bytes from a i2cdev object
 using optional precision for bytesize.
</p>
<span id="Inputs-52"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - connected i2c device opened using i2cdev
</p>
<p><var>numbytes</var> - number of bytes to read.
</p>
<p><var>precision</var> - Optional precision for the output data read data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<span id="Outputs-37"></span><h4 class="subsubheading">Outputs</h4>
<p><var>data</var> - data read from i2cdevice
</p>
<p><strong>See also:</strong> arduino, i2cdev.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040i2cdev_002freadRegister">
<h4 class="subsection">9.3.12 @i2cdev/readRegister</h4>
<span id="index-readRegister-1"></span>
<dl class="def">
<dt id="index-readRegister-5"><span class="category">: </span><span><em><var>data</var> =</em> <strong>readRegister</strong> <em>(<var>dev</var>, <var>reg</var>, <var>numbytes</var>)</em><a href='#index-readRegister-5' class='copiable-anchor'></a></span></dt>
<dt id="index-readRegister-6"><span class="category">: </span><span><em><var>data</var> =</em> <strong>readRegister</strong> <em>(<var>dev</var>, <var>reg</var>, <var>numbytes</var>, <var>precision</var>)</em><a href='#index-readRegister-6' class='copiable-anchor'></a></span></dt>
<dd><p>Read a specified number of bytes from a register of an i2cdev object
 using optional precision for bytesize.
</p>
<span id="Inputs-53"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - connected i2c device opened using i2cdev
</p>
<p><var>reg</var> - registry value number
</p>
<p><var>numbytes</var> - number of bytes to read.
</p>
<p><var>precision</var> - Optional precision for the output data read data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<span id="Output-1"></span><h4 class="subsubheading">Output</h4>
<p><var>data</var> - data read from device.
</p>
<p><strong>See also:</strong> arduino, i2cdev.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040i2cdev_002fsubsref">
<h4 class="subsection">9.3.13 @i2cdev/subsref</h4>
<span id="index-subsref-1"></span>
<dl class="def">
<dt id="index-subsref-11"><span class="category">: </span><span><em><var>val</var> =</em> <strong>subsref</strong> <em>(<var>dev</var>, <var>sub</var>)</em><a href='#index-subsref-11' class='copiable-anchor'></a></span></dt>
<dd><p>subref for i2cdev
</p>
<p><strong>See also:</strong> i2cdev.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040i2cdev_002fwrite">
<h4 class="subsection">9.3.14 @i2cdev/write</h4>
<span id="index-write-1"></span>
<dl class="def">
<dt id="index-write-7"><span class="category">: </span><span><em></em> <strong>write</strong> <em>(<var>dev</var>, <var>datain</var>)</em><a href='#index-write-7' class='copiable-anchor'></a></span></dt>
<dt id="index-write-8"><span class="category">: </span><span><em></em> <strong>write</strong> <em>(<var>dev</var>, <var>datain</var>, <var>precision</var>)</em><a href='#index-write-8' class='copiable-anchor'></a></span></dt>
<dd><p>Write data to a i2cdev object
 using optional precision for the data byte used for the data.
</p>
<span id="Inputs-54"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - connected i2c device opened using i2cdev
</p>
<p><var>datain</var> - data to write to device. Datasize should not exceed the constraints
 of the data type specified for the precision.
</p>
<p><var>precision</var> - Optional precision for the input write data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<p><strong>See also:</strong> arduino, i2cdev, read.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040i2cdev_002fwriteRegister">
<h4 class="subsection">9.3.15 @i2cdev/writeRegister</h4>
<span id="index-writeRegister-1"></span>
<dl class="def">
<dt id="index-writeRegister-5"><span class="category">: </span><span><em></em> <strong>writeRegister</strong> <em>(<var>dev</var>, <var>reg</var>, <var>datain</var>)</em><a href='#index-writeRegister-5' class='copiable-anchor'></a></span></dt>
<dt id="index-writeRegister-6"><span class="category">: </span><span><em></em> <strong>writeRegister</strong> <em>(<var>dev</var>, <var>dev</var>, <var>datain</var>, <var>precision</var>)</em><a href='#index-writeRegister-6' class='copiable-anchor'></a></span></dt>
<dd><p>Write data to i2cdev object at a given registry position
 using optional precision for the data byte used for the data.
</p>
<span id="Inputs-55"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - connected i2c device opened using i2cdev
</p>
<p><var>reg</var> - registry position to write to.
</p>
<p><var>datain</var> - data to write to device. Datasize should not exceed the constraints
 of the data type specified for the precision.
</p>
<p><var>precision</var> - Optional precision for the input write data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<p><strong>See also:</strong> arduino, i2cdev, read.
 </p></dd></dl>
</div>
<div class="subsection" id="scanI2Cbus">
<h4 class="subsection">9.3.16 scanI2Cbus</h4>
<span id="index-scanI2Cbus"></span>
<dl class="def">
<dt id="index-scanI2Cbus-1"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>scanI2Cbus</strong> <em>(<var>ar</var>)</em><a href='#index-scanI2Cbus-1' class='copiable-anchor'></a></span></dt>
<dt id="index-scanI2Cbus-2"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>scanI2Cbus</strong> <em>(<var>ar</var>, <var>bus</var>)</em><a href='#index-scanI2Cbus-2' class='copiable-anchor'></a></span></dt>
<dd><p>Scan arduino for devices on the I2C bus.
</p>
<span id="Inputs-56"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - arduino object connected to a arduino board.
</p>
<p><var>bus</var> - bus number to scan I2C devices, when multiple buses are available.
 If the bus is not specified, it will default to 0.
</p>
<span id="Outputs-38"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> - cell array of addresses as strings in format of &quot;0xXX&quot;.
</p>
<span id="Example-8"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 # create arduino connection.
 ar = arduino();
 # scan for devices on the I2C bus
 scanI2Cbus (ar)
 # output is each detected i2c address as a string
 ans =
 {
  [1,1] = 0x50
 }
 </code>
 </pre></div>
<p><strong>See also:</strong> arduino, i2cdev, checkI2CAddress.
 </p></dd></dl>
<hr>
</div>
</div>
<div class="section" id="Arduino-Rotary-Encoder-Functions">
<div class="header">
<p>
Next: <a href="#Arduino-Servo-Functions" accesskey="n" rel="next">Arduino Servo Functions</a>, Previous: <a href="#Arduino-I2C-Functions" accesskey="p" rel="prev">Arduino I2C Functions</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Arduino-Rotary-Encoder-Functions-1"></span><h3 class="section">9.4 Arduino Rotary Encoder Functions</h3>
<span id="index-Arduino-Rotary-Encoder-Functions"></span>
<ul class="section-toc">
<li><a href="#g_t_0040rotaryEncoder_002fdelete" accesskey="1">@rotaryEncoder/delete</a></li>
<li><a href="#g_t_0040rotaryEncoder_002fdisplay" accesskey="2">@rotaryEncoder/display</a></li>
<li><a href="#g_t_0040rotaryEncoder_002freadCount" accesskey="3">@rotaryEncoder/readCount</a></li>
<li><a href="#g_t_0040rotaryEncoder_002freadSpeed" accesskey="4">@rotaryEncoder/readSpeed</a></li>
<li><a href="#g_t_0040rotaryEncoder_002fresetCount" accesskey="5">@rotaryEncoder/resetCount</a></li>
<li><a href="#g_t_0040rotaryEncoder_002frotaryEncoder" accesskey="6">@rotaryEncoder/rotaryEncoder</a></li>
<li><a href="#g_t_0040rotaryEncoder_002fsubsref" accesskey="7">@rotaryEncoder/subsref</a></li>
</ul>
<div class="subsection" id="g_t_0040rotaryEncoder_002fdelete">
<h4 class="subsection">9.4.1 @rotaryEncoder/delete</h4>
<span id="index-delete-3"></span>
<dl class="def">
<dt id="index-delete-14"><span class="category">: </span><span><em></em> <strong>delete</strong> <em>(<var>dev</var>)</em><a href='#index-delete-14' class='copiable-anchor'></a></span></dt>
<dd><p>Free resources of a encoder object.
</p>
<span id="Inputs-57"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - object to free
</p>
<p><strong>See also:</strong> rotartEncoder.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040rotaryEncoder_002fdisplay">
<h4 class="subsection">9.4.2 @rotaryEncoder/display</h4>
<span id="index-display-3"></span>
<dl class="def">
<dt id="index-display-14"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>display</strong> <em>(<var>obj</var>)</em><a href='#index-display-14' class='copiable-anchor'></a></span></dt>
<dd><p>Display the rotary encoder object in a verbose way,
</p>
<span id="Inputs-58"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the arduino rotary encoder object created with rotaryEncoder
</p>
<p><strong>See also:</strong> rotaryEncoder.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040rotaryEncoder_002freadCount">
<h4 class="subsection">9.4.3 @rotaryEncoder/readCount</h4>
<span id="index-readCount"></span>
<dl class="def">
<dt id="index-readCount-1"><span class="category">: </span><span><em>[<var>count</var>, <var>time</var>] =</em> <strong>readCount</strong> <em>(<var>obj</var>)</em><a href='#index-readCount-1' class='copiable-anchor'></a></span></dt>
<dt id="index-readCount-2"><span class="category">: </span><span><em>[<var>count</var>, <var>time</var>] =</em> <strong>readCount</strong> <em>(<var>obj</var>, <var>name</var>, <var>value</var>)</em><a href='#index-readCount-2' class='copiable-anchor'></a></span></dt>
<dd><p>read count value from the rotary encoder.
</p>
<p>subsubheading Inputs
 <var>obj</var> - rotary encoder object created with rotaryEncoder call.
</p>
<p><var>name</var>, <var>value</var> - optional name,value pairs
</p>
<p>Valid option name pairs currently are:
 </p><dl compact="compact">
<dt><span>reset</span></dt>
<dd><p>Reset the count after reading (if true)
 </p></dd>
</dl>
<span id="Outputs-39"></span><h4 class="subsubheading">Outputs</h4>
<p><var>count</var> - returned count read from the encoder.
</p>
<p><var>time</var> - seconds since arduino started
</p>
<p><strong>See also:</strong> rotaryEncoder, resetCount.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040rotaryEncoder_002freadSpeed">
<h4 class="subsection">9.4.4 @rotaryEncoder/readSpeed</h4>
<span id="index-readSpeed"></span>
<dl class="def">
<dt id="index-readSpeed-1"><span class="category">: </span><span><em><var>speed</var> =</em> <strong>readSpeed</strong> <em>(<var>obj</var>)</em><a href='#index-readSpeed-1' class='copiable-anchor'></a></span></dt>
<dd><p>read rotational speed from the rotary encoder.
</p>
<span id="Inputs-59"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - rotary encoder object created with rotaryEncoder call.
</p>
<span id="Outputs-40"></span><h4 class="subsubheading">Outputs</h4>
<p><var>speed</var> - returned speed in revolutions per minute read from the encoder.
</p>
<p><strong>See also:</strong> rotaryEncoder, resetCount.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040rotaryEncoder_002fresetCount">
<h4 class="subsection">9.4.5 @rotaryEncoder/resetCount</h4>
<span id="index-resetCount"></span>
<dl class="def">
<dt id="index-_0028obj_0029"><span class="category">: </span><span><em>reset</em> <strong>(<var>obj</var>)</strong><a href='#index-_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-_0028obj_002c"><span class="category">: </span><span><em>reset</em> <strong>(<var>obj</var>,</strong> <em><var>cnt</var>)</em><a href='#index-_0028obj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>reset the rotary encoder count values
</p>
<span id="Inputs-60"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the rotaryEncoder object
</p>
<p><var>cnt</var> - optional count value to reset to
</p>
<p><strong>See also:</strong> rotaryEncoder, readCount.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040rotaryEncoder_002frotaryEncoder">
<h4 class="subsection">9.4.6 @rotaryEncoder/rotaryEncoder</h4>
<span id="index-rotaryEncoder"></span>
<dl class="def">
<dt id="index-rotaryEncoder-1"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>rotaryEncoder</strong> <em>(<var>ar</var>, <var>chanApin</var>, <var>chanBpin</var>)</em><a href='#index-rotaryEncoder-1' class='copiable-anchor'></a></span></dt>
<dt id="index-rotaryEncoder-2"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>rotaryEncoder</strong> <em>(<var>ar</var>, <var>chanApin</var>, <var>chanBpin</var>, <var>ppr</var>)</em><a href='#index-rotaryEncoder-2' class='copiable-anchor'></a></span></dt>
<dd><p>Create a rotaryEncoder object controlled by the input pins.
</p>
<span id="Inputs-61"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object.
</p>
<p><var>chanApin</var> - pin used for channel A
</p>
<p><var>chanBpin</var> - pin used for channel B
</p>
<p><var>ppr</var> - count of encoder pulsed required for a full revolution of the encoder.
</p>
<span id="Outputs-41"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created rotary encoder object
</p>
<span id="Example-9"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> a = arduino ();
 enc = rotaryEncoder(a, &quot;d2&quot;, &quot;d3&quot;, 180);
 </pre></div>
<span id="Properties-2"></span><h4 class="subsubheading">Properties</h4>
<p>The rotaryEncoder object has the following public properties:
 </p><dl compact="compact">
<dt><span>parent</span></dt>
<dd><p>The parent (arduino) for this device
 </p></dd>
<dt><span>pins</span></dt>
<dd><p>pins used by this object
 </p></dd>
<dt><span>ppr</span></dt>
<dd><p>Number of pulses used per rotation
 </p></dd>
</dl>
<p><strong>See also:</strong> arduino.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040rotaryEncoder_002fsubsref">
<h4 class="subsection">9.4.7 @rotaryEncoder/subsref</h4>
<span id="index-subsref-2"></span>
<dl class="def">
<dt id="index-subsref-12"><span class="category">: </span><span><em><var>val</var> =</em> <strong>subsref</strong> <em>(<var>dev</var>, <var>sub</var>)</em><a href='#index-subsref-12' class='copiable-anchor'></a></span></dt>
<dd><p>subref for rotaryEncoder
</p>
<p><strong>See also:</strong> rotaryEncoder.
 </p></dd></dl>
<hr>
</div>
</div>
<div class="section" id="Arduino-Servo-Functions">
<div class="header">
<p>
Next: <a href="#Arduino-Shiftregister-Functions" accesskey="n" rel="next">Arduino Shiftregister Functions</a>, Previous: <a href="#Arduino-Rotary-Encoder-Functions" accesskey="p" rel="prev">Arduino Rotary Encoder Functions</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Arduino-Servo-Functions-1"></span><h3 class="section">9.5 Arduino Servo Functions</h3>
<span id="index-Arduino-Servo-Functions"></span>
<ul class="section-toc">
<li><a href="#g_t_0040servo_002fdelete" accesskey="1">@servo/delete</a></li>
<li><a href="#g_t_0040servo_002fdisplay" accesskey="2">@servo/display</a></li>
<li><a href="#g_t_0040servo_002freadPosition" accesskey="3">@servo/readPosition</a></li>
<li><a href="#g_t_0040servo_002fservo" accesskey="4">@servo/servo</a></li>
<li><a href="#g_t_0040servo_002fsubsref" accesskey="5">@servo/subsref</a></li>
<li><a href="#g_t_0040servo_002fwritePosition" accesskey="6">@servo/writePosition</a></li>
</ul>
<div class="subsection" id="g_t_0040servo_002fdelete">
<h4 class="subsection">9.5.1 @servo/delete</h4>
<span id="index-delete-4"></span>
<dl class="def">
<dt id="index-delete-15"><span class="category">: </span><span><em></em> <strong>delete</strong> <em>(<var>dev</var>)</em><a href='#index-delete-15' class='copiable-anchor'></a></span></dt>
<dd><p>Free resources of a servo object.
</p>
<span id="Inputs-62"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - object to free
</p>
<p><strong>See also:</strong> servo.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040servo_002fdisplay">
<h4 class="subsection">9.5.2 @servo/display</h4>
<span id="index-display-4"></span>
<dl class="def">
<dt id="index-display-15"><span class="category">: </span><span><em></em> <strong>display</strong> <em>(<var>dev</var>)</em><a href='#index-display-15' class='copiable-anchor'></a></span></dt>
<dd><p>Display servo object.
</p>
<span id="Inputs-63"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - device to display
</p>
<p><strong>See also:</strong> servo.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040servo_002freadPosition">
<h4 class="subsection">9.5.3 @servo/readPosition</h4>
<span id="index-readPosition"></span>
<dl class="def">
<dt id="index-readPosition-1"><span class="category">: </span><span><em><var>position</var> =</em> <strong>readPosition</strong> <em>(<var>servo</var>)</em><a href='#index-readPosition-1' class='copiable-anchor'></a></span></dt>
<dd><p>Read the position of a servo
</p>
<span id="Inputs-64"></span><h4 class="subsubheading">Inputs</h4>
<p><var>servo</var> - servo object created from arduino.servo.
</p>
<span id="Outputs-42"></span><h4 class="subsubheading">Outputs</h4>
<p><var>position</var> - value between 0 .. 1 for the current servo position,
 where 0 is the servo min position, 1 is the servo maximum position.
</p>
<p><strong>See also:</strong> servo, writePosition.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040servo_002fservo">
<h4 class="subsection">9.5.4 @servo/servo</h4>
<span id="index-servo"></span>
<dl class="def">
<dt id="index-servo-1"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>servo</strong> <em>(<var>arduinoobj</var>, <var>pin</var>)</em><a href='#index-servo-1' class='copiable-anchor'></a></span></dt>
<dt id="index-servo-2"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>servo</strong> <em>(<var>arduinoobj</var>, <var>pin</var>, <var>propertyname</var>, <var>propertyvalue</var>)</em><a href='#index-servo-2' class='copiable-anchor'></a></span></dt>
<dd><p>Create a servo object using a specified pin on a arduino board.
</p>
<span id="Inputs-65"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - servo object
</p>
<p><var>arduinoobj</var> - connected arduino object
</p>
<p><var>propertyname</var>,  <var>propertyvalue</var> - name value pairs for properties to pass
 to the created servo object.
</p>
<p>Current properties are:
 </p><dl compact="compact">
<dt><span>minpulseduration</span></dt>
<dd><p>min PWM pulse value in seconds.
 </p></dd>
<dt><span>maxpulseduration</span></dt>
<dd><p>max PWM pulse value in seconds.
 </p></dd>
</dl>
<span id="Outputs-43"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created servo object.
</p>
<span id="Example-10"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> # create arduino connection
 ar = arduino();
 # create hobby servo (1 - 2 ms pulse range)
 servo = servo(ar, &quot;d9&quot;, &quot;minpulseduration&quot;, 1.0e-3, &quot;maxpulseduration&quot;, 2e-3);
 # center the servo
 writePosition(servo, 0.5);
 </pre></div>
<span id="Properties-3"></span><h4 class="subsubheading">Properties</h4>
<p>The servo object has the following public properties:
 </p><dl compact="compact">
<dt><span>parent</span></dt>
<dd><p>The parent (arduino) for this device
 </p></dd>
<dt><span>pins</span></dt>
<dd><p>pins used by this object
 </p></dd>
<dt><span>minpulseduration</span></dt>
<dd><p>minpulseduration set for object
 </p></dd>
<dt><span>maxpulseduration</span></dt>
<dd><p>maxpulseduration set for object
 </p></dd>
</dl>
<p><strong>See also:</strong> arduino, readPosition, writePosition.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040servo_002fsubsref">
<h4 class="subsection">9.5.5 @servo/subsref</h4>
<span id="index-subsref-3"></span>
<dl class="def">
<dt id="index-subsref-13"><span class="category">: </span><span><em><var>val</var> =</em> <strong>subsref</strong> <em>(<var>dev</var>, <var>sub</var>)</em><a href='#index-subsref-13' class='copiable-anchor'></a></span></dt>
<dd><p>subref for servo
</p>
<p><strong>See also:</strong> servo.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040servo_002fwritePosition">
<h4 class="subsection">9.5.6 @servo/writePosition</h4>
<span id="index-writePosition"></span>
<dl class="def">
<dt id="index-writePosition-1"><span class="category">: </span><span><em></em> <strong>writePosition</strong> <em>(<var>servo</var>, <var>position</var>)</em><a href='#index-writePosition-1' class='copiable-anchor'></a></span></dt>
<dd><p>Write the position to a servo.
</p>
<span id="Inputs-66"></span><h4 class="subsubheading">Inputs</h4>
<p><var>servo</var> - servo object created from arduino.servo.
</p>
<p><var>position</var> - value between 0 .. 1 for the current servo position,
 where 0 is the servo min position, 1 is the servo maximum position.
</p>
<p><strong>See also:</strong> servo, readPosition.
 </p></dd></dl>
<hr>
</div>
</div>
<div class="section" id="Arduino-Shiftregister-Functions">
<div class="header">
<p>
Next: <a href="#Arduino-SPI-Functions" accesskey="n" rel="next">Arduino SPI Functions</a>, Previous: <a href="#Arduino-Servo-Functions" accesskey="p" rel="prev">Arduino Servo Functions</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Arduino-Shiftregister-Functions-1"></span><h3 class="section">9.6 Arduino Shiftregister Functions</h3>
<span id="index-Arduino-Shiftregister-Functions"></span>
<ul class="section-toc">
<li><a href="#g_t_0040shiftRegister_002fdelete" accesskey="1">@shiftRegister/delete</a></li>
<li><a href="#g_t_0040shiftRegister_002fdisplay" accesskey="2">@shiftRegister/display</a></li>
<li><a href="#g_t_0040shiftRegister_002fread" accesskey="3">@shiftRegister/read</a></li>
<li><a href="#g_t_0040shiftRegister_002freset" accesskey="4">@shiftRegister/reset</a></li>
<li><a href="#g_t_0040shiftRegister_002fshiftRegister" accesskey="5">@shiftRegister/shiftRegister</a></li>
<li><a href="#g_t_0040shiftRegister_002fsubsref" accesskey="6">@shiftRegister/subsref</a></li>
<li><a href="#g_t_0040shiftRegister_002fwrite" accesskey="7">@shiftRegister/write</a></li>
</ul>
<div class="subsection" id="g_t_0040shiftRegister_002fdelete">
<h4 class="subsection">9.6.1 @shiftRegister/delete</h4>
<span id="index-delete-5"></span>
<dl class="def">
<dt id="index-delete-16"><span class="category">: </span><span><em></em> <strong>delete</strong> <em>(<var>dev</var>)</em><a href='#index-delete-16' class='copiable-anchor'></a></span></dt>
<dd><p>Free resources of a shiftRegister object.
</p>
<span id="Inputs-67"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - object to free
</p>
<p><strong>See also:</strong> shiftRegister.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040shiftRegister_002fdisplay">
<h4 class="subsection">9.6.2 @shiftRegister/display</h4>
<span id="index-display-5"></span>
<dl class="def">
<dt id="index-display-16"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>display</strong> <em>(<var>register</var>)</em><a href='#index-display-16' class='copiable-anchor'></a></span></dt>
<dd><p>Display the register object in a verbose way,
</p>
<span id="Inputs-68"></span><h4 class="subsubheading">Inputs</h4>
<p><var>register</var> - the arduino register object created with shiftRegister.
</p>
<p><strong>See also:</strong> shiftRegister.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040shiftRegister_002fread">
<h4 class="subsection">9.6.3 @shiftRegister/read</h4>
<span id="index-read-2"></span>
<dl class="def">
<dt id="index-read-9"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>read</strong> <em>(<var>register</var>)</em><a href='#index-read-9' class='copiable-anchor'></a></span></dt>
<dt id="index-read-10"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>read</strong> <em>(<var>register</var>, <var>precision</var>)</em><a href='#index-read-10' class='copiable-anchor'></a></span></dt>
<dd><p>read a value from the shift register.
</p>
<span id="Inputs-69"></span><h4 class="subsubheading">Inputs</h4>
<p><var>register</var> - shift register created from shiftRegister call.
</p>
<p><var>precision</var> - optional precision of the data, where precision can be a
 number in a multiple of 8 (ie: 8,16,32) or can be a named integer type:     8
 of &rsquo;uint8&rsquo;, &rsquo;uint16&rsquo;, &rsquo;uint32&rsquo;.  The default  precision is 8.
</p>
<span id="Outputs-44"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> - returned data read from the register.
</p>
<p><strong>See also:</strong> shiftRegister, write.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040shiftRegister_002freset">
<h4 class="subsection">9.6.4 @shiftRegister/reset</h4>
<span id="index-reset-1"></span>
<dl class="def">
<dt id="index-_0028register_0029"><span class="category">: </span><span><em>reset</em> <strong>(<var>register</var>)</strong><a href='#index-_0028register_0029' class='copiable-anchor'></a></span></dt>
<dd><p>clear the shift register value.
</p>
<span id="Inputs-70"></span><h4 class="subsubheading">Inputs</h4>
<p><var>register</var> - shift register created from shiftRegister call.
</p>
<p><strong>See also:</strong> shiftRegister, read, write.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040shiftRegister_002fshiftRegister">
<h4 class="subsection">9.6.5 @shiftRegister/shiftRegister</h4>
<span id="index-shiftRegister"></span>
<dl class="def">
<dt id="index-shiftRegister-1"><span class="category">: </span><span><em><var>register</var> =</em> <strong>shiftRegister</strong> <em>(<var>ar</var>, <var>shifttype</var>, <var>dataPin</var>, <var>clockPin</var> ...)</em><a href='#index-shiftRegister-1' class='copiable-anchor'></a></span></dt>
<dt id="index-shiftRegister-2"><span class="category">: </span><span><em><var>register</var> =</em> <strong>shiftRegister</strong> <em>(<var>ar</var>,'74hc164', <var>dataPin</var>, <var>clockPin</var>, <var>resetPin</var>)</em><a href='#index-shiftRegister-2' class='copiable-anchor'></a></span></dt>
<dt id="index-shiftRegister-3"><span class="category">: </span><span><em><var>register</var> =</em> <strong>shiftRegister</strong> <em>(<var>ar</var>,'74hc165', <var>dataPin</var>, <var>clockPin</var>, <var>loadPin</var>, <var>clockEnablePin</var>)</em><a href='#index-shiftRegister-3' class='copiable-anchor'></a></span></dt>
<dt id="index-shiftRegister_0028ar_002c_002774hc595_0027_002c"><span class="category">: </span><span><em><var>register</var> =</em> <strong>shiftRegister(<var>ar</var>,'74hc595',</strong> <em><var>dataPin</var>, <var>clockPin</var>, <var>latchPin</var> , <var>resetPin</var>)</em><a href='#index-shiftRegister_0028ar_002c_002774hc595_0027_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Create shift register of a given type, controlled by the input pins.
</p>
<span id="Inputs-71"></span><h4 class="subsubheading">Inputs</h4>
<p>Common function parameter definition:
</p>
<p><var>ar</var> - connected arduino object.
</p>
<p><var>shifttype</var> - string name of the shift register type.
</p>
<p><var>dataPin</var> - pin used for data in/out of the device.
</p>
<p><var>clockPin</var> - pin used for clocking data on the shiftRegister.
</p>
<p>Other variables are dependent on the shift register type:
 </p><dl compact="compact">
<dt><span>&rsquo;74hc164&rsquo;</span></dt>
<dd><p>Additional inputs:
</p>
<p><var>resetPin</var> - optional  pin for resetting the shift register.
</p>
</dd>
<dt><span>&rsquo;74hc165&rsquo;</span></dt>
<dd><p>Additional inputs:
</p>
<p><var>loadPin</var> - load pin to the shift register.
 <var>clockEnablePin</var> - clock enable pin.
</p>
</dd>
<dt><span>&rsquo;74hc595&rsquo;</span></dt>
<dd><p>Additional inputs:
</p>
<p><var>latchPin</var> - latching data to the shift register.
 <var>resetPin</var> - optional pin for resetting the shift register.
</p>
</dd>
</dl>
<span id="Outputs-45"></span><h4 class="subsubheading">Outputs</h4>
<p><var>register</var> - register object
</p>
<span id="Properties-4"></span><h4 class="subsubheading">Properties</h4>
<p>The shiftRegister object has the following public properties:
 </p><dl compact="compact">
<dt><span>parent</span></dt>
<dd><p>The parent (arduino) for this device
 </p></dd>
<dt><span>pins</span></dt>
<dd><p>pins used by this object
 </p></dd>
<dt><span>model</span></dt>
<dd><p>model set for object
 </p></dd>
</dl>
<p><strong>See also:</strong> arduino.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040shiftRegister_002fsubsref">
<h4 class="subsection">9.6.6 @shiftRegister/subsref</h4>
<span id="index-subsref-4"></span>
<dl class="def">
<dt id="index-subsref-14"><span class="category">: </span><span><em><var>val</var> =</em> <strong>subsref</strong> <em>(<var>dev</var>, <var>sub</var>)</em><a href='#index-subsref-14' class='copiable-anchor'></a></span></dt>
<dd><p>subref for shiftRegister
</p>
<p><strong>See also:</strong> shiftRegister.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040shiftRegister_002fwrite">
<h4 class="subsection">9.6.7 @shiftRegister/write</h4>
<span id="index-write-2"></span>
<dl class="def">
<dt id="index-_0028register_002c"><span class="category">: </span><span><em>write</em> <strong>(<var>register</var>,</strong> <em><var>dataIn</var>)</em><a href='#index-_0028register_002c' class='copiable-anchor'></a></span></dt>
<dt id="index-_0028register_002c-1"><span class="category">: </span><span><em>write</em> <strong>(<var>register</var>,</strong> <em><var>dataIn</var>, <var>precision</var>)</em><a href='#index-_0028register_002c-1' class='copiable-anchor'></a></span></dt>
<dd><p>Write a value to the shift register.
</p>
<span id="Inputs-72"></span><h4 class="subsubheading">Inputs</h4>
<p><var>register</var> - shift register created from shiftRegister call.
</p>
<p><var>dataIn</var> - data to clock into the shiftRegister.
</p>
<p><var>precision</var> - optional precision of the data, where precision can be a
 number in a multiple of 8 (ie: 8,16,32) or can be a named integer type
 of &rsquo;uint8&rsquo;, &rsquo;uint16&rsquo;, &rsquo;uint32&rsquo;.  The default  precision is 8.
</p>
<p><strong>See also:</strong> shiftRegister, read.
 </p></dd></dl>
<hr>
</div>
</div>
<div class="section" id="Arduino-SPI-Functions">
<div class="header">
<p>
Next: <a href="#Arduino-Serial-Functions" accesskey="n" rel="next">Arduino Serial Functions</a>, Previous: <a href="#Arduino-Shiftregister-Functions" accesskey="p" rel="prev">Arduino Shiftregister Functions</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Arduino-SPI-Functions-1"></span><h3 class="section">9.7 Arduino SPI Functions</h3>
<span id="index-Arduino-SPI-Functions"></span>
<ul class="section-toc">
<li><a href="#g_t_0040device_002fdelete-1" accesskey="1">@device/delete</a></li>
<li><a href="#g_t_0040device_002fdisplay-1" accesskey="2">@device/display</a></li>
<li><a href="#g_t_0040device_002fsubsref-1" accesskey="3">@device/subsref</a></li>
<li><a href="#g_t_0040device_002fwriteRead" accesskey="4">@device/writeRead</a></li>
<li><a href="#g_t_0040spidev_002fdelete" accesskey="5">@spidev/delete</a></li>
<li><a href="#g_t_0040spidev_002fdisplay" accesskey="6">@spidev/display</a></li>
<li><a href="#g_t_0040spidev_002fspidev" accesskey="7">@spidev/spidev</a></li>
<li><a href="#g_t_0040spidev_002fsubsref" accesskey="8">@spidev/subsref</a></li>
<li><a href="#g_t_0040spidev_002fwriteRead" accesskey="9">@spidev/writeRead</a></li>
</ul>
<div class="subsection" id="g_t_0040device_002fdelete-1">
<h4 class="subsection">9.7.1 @device/delete</h4>
<span id="index-delete-6"></span>
<dl class="def">
<dt id="index-delete-17"><span class="category">: </span><span><em></em> <strong>delete</strong> <em>(<var>dev</var>)</em><a href='#index-delete-17' class='copiable-anchor'></a></span></dt>
<dd><p>Free resources of a device object.
</p>
<span id="Inputs-73"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - object to free
</p>
<p><strong>See also:</strong> device.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002fdisplay-1">
<h4 class="subsection">9.7.2 @device/display</h4>
<span id="index-display-6"></span>
<dl class="def">
<dt id="index-display-17"><span class="category">: </span><span><em></em> <strong>display</strong> <em>(<var>dev</var>)</em><a href='#index-display-17' class='copiable-anchor'></a></span></dt>
<dd><p>Display device object.
</p>
<span id="Inputs-74"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - device object to display
</p>
<p><strong>See also:</strong> device.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002fsubsref-1">
<h4 class="subsection">9.7.3 @device/subsref</h4>
<span id="index-subsref-5"></span>
<dl class="def">
<dt id="index-subsref-15"><span class="category">: </span><span><em><var>val</var> =</em> <strong>subsref</strong> <em>(<var>dev</var>, <var>sub</var>)</em><a href='#index-subsref-15' class='copiable-anchor'></a></span></dt>
<dd><p>subref for device
</p>
<p><strong>See also:</strong> device.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002fwriteRead">
<h4 class="subsection">9.7.4 @device/writeRead</h4>
<span id="index-writeRead"></span>
<dl class="def">
<dt id="index-readWrite"><span class="category">: </span><span><em><var>dataOut</var> =</em> <strong>readWrite</strong> <em>(<var>spi</var>, <var>dataIn</var>)</em><a href='#index-readWrite' class='copiable-anchor'></a></span></dt>
<dd><p>Write uint8 data to spi device and return
 back clocked out response data of same size.
</p>
<span id="Inputs-75"></span><h4 class="subsubheading">Inputs</h4>
<p><var>spi</var> - connected spi device on arduino
</p>
<p><var>dataIn</var> - uint8 sized data to send to spi device framed between SS frame.
</p>
<span id="Outputs-46"></span><h4 class="subsubheading">Outputs</h4>
<p><var>dataOut</var> - uint8 data clocked out during send to dataIn.
</p>
<p><strong>See also:</strong> arduino, device.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040spidev_002fdelete">
<h4 class="subsection">9.7.5 @spidev/delete</h4>
<span id="index-delete-7"></span>
<dl class="def">
<dt id="index-delete-18"><span class="category">: </span><span><em></em> <strong>delete</strong> <em>(<var>dev</var>)</em><a href='#index-delete-18' class='copiable-anchor'></a></span></dt>
<dd><p>Free resources of a spidev object.
</p>
<span id="Inputs-76"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - spidev object to free
</p>
<p><strong>See also:</strong> spidev.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040spidev_002fdisplay">
<h4 class="subsection">9.7.6 @spidev/display</h4>
<span id="index-display-7"></span>
<dl class="def">
<dt id="index-display-18"><span class="category">: </span><span><em></em> <strong>display</strong> <em>(<var>dev</var>)</em><a href='#index-display-18' class='copiable-anchor'></a></span></dt>
<dd><p>Display spidev object.
</p>
<span id="Inputs-77"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - spidev object to display
</p>
<p><strong>See also:</strong> spidev.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040spidev_002fspidev">
<h4 class="subsection">9.7.7 @spidev/spidev</h4>
<span id="index-spidev"></span>
<dl class="def">
<dt id="index-spidev-1"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>spidev</strong> <em>(<var>ar</var>, <var>cspin</var>)</em><a href='#index-spidev-1' class='copiable-anchor'></a></span></dt>
<dt id="index-spidev-2"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>spidev</strong> <em>(<var>ar</var>, <var>cspin</var>, <var>propname</var>, <var>propvalue</var>)</em><a href='#index-spidev-2' class='copiable-anchor'></a></span></dt>
<dd>
<p><code>spidev</code> is depreciated and will be removed in a future version.
 Use <code>device</code> instead.
</p>
<p>Create an spidev object to communicate to the SPI port on a connected arduino.
</p>
<span id="Inputs-78"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>cspin</var> - chip select pin for attached spi device.
</p>
<p><var>propname</var>, <var>propvalue</var> - property name/value pair for values to pass to devices.
</p>
<p>Currently known properties:
 </p><dl compact="compact">
<dt><span>bitrate</span></dt>
<dd><p>bit rate speed in Mbs
 </p></dd>
<dt><span>bitorder</span></dt>
<dd><p>&rsquo;msbfirst&rsquo; or &rsquo;lsbfirst&rsquo;
 </p></dd>
<dt><span>mode</span></dt>
<dd><p>SPI mode 0 - 3.
 </p></dd>
</dl>
<span id="Outputs-47"></span><h4 class="subsubheading">Outputs</h4>
<p><var>dev</var> - created spidev object
</p>
<span id="Properties-5"></span><h4 class="subsubheading">Properties</h4>
<p>The spidev object has the following public properties:
 </p><dl compact="compact">
<dt><span>parent</span></dt>
<dd><p>The parent (arduino) for this device
 </p></dd>
<dt><span>pins</span></dt>
<dd><p>pins used by this object
 </p></dd>
<dt><span>mode</span></dt>
<dd><p>mode used for created object
 </p></dd>
<dt><span>bitrate</span></dt>
<dd><p>Bitrate set for object
 </p></dd>
<dt><span>bitorder</span></dt>
<dd><p>Bitorder set for object
 </p></dd>
<dt><span>chipselectpin</span></dt>
<dd><p>Pin used for chipselect
 </p></dd>
</dl>
<p><strong>See also:</strong> arduino, readWrite.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040spidev_002fsubsref">
<h4 class="subsection">9.7.8 @spidev/subsref</h4>
<span id="index-subsref-6"></span>
<dl class="def">
<dt id="index-subsref-16"><span class="category">: </span><span><em><var>val</var> =</em> <strong>subsref</strong> <em>(<var>dev</var>, <var>sub</var>)</em><a href='#index-subsref-16' class='copiable-anchor'></a></span></dt>
<dd><p>subref for spidev
</p>
<p><strong>See also:</strong> spidev.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040spidev_002fwriteRead">
<h4 class="subsection">9.7.9 @spidev/writeRead</h4>
<span id="index-writeRead-1"></span>
<dl class="def">
<dt id="index-readWrite-1"><span class="category">: </span><span><em><var>dataOut</var> =</em> <strong>readWrite</strong> <em>(<var>spi</var>, <var>dataIn</var>)</em><a href='#index-readWrite-1' class='copiable-anchor'></a></span></dt>
<dd><p>Write uint8 data to spi device and return
 back clocked out response data of same size.
</p>
<span id="Inputs-79"></span><h4 class="subsubheading">Inputs</h4>
<p><var>spi</var> - connected spi device on arduino
</p>
<p><var>dataIn</var> - uint8 sized data to send to spi device framed between SS frame.
</p>
<span id="Outputs-48"></span><h4 class="subsubheading">Outputs</h4>
<p><var>dataOut</var> - uint8 data clocked out during send to dataIn.
</p>
<p><strong>See also:</strong> arduino, spidev.
 </p></dd></dl>
<hr>
</div>
</div>
<div class="section" id="Arduino-Serial-Functions">
<div class="header">
<p>
Next: <a href="#Arduino-Device-Functions" accesskey="n" rel="next">Arduino Device Functions</a>, Previous: <a href="#Arduino-SPI-Functions" accesskey="p" rel="prev">Arduino SPI Functions</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Arduino-Serial-Functions-1"></span><h3 class="section">9.8 Arduino Serial Functions</h3>
<span id="index-Arduino-Serial-Functions"></span>
<ul class="section-toc">
<li><a href="#g_t_0040device_002fdelete-2" accesskey="1">@device/delete</a></li>
<li><a href="#g_t_0040device_002fdevice" accesskey="2">@device/device</a></li>
<li><a href="#g_t_0040device_002fdisplay-2" accesskey="3">@device/display</a></li>
<li><a href="#g_t_0040device_002fflush" accesskey="4">@device/flush</a></li>
<li><a href="#g_t_0040device_002fread-1" accesskey="5">@device/read</a></li>
<li><a href="#g_t_0040device_002fsubsref-2" accesskey="6">@device/subsref</a></li>
<li><a href="#g_t_0040device_002fwrite-1" accesskey="7">@device/write</a></li>
</ul>
<div class="subsection" id="g_t_0040device_002fdelete-2">
<h4 class="subsection">9.8.1 @device/delete</h4>
<span id="index-delete-8"></span>
<dl class="def">
<dt id="index-delete-19"><span class="category">: </span><span><em></em> <strong>delete</strong> <em>(<var>dev</var>)</em><a href='#index-delete-19' class='copiable-anchor'></a></span></dt>
<dd><p>Free resources of a device object.
</p>
<span id="Inputs-80"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - object to free
</p>
<p><strong>See also:</strong> device.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002fdevice">
<h4 class="subsection">9.8.2 @device/device</h4>
<span id="index-device"></span>
<dl class="def">
<dt id="index-device-2"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>device</strong> <em>(<var>ar</var>, 'I2CAddress', <var>address</var>)</em><a href='#index-device-2' class='copiable-anchor'></a></span></dt>
<dt id="index-device-3"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>device</strong> <em>(<var>ar</var>, 'SPIChipSelectPin', <var>pin</var>)</em><a href='#index-device-3' class='copiable-anchor'></a></span></dt>
<dt id="index-device-4"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>device</strong> <em>(<var>ar</var>, 'Serial', <var>serialid</var>)</em><a href='#index-device-4' class='copiable-anchor'></a></span></dt>
<dt id="index-device-5"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>device</strong> <em>(..., <var>propname</var>, <var>propvalue</var>)</em><a href='#index-device-5' class='copiable-anchor'></a></span></dt>
<dd><p>Create an i2c, spi or serial object to communicate on a connected arduino.
</p>
<span id="Inputs-81"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>propname</var>, <var>propvalue</var> - property name/value pair for values to pass to devices.
</p>
<p>A property of &rsquo;i2caddress&rsquo;, &rsquo;spichipselectpin&rsquo; or &rsquo;serial&rsquo;  must be specified to denote the device type to create.
</p>
<p><var>i2caddress</var> - address to use for device on I2C bus.
</p>
<p><var>pin</var> - pin to use for device SPI chip select.
</p>
<p><var>serialid</var> - Serial port id to use
</p>
<p>Additional properties can also be specified for the device object
</p>
<p>Currently known input I2C properties values:
 </p><dl compact="compact">
<dt><span>bus</span></dt>
<dd><p>bus number (when arduino board supports multiple I2C buses)
 with value of 0 or 1.
 </p></dd>
<dt><span>noprobe</span></dt>
<dd><p>Do not probe the existence of device on creation if set to 1 (default 0)
 </p></dd>
<dt><span>bitrate</span></dt>
<dd><p>bit rate speed in Mbs - default 100000
 </p></dd>
</dl>
<p>Currently known input SPI properties values:
 </p><dl compact="compact">
<dt><span>bitrate</span></dt>
<dd><p>bit rate speed in Mbs
 </p></dd>
<dt><span>bitorder</span></dt>
<dd><p>&rsquo;msbfirst&rsquo; or &rsquo;lsbfirst&rsquo;
 </p></dd>
<dt><span>spimode</span></dt>
<dd><p>SPI mode 0 - 3.
 </p></dd>
</dl>
<p>Currently known input Serial properties values:
 </p><dl compact="compact">
<dt><span>baudrate</span></dt>
<dd><p>baudrate value (default 9600)
 </p></dd>
<dt><span>databits</span></dt>
<dd><p>number of databits (5,6,7,8) (default 8)
 </p></dd>
<dt><span>stopbits</span></dt>
<dd><p>number of stopbits (1,2) (default 1)
 </p></dd>
<dt><span>parity</span></dt>
<dd><p>parity of device (&rsquo;odd&rsquo;,&rsquo;even&rsquo;,&rsquo;none&rsquo;) (default &rsquo;none&rsquo;)
 </p></dd>
</dl>
<span id="Outputs-49"></span><h4 class="subsubheading">Outputs</h4>
<p><var>dev</var> - new created device object.
</p>
<span id="Properties-6"></span><h4 class="subsubheading">Properties</h4>
<p>The object has the following public properties:
 </p><dl compact="compact">
<dt><span>parent</span></dt>
<dd><p>The parent (arduino) for this device
 </p></dd>
<dt><span>interface</span></dt>
<dd><p>The interface type for this device (&quot;SPI&quot; or &quot;I2C&quot; or &quot;Serial&quot;)
 </p></dd>
</dl>
<p>In addition, depending on type, the object will have these properties:
</p>
<span id="I2C-Properties"></span><h4 class="subsubheading">I2C Properties</h4>
<p>The object has the following public properties:
 </p><dl compact="compact">
<dt><span>bus</span></dt>
<dd><p>bus used for created object
 </p></dd>
<dt><span>i2caddress</span></dt>
<dd><p>I2C address set for object
 </p></dd>
<dt><span>sclpin</span></dt>
<dd><p>the SCL pin of the device
 </p></dd>
<dt><span>sdapin</span></dt>
<dd><p>the SDA pin of the device
 </p></dd>
<dt><span>bitrate</span></dt>
<dd><p>bit rate for the i2c clock
 </p></dd>
</dl>
<span id="SPI-Properties"></span><h4 class="subsubheading">SPI Properties</h4>
<p>The object has the following public properties:
 </p><dl compact="compact">
<dt><span>spimode</span></dt>
<dd><p>mode used for created object
 </p></dd>
<dt><span>bitrate</span></dt>
<dd><p>Bitrate set for object
 </p></dd>
<dt><span>bitorder</span></dt>
<dd><p>Bitorder set for object
 </p></dd>
<dt><span>spichipselectpin</span></dt>
<dd><p>Pin used for chipselect
 </p></dd>
<dt><span>mosipin</span></dt>
<dd><p>Pin used for mosi
 </p></dd>
<dt><span>misopin</span></dt>
<dd><p>Pin used for miso
 </p></dd>
<dt><span>sckpin</span></dt>
<dd><p>Pin used for sckpin
 </p></dd>
</dl>
<span id="Serial-Properties"></span><h4 class="subsubheading">Serial Properties</h4>
<p>The object has the following public properties:
 </p><dl compact="compact">
<dt><span>id</span></dt>
<dd><p>serial port id
 </p></dd>
<dt><span>baudrate</span></dt>
<dd><p>baudrate
 </p></dd>
<dt><span>databits</span></dt>
<dd><p>number of databits (5,6,7,8)
 </p></dd>
<dt><span>stopbits</span></dt>
<dd><p>number of stopbits (1,2)
 </p></dd>
<dt><span>parity</span></dt>
<dd><p>parity of device (&rsquo;odd&rsquo;,&rsquo;even&rsquo;,&rsquo;none&rsquo;)
 </p></dd>
</dl>
<p><strong>See also:</strong> arduino, i2cdev, spidev.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002fdisplay-2">
<h4 class="subsection">9.8.3 @device/display</h4>
<span id="index-display-8"></span>
<dl class="def">
<dt id="index-display-19"><span class="category">: </span><span><em></em> <strong>display</strong> <em>(<var>dev</var>)</em><a href='#index-display-19' class='copiable-anchor'></a></span></dt>
<dd><p>Display device object.
</p>
<span id="Inputs-82"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - device object to display
</p>
<p><strong>See also:</strong> device.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002fflush">
<h4 class="subsection">9.8.4 @device/flush</h4>
<span id="index-flush"></span>
<dl class="def">
<dt id="index-flush-2"><span class="category">: </span><span><em><var>data</var> =</em> <strong>flush</strong> <em>(<var>dev</var>)</em><a href='#index-flush-2' class='copiable-anchor'></a></span></dt>
<dt id="index-flush-3"><span class="category">: </span><span><em><var>data</var> =</em> <strong>flush</strong> <em>(<var>dev</var>, &quot;input&quot;)</em><a href='#index-flush-3' class='copiable-anchor'></a></span></dt>
<dt id="index-flush-4"><span class="category">: </span><span><em><var>data</var> =</em> <strong>flush</strong> <em>(<var>dev</var>, &quot;output&quot;)</em><a href='#index-flush-4' class='copiable-anchor'></a></span></dt>
<dd><p>Flush the serial port buffers
</p>
<span id="Inputs-83"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - connected serial device opened using device
</p>
<p>If an additional parameter is provided of &quot;input&quot; or &quot;output&quot;,
 then only the input or output buffer will be flushed
</p>
<span id="Outputs-50"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>
<p><strong>See also:</strong> arduino, device, read.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002fread-1">
<h4 class="subsection">9.8.5 @device/read</h4>
<span id="index-read-3"></span>
<dl class="def">
<dt id="index-read-11"><span class="category">: </span><span><em><var>data</var> =</em> <strong>read</strong> <em>(<var>dev</var>, <var>numbytes</var>)</em><a href='#index-read-11' class='copiable-anchor'></a></span></dt>
<dt id="index-read-12"><span class="category">: </span><span><em><var>data</var> =</em> <strong>read</strong> <em>(<var>dev</var>, <var>numbytes</var>, <var>precision</var>)</em><a href='#index-read-12' class='copiable-anchor'></a></span></dt>
<dd><p>Read a specified number of bytes from a i2c or serial device object
 using optional precision for bytesize.
</p>
<span id="Inputs-84"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - connected i2c or serial device opened using device
</p>
<p><var>numbytes</var> - number of bytes to read.
</p>
<p><var>precision</var> - Optional precision for the output data read data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<span id="Outputs-51"></span><h4 class="subsubheading">Outputs</h4>
<p><var>data</var> - data read from the device
</p>
<p><strong>See also:</strong> arduino, device.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002fsubsref-2">
<h4 class="subsection">9.8.6 @device/subsref</h4>
<span id="index-subsref-7"></span>
<dl class="def">
<dt id="index-subsref-17"><span class="category">: </span><span><em><var>val</var> =</em> <strong>subsref</strong> <em>(<var>dev</var>, <var>sub</var>)</em><a href='#index-subsref-17' class='copiable-anchor'></a></span></dt>
<dd><p>subref for device
</p>
<p><strong>See also:</strong> device.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002fwrite-1">
<h4 class="subsection">9.8.7 @device/write</h4>
<span id="index-write-3"></span>
<dl class="def">
<dt id="index-write-9"><span class="category">: </span><span><em></em> <strong>write</strong> <em>(<var>dev</var>, <var>datain</var>)</em><a href='#index-write-9' class='copiable-anchor'></a></span></dt>
<dt id="index-write-10"><span class="category">: </span><span><em></em> <strong>write</strong> <em>(<var>dev</var>, <var>datain</var>, <var>precision</var>)</em><a href='#index-write-10' class='copiable-anchor'></a></span></dt>
<dd><p>Write data to a I2C or serial device object
 using optional precision for the data byte used for the data.
</p>
<span id="Inputs-85"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - connected i2c or serial device opened using device
</p>
<p><var>datain</var> - data to write to device. Datasize should not exceed the constraints
 of the data type specified for the precision.
</p>
<p><var>precision</var> - Optional precision for the input write data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<p><strong>See also:</strong> arduino, device, read.
 </p></dd></dl>
<hr>
</div>
</div>
<div class="section" id="Arduino-Device-Functions">
<div class="header">
<p>
Next: <a href="#Arduino-Ultrasonic-Functions" accesskey="n" rel="next">Arduino Ultrasonic Functions</a>, Previous: <a href="#Arduino-Serial-Functions" accesskey="p" rel="prev">Arduino Serial Functions</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Arduino-Device-Functions-1"></span><h3 class="section">9.9 Arduino Device Functions</h3>
<span id="index-Arduino-Device-Functions"></span>
<ul class="section-toc">
<li><a href="#g_t_0040device_002fdelete-3" accesskey="1">@device/delete</a></li>
<li><a href="#g_t_0040device_002fdevice-1" accesskey="2">@device/device</a></li>
<li><a href="#g_t_0040device_002fdisplay-3" accesskey="3">@device/display</a></li>
<li><a href="#g_t_0040device_002fflush-1" accesskey="4">@device/flush</a></li>
<li><a href="#g_t_0040device_002fread-2" accesskey="5">@device/read</a></li>
<li><a href="#g_t_0040device_002freadRegister-1" accesskey="6">@device/readRegister</a></li>
<li><a href="#g_t_0040device_002fsubsref-3" accesskey="7">@device/subsref</a></li>
<li><a href="#g_t_0040device_002fwrite-2" accesskey="8">@device/write</a></li>
<li><a href="#g_t_0040device_002fwriteRead-1" accesskey="9">@device/writeRead</a></li>
<li><a href="#g_t_0040device_002fwriteRegister-1">@device/writeRegister</a></li>
</ul>
<div class="subsection" id="g_t_0040device_002fdelete-3">
<h4 class="subsection">9.9.1 @device/delete</h4>
<span id="index-delete-9"></span>
<dl class="def">
<dt id="index-delete-20"><span class="category">: </span><span><em></em> <strong>delete</strong> <em>(<var>dev</var>)</em><a href='#index-delete-20' class='copiable-anchor'></a></span></dt>
<dd><p>Free resources of a device object.
</p>
<span id="Inputs-86"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - object to free
</p>
<p><strong>See also:</strong> device.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002fdevice-1">
<h4 class="subsection">9.9.2 @device/device</h4>
<span id="index-device-1"></span>
<dl class="def">
<dt id="index-device-6"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>device</strong> <em>(<var>ar</var>, 'I2CAddress', <var>address</var>)</em><a href='#index-device-6' class='copiable-anchor'></a></span></dt>
<dt id="index-device-7"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>device</strong> <em>(<var>ar</var>, 'SPIChipSelectPin', <var>pin</var>)</em><a href='#index-device-7' class='copiable-anchor'></a></span></dt>
<dt id="index-device-8"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>device</strong> <em>(<var>ar</var>, 'Serial', <var>serialid</var>)</em><a href='#index-device-8' class='copiable-anchor'></a></span></dt>
<dt id="index-device-9"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>device</strong> <em>(..., <var>propname</var>, <var>propvalue</var>)</em><a href='#index-device-9' class='copiable-anchor'></a></span></dt>
<dd><p>Create an i2c, spi or serial object to communicate on a connected arduino.
</p>
<span id="Inputs-87"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>propname</var>, <var>propvalue</var> - property name/value pair for values to pass to devices.
</p>
<p>A property of &rsquo;i2caddress&rsquo;, &rsquo;spichipselectpin&rsquo; or &rsquo;serial&rsquo;  must be specified to denote the device type to create.
</p>
<p><var>i2caddress</var> - address to use for device on I2C bus.
</p>
<p><var>pin</var> - pin to use for device SPI chip select.
</p>
<p><var>serialid</var> - Serial port id to use
</p>
<p>Additional properties can also be specified for the device object
</p>
<p>Currently known input I2C properties values:
 </p><dl compact="compact">
<dt><span>bus</span></dt>
<dd><p>bus number (when arduino board supports multiple I2C buses)
 with value of 0 or 1.
 </p></dd>
<dt><span>noprobe</span></dt>
<dd><p>Do not probe the existence of device on creation if set to 1 (default 0)
 </p></dd>
<dt><span>bitrate</span></dt>
<dd><p>bit rate speed in Mbs - default 100000
 </p></dd>
</dl>
<p>Currently known input SPI properties values:
 </p><dl compact="compact">
<dt><span>bitrate</span></dt>
<dd><p>bit rate speed in Mbs
 </p></dd>
<dt><span>bitorder</span></dt>
<dd><p>&rsquo;msbfirst&rsquo; or &rsquo;lsbfirst&rsquo;
 </p></dd>
<dt><span>spimode</span></dt>
<dd><p>SPI mode 0 - 3.
 </p></dd>
</dl>
<p>Currently known input Serial properties values:
 </p><dl compact="compact">
<dt><span>baudrate</span></dt>
<dd><p>baudrate value (default 9600)
 </p></dd>
<dt><span>databits</span></dt>
<dd><p>number of databits (5,6,7,8) (default 8)
 </p></dd>
<dt><span>stopbits</span></dt>
<dd><p>number of stopbits (1,2) (default 1)
 </p></dd>
<dt><span>parity</span></dt>
<dd><p>parity of device (&rsquo;odd&rsquo;,&rsquo;even&rsquo;,&rsquo;none&rsquo;) (default &rsquo;none&rsquo;)
 </p></dd>
</dl>
<span id="Outputs-52"></span><h4 class="subsubheading">Outputs</h4>
<p><var>dev</var> - new created device object.
</p>
<span id="Properties-7"></span><h4 class="subsubheading">Properties</h4>
<p>The object has the following public properties:
 </p><dl compact="compact">
<dt><span>parent</span></dt>
<dd><p>The parent (arduino) for this device
 </p></dd>
<dt><span>interface</span></dt>
<dd><p>The interface type for this device (&quot;SPI&quot; or &quot;I2C&quot; or &quot;Serial&quot;)
 </p></dd>
</dl>
<p>In addition, depending on type, the object will have these properties:
</p>
<span id="I2C-Properties-1"></span><h4 class="subsubheading">I2C Properties</h4>
<p>The object has the following public properties:
 </p><dl compact="compact">
<dt><span>bus</span></dt>
<dd><p>bus used for created object
 </p></dd>
<dt><span>i2caddress</span></dt>
<dd><p>I2C address set for object
 </p></dd>
<dt><span>sclpin</span></dt>
<dd><p>the SCL pin of the device
 </p></dd>
<dt><span>sdapin</span></dt>
<dd><p>the SDA pin of the device
 </p></dd>
<dt><span>bitrate</span></dt>
<dd><p>bit rate for the i2c clock
 </p></dd>
</dl>
<span id="SPI-Properties-1"></span><h4 class="subsubheading">SPI Properties</h4>
<p>The object has the following public properties:
 </p><dl compact="compact">
<dt><span>spimode</span></dt>
<dd><p>mode used for created object
 </p></dd>
<dt><span>bitrate</span></dt>
<dd><p>Bitrate set for object
 </p></dd>
<dt><span>bitorder</span></dt>
<dd><p>Bitorder set for object
 </p></dd>
<dt><span>spichipselectpin</span></dt>
<dd><p>Pin used for chipselect
 </p></dd>
<dt><span>mosipin</span></dt>
<dd><p>Pin used for mosi
 </p></dd>
<dt><span>misopin</span></dt>
<dd><p>Pin used for miso
 </p></dd>
<dt><span>sckpin</span></dt>
<dd><p>Pin used for sckpin
 </p></dd>
</dl>
<span id="Serial-Properties-1"></span><h4 class="subsubheading">Serial Properties</h4>
<p>The object has the following public properties:
 </p><dl compact="compact">
<dt><span>id</span></dt>
<dd><p>serial port id
 </p></dd>
<dt><span>baudrate</span></dt>
<dd><p>baudrate
 </p></dd>
<dt><span>databits</span></dt>
<dd><p>number of databits (5,6,7,8)
 </p></dd>
<dt><span>stopbits</span></dt>
<dd><p>number of stopbits (1,2)
 </p></dd>
<dt><span>parity</span></dt>
<dd><p>parity of device (&rsquo;odd&rsquo;,&rsquo;even&rsquo;,&rsquo;none&rsquo;)
 </p></dd>
</dl>
<p><strong>See also:</strong> arduino, i2cdev, spidev.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002fdisplay-3">
<h4 class="subsection">9.9.3 @device/display</h4>
<span id="index-display-9"></span>
<dl class="def">
<dt id="index-display-20"><span class="category">: </span><span><em></em> <strong>display</strong> <em>(<var>dev</var>)</em><a href='#index-display-20' class='copiable-anchor'></a></span></dt>
<dd><p>Display device object.
</p>
<span id="Inputs-88"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - device object to display
</p>
<p><strong>See also:</strong> device.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002fflush-1">
<h4 class="subsection">9.9.4 @device/flush</h4>
<span id="index-flush-1"></span>
<dl class="def">
<dt id="index-flush-5"><span class="category">: </span><span><em><var>data</var> =</em> <strong>flush</strong> <em>(<var>dev</var>)</em><a href='#index-flush-5' class='copiable-anchor'></a></span></dt>
<dt id="index-flush-6"><span class="category">: </span><span><em><var>data</var> =</em> <strong>flush</strong> <em>(<var>dev</var>, &quot;input&quot;)</em><a href='#index-flush-6' class='copiable-anchor'></a></span></dt>
<dt id="index-flush-7"><span class="category">: </span><span><em><var>data</var> =</em> <strong>flush</strong> <em>(<var>dev</var>, &quot;output&quot;)</em><a href='#index-flush-7' class='copiable-anchor'></a></span></dt>
<dd><p>Flush the serial port buffers
</p>
<span id="Inputs-89"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - connected serial device opened using device
</p>
<p>If an additional parameter is provided of &quot;input&quot; or &quot;output&quot;,
 then only the input or output buffer will be flushed
</p>
<span id="Outputs-53"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>
<p><strong>See also:</strong> arduino, device, read.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002fread-2">
<h4 class="subsection">9.9.5 @device/read</h4>
<span id="index-read-4"></span>
<dl class="def">
<dt id="index-read-13"><span class="category">: </span><span><em><var>data</var> =</em> <strong>read</strong> <em>(<var>dev</var>, <var>numbytes</var>)</em><a href='#index-read-13' class='copiable-anchor'></a></span></dt>
<dt id="index-read-14"><span class="category">: </span><span><em><var>data</var> =</em> <strong>read</strong> <em>(<var>dev</var>, <var>numbytes</var>, <var>precision</var>)</em><a href='#index-read-14' class='copiable-anchor'></a></span></dt>
<dd><p>Read a specified number of bytes from a i2c or serial device object
 using optional precision for bytesize.
</p>
<span id="Inputs-90"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - connected i2c or serial device opened using device
</p>
<p><var>numbytes</var> - number of bytes to read.
</p>
<p><var>precision</var> - Optional precision for the output data read data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<span id="Outputs-54"></span><h4 class="subsubheading">Outputs</h4>
<p><var>data</var> - data read from the device
</p>
<p><strong>See also:</strong> arduino, device.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002freadRegister-1">
<h4 class="subsection">9.9.6 @device/readRegister</h4>
<span id="index-readRegister-2"></span>
<dl class="def">
<dt id="index-readRegister-7"><span class="category">: </span><span><em><var>data</var> =</em> <strong>readRegister</strong> <em>(<var>dev</var>, <var>reg</var>, <var>numbytes</var>)</em><a href='#index-readRegister-7' class='copiable-anchor'></a></span></dt>
<dt id="index-readRegister-8"><span class="category">: </span><span><em><var>data</var> =</em> <strong>readRegister</strong> <em>(<var>dev</var>, <var>reg</var>, <var>numbytes</var>, <var>precision</var>)</em><a href='#index-readRegister-8' class='copiable-anchor'></a></span></dt>
<dd><p>Read a specified number of bytes from a register of an i2cdev object
 using optional precision for bytesize.
</p>
<span id="Inputs-91"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - connected i2c device opened using device
</p>
<p><var>reg</var> - registry value number
</p>
<p><var>numbytes</var> - number of bytes to read.
</p>
<p><var>precision</var> - Optional precision for the output data read data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<span id="Output-2"></span><h4 class="subsubheading">Output</h4>
<p><var>data</var> - data read from device.
</p>
<p><strong>See also:</strong> arduino, device.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002fsubsref-3">
<h4 class="subsection">9.9.7 @device/subsref</h4>
<span id="index-subsref-8"></span>
<dl class="def">
<dt id="index-subsref-18"><span class="category">: </span><span><em><var>val</var> =</em> <strong>subsref</strong> <em>(<var>dev</var>, <var>sub</var>)</em><a href='#index-subsref-18' class='copiable-anchor'></a></span></dt>
<dd><p>subref for device
</p>
<p><strong>See also:</strong> device.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002fwrite-2">
<h4 class="subsection">9.9.8 @device/write</h4>
<span id="index-write-4"></span>
<dl class="def">
<dt id="index-write-11"><span class="category">: </span><span><em></em> <strong>write</strong> <em>(<var>dev</var>, <var>datain</var>)</em><a href='#index-write-11' class='copiable-anchor'></a></span></dt>
<dt id="index-write-12"><span class="category">: </span><span><em></em> <strong>write</strong> <em>(<var>dev</var>, <var>datain</var>, <var>precision</var>)</em><a href='#index-write-12' class='copiable-anchor'></a></span></dt>
<dd><p>Write data to a I2C or serial device object
 using optional precision for the data byte used for the data.
</p>
<span id="Inputs-92"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - connected i2c or serial device opened using device
</p>
<p><var>datain</var> - data to write to device. Datasize should not exceed the constraints
 of the data type specified for the precision.
</p>
<p><var>precision</var> - Optional precision for the input write data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<p><strong>See also:</strong> arduino, device, read.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002fwriteRead-1">
<h4 class="subsection">9.9.9 @device/writeRead</h4>
<span id="index-writeRead-2"></span>
<dl class="def">
<dt id="index-readWrite-2"><span class="category">: </span><span><em><var>dataOut</var> =</em> <strong>readWrite</strong> <em>(<var>spi</var>, <var>dataIn</var>)</em><a href='#index-readWrite-2' class='copiable-anchor'></a></span></dt>
<dd><p>Write uint8 data to spi device and return
 back clocked out response data of same size.
</p>
<span id="Inputs-93"></span><h4 class="subsubheading">Inputs</h4>
<p><var>spi</var> - connected spi device on arduino
</p>
<p><var>dataIn</var> - uint8 sized data to send to spi device framed between SS frame.
</p>
<span id="Outputs-55"></span><h4 class="subsubheading">Outputs</h4>
<p><var>dataOut</var> - uint8 data clocked out during send to dataIn.
</p>
<p><strong>See also:</strong> arduino, device.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040device_002fwriteRegister-1">
<h4 class="subsection">9.9.10 @device/writeRegister</h4>
<span id="index-writeRegister-2"></span>
<dl class="def">
<dt id="index-writeRegister-7"><span class="category">: </span><span><em></em> <strong>writeRegister</strong> <em>(<var>dev</var>, <var>reg</var>, <var>datain</var>)</em><a href='#index-writeRegister-7' class='copiable-anchor'></a></span></dt>
<dt id="index-writeRegister-8"><span class="category">: </span><span><em></em> <strong>writeRegister</strong> <em>(<var>dev</var>, <var>dev</var>, <var>datain</var>, <var>precision</var>)</em><a href='#index-writeRegister-8' class='copiable-anchor'></a></span></dt>
<dd><p>Write data to i2c device object at a given registry position
 using optional precision for the data byte used for the data.
</p>
<span id="Inputs-94"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - connected i2c device opened using device
</p>
<p><var>reg</var> - registry position to write to.
</p>
<p><var>datain</var> - data to write to device. Datasize should not exceed the constraints
 of the data type specified for the precision.
</p>
<p><var>precision</var> - Optional precision for the input write data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<p><strong>See also:</strong> arduino, device, read.
 </p></dd></dl>
<hr>
</div>
</div>
<div class="section" id="Arduino-Ultrasonic-Functions">
<div class="header">
<p>
Next: <a href="#Arduino-Addons" accesskey="n" rel="next">Arduino Addons</a>, Previous: <a href="#Arduino-Device-Functions" accesskey="p" rel="prev">Arduino Device Functions</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Arduino-Ultrasonic-Functions-1"></span><h3 class="section">9.10 Arduino Ultrasonic Functions</h3>
<span id="index-Arduino-Ultrasonic-Functions"></span>
<ul class="section-toc">
<li><a href="#g_t_0040ultrasonic_002fdelete" accesskey="1">@ultrasonic/delete</a></li>
<li><a href="#g_t_0040ultrasonic_002fdisplay" accesskey="2">@ultrasonic/display</a></li>
<li><a href="#g_t_0040ultrasonic_002freadDistance" accesskey="3">@ultrasonic/readDistance</a></li>
<li><a href="#g_t_0040ultrasonic_002freadEchoTime" accesskey="4">@ultrasonic/readEchoTime</a></li>
<li><a href="#g_t_0040ultrasonic_002fsubsref" accesskey="5">@ultrasonic/subsref</a></li>
<li><a href="#g_t_0040ultrasonic_002fultrasonic" accesskey="6">@ultrasonic/ultrasonic</a></li>
</ul>
<div class="subsection" id="g_t_0040ultrasonic_002fdelete">
<h4 class="subsection">9.10.1 @ultrasonic/delete</h4>
<span id="index-delete-10"></span>
<dl class="def">
<dt id="index-delete-21"><span class="category">: </span><span><em></em> <strong>delete</strong> <em>(<var>dev</var>)</em><a href='#index-delete-21' class='copiable-anchor'></a></span></dt>
<dd><p>Free resources of a ultrasonic object.
</p>
<span id="Inputs-95"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - ultrasonic object to free
</p>
<p><strong>See also:</strong> ultrasonic.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040ultrasonic_002fdisplay">
<h4 class="subsection">9.10.2 @ultrasonic/display</h4>
<span id="index-display-10"></span>
<dl class="def">
<dt id="index-display-21"><span class="category">: </span><span><em></em> <strong>display</strong> <em>(<var>dev</var>)</em><a href='#index-display-21' class='copiable-anchor'></a></span></dt>
<dd><p>Display ultrasonic object.
</p>
<span id="Inputs-96"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - ultrasonic object to display
</p>
<p><strong>See also:</strong> ultrasonic.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040ultrasonic_002freadDistance">
<h4 class="subsection">9.10.3 @ultrasonic/readDistance</h4>
<span id="index-readDistance"></span>
<dl class="def">
<dt id="index-readDistance-1"><span class="category">: </span><span><em><var>distance</var> =</em> <strong>readDistance</strong> <em>(<var>dev</var>)</em><a href='#index-readDistance-1' class='copiable-anchor'></a></span></dt>
<dd><p>Read the distance from a ultrasonic device
</p>
<span id="Inputs-97"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - connected ultrasonic device opened using ultrasonic
</p>
<span id="Outputs-56"></span><h4 class="subsubheading">Outputs</h4>
<p><var>distance</var> - distance value in meters from the ultrasonic device, or Inf if out of sensor range
</p>
<p><strong>See also:</strong> arduino, ultrasonic.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040ultrasonic_002freadEchoTime">
<h4 class="subsection">9.10.4 @ultrasonic/readEchoTime</h4>
<span id="index-readEchoTime"></span>
<dl class="def">
<dt id="index-readEchoTime-1"><span class="category">: </span><span><em><var>time</var> =</em> <strong>readEchoTime</strong> <em>(<var>dev</var>)</em><a href='#index-readEchoTime-1' class='copiable-anchor'></a></span></dt>
<dd><p>Measure the time for waves to reflect back to the ultrasonic device
</p>
<span id="Inputs-98"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - connected ultrasonic device opened using ultrasonic()
</p>
<span id="Outputs-57"></span><h4 class="subsubheading">Outputs</h4>
<p><var>time</var> - time in seconds, or Inf if out of sensor range
</p>
<p><strong>See also:</strong> arduino, ultrasonic.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040ultrasonic_002fsubsref">
<h4 class="subsection">9.10.5 @ultrasonic/subsref</h4>
<span id="index-subsref-9"></span>
<dl class="def">
<dt id="index-subsref-19"><span class="category">: </span><span><em><var>val</var> =</em> <strong>subsref</strong> <em>(<var>dev</var>, <var>sub</var>)</em><a href='#index-subsref-19' class='copiable-anchor'></a></span></dt>
<dd><p>subref for ultrasonic
</p>
<p><strong>See also:</strong> ultrasonic.
 </p></dd></dl>
</div>
<div class="subsection" id="g_t_0040ultrasonic_002fultrasonic">
<h4 class="subsection">9.10.6 @ultrasonic/ultrasonic</h4>
<span id="index-ultrasonic"></span>
<dl class="def">
<dt id="index-ultrasonic-1"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>ultrasonic</strong> <em>(<var>ar</var>, <var>triggerpin</var>)</em><a href='#index-ultrasonic-1' class='copiable-anchor'></a></span></dt>
<dt id="index-ultrasonic-2"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>ultrasonic</strong> <em>(<var>ar</var>, <var>triggerpin</var>, <var>echopin</var>)</em><a href='#index-ultrasonic-2' class='copiable-anchor'></a></span></dt>
<dt id="index-ultrasonic-3"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>ultrasonic</strong> <em>(<var>ar</var>, <var>triggerpin</var>, <var>echopin</var>, <var>propname</var>, <var>propvalue</var>)</em><a href='#index-ultrasonic-3' class='copiable-anchor'></a></span></dt>
<dd><p>Create an ultrasonic object to communicate to a connected ultrasonic device
</p>
<span id="Inputs-99"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>triggerpin</var> - trigger pin for attached device.
</p>
<p><var>echopin</var> - trigger pin for attached device.
</p>
<p><var>propname</var>, <var>propvalue</var> - property name/value pair for values to pass to devices.
</p>
<p>Currently known properties:
 </p><dl compact="compact">
<dt><span>outputformat</span></dt>
<dd><p>string designating number format for output (&rsquo;double&rsquo;)
 </p></dd>
</dl>
<span id="Outputs-58"></span><h4 class="subsubheading">Outputs</h4>
<p><var>dev</var> - created ultrasonic object
</p>
<span id="Properties-8"></span><h4 class="subsubheading">Properties</h4>
<p>The ultrasonic object has the following public properties:
 </p><dl compact="compact">
<dt><span>parent</span></dt>
<dd><p>The parent (arduino) for this device
 </p></dd>
<dt><span>pins</span></dt>
<dd><p>pins used by this object
 </p></dd>
<dt><span>triggerpin</span></dt>
<dd><p>trigger used for created object
 </p></dd>
<dt><span>echopin</span></dt>
<dd><p>Echo pin set for object
 </p></dd>
<dt><span>outputformat</span></dt>
<dd><p>Output format for the created object
 </p></dd>
</dl>
<p><strong>See also:</strong> arduino, readDistance, readEchoTime.
 </p></dd></dl>
<hr>
</div>
</div>
<div class="section" id="Arduino-Addons">
<div class="header">
<p>
Next: <a href="#Arduino-Sensors" accesskey="n" rel="next">Arduino Sensors</a>, Previous: <a href="#Arduino-Ultrasonic-Functions" accesskey="p" rel="prev">Arduino Ultrasonic Functions</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Arduino-Addons-1"></span><h3 class="section">9.11 Arduino Addons</h3>
<span id="index-Arduino-Addons"></span>
<ul class="section-toc">
<li><a href="#addon" accesskey="1">addon</a></li>
<li><a href="#arduinoioaddons_002eEEPRomAddon_002eEEPRom" accesskey="2">arduinoioaddons.EEPRomAddon.EEPRom</a></li>
<li><a href="#arduinoioaddons_002eExampleAddon_002eEcho" accesskey="3">arduinoioaddons.ExampleAddon.Echo</a></li>
<li><a href="#arduinoioaddons_002eExampleLCD_002eLCD" accesskey="4">arduinoioaddons.ExampleLCD.LCD</a></li>
<li><a href="#arduinoioaddons_002eRTCAddon_002eDS1307" accesskey="5">arduinoioaddons.RTCAddon.DS1307</a></li>
<li><a href="#arduinoioaddons_002eSimpleStepper_002eSimpleStepper" accesskey="6">arduinoioaddons.SimpleStepper.SimpleStepper</a></li>
<li><a href="#arduinoioaddons_002eadafruit_002edcmotorv2" accesskey="7">arduinoioaddons.adafruit.dcmotorv2</a></li>
<li><a href="#arduinoioaddons_002eadafruit_002emotorshieldv2" accesskey="8">arduinoioaddons.adafruit.motorshieldv2</a></li>
<li><a href="#arduinoioaddons_002eadafruit_002estepper" accesskey="9">arduinoioaddons.adafruit.stepper</a></li>
</ul>
<div class="subsection" id="addon">
<h4 class="subsection">9.11.1 addon</h4>
<span id="index-addon"></span>
<dl class="def">
<dt id="index-addon-1"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>addon</strong> <em>(<var>ar</var>, <var>addonname</var>)</em><a href='#index-addon-1' class='copiable-anchor'></a></span></dt>
<dt id="index-addon-2"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>addon</strong> <em>(<var>ar</var>, <var>addonname</var>, varargs)</em><a href='#index-addon-2' class='copiable-anchor'></a></span></dt>
<dd><p>Create an addon object using the addon named class.
</p>
<span id="Inputs-100"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>addonname</var> - the name of the addon to create. The addon name can be a user
 addon or an inbuilt addon, however must appear in the listArduinoLibraries
 output and have been programmed onto the arduino.
</p>
<p><var>varargs</var> - optional values that will be provided verbatim to the
 the addon class constructor.
</p>
<span id="Outputs-59"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> - cell array of string library names.
</p>
<p><strong>See also:</strong> arduino, arduinosetup, listArduinoLibraries.
 </p></dd></dl>
</div>
<div class="subsection" id="arduinoioaddons_002eEEPRomAddon_002eEEPRom">
<h4 class="subsection">9.11.2 arduinoioaddons.EEPRomAddon.EEPRom</h4>
<span id="index-EEPRom"></span>
<dl class="def">
<dt id="index-arduinoioaddons_002eEEPRomAddon_002eEEPRom"><span class="category">: </span><span><em></em> <strong>arduinoioaddons.EEPRomAddon.EEPRom</strong><a href='#index-arduinoioaddons_002eEEPRomAddon_002eEEPRom' class='copiable-anchor'></a></span></dt>
<dd><p>EEPROM addon for arduino
</p>
<p>Allows read and write of uint8 data to the onboard arduino EEPROM.
</p>
<span id="Example-11"></span><h4 class="subsubheading">Example</h4>
<p>Assuming eeprom addon has been programmed into the Arduino:
 </p><div class="example">
<pre class="example"> a = arduino ();
 e = addon (a, &quot;eepromaddon/eeprom&quot;);
 write (e, 0, uint8(&quot;hello world&quot;));
 str = uint8( read(e, 0, 11) )
 </pre></div>
<p><strong>See also:</strong> addon.
 </p></dd></dl>
<span id="Properties-9"></span><h4 class="subsubheading">Properties</h4>
<p><var>length</var> - Size of the EEPROM.
</p>
<span id="Methods"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-EEPRom-1"><span class="category">: </span><span><em><var>eeprom</var> =</em> <strong>EEPRom</strong> <em>()</em><a href='#index-EEPRom-1' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create EEPROM device.
 </p><span id="Outputs-60"></span><h4 class="subsubheading">Outputs</h4>
<p><var>eeprom</var> - created EEPROM device.
 </p></dd></dl>
<dl class="def">
<dt id="index-erase"><span class="category">: </span><span><em></em> <strong>erase</strong> <em>()</em><a href='#index-erase' class='copiable-anchor'></a></span></dt>
<dd><p>Erase all values in EEPROM (Effectively setting the 0xFF)
 </p></dd></dl>
<dl class="def">
<dt id="index-write-13"><span class="category">: </span><span><em></em> <strong>write</strong> <em>(<var>address</var>, <var>uintdata</var>)</em><a href='#index-write-13' class='copiable-anchor'></a></span></dt>
<dd><p>Write data to EEPROM at the provided address.
 </p><span id="Inputs-101"></span><h4 class="subsubheading">Inputs</h4>
<p><var>address</var> - start address to write data to, should be an
 integer between 0 and the size of the EEPROM.
</p>
<p><var>uintdata</var> a value or array of uint8 data to write to EEPROM.
 </p></dd></dl>
<dl class="def">
<dt id="index-read-15"><span class="category">: </span><span><em><var>data</var> =</em> <strong>read</strong> <em>(<var>address</var>)</em><a href='#index-read-15' class='copiable-anchor'></a></span></dt>
<dt id="index-read-16"><span class="category">: </span><span><em><var>data</var> =</em> <strong>read</strong> <em>(<var>address</var>, <var>count</var>)</em><a href='#index-read-16' class='copiable-anchor'></a></span></dt>
<dd><p>Read data from starting address of EEPROM.
 </p><span id="Inputs-102"></span><h4 class="subsubheading">Inputs</h4>
<p><var>address</var> - start address to read data from, should be an
 integer between 0 and the size of the EEPROM.
</p>
<p><var>count</var> - Number of uint8 values to read from the EEPROM (default is 1)
</p>
<span id="Outputs-61"></span><h4 class="subsubheading">Outputs</h4>
<p><var>data</var> a value or array of uint8 data read from the EEPROM.
 </p></dd></dl>
</div>
<div class="subsection" id="arduinoioaddons_002eExampleAddon_002eEcho">
<h4 class="subsection">9.11.3 arduinoioaddons.ExampleAddon.Echo</h4>
<span id="index-Echo"></span>
<dl class="def">
<dt id="index-arduinoioaddons_002eExampleAddon_002eEcho"><span class="category">: </span><span><em></em> <strong>arduinoioaddons.ExampleAddon.Echo</strong><a href='#index-arduinoioaddons_002eExampleAddon_002eEcho' class='copiable-anchor'></a></span></dt>
<dd><p>Basic Example matlab/octave code to illustrate creating
 a user addon.
</p>
<p><strong>See also:</strong> addon.
 </p></dd></dl>
<span id="Properties-10"></span><h4 class="subsubheading">Properties</h4>
<p><var>Parent</var> - the parent arduino object.
</p>
<p><var>Pins</var> - the pins allocated the addon.
</p>
<span id="Methods-1"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-Echo_0028arObj_0029"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>Echo(arObj)</strong><a href='#index-Echo_0028arObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create Echo addon
 </p><span id="Inputs-103"></span><h4 class="subsubheading">Inputs</h4>
<p><var>arObj</var> - the arduino parent object
</p>
<span id="Outputs-62"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created Echo object
 </p></dd></dl>
<dl class="def">
<dt id="index-shout_0028text_0029"><span class="category">: </span><span><em><var>response</var> =</em> <strong>shout(<var>text</var>)</strong><a href='#index-shout_0028text_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Send text to arduino and receive back the echoed reply
</p>
<span id="Inputs-104"></span><h4 class="subsubheading">Inputs</h4>
<p><var>text</var> - text to send to arduino
</p>
<span id="Outputs-63"></span><h4 class="subsubheading">Outputs</h4>
<p><var>response</var> - response from the arduino, which should be the same as
 the input text.
 </p></dd></dl>
</div>
<div class="subsection" id="arduinoioaddons_002eExampleLCD_002eLCD">
<h4 class="subsection">9.11.4 arduinoioaddons.ExampleLCD.LCD</h4>
<span id="index-LCD"></span>
<dl class="def">
<dt id="index-arduinoioaddons_002eLCDAddon_002eLCD"><span class="category">: </span><span><em></em> <strong>arduinoioaddons.LCDAddon.LCD</strong><a href='#index-arduinoioaddons_002eLCDAddon_002eLCD' class='copiable-anchor'></a></span></dt>
<dd><p>Basic Example octave addon for LCD
</p>
<p>Allows basic manipulation of an LCD as a illustration of using
 the addon functionality.
 </p><span id="Example-12"></span><h4 class="subsubheading">Example</h4>
<p>Assuming the arduino has been programmed with the lcd addon:
 </p><div class="example">
<pre class="example"> a = arduino();
 lcd = addon(a, &quot;examplelcd/lcd&quot;, &quot;d8&quot;, &quot;d9&quot;, &quot;d4&quot;, &quot;d5&quot;, &quot;d6&quot;, &quot;d7&quot;)
 clearLCD(lcd);
 printLCD(lcd, &quot;Hello&quot;);
 # go to next line
 gotoLCD(lcd, 0, 1);
 printLCD(lcd, &quot;World&quot;);
 </pre></div>
<p><strong>See also:</strong> addon.
 </p></dd></dl>
<span id="Properties-11"></span><h4 class="subsubheading">Properties</h4>
<p><var>Pins</var> - the pins allocated the LCD display.
</p>
<span id="Methods-2"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-LCD_0028arObj_002c"><span class="category">: </span><span><em><var>lcd</var> =</em> <strong>LCD(arObj,</strong> <em>rs, enable, d0, d1, d2, d3)</em><a href='#index-LCD_0028arObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create LCD device
 </p><span id="Inputs-105"></span><h4 class="subsubheading">Inputs</h4>
<p><var>arObj</var> - the arduino parent object
</p>
<p><var>rs</var> - the pin to use for the rs line.
</p>
<p><var>enable</var> - the pin to use for the enable line.
</p>
<p><var>d0</var> - the pin to use for the d0 line.
</p>
<p><var>d1</var> - the pin to use for the d1 line.
</p>
<p><var>d2</var> - the pin to use for the d2 line.
</p>
<p><var>d3</var> - the pin to use for the d3 line.
</p>
<span id="Outputs-64"></span><h4 class="subsubheading">Outputs</h4>
<p><var>lcd</var> - created LCD object
 </p></dd></dl>
<dl class="def">
<dt id="index-freeLCD_0028_0029"><span class="category">: </span><span><em></em> <strong>freeLCD()</strong><a href='#index-freeLCD_0028_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Free the LCD
</p>
<p>Should be called before discarding the LCD
 </p><span id="Inputs-106"></span><h4 class="subsubheading">Inputs</h4>
<p>None.
</p>
<span id="Outputs-65"></span><h4 class="subsubheading">Outputs</h4>
<p>None.
 </p></dd></dl>
<dl class="def">
<dt id="index-clearLCD_0028_0029"><span class="category">: </span><span><em></em> <strong>clearLCD()</strong><a href='#index-clearLCD_0028_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Clear the LCD display and set the cursor position to the home position.
</p>
<span id="Inputs-107"></span><h4 class="subsubheading">Inputs</h4>
<p>None.
</p>
<span id="Outputs-66"></span><h4 class="subsubheading">Outputs</h4>
<p>None.
 </p></dd></dl>
<dl class="def">
<dt id="index-printLCD_0028text_0029"><span class="category">: </span><span><em></em> <strong>printLCD(<var>text</var>)</strong><a href='#index-printLCD_0028text_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Display text on LCD starting at the current cursor position.
</p>
<span id="Inputs-108"></span><h4 class="subsubheading">Inputs</h4>
<p><var>text</var> - text to display on LCD
</p>
<span id="Outputs-67"></span><h4 class="subsubheading">Outputs</h4>
<p>None.
 </p></dd></dl>
<dl class="def">
<dt id="index-gotoLCD_0028col_002c"><span class="category">: </span><span><em></em> <strong>gotoLCD(<var>col</var>,</strong> <em><var>row</var>)</em><a href='#index-gotoLCD_0028col_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Set the cursor position to row, col
</p>
<span id="Inputs-109"></span><h4 class="subsubheading">Inputs</h4>
<p><var>col</var> - 0 indexed LCD column to position to.
</p>
<p><var>row</var> - 0 indexed LCD row to position to.
</p>
<span id="Outputs-68"></span><h4 class="subsubheading">Outputs</h4>
<p>None.
 </p></dd></dl>
</div>
<div class="subsection" id="arduinoioaddons_002eRTCAddon_002eDS1307">
<h4 class="subsection">9.11.5 arduinoioaddons.RTCAddon.DS1307</h4>
<span id="index-DS1307"></span>
<dl class="def">
<dt id="index-arduinoioaddons_002eRTCAddon_002eDS1307"><span class="category">: </span><span><em></em> <strong>arduinoioaddons.RTCAddon.DS1307</strong><a href='#index-arduinoioaddons_002eRTCAddon_002eDS1307' class='copiable-anchor'></a></span></dt>
<dd><p>DS1307 addon
</p>
<p><strong>See also:</strong> addon.
 </p></dd></dl>
<span id="Properties-12"></span><h4 class="subsubheading">Properties</h4>
<p><var>Parent</var> - the parent arduino object.
</p>
<p><var>Pins</var> - the pins allocated the addon.
</p>
<span id="Methods-3"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-DS1307_0028arObj_0029"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>DS1307(<var>arObj</var>)</strong><a href='#index-DS1307_0028arObj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-DS1307_0028arObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>DS1307(<var>arObj</var>,</strong> <em><var>propertyname, propertyvalue</var> ....)</em><a href='#index-DS1307_0028arObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create DS1307 addon
 </p><span id="Inputs-110"></span><h4 class="subsubheading">Inputs</h4>
<p><var>arObj</var> - the arduino parent object
</p>
<p><var>propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 </p><dl compact="compact">
<dt><span>address</span></dt>
<dd><p>I2C address of the DS1307 (default 0x68)
 </p></dd>
</dl>
<span id="Outputs-69"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created DS1307 object
</p>
<span id="Example-13"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 rtc = addon(a, &quot;rtcaddon/ds1307&quot;)
 </code>
 </pre></div>
</dd></dl>
<dl class="def">
<dt id="index-clock_0028dsObj_0029"><span class="category">: </span><span><em><var>date</var> =</em> <strong>clock(<var>dsObj</var>)</strong><a href='#index-clock_0028dsObj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-clock_0028dsObj_002c"><span class="category">: </span><span><em></em> <strong>clock(<var>dsObj</var>,</strong> <em><var>date</var>)</em><a href='#index-clock_0028dsObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Get/set the DS1307 clock
</p>
<span id="Inputs-111"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the ds1307 object
</p>
<p><var>date</var> - a date vector in same format as datevec and clock
</p>
<span id="Outputs-70"></span><h4 class="subsubheading">Outputs</h4>
<p><var>date</var> - a date vector in same format as datevec and clock
</p>
<span id="Example-14"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 rtc = addon(a, &quot;rtcaddon/ds1307&quot;)
 # get and display rtc time as a date string
 datestr(rtc.clock)
 </code>
 </pre></div>
<p><strong>See also:</strong> datevec.
 </p></dd></dl>
<dl class="def">
<dt id="index-control_0028dsObj_0029"><span class="category">: </span><span><em><var>ctrl</var> =</em> <strong>control(<var>dsObj</var>)</strong><a href='#index-control_0028dsObj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-control_0028dsObj_002c"><span class="category">: </span><span><em></em> <strong>control(<var>dsObj</var>,</strong> <em><var>ctrl</var>)</em><a href='#index-control_0028dsObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Get/set the DS1307 clock
</p>
<span id="Inputs-112"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the ds1307 object
</p>
<p><var>ctrl</var> - a structure containing the control bit fields.
</p>
<span id="Outputs-71"></span><h4 class="subsubheading">Outputs</h4>
<p><var>ctrl</var> - a structure containing the control bit fields.
</p>
<p>Control structure fields are:
 Current properties are:
 </p><dl compact="compact">
<dt><span>out</span></dt>
<dd><p>Out bit in the control register
 </p></dd>
<dt><span>sqwe</span></dt>
<dd><p>Square wave enable bit in control register
 </p></dd>
<dt><span>rs</span></dt>
<dd><p>The combined RS0, RS1 value
 </p></dd>
</dl>
</dd></dl>
<dl class="def">
<dt id="index-isstarted_0028dsObj_0029"><span class="category">: </span><span><em><var>YN</var> =</em> <strong>isstarted(<var>dsObj</var>)</strong><a href='#index-isstarted_0028dsObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Get whether the RTC clock is currently counting time
</p>
<span id="Inputs-113"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the ds1307 object
</p>
<span id="Outputs-72"></span><h4 class="subsubheading">Outputs</h4>
<p><var>YN</var> - returns true if the RTC is counting
</p>
<p><strong>See also:</strong> start, stop.
 </p></dd></dl>
<dl class="def">
<dt id="index-start_0028dsObj_0029"><span class="category">: </span><span><em></em> <strong>start(<var>dsObj</var>)</strong><a href='#index-start_0028dsObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Start the RTC counting
</p>
<span id="Inputs-114"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the ds1307 object
</p>
<span id="Outputs-73"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>
<p><strong>See also:</strong> datevec.
 </p></dd></dl>
<dl class="def">
<dt id="index-stop_0028dsObj_0029"><span class="category">: </span><span><em></em> <strong>stop(<var>dsObj</var>)</strong><a href='#index-stop_0028dsObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Stop the RTC counting
</p>
<span id="Inputs-115"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the ds1307 object
</p>
<span id="Outputs-74"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>
<p><strong>See also:</strong> datevec.
 </p></dd></dl>
</div>
<div class="subsection" id="arduinoioaddons_002eSimpleStepper_002eSimpleStepper">
<h4 class="subsection">9.11.6 arduinoioaddons.SimpleStepper.SimpleStepper</h4>
<span id="index-SimpleStepper"></span>
<dl class="def">
<dt id="index-arduinoioaddons_002eSimpleStepper"><span class="category">: </span><span><em></em> <strong>arduinoioaddons.SimpleStepper</strong><a href='#index-arduinoioaddons_002eSimpleStepper' class='copiable-anchor'></a></span></dt>
<dd><p>Stepper class for stepper control using ULN2003 and compatible drivers
 </p></dd></dl>
<span id="Properties-13"></span><h4 class="subsubheading">Properties</h4>
<dl compact="compact">
<dt><span><var>Id</var></span></dt>
<dd><p>Id of the stepper (Read only)
 </p></dd>
<dt><span><var>Speed</var></span></dt>
<dd><p>Number of steps to do per second.
 </p></dd>
<dt><span>Status</span></dt>
<dd><p>Status of stepper (Read only).
 0 = not moving, 1 = moving, 2 = rotating
 </p></dd>
<dt><span>Parent</span></dt>
<dd><p>the Arduino parent (read only)
 </p></dd>
<dt><span>Pins</span></dt>
<dd><p>the pins used for the stepper (read only)
 </p></dd>
</dl>
<span id="Methods-4"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-SimpleStepper_0028aObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>SimpleStepper(<var>aObj</var>,</strong> <em><var>pin1</var>, <var>pin2</var>, <var>pin3</var>, <var>pin4</var>)</em><a href='#index-SimpleStepper_0028aObj_002c' class='copiable-anchor'></a></span></dt>
<dt id="index-SimpleStepper_0028aObj_002c-1"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>SimpleStepper(<var>aObj</var>,</strong> <em><var>pin1</var>, <var>pin2</var>, <var>pin3</var>, <var>pin4</var>, <var>pin5</var>)</em><a href='#index-SimpleStepper_0028aObj_002c-1' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create a stepper object
 </p><span id="Inputs-116"></span><h4 class="subsubheading">Inputs</h4>
<p><var>aObj</var> - The arduino
</p>
<p><var>pin1</var> - The first pin of the controller
</p>
<p><var>pin2</var> - The second pin of the controller
</p>
<p><var>pin3</var> - The third pin of the controller
</p>
<p><var>pin4</var> - The fourth pin of the controller
</p>
<p><var>pin5</var> - The fifth pin of the controller
</p>
<span id="Outputs-75"></span><h4 class="subsubheading">Outputs</h4>
<p><var>s</var> - a simplestepper object
</p>
<span id="Example-15"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 # create stepper object
 s = addon(a, &quot;simplestepper/simplestepper&quot;, &quot;d2&quot;, &quot;d3&quot;, &quot;d4&quot;, &quot;d5&quot;)
 # start rotating left
 s.rotate(-1);
 </code>
 </pre></div>
<p><strong>See also:</strong> addon.
 </p></dd></dl>
<dl class="def">
<dt id="index-move_0028sObj_002c"><span class="category">: </span><span><em></em> <strong>move(<var>sObj</var>,</strong> <em><var>steps</var>)</em><a href='#index-move_0028sObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Move the motor the specified number of steps using the configured Speed.
</p>
<span id="Inputs-117"></span><h4 class="subsubheading">Inputs</h4>
<p><var>sObj</var> - the stepper object
</p>
<p><var>steps</var> - the number of steps to move. steps less than 0 will be moving left.
</p>
<span id="Outputs-76"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>
<p><strong>See also:</strong> rotate.
 </p></dd></dl>
<dl class="def">
<dt id="index-rotate_0028sObj_002c"><span class="category">: </span><span><em></em> <strong>rotate(<var>sObj</var>,</strong> <em><var>dir</var>)</em><a href='#index-rotate_0028sObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Start steppermotor moving in the specified direction using the configured Speed.
</p>
<span id="Inputs-118"></span><h4 class="subsubheading">Inputs</h4>
<p><var>sObj</var> - the stepper object
</p>
<p><var>dir</var> - Direction to move. -1 = left, 0 = stop, 1 = right.
</p>
<span id="Outputs-77"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>
<p><strong>See also:</strong> move.
 </p></dd></dl>
<dl class="def">
<dt id="index-release_0028sObj_0029"><span class="category">: </span><span><em></em> <strong>release(<var>sObj</var>)</strong><a href='#index-release_0028sObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Release this stepper motor
</p>
<span id="Inputs-119"></span><h4 class="subsubheading">Inputs</h4>
<p><var>sObj</var> - the stepper object
</p>
<span id="Outputs-78"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>
</dd></dl>
</div>
<div class="subsection" id="arduinoioaddons_002eadafruit_002edcmotorv2">
<h4 class="subsection">9.11.7 arduinoioaddons.adafruit.dcmotorv2</h4>
<span id="index-dcmotorv2"></span>
<dl class="def">
<dt id="index-arduinoioaddons_002eadafruit_002edcmotorv2"><span class="category">: </span><span><em></em> <strong>arduinoioaddons.adafruit.dcmotorv2</strong><a href='#index-arduinoioaddons_002eadafruit_002edcmotorv2' class='copiable-anchor'></a></span></dt>
<dd><p>DC Motor class for dc motor control on the adafruit motor shield
</p>
<p><strong>See also:</strong> arduinoioaddons.adafruit.motorshieldv2.
 </p></dd></dl>
<span id="Properties-14"></span><h4 class="subsubheading">Properties</h4>
<p><var>Speed</var> - The speed value set for the motor
</p>
<p><var>Parent</var> - The parent shield for object (read only)
</p>
<p><var>MotorNumber</var> - The motor number (read only) values 1-4
</p>
<p><var>IsRunning</var> - boolean for if the motor is started (read only)
</p>
<span id="Methods-5"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-dcmotorv2_0028mObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>dcmotorv2(<var>mObj</var>,</strong> <em><var>mnum</var>)</em><a href='#index-dcmotorv2_0028mObj_002c' class='copiable-anchor'></a></span></dt>
<dt id="index-dcmotorv2_0028mObj_002c-1"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>dcmotorv2(<var>mObj</var>,</strong> <em><var>mnum</var>, <var>propertyname, propertyvalue</var> ....)</em><a href='#index-dcmotorv2_0028mObj_002c-1' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create dcmotor object
 </p><span id="Inputs-120"></span><h4 class="subsubheading">Inputs</h4>
<p><var>mObj</var> - the motor shield object
</p>
<p><var>mnum</var> - The motor number (1 - 4)
</p>
<p><var>propertyname, propertyvalue</var> - Optional property name/value
 pairs to pass to motor object.
</p>
<p>Current known properties are:
 </p><dl compact="compact">
<dt><span>Speed</span></dt>
<dd><p>Initial speed (default 0). Should be a value between -1 and 1.
 </p></dd>
</dl>
<span id="Outputs-79"></span><h4 class="subsubheading">Outputs</h4>
<p><var>s</var> - a dcmotorv2 object
</p>
<span id="Example-16"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 ms = addon(a, &quot;adafruit/motorshieldv2&quot;)
 mtr = dcmotor(ms, 1)
 </code>
 </pre></div>
</dd></dl>
<dl class="def">
<dt id="index-start_0028dcObj_0029"><span class="category">: </span><span><em></em> <strong>start(<var>dcObj</var>)</strong><a href='#index-start_0028dcObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Start the motor moving in previously set speed/direction
</p>
<span id="Inputs-121"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dcObj</var> - the dcmotor object
</p>
<span id="Outputs-80"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>
<p><strong>See also:</strong> adafruit.motorshieldv2.
 </p></dd></dl>
<dl class="def">
<dt id="index-stop_0028dcObj_0029"><span class="category">: </span><span><em></em> <strong>stop(<var>dcObj</var>)</strong><a href='#index-stop_0028dcObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Stop the motor moving
</p>
<span id="Inputs-122"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dcObj</var> - the dcmotor object
</p>
<span id="Outputs-81"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>
<p><strong>See also:</strong> adafruit.motorshieldv2.
 </p></dd></dl>
</div>
<div class="subsection" id="arduinoioaddons_002eadafruit_002emotorshieldv2">
<h4 class="subsection">9.11.8 arduinoioaddons.adafruit.motorshieldv2</h4>
<span id="index-motorshieldv2"></span>
<dl class="def">
<dt id="index-arduinoioaddons_002eadafruit_002emotorshieldv2"><span class="category">: </span><span><em></em> <strong>arduinoioaddons.adafruit.motorshieldv2</strong><a href='#index-arduinoioaddons_002eadafruit_002emotorshieldv2' class='copiable-anchor'></a></span></dt>
<dd><p>Adafruit motor shield addon
</p>
<p><strong>See also:</strong> addon.
 </p></dd></dl>
<span id="Properties-15"></span><h4 class="subsubheading">Properties</h4>
<p><var>Parent</var> - the parent arduino object.
</p>
<p><var>Pins</var> - the pins allocated the addon.
</p>
<p><var>I2CAddress</var> - the i2c address used for accessing this shield.
</p>
<p><var>PWMFrequency</var> - the set PWM frequency for this shield.
</p>
<span id="Methods-6"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-motorshieldv2_0028arObj_0029"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>motorshieldv2(<var>arObj</var>)</strong><a href='#index-motorshieldv2_0028arObj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-motorshieldv2_0028arObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>motorshieldv2(<var>arObj</var>,</strong> <em><var>propertyname, propertyvalue</var> ....)</em><a href='#index-motorshieldv2_0028arObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create motorshieldv2 addon object
 </p><span id="Inputs-123"></span><h4 class="subsubheading">Inputs</h4>
<p><var>arObj</var> - the arduino parent object
</p>
<p><var>propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 </p><dl compact="compact">
<dt><span>address</span></dt>
<dd><p>I2C address of the motor shield  (default 0x60)
 </p></dd>
<dt><span>pwmfrequency</span></dt>
<dd><p>PWM Frequency to set on shield  (default 1600)
 </p></dd>
</dl>
<span id="Outputs-82"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created  motorshieldv2 object
</p>
<span id="Example-17"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 mtr = addon(a, &quot;adafruit/motorshieldv2&quot;)
 </code>
 </pre></div>
</dd></dl>
<dl class="def">
<dt id="index-servo_0028mObj_002c"><span class="category">: </span><span><em><var>s</var> =</em> <strong>servo(<var>mObj</var>,</strong> <em><var>mtrnum</var>)</em><a href='#index-servo_0028mObj_002c' class='copiable-anchor'></a></span></dt>
<dt id="index-servo_0028mObj_002c-1"><span class="category">: </span><span><em><var>s</var> =</em> <strong>servo(<var>mObj</var>,</strong> <em><var>mtrnum</var>, <var>propertyname</var>, <var>propertyvalue</var> ...)</em><a href='#index-servo_0028mObj_002c-1' class='copiable-anchor'></a></span></dt>
<dd><p>Create a servo object
</p>
<span id="Inputs-124"></span><h4 class="subsubheading">Inputs</h4>
<p><var>mObj</var> - the motor shield object
</p>
<p><var>mtrnum</var> - The servo motor number, where 1 is servo on
 pin &quot;d10&quot; and 2 is a servo on pin &quot;d9&quot;
</p>
<p><var>propertyname</var>, <var>propertyvalue</var> - Optional property
 name/value pairs to pass to servo object.
</p>
<p>Properties are the same as the base servo object.
</p>
<span id="Outputs-83"></span><h4 class="subsubheading">Outputs</h4>
<p><var>s</var> - a servo object
</p>
<span id="Example-18"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 ms = addon(a, &quot;adafruit/motorshieldv2&quot;)
 # get servo 1 (servo on pin D10)
 s = ms.servo(1)
 </code>
 </pre></div>
<p>The function if the equivalent of calling the arduino.servo with
 the D9 or D10 pin has the input pin.
</p>
<p><strong>See also:</strong> servo.
 </p></dd></dl>
<dl class="def">
<dt id="index-stepper_0028mObj_002c"><span class="category">: </span><span><em><var>s</var> =</em> <strong>stepper(<var>mObj</var>,</strong> <em><var>mtrnum</var>, <var>stepsperrev</var>)</em><a href='#index-stepper_0028mObj_002c' class='copiable-anchor'></a></span></dt>
<dt id="index-stepper_0028mObj_002c-1"><span class="category">: </span><span><em><var>s</var> =</em> <strong>stepper(<var>mObj</var>,</strong> <em><var>mtrnum</var>, <var>stepsperrev</var>, <var>propertyname</var>, <var>propertyvalue</var> ...)</em><a href='#index-stepper_0028mObj_002c-1' class='copiable-anchor'></a></span></dt>
<dd><p>Create a stepper motor object
</p>
<span id="Inputs-125"></span><h4 class="subsubheading">Inputs</h4>
<p><var>mObj</var> - the motor shield object
</p>
<p><var>mtrnum</var> - The stepper motor number (1 or 2)
</p>
<p><var>stepsperrev</var> - Number of steps per revolution.
</p>
<p><var>propertyname</var>, <var>propertyvalue</var> - Optional property
 name/value pairs to pass to stepper object.
</p>
<span id="Outputs-84"></span><h4 class="subsubheading">Outputs</h4>
<p><var>s</var> - a stepper object
</p>
</dd></dl>
<dl class="def">
<dt id="index-dcmotor_0028mObj_002c"><span class="category">: </span><span><em><var>s</var> =</em> <strong>dcmotor(<var>mObj</var>,</strong> <em><var>mtrnum</var>)</em><a href='#index-dcmotor_0028mObj_002c' class='copiable-anchor'></a></span></dt>
<dt id="index-dcmotor_0028mObj_002c-1"><span class="category">: </span><span><em><var>s</var> =</em> <strong>dcmotor(<var>mObj</var>,</strong> <em><var>mtrnum</var>, <var>propertyname</var>, <var>propertyvalue</var> ...)</em><a href='#index-dcmotor_0028mObj_002c-1' class='copiable-anchor'></a></span></dt>
<dd><p>Create a dcmotor motor object
</p>
<span id="Inputs-126"></span><h4 class="subsubheading">Inputs</h4>
<p><var>mObj</var> - the motor shield object
</p>
<p><var>mtrnum</var> - The motor number (1 - 4)
</p>
<p><var>propertyname</var>, <var>propertyvalue</var> - Optional property
 name/value pairs to pass to motor object.
</p>
<span id="Outputs-85"></span><h4 class="subsubheading">Outputs</h4>
<p><var>s</var> - a dcmotorv2 object
</p>
</dd></dl>
</div>
<div class="subsection" id="arduinoioaddons_002eadafruit_002estepper">
<h4 class="subsection">9.11.9 arduinoioaddons.adafruit.stepper</h4>
<span id="index-stepper"></span>
<dl class="def">
<dt id="index-arduinoioaddons_002eadafruit_002estepper"><span class="category">: </span><span><em></em> <strong>arduinoioaddons.adafruit.stepper</strong><a href='#index-arduinoioaddons_002eadafruit_002estepper' class='copiable-anchor'></a></span></dt>
<dd><p>Stepper class for stepper control on the adafruit motor shield
</p>
<p><strong>See also:</strong> arduinoioaddons.adafruit.motorshieldv2.
 </p></dd></dl>
<span id="Properties-16"></span><h4 class="subsubheading">Properties</h4>
<dl compact="compact">
<dt><span><var>RPM</var></span></dt>
<dd><p>The rpm value set for the stepper motor
 </p></dd>
<dt><span>StepType</span></dt>
<dd><p>the StepType for the stepper (string) which can be &quot;single&quot;,
 &quot;double&quot;, &quot;interleave&quot; or &quot;microstep&quot;
 </p></dd>
<dt><span>StepsPerRevolution</span></dt>
<dd><p>the StepsPerRevoluion for the stepper (read only)
 </p></dd>
<dt><span>MotorNumber</span></dt>
<dd><p>the motor number for the stepper (read only) value will be 1 or 2.
 </p></dd>
<dt><span>Parent</span></dt>
<dd><p>the parent shield of this stepper (read only)
 </p></dd>
</dl>
<span id="Methods-7"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-stepper_0028mObj_002c-2"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>stepper(<var>mObj</var>,</strong> <em><var>mnum</var>, <var>stepsperrev</var>)</em><a href='#index-stepper_0028mObj_002c-2' class='copiable-anchor'></a></span></dt>
<dt id="index-stepper_0028mObj_002c-3"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>stepper(<var>mObj</var>,</strong> <em><var>mnum</var>, <var>stepsperrev</var>, <var>propertyname, propertyvalue</var> ....)</em><a href='#index-stepper_0028mObj_002c-3' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create dcmotor object
 </p><span id="Inputs-127"></span><h4 class="subsubheading">Inputs</h4>
<p><var>mObj</var> - the motor shield object
</p>
<p><var>mnum</var> - The motor number (1 or 2)
</p>
<p><var>stepsperrev</var> - Number of steps per revolution.
</p>
<p><var>propertyname, propertyvalue</var> - Optional property
 name/value pairs to pass to motor object.
</p>
<p>Current known properties are:
 </p><dl compact="compact">
<dt><span>RPM</span></dt>
<dd><p>the RPM for the stepper (revolutions per minute)
 </p></dd>
<dt><span>StepType</span></dt>
<dd><p>the StepType for the stepper (string) which can be
 &quot;single&quot;, &quot;double&quot;, &quot;interleave&quot; or &quot;microstep&quot;
 </p></dd>
</dl>
<span id="Outputs-86"></span><h4 class="subsubheading">Outputs</h4>
<p><var>s</var> - a stepper object
</p>
<span id="Example-19"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 ms = addon(a, &quot;adafruit/motorshieldv2&quot;)
 mtr = stepper(ms, 1, 200)
 </code>
 </pre></div>
</dd></dl>
<dl class="def">
<dt id="index-move_0028sObj_002c-1"><span class="category">: </span><span><em></em> <strong>move(<var>sObj</var>,</strong> <em><var>steps</var>)</em><a href='#index-move_0028sObj_002c-1' class='copiable-anchor'></a></span></dt>
<dd><p>Move the motor moving in the specified steps using the configured RPM.
</p>
<span id="Inputs-128"></span><h4 class="subsubheading">Inputs</h4>
<p><var>sObj</var> - the stepper object
</p>
<span id="Outputs-87"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>
<p><strong>See also:</strong> adafruit.motorshieldv2.
 </p></dd></dl>
<dl class="def">
<dt id="index-release_0028sObj_0029-1"><span class="category">: </span><span><em></em> <strong>release(<var>sObj</var>)</strong><a href='#index-release_0028sObj_0029-1' class='copiable-anchor'></a></span></dt>
<dd><p>Release this motor
</p>
<span id="Inputs-129"></span><h4 class="subsubheading">Inputs</h4>
<p><var>sObj</var> - the stepper object
</p>
<span id="Outputs-88"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>
<p><strong>See also:</strong> adafruit.motorshieldv2.
 </p></dd></dl>
<hr>
</div>
</div>
<div class="section" id="Arduino-Sensors">
<div class="header">
<p>
Next: <a href="#Arduino-I_002fO-package" accesskey="n" rel="next">Arduino I/O package</a>, Previous: <a href="#Arduino-Addons" accesskey="p" rel="prev">Arduino Addons</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Arduino-Sensors-1"></span><h3 class="section">9.12 Arduino Sensors</h3>
<span id="index-Arduino-Sensors"></span>
<ul class="section-toc">
<li><a href="#arduinosensor_002eDS1307" accesskey="1">arduinosensor.DS1307</a></li>
<li><a href="#arduinosensor_002eGUVAS12SD" accesskey="2">arduinosensor.GUVAS12SD</a></li>
<li><a href="#arduinosensor_002eMPC3002" accesskey="3">arduinosensor.MPC3002</a></li>
<li><a href="#arduinosensor_002eSI7021" accesskey="4">arduinosensor.SI7021</a></li>
</ul>
<div class="subsection" id="arduinosensor_002eDS1307">
<h4 class="subsection">9.12.1 arduinosensor.DS1307</h4>
<span id="index-DS1307-1"></span>
<dl class="def">
<dt id="index-arduinosensor_002eDS1307"><span class="category">: </span><span><em></em> <strong>arduinosensor.DS1307</strong><a href='#index-arduinosensor_002eDS1307' class='copiable-anchor'></a></span></dt>
<dd><p>DS1307 realtime clock sensor
 </p></dd></dl>
<span id="Methods-8"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-DS1307_0028arObj_0029-1"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>DS1307(<var>arObj</var>)</strong><a href='#index-DS1307_0028arObj_0029-1' class='copiable-anchor'></a></span></dt>
<dt id="index-DS1307_0028arObj_002c-1"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>DS1307(<var>arObj</var>,</strong> <em><var>propertyname, propertyvalue</var> ....)</em><a href='#index-DS1307_0028arObj_002c-1' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create DS1307 sensor
 </p><span id="Inputs-130"></span><h4 class="subsubheading">Inputs</h4>
<p><var>arObj</var> - the arduino parent object
</p>
<p><var>propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 Current properties are:
 </p><dl compact="compact">
<dt><span>i2caddress</span></dt>
<dd><p>I2C address of the DS1307 (default 0x68)
 </p></dd>
</dl>
<span id="Outputs-89"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created DS1307 object
</p>
<span id="Example-20"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 rtc = arduinosensor.DS1307(a)
 </code>
 </pre></div>
</dd></dl>
<dl class="def">
<dt id="index-clock_0028dsObj_0029-1"><span class="category">: </span><span><em><var>date</var> =</em> <strong>clock(<var>dsObj</var>)</strong><a href='#index-clock_0028dsObj_0029-1' class='copiable-anchor'></a></span></dt>
<dt id="index-clock_0028dsObj_002c-1"><span class="category">: </span><span><em></em> <strong>clock(<var>dsObj</var>,</strong> <em><var>date</var>)</em><a href='#index-clock_0028dsObj_002c-1' class='copiable-anchor'></a></span></dt>
<dd><p>Get/set the DS1307 clock
</p>
<span id="Inputs-131"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the ds1307 object
</p>
<p><var>date</var> - a date vector in same format as datevec and clock
</p>
<span id="Outputs-90"></span><h4 class="subsubheading">Outputs</h4>
<p><var>date</var> - a date vector in same format as datevec and clock
</p>
<span id="Example-21"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 rtc = arduinosensor.DS1307(a)
 # get and display rtc time as a date string
 datestr(rtc.clock)
 </code>
 </pre></div>
<p><strong>See also:</strong> datevec.
 </p></dd></dl>
<dl class="def">
<dt id="index-control_0028dsObj_0029-1"><span class="category">: </span><span><em><var>ctrl</var> =</em> <strong>control(<var>dsObj</var>)</strong><a href='#index-control_0028dsObj_0029-1' class='copiable-anchor'></a></span></dt>
<dt id="index-control_0028dsObj_002c-1"><span class="category">: </span><span><em></em> <strong>control(<var>dsObj</var>,</strong> <em><var>ctrl</var>)</em><a href='#index-control_0028dsObj_002c-1' class='copiable-anchor'></a></span></dt>
<dd><p>Get/set the DS1307 clock
</p>
<span id="Inputs-132"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the ds1307 object
</p>
<p><var>ctrl</var> - a structure containing the control bit fields.
</p>
<span id="Outputs-91"></span><h4 class="subsubheading">Outputs</h4>
<p><var>ctrl</var> - a structure containing the control bit fields.
</p>
<p>Control structure fields are:
 Current properties are:
 </p><dl compact="compact">
<dt><span>out</span></dt>
<dd><p>Out bit in the control register
 </p></dd>
<dt><span>sqwe</span></dt>
<dd><p>Square wave enable bit in control register
 </p></dd>
<dt><span>rs</span></dt>
<dd><p>The combined RS0, RS1 value
 </p></dd>
</dl>
</dd></dl>
<dl class="def">
<dt id="index-isstarted_0028dsObj_0029-1"><span class="category">: </span><span><em><var>YN</var> =</em> <strong>isstarted(<var>dsObj</var>)</strong><a href='#index-isstarted_0028dsObj_0029-1' class='copiable-anchor'></a></span></dt>
<dd><p>Get whether the RTC clock is currently counting time
</p>
<span id="Inputs-133"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the ds1307 object
</p>
<span id="Outputs-92"></span><h4 class="subsubheading">Outputs</h4>
<p><var>YN</var> - returns true if the RTC is counting
</p>
<p><strong>See also:</strong> start, stop.
 </p></dd></dl>
<dl class="def">
<dt id="index-start_0028dsObj_0029-1"><span class="category">: </span><span><em></em> <strong>start(<var>dsObj</var>)</strong><a href='#index-start_0028dsObj_0029-1' class='copiable-anchor'></a></span></dt>
<dd><p>Start the RTC counting
</p>
<span id="Inputs-134"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the ds1307 object
</p>
<span id="Outputs-93"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>
<p><strong>See also:</strong> datevec.
 </p></dd></dl>
<dl class="def">
<dt id="index-stop_0028dsObj_0029-1"><span class="category">: </span><span><em></em> <strong>stop(<var>dsObj</var>)</strong><a href='#index-stop_0028dsObj_0029-1' class='copiable-anchor'></a></span></dt>
<dd><p>Stop the RTC counting
</p>
<span id="Inputs-135"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the ds1307 object
</p>
<span id="Outputs-94"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>
<p><strong>See also:</strong> datevec.
 </p></dd></dl>
</div>
<div class="subsection" id="arduinosensor_002eGUVAS12SD">
<h4 class="subsection">9.12.2 arduinosensor.GUVAS12SD</h4>
<span id="index-GUVAS12SD"></span>
<dl class="def">
<dt id="index-arduinosensor_002eGUVAS12SD"><span class="category">: </span><span><em></em> <strong>arduinosensor.GUVAS12SD</strong><a href='#index-arduinosensor_002eGUVAS12SD' class='copiable-anchor'></a></span></dt>
<dd><p>A thin wrapper for the GUVAS12SD analog UV-B sensor
 </p></dd></dl>
<span id="Methods-9"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-GUVAS12SD_0028arObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>GUVAS12SD(<var>arObj</var>,</strong> <em><var>pin</var>)</em><a href='#index-GUVAS12SD_0028arObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create GUVAS12SD sensor
 </p><span id="Inputs-136"></span><h4 class="subsubheading">Inputs</h4>
<p><var>arObj</var> - the arduino parent object
</p>
<p><var>pin</var> - the analog pin that the sensor is connected to
</p>
<span id="Outputs-95"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created GUVAS12SD object
</p>
<span id="Example-22"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 # create sensor attached to pin a0.
 sensor = arduinosensor.GUVAS12SD(a, &quot;a0&quot;)
 </code>
 </pre></div>
</dd></dl>
<dl class="def">
<dt id="index-read_0028dsObj_0029"><span class="category">: </span><span><em><var>V</var> =</em> <strong>read(<var>dsObj</var>)</strong><a href='#index-read_0028dsObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the voltage of the sensor
</p>
<span id="Inputs-137"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the GUVAS12SD object
</p>
<span id="Outputs-96"></span><h4 class="subsubheading">Outputs</h4>
<p><var>V</var> - read voltage - effectively equivalent to
 readAnalogPin(arObj, pin).
</p>
<span id="Example-23"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 s = arduinosensor.GUVAS12SD(a)
 # voltage
 volts = s.read
 </code>
 </pre></div>
<p><strong>See also:</strong> arduinosensor.GUVAS12SD.
 </p></dd></dl>
<dl class="def">
<dt id="index-readIndex_0028dsObj_0029"><span class="category">: </span><span><em><var>Idx</var> =</em> <strong>readIndex(<var>dsObj</var>)</strong><a href='#index-readIndex_0028dsObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the UV index
</p>
<span id="Inputs-138"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the GUVAS12SD object
</p>
<span id="Outputs-97"></span><h4 class="subsubheading">Outputs</h4>
<p><var>Idx</var> - the sensor reading as a UV index reading
 </p></dd></dl>
<dl class="def">
<dt id="index-readuA_0028dsObj_0029"><span class="category">: </span><span><em><var>uA</var> =</em> <strong>readuA(<var>dsObj</var>)</strong><a href='#index-readuA_0028dsObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the uA of the sensor
</p>
<span id="Inputs-139"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the GUVAS12SD object
</p>
<span id="Outputs-98"></span><h4 class="subsubheading">Outputs</h4>
<p><var>uA</var> - the sensor reading as a uAmp value
 </p></dd></dl>
</div>
<div class="subsection" id="arduinosensor_002eMPC3002">
<h4 class="subsection">9.12.3 arduinosensor.MPC3002</h4>
<span id="index-MPC3002"></span>
<dl class="def">
<dt id="index-arduinosensor_002eMPC3002"><span class="category">: </span><span><em></em> <strong>arduinosensor.MPC3002</strong><a href='#index-arduinosensor_002eMPC3002' class='copiable-anchor'></a></span></dt>
<dd><p>MCP3002 ADC sensor
 </p></dd></dl>
<span id="Methods-10"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-MPC3002_0028arObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>MPC3002(<var>arObj</var>,</strong> <em><var>selectPin</var>)</em><a href='#index-MPC3002_0028arObj_002c' class='copiable-anchor'></a></span></dt>
<dt id="index-MPC3002_0028arObj_002c-1"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>MPC3002(<var>arObj</var>,</strong> <em><var>selectPin</var>, <var>propertyname, propertyvalue</var> ....)</em><a href='#index-MPC3002_0028arObj_002c-1' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create MPC3002 sensor
 </p><span id="Inputs-140"></span><h4 class="subsubheading">Inputs</h4>
<p><var>arObj</var> - the arduino parent object
</p>
<p><var>selectPin</var> - the SPI cs select pin
</p>
<p><var>propertyname, propertyvalue</var> - optional property name, value pairs.
</p>
<p>Current properties are:
 </p><dl compact="compact">
<dt><span>referenceVoltage</span></dt>
<dd><p>Reference voltage for scaling the ADC inputs (default 5.0)
 </p></dd>
</dl>
<span id="Outputs-99"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created MCP3002 object
</p>
<span id="Example-24"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 sensor = arduinosensor.MPC3002(a, &quot;d10&quot;)
 </code>
 </pre></div>
</dd></dl>
<dl class="def">
<dt id="index-readVoltage_0028dsObj_002c"><span class="category">: </span><span><em><var>voltage</var> =</em> <strong>readVoltage(<var>dsObj</var>,</strong> <em><var>chan</var>)</em><a href='#index-readVoltage_0028dsObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Read the voltage from a channel
</p>
<span id="Inputs-141"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the MPC3002 object
</p>
<p><var>chan</var> - the channel to read (0 or 1)
</p>
<span id="Outputs-100"></span><h4 class="subsubheading">Outputs</h4>
<p><var>voltage</var> - read voltage.
</p>
<span id="Example-25"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 s = arduinosensor.MPC3002(a, &quot;d10&quot;)
 volts = readVoltage(s, 0)
 </code>
 </pre></div>
<p><strong>See also:</strong> arduinosensor.MPC3002.
 </p></dd></dl>
</div>
<div class="subsection" id="arduinosensor_002eSI7021">
<h4 class="subsection">9.12.4 arduinosensor.SI7021</h4>
<span id="index-SI7021"></span>
<dl class="def">
<dt id="index-arduinosensor_002eSI7021"><span class="category">: </span><span><em></em> <strong>arduinosensor.SI7021</strong><a href='#index-arduinosensor_002eSI7021' class='copiable-anchor'></a></span></dt>
<dd><p>SI7021 temperature and humidity sensor
 </p></dd></dl>
<span id="Methods-11"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-SI7021_0028arObj_0029"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>SI7021(<var>arObj</var>)</strong><a href='#index-SI7021_0028arObj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-SI7021_0028arObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>SI7021(<var>arObj</var>,</strong> <em><var>propertyname, propertyvalue</var> ....)</em><a href='#index-SI7021_0028arObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create SI7021 sensor
 </p><span id="Inputs-142"></span><h4 class="subsubheading">Inputs</h4>
<p><var>arObj</var> - the arduino parent object
</p>
<p><var>propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 Current properties are:
 </p><dl compact="compact">
<dt><span>i2caddress</span></dt>
<dd><p>I2C address of the SI7021 (default 0x40)
 </p></dd>
</dl>
<span id="Outputs-101"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created SI7020 object
</p>
<span id="Example-26"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 sensor = arduinosensor.SI7021(a)
 </code>
 </pre></div>
</dd></dl>
<dl class="def">
<dt id="index-temperature_0028dsObj_0029"><span class="category">: </span><span><em><var>C</var> =</em> <strong>temperature(<var>dsObj</var>)</strong><a href='#index-temperature_0028dsObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the temperature
</p>
<span id="Inputs-143"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the si7021 object
</p>
<span id="Outputs-102"></span><h4 class="subsubheading">Outputs</h4>
<p><var>C</var> - read temperature in deg C.
</p>
<span id="Example-27"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 s = arduinosensor.SI7021(a)
 # get temp
 temp = s.temperature
 </code>
 </pre></div>
<p><strong>See also:</strong> arduinosensor.SI7021.
 </p></dd></dl>
<dl class="def">
<dt id="index-humidity_0028dsObj_0029"><span class="category">: </span><span><em><var>relH</var> =</em> <strong>humidity(<var>dsObj</var>)</strong><a href='#index-humidity_0028dsObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the relative humidity
</p>
<span id="Inputs-144"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the si7021 object
</p>
<span id="Outputs-103"></span><h4 class="subsubheading">Outputs</h4>
<p><var>relH</var> - relative humidity as a percentage (0 - 100.0)
 </p></dd></dl>
<dl class="def">
<dt id="index-info_0028dsObj_0029"><span class="category">: </span><span><em><var>relH</var> =</em> <strong>info(<var>dsObj</var>)</strong><a href='#index-info_0028dsObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the sensor info
</p>
<span id="Inputs-145"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the si7021 object
</p>
<span id="Outputs-104"></span><h4 class="subsubheading">Outputs</h4>
<p><var>inf</var> - structure containing the sensor information.
</p>
<p>Structure fields are:
 </p><dl compact="compact">
<dt><span>version</span></dt>
<dd><p>Chip firmware version
 </p></dd>
<dt><span>id</span></dt>
<dd><p>sensor id1,id2 value
 </p></dd>
<dt><span>type</span></dt>
<dd><p>String for detected chip type
 </p></dd>
</dl>
</dd></dl>
<hr>
</div>
</div>
<div class="section" id="Arduino-I_002fO-package">
<div class="header">
<p>
Next: <a href="#Matlab-Compatability-Classes" accesskey="n" rel="next">Matlab Compatability Classes</a>, Previous: <a href="#Arduino-Sensors" accesskey="p" rel="prev">Arduino Sensors</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Arduino-I_002fO-package-1"></span><h3 class="section">9.13 Arduino I/O package</h3>
<span id="index-Arduino-I_002fO-package"></span>
<ul class="section-toc">
<li><a href="#arduinoio_002eAddonBase" accesskey="1">arduinoio.AddonBase</a></li>
<li><a href="#arduinoio_002eFilePath" accesskey="2">arduinoio.FilePath</a></li>
<li><a href="#arduinoio_002eLibFiles" accesskey="3">arduinoio.LibFiles</a></li>
<li><a href="#arduinoio_002eLibraryBase" accesskey="4">arduinoio.LibraryBase</a></li>
<li><a href="#arduinoio_002egetBoardConfig" accesskey="5">arduinoio.getBoardConfig</a></li>
</ul>
<div class="subsection" id="arduinoio_002eAddonBase">
<h4 class="subsection">9.13.1 arduinoio.AddonBase</h4>
<span id="index-AddonBase"></span>
<dl class="def">
<dt id="index-arduinoio_002eAddonBase"><span class="category">: </span><span><em></em> <strong>arduinoio.AddonBase</strong><a href='#index-arduinoio_002eAddonBase' class='copiable-anchor'></a></span></dt>
<dd><p>Base class used for arduino library sensors
</p>
<p><strong>See also:</strong> arduinoio.LibraryBase.
 </p></dd></dl>
<span id="Properties-17"></span><h4 class="subheading">Properties</h4>
<p>Base properties are expected to be inherited and overwritten in inherited classes.
 and are constant in order to query through the metaobject mechanism.
</p>
<p><var>Parent</var> - parent librarybase object
</p>
<span id="Methods-12"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-AddonBase-1"><span class="category">: </span><span><em><var>ab</var> =</em> <strong>AddonBase</strong> <em>()</em><a href='#index-AddonBase-1' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor of base class
</p>
<span id="Outputs-105"></span><h4 class="subsubheading">Outputs</h4>
<p>The return value <var>ab</var> is an object of the arduinio.AddonBase class.
</p>
<p><strong>See also:</strong> arduino, addon.
 </p></dd></dl>
<dl class="def">
<dt id="index-display-22"><span class="category">: </span><span><em></em> <strong>display</strong> <em>()</em><a href='#index-display-22' class='copiable-anchor'></a></span></dt>
<dd><p>Display the addon in a verbose way.
 </p></dd></dl>
</div>
<div class="subsection" id="arduinoio_002eFilePath">
<h4 class="subsection">9.13.2 arduinoio.FilePath</h4>
<span id="index-FilePath"></span>
<dl class="def">
<dt id="index-arduinoio_002eFilePath"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduinoio.FilePath</strong> <em>(<var>fullpathname</var>)</em><a href='#index-arduinoio_002eFilePath' class='copiable-anchor'></a></span></dt>
<dd><p>Get the directory component of a pathname.
</p>
<span id="Inputs-146"></span><h4 class="subsubheading">Inputs</h4>
<p><var>fullpathname</var> filepath to get directory component of.
</p>
<span id="Outputs-106"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> the directory part of the filename.
 </p></dd></dl>
</div>
<div class="subsection" id="arduinoio_002eLibFiles">
<h4 class="subsection">9.13.3 arduinoio.LibFiles</h4>
<span id="index-LibFiles"></span>
<dl class="def">
<dt id="index-arduinoio_002eLibFiles"><span class="category">: </span><span><em><var>filelist</var> =</em> <strong>arduinoio.LibFiles</strong> <em>()</em><a href='#index-arduinoio_002eLibFiles' class='copiable-anchor'></a></span></dt>
<dd><p>Get the list of files used for the building arduino library
 </p><span id="Outputs-107"></span><h4 class="subsubheading">Outputs</h4>
<p><var>filelist</var> - string cell array of files for the arduino project
 </p></dd></dl>
</div>
<div class="subsection" id="arduinoio_002eLibraryBase">
<h4 class="subsection">9.13.4 arduinoio.LibraryBase</h4>
<span id="index-LibraryBase"></span>
<dl class="def">
<dt id="index-arduinoio_002eLibraryBase"><span class="category">: </span><span><em></em> <strong>arduinoio.LibraryBase</strong><a href='#index-arduinoio_002eLibraryBase' class='copiable-anchor'></a></span></dt>
<dd><p>Base class used for arduino library plugins
</p>
<p><strong>See also:</strong> arduino, listArduinoLibraries, addon.
 </p></dd></dl>
<span id="Properties-18"></span><h4 class="subheading">Properties</h4>
<p>Base properties are expected to be inherited and overwritten in
 inherited classes and are constant in order to query through the
 metaobject mechanism.
</p>
<p><var>LibraryName</var> - name of the addon library
</p>
<p><var>DependentLibraries</var> - array of dependent library names that
  must be included when installing this plugin.
</p>
<p><var>CppHeaderFile</var> - name (if any) of header file that will be
 included into the arduino project when adding this library.
</p>
<p><var>CppSourceFile</var> - name (if any) of source file that will be
 included into the arduino project when adding this library.
</p>
<p><var>CppClassName</var> - name of the cpp class for the addon library.
 project when adding this library.
</p>
<p><var>Pins</var> - pins allocated to the addon
</p>
<p><var>Parent</var> - parent arduino object.
</p>
<span id="Methods-13"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-LibraryBase-2"><span class="category">: </span><span><em><var>lb</var> =</em> <strong>LibraryBase</strong> <em>()</em><a href='#index-LibraryBase-2' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor of base class
</p>
<p>The constructor is usually not called but called indirectly
 from the addon function.
</p>
<span id="Outputs-108"></span><h4 class="subsubheading">Outputs</h4>
<p>The return value <var>lb</var> is an object of the arduinio.LibraryBase class.
</p>
<p><strong>See also:</strong> arduino, listArduinoLibraries, addon.
 </p></dd></dl>
<dl class="def">
<dt id="index-display-23"><span class="category">: </span><span><em></em> <strong>display</strong> <em>()</em><a href='#index-display-23' class='copiable-anchor'></a></span></dt>
<dd><p>Display the addon in a verbose way.
 </p></dd></dl>
</div>
<div class="subsection" id="arduinoio_002egetBoardConfig">
<h4 class="subsection">9.13.5 arduinoio.getBoardConfig</h4>
<span id="index-getBoardConfig"></span>
<dl class="def">
<dt id="index-arduinoio_002egetBoardConfig"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduinoio.getBoardConfig</strong> <em>(<var>boardname</var>)</em><a href='#index-arduinoio_002egetBoardConfig' class='copiable-anchor'></a></span></dt>
<dd><p>Return the configuration for a known arduino board type
</p>
<p>Function is used to get the expected pin/board configuration for a named board type
 which is used to verify and identify the functionality of the board.
</p>
<span id="Inputs-147"></span><h4 class="subsubheading">Inputs</h4>
<p><var>boardname</var> - name of board to get configuration of ie: &quot;uno&quot;
</p>
<span id="Outputs-109"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> configuration struct.
 </p></dd></dl>
<hr>
</div>
</div>
<div class="section" id="Matlab-Compatability-Classes">
<div class="header">
<p>
Next: <a href="#Sensors" accesskey="n" rel="next">Sensors</a>, Previous: <a href="#Arduino-I_002fO-package" accesskey="p" rel="prev">Arduino I/O package</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Matlab-Compatability-Classes-1"></span><h3 class="section">9.14 Matlab Compatability Classes</h3>
<span id="index-Matlab-Compatability-Classes"></span>
<ul class="section-toc">
<li><a href="#matlabshared_002eaddon_002eLibraryBase" accesskey="1">matlabshared.addon.LibraryBase</a></li>
</ul>
<div class="subsection" id="matlabshared_002eaddon_002eLibraryBase">
<h4 class="subsection">9.14.1 matlabshared.addon.LibraryBase</h4>
<span id="index-LibraryBase-1"></span>
<dl class="def">
<dt id="index-matlabshared_002eaddon_002eLibraryBase"><span class="category">: </span><span><em></em> <strong>matlabshared.addon.LibraryBase</strong><a href='#index-matlabshared_002eaddon_002eLibraryBase' class='copiable-anchor'></a></span></dt>
<dd><p>Compatability class used for arduino library plugins using
 matlabshared.addons.LibraryBase
</p>
<p><strong>See also:</strong> arduinoio.LibraryBase, arduino, listArduinoLibraries, addon.
 </p></dd></dl>
<span id="Properties-19"></span><h4 class="subheading">Properties</h4>
<p>Base properties are expected to be inherited and overwritten in
 inherited classes and are constant in order to query through the
 metaobject mechanism.
</p>
<p><var>LibraryName</var> - name of the addon library
</p>
<p><var>DependentLibraries</var> - array of dependent library names that
  must be included when installing this plugin.
</p>
<p><var>CppHeaderFile</var> - name (if any) of header file that will be
 included into the arduino project when adding this library.
</p>
<p><var>CppSourceFile</var> - name (if any) of source file that will be
 included into the arduino project when adding this library.
</p>
<p><var>CppClassName</var> - name of the cpp class for the addon library.
 project when adding this library.
</p>
<p><var>Pins</var> - pins allocated to the addon
</p>
<p><var>Parent</var> - parent arduino object.
</p>
<span id="Methods-14"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-LibraryBase-3"><span class="category">: </span><span><em><var>lb</var> =</em> <strong>LibraryBase</strong> <em>()</em><a href='#index-LibraryBase-3' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor of base class
</p>
<p>The constructor is usually not called but called indirectly
 from the addon function.
</p>
<span id="Outputs-110"></span><h4 class="subsubheading">Outputs</h4>
<p>The return value <var>lb</var> is an object of the
 matlabshare.addons.LibraryBase class.
</p>
<p><strong>See also:</strong> arduino, listArduinoLibraries, addon.
 </p></dd></dl>
<dl class="def">
<dt id="index-display-24"><span class="category">: </span><span><em></em> <strong>display</strong> <em>()</em><a href='#index-display-24' class='copiable-anchor'></a></span></dt>
<dd><p>Display the addon in a verbose way.
 </p></dd></dl>
<hr>
</div>
</div>
<div class="section" id="Sensors">
<div class="header">
<p>
Next: <a href="#Test-Functions" accesskey="n" rel="next">Test Functions</a>, Previous: <a href="#Matlab-Compatability-Classes" accesskey="p" rel="prev">Matlab Compatability Classes</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Sensors-1"></span><h3 class="section">9.15 Sensors</h3>
<span id="index-Sensors"></span>
<ul class="section-toc">
<li><a href="#bme280" accesskey="1">bme280</a></li>
<li><a href="#bno055" accesskey="2">bno055</a></li>
<li><a href="#lis3dh" accesskey="3">lis3dh</a></li>
<li><a href="#lps22hb" accesskey="4">lps22hb</a></li>
<li><a href="#lsm6dso" accesskey="5">lsm6dso</a></li>
<li><a href="#mpu6050" accesskey="6">mpu6050</a></li>
<li><a href="#si7021" accesskey="7">si7021</a></li>
</ul>
<div class="subsection" id="bme280">
<h4 class="subsection">9.15.1 bme280</h4>
<span id="index-bme280"></span>
<dl class="def">
<dt id="index-bme280-1"><span class="category">: </span><span><em></em> <strong>bme280</strong><a href='#index-bme280-1' class='copiable-anchor'></a></span></dt>
<dd><p>BME280 pressure, temperature and humidity sensor
 </p></dd></dl>
<span id="Methods-15"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-bme280_0028arObj_0029"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>bme280(<var>arObj</var>)</strong><a href='#index-bme280_0028arObj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-bme280_0028arObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>bme280(<var>arObj</var>,</strong> <em><var>propertyname, propertyvalue</var> ....)</em><a href='#index-bme280_0028arObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create BME280 sensor
 </p><span id="Inputs-148"></span><h4 class="subsubheading">Inputs</h4>
<p><var>arObj</var> - the arduino parent object
</p>
<p><var>propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 Current properties are:
 </p><dl compact="compact">
<dt><span>I2CAddress</span></dt>
<dd><p>I2C address of the sensor (default 0x40)
 </p></dd>
<dt><span>Bus</span></dt>
<dd><p>I2C bus  - 0 or 1 (default 0)
 </p></dd>
</dl>
<span id="Outputs-111"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created object
</p>
<span id="Example-28"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 sensor = bme280(a)
 </code>
 </pre></div>
</dd></dl>
<dl class="def">
<dt id="index-readTemperature_0028obj_0029"><span class="category">: </span><span><em>[<var>C</var>, <var>timestamp</var>] =</em> <strong>readTemperature(<var>obj</var>)</strong><a href='#index-readTemperature_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the temperature
</p>
<span id="Inputs-149"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-112"></span><h4 class="subsubheading">Outputs</h4>
<p><var>C</var> - read temperature in deg C.
</p>
<p><var>timestamp</var> - timestamp when read
</p>
<span id="Example-29"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 s = bme280(a)
 # get temp
 temp = s.readTemperature
 </code>
 </pre></div>
<p><strong>See also:</strong> bme280.
 </p></dd></dl>
<dl class="def">
<dt id="index-readHumidity_0028obj_0029"><span class="category">: </span><span><em>[<var>relH</var>, <var>timestamp</var>] =</em> <strong>readHumidity(<var>obj</var>)</strong><a href='#index-readHumidity_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the relative humidity
</p>
<span id="Inputs-150"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-113"></span><h4 class="subsubheading">Outputs</h4>
<p><var>relH</var> - relative humidity as a percentage (0 - 100.0)
</p>
<p><var>timestamp</var> - timestamp when read
 </p></dd></dl>
<dl class="def">
<dt id="index-readPressure_0028obj_0029"><span class="category">: </span><span><em>[<var>P</var>, <var>timestamp</var>] =</em> <strong>readPressure(<var>obj</var>)</strong><a href='#index-readPressure_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the pressure
</p>
<span id="Inputs-151"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-114"></span><h4 class="subsubheading">Outputs</h4>
<p><var>P</var> - pressure reading from sensor.
</p>
<p><var>timestamp</var> - timestamp when read
 </p></dd></dl>
<dl class="def">
<dt id="index-read_0028obj_0029"><span class="category">: </span><span><em>[<var>readings</var>, <var>overrun</var>] =</em> <strong>read(<var>obj</var>)</strong><a href='#index-read_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-read_0028obj_0029-1"><span class="category">: </span><span><em>[<var>P</var>, <var>H</var>, <var>C</var>, <var>timestamp</var>, <var>overrun</var>] =</em> <strong>read(<var>obj</var>)</strong><a href='#index-read_0028obj_0029-1' class='copiable-anchor'></a></span></dt>
<dd><p>Read the sensor data
</p>
<span id="Inputs-152"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-115"></span><h4 class="subsubheading">Outputs</h4>
<p><var>P</var> - pressure reading from sensor.
</p>
<p><var>H</var> - humidity reading from sensor.
</p>
<p><var>C</var> - temperature reading from sensor.
</p>
<p><var>timestamp</var> - timestamp when read
</p>
<p><var>overrun</var> - overrun flag.
</p>
<p><var>readings</var> - table structure with fields for Timestamp, Pressure, Temperature and Humidity.
 </p></dd></dl>
<dl class="def">
<dt id="index-info_0028obj_0029"><span class="category">: </span><span><em><var>inf</var> =</em> <strong>info(<var>obj</var>)</strong><a href='#index-info_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the sensor info
</p>
<span id="Inputs-153"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-116"></span><h4 class="subsubheading">Outputs</h4>
<p><var>inf</var> - structure containing the sensor information.
</p>
<p>Structure fields are:
 </p><dl compact="compact">
<dt><span>Version</span></dt>
<dd><p>Chip firmware version
 </p></dd>
<dt><span>SensorId</span></dt>
<dd><p>sensor id value
 </p></dd>
<dt><span>Type</span></dt>
<dd><p>sensor type &rsquo;bme280&rsquo;
 </p></dd>
<dt><span>Status</span></dt>
<dd><p>Status value read from sensor
 </p></dd>
</dl>
</dd></dl>
<dl class="def">
<dt id="index-flush_0028obj_0029"><span class="category">: </span><span><em></em> <strong>flush(<var>obj</var>)</strong><a href='#index-flush_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Flush sensor data
</p>
<span id="Inputs-154"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-117"></span><h4 class="subsubheading">Outputs</h4>
<p>None
 </p></dd></dl>
<dl class="def">
<dt id="index-release_0028obj_0029"><span class="category">: </span><span><em></em> <strong>release(<var>obj</var>)</strong><a href='#index-release_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Release the resources of the sensor
</p>
<span id="Inputs-155"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-118"></span><h4 class="subsubheading">Outputs</h4>
<p>None
 </p></dd></dl>
</div>
<div class="subsection" id="bno055">
<h4 class="subsection">9.15.2 bno055</h4>
<span id="index-bno055"></span>
<dl class="def">
<dt id="index-bno055-1"><span class="category">: </span><span><em></em> <strong>bno055</strong><a href='#index-bno055-1' class='copiable-anchor'></a></span></dt>
<dd><p>BNO055 9 axis orientation sensor
 </p></dd></dl>
<span id="Methods-16"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-bno055_0028arObj_0029"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>bno055(<var>arObj</var>)</strong><a href='#index-bno055_0028arObj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-bno055_0028arObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>bno055(<var>arObj</var>,</strong> <em><var>propertyname, propertyvalue</var> ....)</em><a href='#index-bno055_0028arObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create BME280 sensor
 </p><span id="Inputs-156"></span><h4 class="subsubheading">Inputs</h4>
<p><var>arObj</var> - the arduino parent object
</p>
<p><var>propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 Current properties are:
 </p><dl compact="compact">
<dt><span>I2CAddress</span></dt>
<dd><p>I2C address of the sensor (default 0x40)
 </p></dd>
<dt><span>Bus</span></dt>
<dd><p>I2C bus  - 0 or 1 (default 0)
 </p></dd>
<dt><span>OperatingMode</span></dt>
<dd><p>Operating mode &rsquo;ndof&rsquo; or &rsquo;amg&rsquo;
 </p></dd>
</dl>
<span id="Outputs-119"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created object
</p>
<span id="Example-30"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 sensor = bno055(a)
 </code>
 </pre></div>
</dd></dl>
<dl class="def">
<dt id="index-readTemperature_0028obj_0029-1"><span class="category">: </span><span><em>[<var>C</var>, <var>timestamp</var>] =</em> <strong>readTemperature(<var>obj</var>)</strong><a href='#index-readTemperature_0028obj_0029-1' class='copiable-anchor'></a></span></dt>
<dd><p>Read the temperature
</p>
<span id="Inputs-157"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-120"></span><h4 class="subsubheading">Outputs</h4>
<p><var>C</var> - read temperature in deg C.
</p>
<p><var>timestamp</var> - timestamp when read
</p>
<span id="Example-31"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 s = bno055(a)
 # get temp
 temp = s.readTemperature
 </code>
 </pre></div>
<p><strong>See also:</strong> bno055.
 </p></dd></dl>
<dl class="def">
<dt id="index-readAcceleration_0028obj_0029"><span class="category">: </span><span><em>[<var>readVal</var>, <var>timestamp</var>] =</em> <strong>readAcceleration(<var>obj</var>)</strong><a href='#index-readAcceleration_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the acceleration rate
</p>
<span id="Inputs-158"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-121"></span><h4 class="subsubheading">Outputs</h4>
<p><var>readVal</var> - the 3 acceleration values
</p>
<p><var>timestamp</var> - timestamp when read
 </p></dd></dl>
<dl class="def">
<dt id="index-readAngularVelocity_0028obj_0029"><span class="category">: </span><span><em>[<var>readVal</var>, <var>timestamp</var>] =</em> <strong>readAngularVelocity(<var>obj</var>)</strong><a href='#index-readAngularVelocity_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the angular velocity
</p>
<span id="Inputs-159"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-122"></span><h4 class="subsubheading">Outputs</h4>
<p><var>readVal</var> - the 3 angular velocity values
</p>
<p><var>timestamp</var> - timestamp when read
 </p></dd></dl>
<dl class="def">
<dt id="index-readMagneticField_0028obj_0029"><span class="category">: </span><span><em>[<var>readVal</var>, <var>timestamp</var>] =</em> <strong>readMagneticField(<var>obj</var>)</strong><a href='#index-readMagneticField_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the magnetic field components
</p>
<span id="Inputs-160"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-123"></span><h4 class="subsubheading">Outputs</h4>
<p><var>readVal</var> - the 3 magnetic field values
</p>
<p><var>timestamp</var> - timestamp when read
 </p></dd></dl>
<dl class="def">
<dt id="index-readOrientation_0028obj_0029"><span class="category">: </span><span><em>[<var>readVal</var>, <var>timestamp</var>] =</em> <strong>readOrientation(<var>obj</var>)</strong><a href='#index-readOrientation_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the oriientation components
</p>
<span id="Inputs-161"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-124"></span><h4 class="subsubheading">Outputs</h4>
<p><var>readVal</var> - the 3 orientation values
</p>
<p><var>timestamp</var> - timestamp when read
 </p></dd></dl>
<dl class="def">
<dt id="index-read_0028obj_0029-2"><span class="category">: </span><span><em>[<var>readings</var>, <var>overrun</var>] =</em> <strong>read(<var>obj</var>)</strong><a href='#index-read_0028obj_0029-2' class='copiable-anchor'></a></span></dt>
<dt id="index-read_0028obj_0029-3"><span class="category">: </span><span><em>[<var>accel</var>, <var>gyro</var>, <var>mag</var>, <var>timestamp</var>, <var>overrun</var>] =</em> <strong>read(<var>obj</var>)</strong><a href='#index-read_0028obj_0029-3' class='copiable-anchor'></a></span></dt>
<dt id="index-read_0028obj_0029-4"><span class="category">: </span><span><em>[<var>accel</var>, <var>gyro</var>, <var>mag</var>, <var>orientation</var>, <var>timestamp</var>, <var>overrun</var>] =</em> <strong>read(<var>obj</var>)</strong><a href='#index-read_0028obj_0029-4' class='copiable-anchor'></a></span></dt>
<dd><p>Read the sensor data
</p>
<span id="Inputs-162"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-125"></span><h4 class="subsubheading">Outputs</h4>
<p><var>accel</var> - acceleration reading from sensor.
</p>
<p><var>gyro</var> - angular acceleration reading from sensor.
</p>
<p><var>mag</var> - magnetic field reading from sensor.
</p>
<p><var>orientation</var> - orientation reading from sensor.
</p>
<p><var>timestamp</var> - timestamp when read
</p>
<p><var>overrun</var> - overrun flag.
</p>
<p><var>readings</var> - table structure with fields for Timestamp, Acceleration, AngularVelocity, MagneticField, Orientation.
 </p></dd></dl>
<dl class="def">
<dt id="index-readCalibrationStatus_0028obj_0029"><span class="category">: </span><span><em><var>inf</var> =</em> <strong>readCalibrationStatus(<var>obj</var>)</strong><a href='#index-readCalibrationStatus_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the sensor calibration status
</p>
<span id="Inputs-163"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-126"></span><h4 class="subsubheading">Outputs</h4>
<p><var>status</var> - structure containing the calibration information.
</p>
<p>Structure fields are:
 </p><dl compact="compact">
<dt><span>System</span></dt>
<dd><p>System calibrarion
 </p></dd>
<dt><span>Accelerometer</span></dt>
<dd><p>Accelerometer calibration status
 </p></dd>
<dt><span>Gyroscope</span></dt>
<dd><p>Gyroscope calibration status
 </p></dd>
<dt><span>Magnetometer</span></dt>
<dd><p>Magnetometer calibration status
 </p></dd>
</dl>
<p>Values for each will be either &rsquo;uncalibrated&rsquo;, &rsquo;partial&rsquo; or &rsquo;full&rsquo;.
</p>
</dd></dl>
<dl class="def">
<dt id="index-info_0028obj_0029-1"><span class="category">: </span><span><em><var>inf</var> =</em> <strong>info(<var>obj</var>)</strong><a href='#index-info_0028obj_0029-1' class='copiable-anchor'></a></span></dt>
<dd><p>Read the sensor info
</p>
<span id="Inputs-164"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-127"></span><h4 class="subsubheading">Outputs</h4>
<p><var>inf</var> - structure containing the sensor information.
</p>
<p>Structure fields are:
 </p><dl compact="compact">
<dt><span>Version</span></dt>
<dd><p>Software firmware version
 </p></dd>
<dt><span>SensorId</span></dt>
<dd><p>sensor id value
 </p></dd>
<dt><span>Type</span></dt>
<dd><p>sensor type &rsquo;bno055&rsquo;
 </p></dd>
</dl>
</dd></dl>
<dl class="def">
<dt id="index-flush_0028obj_0029-1"><span class="category">: </span><span><em></em> <strong>flush(<var>obj</var>)</strong><a href='#index-flush_0028obj_0029-1' class='copiable-anchor'></a></span></dt>
<dd><p>Flush sensor data
</p>
<span id="Inputs-165"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-128"></span><h4 class="subsubheading">Outputs</h4>
<p>None
 </p></dd></dl>
<dl class="def">
<dt id="index-release_0028obj_0029-1"><span class="category">: </span><span><em></em> <strong>release(<var>obj</var>)</strong><a href='#index-release_0028obj_0029-1' class='copiable-anchor'></a></span></dt>
<dd><p>Release the resources of the sensor
</p>
<span id="Inputs-166"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-129"></span><h4 class="subsubheading">Outputs</h4>
<p>None
 </p></dd></dl>
</div>
<div class="subsection" id="lis3dh">
<h4 class="subsection">9.15.3 lis3dh</h4>
<span id="index-lis3dh"></span>
<dl class="def">
<dt id="index-lis3dh-1"><span class="category">: </span><span><em></em> <strong>lis3dh</strong><a href='#index-lis3dh-1' class='copiable-anchor'></a></span></dt>
<dd><p>LIS3DH 3 degrees sensor
 </p></dd></dl>
<span id="Methods-17"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-lis3dh_0028arObj_0029"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>lis3dh(<var>arObj</var>)</strong><a href='#index-lis3dh_0028arObj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-lis3dh_0028arObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>lis3dh(<var>arObj</var>,</strong> <em><var>propertyname, propertyvalue</var> ....)</em><a href='#index-lis3dh_0028arObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create LIS3DH sensor
 </p><span id="Inputs-167"></span><h4 class="subsubheading">Inputs</h4>
<p><var>arObj</var> - the arduino parent object
</p>
<p><var>propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 Current properties are:
 </p><dl compact="compact">
<dt><span>I2CAddress</span></dt>
<dd><p>I2C address of the sensor (default 0x40)
 </p></dd>
<dt><span>Bus</span></dt>
<dd><p>I2C bus  - 0 or 1 (default 0)
 </p></dd>
</dl>
<span id="Outputs-130"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created object
</p>
<span id="Example-32"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 sensor = lis3dh(a)
 </code>
 </pre></div>
</dd></dl>
<dl class="def">
<dt id="index-readAcceleration_0028obj_0029-1"><span class="category">: </span><span><em>[<var>readVal</var>, <var>timestamp</var>] =</em> <strong>readAcceleration(<var>obj</var>)</strong><a href='#index-readAcceleration_0028obj_0029-1' class='copiable-anchor'></a></span></dt>
<dd><p>Read the acceleration rate
</p>
<span id="Inputs-168"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-131"></span><h4 class="subsubheading">Outputs</h4>
<p><var>readVal</var> - the 3 acceleration values
</p>
<p><var>timestamp</var> - timestamp when read
 </p></dd></dl>
<dl class="def">
<dt id="index-read_0028obj_0029-5"><span class="category">: </span><span><em>[<var>readings</var>, <var>overrun</var>] =</em> <strong>read(<var>obj</var>)</strong><a href='#index-read_0028obj_0029-5' class='copiable-anchor'></a></span></dt>
<dt id="index-read_0028obj_0029-6"><span class="category">: </span><span><em>[<var>accel</var>, <var>timestamp</var>, <var>overrun</var>] =</em> <strong>read(<var>obj</var>)</strong><a href='#index-read_0028obj_0029-6' class='copiable-anchor'></a></span></dt>
<dd><p>Read the sensor data
</p>
<span id="Inputs-169"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-132"></span><h4 class="subsubheading">Outputs</h4>
<p><var>accel</var> - acceleration reading from sensor.
</p>
<p><var>timestamp</var> - timestamp when read
</p>
<p><var>overrun</var> - overrun flag.
</p>
<p><var>readings</var> - table structure with fields for Timestamp, Acceleration.
 </p></dd></dl>
<dl class="def">
<dt id="index-info_0028obj_0029-2"><span class="category">: </span><span><em><var>inf</var> =</em> <strong>info(<var>obj</var>)</strong><a href='#index-info_0028obj_0029-2' class='copiable-anchor'></a></span></dt>
<dd><p>Read the sensor info
</p>
<span id="Inputs-170"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-133"></span><h4 class="subsubheading">Outputs</h4>
<p><var>inf</var> - structure containing the sensor information.
</p>
<p>Structure fields are:
 </p><dl compact="compact">
<dt><span>SensorId</span></dt>
<dd><p>sensor id value
 </p></dd>
<dt><span>Type</span></dt>
<dd><p>sensor type &rsquo;lis3dh&rsquo;
 </p></dd>
<dt><span>Status</span></dt>
<dd><p>sensor status value
 </p></dd>
</dl>
</dd></dl>
<dl class="def">
<dt id="index-flush_0028obj_0029-2"><span class="category">: </span><span><em></em> <strong>flush(<var>obj</var>)</strong><a href='#index-flush_0028obj_0029-2' class='copiable-anchor'></a></span></dt>
<dd><p>Flush sensor data
</p>
<span id="Inputs-171"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-134"></span><h4 class="subsubheading">Outputs</h4>
<p>None
 </p></dd></dl>
<dl class="def">
<dt id="index-release_0028obj_0029-2"><span class="category">: </span><span><em></em> <strong>release(<var>obj</var>)</strong><a href='#index-release_0028obj_0029-2' class='copiable-anchor'></a></span></dt>
<dd><p>Release the resources of the sensor
</p>
<span id="Inputs-172"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-135"></span><h4 class="subsubheading">Outputs</h4>
<p>None
 </p></dd></dl>
</div>
<div class="subsection" id="lps22hb">
<h4 class="subsection">9.15.4 lps22hb</h4>
<span id="index-lps22hb"></span>
<dl class="def">
<dt id="index-lps22hb-1"><span class="category">: </span><span><em></em> <strong>lps22hb</strong><a href='#index-lps22hb-1' class='copiable-anchor'></a></span></dt>
<dd><p>LPS22HB absolute pressure and temperature sensor
 </p></dd></dl>
<span id="Methods-18"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-lps22hb_0028arObj_0029"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>lps22hb(<var>arObj</var>)</strong><a href='#index-lps22hb_0028arObj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-lps22hb_0028arObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>lps22hb(<var>arObj</var>,</strong> <em><var>propertyname, propertyvalue</var> ....)</em><a href='#index-lps22hb_0028arObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create LPS22HB sensor
 </p><span id="Inputs-173"></span><h4 class="subsubheading">Inputs</h4>
<p><var>arObj</var> - the arduino parent object
</p>
<p><var>propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 Current properties are:
 </p><dl compact="compact">
<dt><span>I2CAddress</span></dt>
<dd><p>I2C address of the sensor (default 0x5C)
 </p></dd>
<dt><span>Bus</span></dt>
<dd><p>I2C bus  - 0 or 1 (default 0)
 </p></dd>
</dl>
<span id="Outputs-136"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created object
</p>
<span id="Example-33"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 sensor = lps22hb(a)
 </code>
 </pre></div>
</dd></dl>
<dl class="def">
<dt id="index-readTemperature_0028obj_0029-2"><span class="category">: </span><span><em>[<var>C</var>, <var>timestamp</var>] =</em> <strong>readTemperature(<var>obj</var>)</strong><a href='#index-readTemperature_0028obj_0029-2' class='copiable-anchor'></a></span></dt>
<dd><p>Read the temperature
</p>
<span id="Inputs-174"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-137"></span><h4 class="subsubheading">Outputs</h4>
<p><var>C</var> - read temperature in deg C.
</p>
<p><var>timestamp</var> - timestamp when read
</p>
<span id="Example-34"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 s = lps22hb(a)
 # get temp
 temp = s.readTemperature
 </code>
 </pre></div>
<p><strong>See also:</strong> lps22hb.
 </p></dd></dl>
<dl class="def">
<dt id="index-readPressure_0028obj_0029-1"><span class="category">: </span><span><em>[<var>P</var>, <var>timestamp</var>] =</em> <strong>readPressure(<var>obj</var>)</strong><a href='#index-readPressure_0028obj_0029-1' class='copiable-anchor'></a></span></dt>
<dd><p>Read the pressure
</p>
<span id="Inputs-175"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-138"></span><h4 class="subsubheading">Outputs</h4>
<p><var>P</var> - pressure reading from sensor.
</p>
<p><var>timestamp</var> - timestamp when read
 </p></dd></dl>
<dl class="def">
<dt id="index-read_0028obj_0029-7"><span class="category">: </span><span><em>[<var>readings</var>, <var>overrun</var>] =</em> <strong>read(<var>obj</var>)</strong><a href='#index-read_0028obj_0029-7' class='copiable-anchor'></a></span></dt>
<dt id="index-read_0028obj_0029-8"><span class="category">: </span><span><em>[<var>P</var>, <var>C</var>, <var>timestamp</var>, <var>overrun</var>] =</em> <strong>read(<var>obj</var>)</strong><a href='#index-read_0028obj_0029-8' class='copiable-anchor'></a></span></dt>
<dd><p>Read the sensor data
</p>
<span id="Inputs-176"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-139"></span><h4 class="subsubheading">Outputs</h4>
<p><var>P</var> - pressure reading from sensor.
</p>
<p><var>C</var> - temperature reading from sensor.
</p>
<p><var>timestamp</var> - timestamp when read
</p>
<p><var>overrun</var> - overrun flag.
</p>
<p><var>readings</var> - table structure with fields for Timestamp, Pressure, Temperature and Humidity.
 </p></dd></dl>
<dl class="def">
<dt id="index-info_0028obj_0029-3"><span class="category">: </span><span><em><var>inf</var> =</em> <strong>info(<var>obj</var>)</strong><a href='#index-info_0028obj_0029-3' class='copiable-anchor'></a></span></dt>
<dd><p>Read the sensor info
</p>
<span id="Inputs-177"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-140"></span><h4 class="subsubheading">Outputs</h4>
<p><var>inf</var> - structure containing the sensor information.
</p>
<p>Structure fields are:
 </p><dl compact="compact">
<dt><span>Version</span></dt>
<dd><p>Chip firmware version
 </p></dd>
<dt><span>SensorId</span></dt>
<dd><p>sensor id value
 </p></dd>
<dt><span>Type</span></dt>
<dd><p>sensor type &rsquo;lps22hb&rsquo;
 </p></dd>
<dt><span>Status</span></dt>
<dd><p>Status value read from sensor
 </p></dd>
</dl>
</dd></dl>
<dl class="def">
<dt id="index-flush_0028obj_0029-3"><span class="category">: </span><span><em></em> <strong>flush(<var>obj</var>)</strong><a href='#index-flush_0028obj_0029-3' class='copiable-anchor'></a></span></dt>
<dd><p>Flush sensor data
</p>
<span id="Inputs-178"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-141"></span><h4 class="subsubheading">Outputs</h4>
<p>None
 </p></dd></dl>
<dl class="def">
<dt id="index-release_0028obj_0029-3"><span class="category">: </span><span><em></em> <strong>release(<var>obj</var>)</strong><a href='#index-release_0028obj_0029-3' class='copiable-anchor'></a></span></dt>
<dd><p>Release the resources of the sensor
</p>
<span id="Inputs-179"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-142"></span><h4 class="subsubheading">Outputs</h4>
<p>None
 </p></dd></dl>
</div>
<div class="subsection" id="lsm6dso">
<h4 class="subsection">9.15.5 lsm6dso</h4>
<span id="index-lsm6dso"></span>
<dl class="def">
<dt id="index-lsm6dso-1"><span class="category">: </span><span><em></em> <strong>lsm6dso</strong><a href='#index-lsm6dso-1' class='copiable-anchor'></a></span></dt>
<dd><p>LSM6DSO 6 degrees sensor
 </p></dd></dl>
<span id="Methods-19"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-lsm6dso_0028arObj_0029"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>lsm6dso(<var>arObj</var>)</strong><a href='#index-lsm6dso_0028arObj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-lsm6dso_0028arObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>lsm6dso(<var>arObj</var>,</strong> <em><var>propertyname, propertyvalue</var> ....)</em><a href='#index-lsm6dso_0028arObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create LSM6DSO sensor
 </p><span id="Inputs-180"></span><h4 class="subsubheading">Inputs</h4>
<p><var>arObj</var> - the arduino parent object
</p>
<p><var>propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 Current properties are:
 </p><dl compact="compact">
<dt><span>I2CAddress</span></dt>
<dd><p>I2C address of the sensor (default 0x40)
 </p></dd>
<dt><span>Bus</span></dt>
<dd><p>I2C bus  - 0 or 1 (default 0)
 </p></dd>
</dl>
<span id="Outputs-143"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created object
</p>
<span id="Example-35"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 sensor = lsm6dso(a)
 </code>
 </pre></div>
</dd></dl>
<dl class="def">
<dt id="index-readTemperature_0028obj_0029-3"><span class="category">: </span><span><em>[<var>C</var>, <var>timestamp</var>] =</em> <strong>readTemperature(<var>obj</var>)</strong><a href='#index-readTemperature_0028obj_0029-3' class='copiable-anchor'></a></span></dt>
<dd><p>Read the temperature
</p>
<span id="Inputs-181"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-144"></span><h4 class="subsubheading">Outputs</h4>
<p><var>C</var> - read temperature in deg C.
</p>
<p><var>timestamp</var> - timestamp when read
</p>
<span id="Example-36"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 s = lsm6dso(a)
 # get temp
 temp = s.readTemperature
 </code>
 </pre></div>
<p><strong>See also:</strong> lsm6dso.
 </p></dd></dl>
<dl class="def">
<dt id="index-readAcceleration_0028obj_0029-2"><span class="category">: </span><span><em>[<var>readVal</var>, <var>timestamp</var>] =</em> <strong>readAcceleration(<var>obj</var>)</strong><a href='#index-readAcceleration_0028obj_0029-2' class='copiable-anchor'></a></span></dt>
<dd><p>Read the acceleration rate
</p>
<span id="Inputs-182"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-145"></span><h4 class="subsubheading">Outputs</h4>
<p><var>readVal</var> - the 3 acceleration values
</p>
<p><var>timestamp</var> - timestamp when read
 </p></dd></dl>
<dl class="def">
<dt id="index-readAngularVelocity_0028obj_0029-1"><span class="category">: </span><span><em>[<var>readVal</var>, <var>timestamp</var>] =</em> <strong>readAngularVelocity(<var>obj</var>)</strong><a href='#index-readAngularVelocity_0028obj_0029-1' class='copiable-anchor'></a></span></dt>
<dd><p>Read the angular velocity
</p>
<span id="Inputs-183"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-146"></span><h4 class="subsubheading">Outputs</h4>
<p><var>readVal</var> - the 3 angular velocity values
</p>
<p><var>timestamp</var> - timestamp when read
 </p></dd></dl>
<dl class="def">
<dt id="index-read_0028obj_0029-9"><span class="category">: </span><span><em>[<var>readings</var>, <var>overrun</var>] =</em> <strong>read(<var>obj</var>)</strong><a href='#index-read_0028obj_0029-9' class='copiable-anchor'></a></span></dt>
<dt id="index-read_0028obj_0029-10"><span class="category">: </span><span><em>[<var>accel</var>, <var>gyro</var>, <var>mag</var>, <var>timestamp</var>, <var>overrun</var>] =</em> <strong>read(<var>obj</var>)</strong><a href='#index-read_0028obj_0029-10' class='copiable-anchor'></a></span></dt>
<dd><p>Read the sensor data
</p>
<span id="Inputs-184"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-147"></span><h4 class="subsubheading">Outputs</h4>
<p><var>accel</var> - acceleration reading from sensor.
</p>
<p><var>gyro</var> - angular acceleration reading from sensor.
</p>
<p><var>timestamp</var> - timestamp when read
</p>
<p><var>overrun</var> - overrun flag.
</p>
<p><var>readings</var> - table structure with fields for Timestamp, Acceleration, AngularVelocity.
 </p></dd></dl>
<dl class="def">
<dt id="index-info_0028obj_0029-4"><span class="category">: </span><span><em><var>inf</var> =</em> <strong>info(<var>obj</var>)</strong><a href='#index-info_0028obj_0029-4' class='copiable-anchor'></a></span></dt>
<dd><p>Read the sensor info
</p>
<span id="Inputs-185"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-148"></span><h4 class="subsubheading">Outputs</h4>
<p><var>inf</var> - structure containing the sensor information.
</p>
<p>Structure fields are:
 </p><dl compact="compact">
<dt><span>SensorId</span></dt>
<dd><p>sensor id value
 </p></dd>
<dt><span>Type</span></dt>
<dd><p>sensor type &rsquo;lsm6dso&rsquo;
 </p></dd>
</dl>
</dd></dl>
<dl class="def">
<dt id="index-flush_0028obj_0029-4"><span class="category">: </span><span><em></em> <strong>flush(<var>obj</var>)</strong><a href='#index-flush_0028obj_0029-4' class='copiable-anchor'></a></span></dt>
<dd><p>Flush sensor data
</p>
<span id="Inputs-186"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-149"></span><h4 class="subsubheading">Outputs</h4>
<p>None
 </p></dd></dl>
<dl class="def">
<dt id="index-release_0028obj_0029-4"><span class="category">: </span><span><em></em> <strong>release(<var>obj</var>)</strong><a href='#index-release_0028obj_0029-4' class='copiable-anchor'></a></span></dt>
<dd><p>Release the resources of the sensor
</p>
<span id="Inputs-187"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-150"></span><h4 class="subsubheading">Outputs</h4>
<p>None
 </p></dd></dl>
</div>
<div class="subsection" id="mpu6050">
<h4 class="subsection">9.15.6 mpu6050</h4>
<span id="index-mpu6050"></span>
<dl class="def">
<dt id="index-mpu6050-1"><span class="category">: </span><span><em></em> <strong>mpu6050</strong><a href='#index-mpu6050-1' class='copiable-anchor'></a></span></dt>
<dd><p>MPU-6050 6 degrees sensor
 </p></dd></dl>
<span id="Methods-20"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-mpu6050_0028arObj_0029"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>mpu6050(<var>arObj</var>)</strong><a href='#index-mpu6050_0028arObj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-mpu6050_0028arObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>mpu6050(<var>arObj</var>,</strong> <em><var>propertyname, propertyvalue</var> ....)</em><a href='#index-mpu6050_0028arObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create MPU-6050 sensor
 </p><span id="Inputs-188"></span><h4 class="subsubheading">Inputs</h4>
<p><var>arObj</var> - the arduino parent object
</p>
<p><var>propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 Current properties are:
 </p><dl compact="compact">
<dt><span>I2CAddress</span></dt>
<dd><p>I2C address of the sensor (default 0x40)
 </p></dd>
<dt><span>Bus</span></dt>
<dd><p>I2C bus  - 0 or 1 (default 0)
 </p></dd>
</dl>
<span id="Outputs-151"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created object
</p>
<span id="Example-37"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 sensor = mpu6050(a)
 </code>
 </pre></div>
</dd></dl>
<dl class="def">
<dt id="index-readTemperature_0028obj_0029-4"><span class="category">: </span><span><em>[<var>C</var>, <var>timestamp</var>] =</em> <strong>readTemperature(<var>obj</var>)</strong><a href='#index-readTemperature_0028obj_0029-4' class='copiable-anchor'></a></span></dt>
<dd><p>Read the temperature
</p>
<span id="Inputs-189"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-152"></span><h4 class="subsubheading">Outputs</h4>
<p><var>C</var> - read temperature in deg C.
</p>
<p><var>timestamp</var> - timestamp when read
</p>
<span id="Example-38"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 s = mpu6050(a)
 # get temp
 temp = s.readTemperature
 </code>
 </pre></div>
<p><strong>See also:</strong> mpu6050.
 </p></dd></dl>
<dl class="def">
<dt id="index-readAcceleration_0028obj_0029-3"><span class="category">: </span><span><em>[<var>readVal</var>, <var>timestamp</var>] =</em> <strong>readAcceleration(<var>obj</var>)</strong><a href='#index-readAcceleration_0028obj_0029-3' class='copiable-anchor'></a></span></dt>
<dd><p>Read the acceleration rate
</p>
<span id="Inputs-190"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-153"></span><h4 class="subsubheading">Outputs</h4>
<p><var>readVal</var> - the 3 acceleration values
</p>
<p><var>timestamp</var> - timestamp when read
 </p></dd></dl>
<dl class="def">
<dt id="index-readAngularVelocity_0028obj_0029-2"><span class="category">: </span><span><em>[<var>readVal</var>, <var>timestamp</var>] =</em> <strong>readAngularVelocity(<var>obj</var>)</strong><a href='#index-readAngularVelocity_0028obj_0029-2' class='copiable-anchor'></a></span></dt>
<dd><p>Read the angular velocity
</p>
<span id="Inputs-191"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-154"></span><h4 class="subsubheading">Outputs</h4>
<p><var>readVal</var> - the 3 angular velocity values
</p>
<p><var>timestamp</var> - timestamp when read
 </p></dd></dl>
<dl class="def">
<dt id="index-read_0028obj_0029-11"><span class="category">: </span><span><em>[<var>readings</var>, <var>overrun</var>] =</em> <strong>read(<var>obj</var>)</strong><a href='#index-read_0028obj_0029-11' class='copiable-anchor'></a></span></dt>
<dt id="index-read_0028obj_0029-12"><span class="category">: </span><span><em>[<var>accel</var>, <var>gyro</var>, <var>mag</var>, <var>timestamp</var>, <var>overrun</var>] =</em> <strong>read(<var>obj</var>)</strong><a href='#index-read_0028obj_0029-12' class='copiable-anchor'></a></span></dt>
<dd><p>Read the sensor data
</p>
<span id="Inputs-192"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-155"></span><h4 class="subsubheading">Outputs</h4>
<p><var>accel</var> - acceleration reading from sensor.
</p>
<p><var>gyro</var> - angular acceleration reading from sensor.
</p>
<p><var>timestamp</var> - timestamp when read
</p>
<p><var>overrun</var> - overrun flag.
</p>
<p><var>readings</var> - table structure with fields for Timestamp, Acceleration, AngularVelocity.
 </p></dd></dl>
<dl class="def">
<dt id="index-info_0028obj_0029-5"><span class="category">: </span><span><em><var>inf</var> =</em> <strong>info(<var>obj</var>)</strong><a href='#index-info_0028obj_0029-5' class='copiable-anchor'></a></span></dt>
<dd><p>Read the sensor info
</p>
<span id="Inputs-193"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-156"></span><h4 class="subsubheading">Outputs</h4>
<p><var>inf</var> - structure containing the sensor information.
</p>
<p>Structure fields are:
 </p><dl compact="compact">
<dt><span>SensorId</span></dt>
<dd><p>sensor id value
 </p></dd>
<dt><span>Type</span></dt>
<dd><p>sensor type &rsquo;mpu6050&rsquo;
 </p></dd>
</dl>
</dd></dl>
<dl class="def">
<dt id="index-flush_0028obj_0029-5"><span class="category">: </span><span><em></em> <strong>flush(<var>obj</var>)</strong><a href='#index-flush_0028obj_0029-5' class='copiable-anchor'></a></span></dt>
<dd><p>Flush sensor data
</p>
<span id="Inputs-194"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-157"></span><h4 class="subsubheading">Outputs</h4>
<p>None
 </p></dd></dl>
<dl class="def">
<dt id="index-release_0028obj_0029-5"><span class="category">: </span><span><em></em> <strong>release(<var>obj</var>)</strong><a href='#index-release_0028obj_0029-5' class='copiable-anchor'></a></span></dt>
<dd><p>Release the resources of the sensor
</p>
<span id="Inputs-195"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-158"></span><h4 class="subsubheading">Outputs</h4>
<p>None
 </p></dd></dl>
</div>
<div class="subsection" id="si7021">
<h4 class="subsection">9.15.7 si7021</h4>
<span id="index-si7021"></span>
<dl class="def">
<dt id="index-si7021-1"><span class="category">: </span><span><em></em> <strong>si7021</strong><a href='#index-si7021-1' class='copiable-anchor'></a></span></dt>
<dd><p>SI7021 temperature and humidity sensor
 </p></dd></dl>
<span id="Methods-21"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-si7021_0028arObj_0029"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>si7021(<var>arObj</var>)</strong><a href='#index-si7021_0028arObj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-si7021_0028arObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>si7021(<var>arObj</var>,</strong> <em><var>propertyname, propertyvalue</var> ....)</em><a href='#index-si7021_0028arObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create si7021 sensor
 </p><span id="Inputs-196"></span><h4 class="subsubheading">Inputs</h4>
<p><var>arObj</var> - the arduino parent object
</p>
<p><var>propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 Current properties are:
 </p><dl compact="compact">
<dt><span>I2Caddress</span></dt>
<dd><p>I2C address of the si7021 (default 0x40)
 </p></dd>
<dt><span>Bus</span></dt>
<dd><p>I2C bus (default 0)
 </p></dd>
</dl>
<span id="Outputs-159"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created SI7020 object
</p>
<span id="Example-39"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 sensor = si7021(a)
 </code>
 </pre></div>
</dd></dl>
<dl class="def">
<dt id="index-readTemperature_0028obj_0029-5"><span class="category">: </span><span><em>[<var>C</var>, <var>timestamp</var>] =</em> <strong>readTemperature(<var>obj</var>)</strong><a href='#index-readTemperature_0028obj_0029-5' class='copiable-anchor'></a></span></dt>
<dd><p>Read the temperature
</p>
<span id="Inputs-197"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the si7021 object
</p>
<span id="Outputs-160"></span><h4 class="subsubheading">Outputs</h4>
<p><var>C</var> - read temperature in deg C.
</p>
<p><var>timestamp</var> - timestamp when read
</p>
<span id="Example-40"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 s = si7021(a)
 # get temp
 temp = s.readTemperature()
 </code>
 </pre></div>
<p><strong>See also:</strong> si7021.
 </p></dd></dl>
<dl class="def">
<dt id="index-readHumidity_0028obj_0029-1"><span class="category">: </span><span><em>[<var>relH</var>, <var>timestamp</var>] =</em> <strong>readHumidity(<var>obj</var>)</strong><a href='#index-readHumidity_0028obj_0029-1' class='copiable-anchor'></a></span></dt>
<dd><p>Read the relative humidity
</p>
<span id="Inputs-198"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the si7021 object
</p>
<span id="Outputs-161"></span><h4 class="subsubheading">Outputs</h4>
<p><var>relH</var> - relative humidity as a percentage (0 - 100.0)
</p>
<p><var>timestamp</var> - timestamp when read
 </p></dd></dl>
<dl class="def">
<dt id="index-read_0028obj_0029-13"><span class="category">: </span><span><em>[<var>readings</var>, <var>overrun</var>] =</em> <strong>read(<var>obj</var>)</strong><a href='#index-read_0028obj_0029-13' class='copiable-anchor'></a></span></dt>
<dt id="index-read_0028obj_0029-14"><span class="category">: </span><span><em>[<var>H</var>, <var>C</var>, <var>timestamp</var>, <var>overrun</var>] =</em> <strong>read(<var>obj</var>)</strong><a href='#index-read_0028obj_0029-14' class='copiable-anchor'></a></span></dt>
<dd><p>Read the sensor data
</p>
<span id="Inputs-199"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the si2071 sensor object
</p>
<span id="Outputs-162"></span><h4 class="subsubheading">Outputs</h4>
<p><var>H</var> - humidity reading from sensor.
</p>
<p><var>C</var> - temperature reading from sensor.
</p>
<p><var>timestamp</var> - timestamp when read
</p>
<p><var>overrun</var> - overrun flag.
</p>
<p><var>readings</var> - table structure with fields for Timestamp, Temperature and Humidity.
 </p></dd></dl>
<dl class="def">
<dt id="index-info_0028dsObj_0029-1"><span class="category">: </span><span><em><var>relH</var> =</em> <strong>info(<var>dsObj</var>)</strong><a href='#index-info_0028dsObj_0029-1' class='copiable-anchor'></a></span></dt>
<dd><p>Read the sensor info
</p>
<span id="Inputs-200"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the si7021 object
</p>
<span id="Outputs-163"></span><h4 class="subsubheading">Outputs</h4>
<p><var>inf</var> - structure containing the sensor information.
</p>
<p>Structure fields are:
 </p><dl compact="compact">
<dt><span>Version</span></dt>
<dd><p>Chip firmware version
 </p></dd>
<dt><span>SensorDd</span></dt>
<dd><p>sensor id value
 </p></dd>
<dt><span>Type</span></dt>
<dd><p>String for detected chip type
 </p></dd>
</dl>
</dd></dl>
<dl class="def">
<dt id="index-flush_0028obj_0029-6"><span class="category">: </span><span><em></em> <strong>flush(<var>obj</var>)</strong><a href='#index-flush_0028obj_0029-6' class='copiable-anchor'></a></span></dt>
<dd><p>Flush sensor data
</p>
<span id="Inputs-201"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-164"></span><h4 class="subsubheading">Outputs</h4>
<p>None
 </p></dd></dl>
<dl class="def">
<dt id="index-release_0028obj_0029-6"><span class="category">: </span><span><em></em> <strong>release(<var>obj</var>)</strong><a href='#index-release_0028obj_0029-6' class='copiable-anchor'></a></span></dt>
<dd><p>Release the resources of the sensor
</p>
<span id="Inputs-202"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-165"></span><h4 class="subsubheading">Outputs</h4>
<p>None
 </p></dd></dl>
<hr>
</div>
</div>
<div class="section" id="Test-Functions">
<div class="header">
<p>
Previous: <a href="#Sensors" accesskey="p" rel="prev">Sensors</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Test-Functions-1"></span><h3 class="section">9.16 Test Functions</h3>
<span id="index-Test-Functions"></span>
<ul class="section-toc">
<li><a href="#arduino_005fbistsetup" accesskey="1">arduino_bistsetup</a></li>
</ul>
<div class="subsection" id="arduino_005fbistsetup">
<h4 class="subsection">9.16.1 arduino_bistsetup</h4>
<span id="index-arduino_005fbistsetup"></span>
<dl class="def">
<dt id="index-arduino_005fbistsetup-1"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduino_bistsetup</strong> <em>()</em><a href='#index-arduino_005fbistsetup-1' class='copiable-anchor'></a></span></dt>
<dt id="index-arduino_005fbistsetup-2"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduino_bistsetup</strong> <em>(<var>propertyname</var>, <var>propertyvalue</var>)</em><a href='#index-arduino_005fbistsetup-2' class='copiable-anchor'></a></span></dt>
<dd><p>Install on an arduino the required core libraries to run the BIST tests
</p>
<p>As part of the setup, the arduino IDE will be opened to allow programming
 the arduino board.
</p>
<span id="Inputs-203"></span><h4 class="subsubheading">Inputs</h4>
<p><var>propertyname</var>, <var>propertyvalue</var> - A sequence of property name/value pairs can be given
 to set defaults while programming.
</p>
<p>Currently the following properties can be set:
 </p><dl compact="compact">
<dt><span>arduinobinary</span></dt>
<dd><p>The value should be the name/path of the arduino IDE binary for programming. If not specified,
 the function will attempt to find the binary itself.
 </p></dd>
<dt><span>debug</span></dt>
<dd><p>Set the debug flag when checking the arduino
 </p></dd>
</dl>
<span id="Outputs-166"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> - return 1 if everything installed ok
</p>
<p><strong>See also:</strong> arduino, arduinosetup.
 </p></dd></dl>
<hr>
</div>
</div>
</div>
<div class="appendix" id="Copying">
<div class="header">
<p>
Next: <a href="#Index" accesskey="n" rel="next">Index</a>, Previous: <a href="#Function-Reference" accesskey="p" rel="prev">Function Reference</a>, Up: <a href="#Top" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="GNU-General-Public-License"></span><h2 class="appendix">Appendix A GNU General Public License</h2>
<span id="index-warranty"></span>
<span id="index-copyright"></span>
<div align="center">Version 3, 29 June 2007
</div>
<div class="display">
<pre class="display">Copyright &copy; 2007 Free Software Foundation, Inc. <a href="http://fsf.org/">http://fsf.org/</a>
Everyone is permitted to copy and distribute verbatim copies of this
license document, but changing it is not allowed.
</pre></div>
<span id="Preamble"></span><h3 class="heading">Preamble</h3>
<p>The GNU General Public License is a free, copyleft license for
software and other kinds of works.
</p>
<p>The licenses for most software and other practical works are designed
to take away your freedom to share and change the works.  By contrast,
the GNU General Public License is intended to guarantee your freedom
to share and change all versions of a program&mdash;to make sure it remains
free software for all its users.  We, the Free Software Foundation,
use the GNU General Public License for most of our software; it
applies also to any other work released this way by its authors.  You
can apply it to your programs, too.
</p>
<p>When we speak of free software, we are referring to freedom, not
price.  Our General Public Licenses are designed to make sure that you
have the freedom to distribute copies of free software (and charge for
them if you wish), that you receive source code or can get it if you
want it, that you can change the software or use pieces of it in new
free programs, and that you know you can do these things.
</p>
<p>To protect your rights, we need to prevent others from denying you
these rights or asking you to surrender the rights.  Therefore, you
have certain responsibilities if you distribute copies of the
software, or if you modify it: responsibilities to respect the freedom
of others.
</p>
<p>For example, if you distribute copies of such a program, whether
gratis or for a fee, you must pass on to the recipients the same
freedoms that you received.  You must make sure that they, too,
receive or can get the source code.  And you must show them these
terms so they know their rights.
</p>
<p>Developers that use the GNU GPL protect your rights with two steps:
(1) assert copyright on the software, and (2) offer you this License
giving you legal permission to copy, distribute and/or modify it.
</p>
<p>For the developers&rsquo; and authors&rsquo; protection, the GPL clearly explains
that there is no warranty for this free software.  For both users&rsquo; and
authors&rsquo; sake, the GPL requires that modified versions be marked as
changed, so that their problems will not be attributed erroneously to
authors of previous versions.
</p>
<p>Some devices are designed to deny users access to install or run
modified versions of the software inside them, although the
manufacturer can do so.  This is fundamentally incompatible with the
aim of protecting users&rsquo; freedom to change the software.  The
systematic pattern of such abuse occurs in the area of products for
individuals to use, which is precisely where it is most unacceptable.
Therefore, we have designed this version of the GPL to prohibit the
practice for those products.  If such problems arise substantially in
other domains, we stand ready to extend this provision to those
domains in future versions of the GPL, as needed to protect the
freedom of users.
</p>
<p>Finally, every program is threatened constantly by software patents.
States should not allow patents to restrict development and use of
software on general-purpose computers, but in those that do, we wish
to avoid the special danger that patents applied to a free program
could make it effectively proprietary.  To prevent this, the GPL
assures that patents cannot be used to render the program non-free.
</p>
<p>The precise terms and conditions for copying, distribution and
modification follow.
</p>
<span id="TERMS-AND-CONDITIONS"></span><h3 class="heading">TERMS AND CONDITIONS</h3>
<ol start="0">
<li> Definitions.
<p>&ldquo;This License&rdquo; refers to version 3 of the GNU General Public License.
</p>
<p>&ldquo;Copyright&rdquo; also means copyright-like laws that apply to other kinds
of works, such as semiconductor masks.
</p>
<p>&ldquo;The Program&rdquo; refers to any copyrightable work licensed under this
License.  Each licensee is addressed as &ldquo;you&rdquo;.  &ldquo;Licensees&rdquo; and
&ldquo;recipients&rdquo; may be individuals or organizations.
</p>
<p>To &ldquo;modify&rdquo; a work means to copy from or adapt all or part of the work
in a fashion requiring copyright permission, other than the making of
an exact copy.  The resulting work is called a &ldquo;modified version&rdquo; of
the earlier work or a work &ldquo;based on&rdquo; the earlier work.
</p>
<p>A &ldquo;covered work&rdquo; means either the unmodified Program or a work based
on the Program.
</p>
<p>To &ldquo;propagate&rdquo; a work means to do anything with it that, without
permission, would make you directly or secondarily liable for
infringement under applicable copyright law, except executing it on a
computer or modifying a private copy.  Propagation includes copying,
distribution (with or without modification), making available to the
public, and in some countries other activities as well.
</p>
<p>To &ldquo;convey&rdquo; a work means any kind of propagation that enables other
parties to make or receive copies.  Mere interaction with a user
through a computer network, with no transfer of a copy, is not
conveying.
</p>
<p>An interactive user interface displays &ldquo;Appropriate Legal Notices&rdquo; to
the extent that it includes a convenient and prominently visible
feature that (1) displays an appropriate copyright notice, and (2)
tells the user that there is no warranty for the work (except to the
extent that warranties are provided), that licensees may convey the
work under this License, and how to view a copy of this License.  If
the interface presents a list of user commands or options, such as a
menu, a prominent item in the list meets this criterion.
</p>
</li><li> Source Code.
<p>The &ldquo;source code&rdquo; for a work means the preferred form of the work for
making modifications to it.  &ldquo;Object code&rdquo; means any non-source form
of a work.
</p>
<p>A &ldquo;Standard Interface&rdquo; means an interface that either is an official
standard defined by a recognized standards body, or, in the case of
interfaces specified for a particular programming language, one that
is widely used among developers working in that language.
</p>
<p>The &ldquo;System Libraries&rdquo; of an executable work include anything, other
than the work as a whole, that (a) is included in the normal form of
packaging a Major Component, but which is not part of that Major
Component, and (b) serves only to enable use of the work with that
Major Component, or to implement a Standard Interface for which an
implementation is available to the public in source code form.  A
&ldquo;Major Component&rdquo;, in this context, means a major essential component
(kernel, window system, and so on) of the specific operating system
(if any) on which the executable work runs, or a compiler used to
produce the work, or an object code interpreter used to run it.
</p>
<p>The &ldquo;Corresponding Source&rdquo; for a work in object code form means all
the source code needed to generate, install, and (for an executable
work) run the object code and to modify the work, including scripts to
control those activities.  However, it does not include the work&rsquo;s
System Libraries, or general-purpose tools or generally available free
programs which are used unmodified in performing those activities but
which are not part of the work.  For example, Corresponding Source
includes interface definition files associated with source files for
the work, and the source code for shared libraries and dynamically
linked subprograms that the work is specifically designed to require,
such as by intimate data communication or control flow between those
subprograms and other parts of the work.
</p>
<p>The Corresponding Source need not include anything that users can
regenerate automatically from other parts of the Corresponding Source.
</p>
<p>The Corresponding Source for a work in source code form is that same
work.
</p>
</li><li> Basic Permissions.
<p>All rights granted under this License are granted for the term of
copyright on the Program, and are irrevocable provided the stated
conditions are met.  This License explicitly affirms your unlimited
permission to run the unmodified Program.  The output from running a
covered work is covered by this License only if the output, given its
content, constitutes a covered work.  This License acknowledges your
rights of fair use or other equivalent, as provided by copyright law.
</p>
<p>You may make, run and propagate covered works that you do not convey,
without conditions so long as your license otherwise remains in force.
You may convey covered works to others for the sole purpose of having
them make modifications exclusively for you, or provide you with
facilities for running those works, provided that you comply with the
terms of this License in conveying all material for which you do not
control copyright.  Those thus making or running the covered works for
you must do so exclusively on your behalf, under your direction and
control, on terms that prohibit them from making any copies of your
copyrighted material outside their relationship with you.
</p>
<p>Conveying under any other circumstances is permitted solely under the
conditions stated below.  Sublicensing is not allowed; section 10
makes it unnecessary.
</p>
</li><li> Protecting Users&rsquo; Legal Rights From Anti-Circumvention Law.
<p>No covered work shall be deemed part of an effective technological
measure under any applicable law fulfilling obligations under article
11 of the WIPO copyright treaty adopted on 20 December 1996, or
similar laws prohibiting or restricting circumvention of such
measures.
</p>
<p>When you convey a covered work, you waive any legal power to forbid
circumvention of technological measures to the extent such
circumvention is effected by exercising rights under this License with
respect to the covered work, and you disclaim any intention to limit
operation or modification of the work as a means of enforcing, against
the work&rsquo;s users, your or third parties&rsquo; legal rights to forbid
circumvention of technological measures.
</p>
</li><li> Conveying Verbatim Copies.
<p>You may convey verbatim copies of the Program&rsquo;s source code as you
receive it, in any medium, provided that you conspicuously and
appropriately publish on each copy an appropriate copyright notice;
keep intact all notices stating that this License and any
non-permissive terms added in accord with section 7 apply to the code;
keep intact all notices of the absence of any warranty; and give all
recipients a copy of this License along with the Program.
</p>
<p>You may charge any price or no price for each copy that you convey,
and you may offer support or warranty protection for a fee.
</p>
</li><li> Conveying Modified Source Versions.
<p>You may convey a work based on the Program, or the modifications to
produce it from the Program, in the form of source code under the
terms of section 4, provided that you also meet all of these
conditions:
</p>
<ol type="a" start="1">
<li> The work must carry prominent notices stating that you modified it,
and giving a relevant date.
</li><li> The work must carry prominent notices stating that it is released
under this License and any conditions added under section 7.  This
requirement modifies the requirement in section 4 to &ldquo;keep intact all
notices&rdquo;.
</li><li> You must license the entire work, as a whole, under this License to
anyone who comes into possession of a copy.  This License will
therefore apply, along with any applicable section 7 additional terms,
to the whole of the work, and all its parts, regardless of how they
are packaged.  This License gives no permission to license the work in
any other way, but it does not invalidate such permission if you have
separately received it.
</li><li> If the work has interactive user interfaces, each must display
Appropriate Legal Notices; however, if the Program has interactive
interfaces that do not display Appropriate Legal Notices, your work
need not make them do so.
</li></ol>
<p>A compilation of a covered work with other separate and independent
works, which are not by their nature extensions of the covered work,
and which are not combined with it such as to form a larger program,
in or on a volume of a storage or distribution medium, is called an
&ldquo;aggregate&rdquo; if the compilation and its resulting copyright are not
used to limit the access or legal rights of the compilation&rsquo;s users
beyond what the individual works permit.  Inclusion of a covered work
in an aggregate does not cause this License to apply to the other
parts of the aggregate.
</p>
</li><li> Conveying Non-Source Forms.
<p>You may convey a covered work in object code form under the terms of
sections 4 and 5, provided that you also convey the machine-readable
Corresponding Source under the terms of this License, in one of these
ways:
</p>
<ol type="a" start="1">
<li> Convey the object code in, or embodied in, a physical product
(including a physical distribution medium), accompanied by the
Corresponding Source fixed on a durable physical medium customarily
used for software interchange.
</li><li> Convey the object code in, or embodied in, a physical product
(including a physical distribution medium), accompanied by a written
offer, valid for at least three years and valid for as long as you
offer spare parts or customer support for that product model, to give
anyone who possesses the object code either (1) a copy of the
Corresponding Source for all the software in the product that is
covered by this License, on a durable physical medium customarily used
for software interchange, for a price no more than your reasonable
cost of physically performing this conveying of source, or (2) access
to copy the Corresponding Source from a network server at no charge.
</li><li> Convey individual copies of the object code with a copy of the written
offer to provide the Corresponding Source.  This alternative is
allowed only occasionally and noncommercially, and only if you
received the object code with such an offer, in accord with subsection
6b.
</li><li> Convey the object code by offering access from a designated place
(gratis or for a charge), and offer equivalent access to the
Corresponding Source in the same way through the same place at no
further charge.  You need not require recipients to copy the
Corresponding Source along with the object code.  If the place to copy
the object code is a network server, the Corresponding Source may be
on a different server (operated by you or a third party) that supports
equivalent copying facilities, provided you maintain clear directions
next to the object code saying where to find the Corresponding Source.
Regardless of what server hosts the Corresponding Source, you remain
obligated to ensure that it is available for as long as needed to
satisfy these requirements.
</li><li> Convey the object code using peer-to-peer transmission, provided you
inform other peers where the object code and Corresponding Source of
the work are being offered to the general public at no charge under
subsection 6d.
</li></ol>
<p>A separable portion of the object code, whose source code is excluded
from the Corresponding Source as a System Library, need not be
included in conveying the object code work.
</p>
<p>A &ldquo;User Product&rdquo; is either (1) a &ldquo;consumer product&rdquo;, which means any
tangible personal property which is normally used for personal,
family, or household purposes, or (2) anything designed or sold for
incorporation into a dwelling.  In determining whether a product is a
consumer product, doubtful cases shall be resolved in favor of
coverage.  For a particular product received by a particular user,
&ldquo;normally used&rdquo; refers to a typical or common use of that class of
product, regardless of the status of the particular user or of the way
in which the particular user actually uses, or expects or is expected
to use, the product.  A product is a consumer product regardless of
whether the product has substantial commercial, industrial or
non-consumer uses, unless such uses represent the only significant
mode of use of the product.
</p>
<p>&ldquo;Installation Information&rdquo; for a User Product means any methods,
procedures, authorization keys, or other information required to
install and execute modified versions of a covered work in that User
Product from a modified version of its Corresponding Source.  The
information must suffice to ensure that the continued functioning of
the modified object code is in no case prevented or interfered with
solely because modification has been made.
</p>
<p>If you convey an object code work under this section in, or with, or
specifically for use in, a User Product, and the conveying occurs as
part of a transaction in which the right of possession and use of the
User Product is transferred to the recipient in perpetuity or for a
fixed term (regardless of how the transaction is characterized), the
Corresponding Source conveyed under this section must be accompanied
by the Installation Information.  But this requirement does not apply
if neither you nor any third party retains the ability to install
modified object code on the User Product (for example, the work has
been installed in ROM).
</p>
<p>The requirement to provide Installation Information does not include a
requirement to continue to provide support service, warranty, or
updates for a work that has been modified or installed by the
recipient, or for the User Product in which it has been modified or
installed.  Access to a network may be denied when the modification
itself materially and adversely affects the operation of the network
or violates the rules and protocols for communication across the
network.
</p>
<p>Corresponding Source conveyed, and Installation Information provided,
in accord with this section must be in a format that is publicly
documented (and with an implementation available to the public in
source code form), and must require no special password or key for
unpacking, reading or copying.
</p>
</li><li> Additional Terms.
<p>&ldquo;Additional permissions&rdquo; are terms that supplement the terms of this
License by making exceptions from one or more of its conditions.
Additional permissions that are applicable to the entire Program shall
be treated as though they were included in this License, to the extent
that they are valid under applicable law.  If additional permissions
apply only to part of the Program, that part may be used separately
under those permissions, but the entire Program remains governed by
this License without regard to the additional permissions.
</p>
<p>When you convey a copy of a covered work, you may at your option
remove any additional permissions from that copy, or from any part of
it.  (Additional permissions may be written to require their own
removal in certain cases when you modify the work.)  You may place
additional permissions on material, added by you to a covered work,
for which you have or can give appropriate copyright permission.
</p>
<p>Notwithstanding any other provision of this License, for material you
add to a covered work, you may (if authorized by the copyright holders
of that material) supplement the terms of this License with terms:
</p>
<ol type="a" start="1">
<li> Disclaiming warranty or limiting liability differently from the terms
of sections 15 and 16 of this License; or
</li><li> Requiring preservation of specified reasonable legal notices or author
attributions in that material or in the Appropriate Legal Notices
displayed by works containing it; or
</li><li> Prohibiting misrepresentation of the origin of that material, or
requiring that modified versions of such material be marked in
reasonable ways as different from the original version; or
</li><li> Limiting the use for publicity purposes of names of licensors or
authors of the material; or
</li><li> Declining to grant rights under trademark law for use of some trade
names, trademarks, or service marks; or
</li><li> Requiring indemnification of licensors and authors of that material by
anyone who conveys the material (or modified versions of it) with
contractual assumptions of liability to the recipient, for any
liability that these contractual assumptions directly impose on those
licensors and authors.
</li></ol>
<p>All other non-permissive additional terms are considered &ldquo;further
restrictions&rdquo; within the meaning of section 10.  If the Program as you
received it, or any part of it, contains a notice stating that it is
governed by this License along with a term that is a further
restriction, you may remove that term.  If a license document contains
a further restriction but permits relicensing or conveying under this
License, you may add to a covered work material governed by the terms
of that license document, provided that the further restriction does
not survive such relicensing or conveying.
</p>
<p>If you add terms to a covered work in accord with this section, you
must place, in the relevant source files, a statement of the
additional terms that apply to those files, or a notice indicating
where to find the applicable terms.
</p>
<p>Additional terms, permissive or non-permissive, may be stated in the
form of a separately written license, or stated as exceptions; the
above requirements apply either way.
</p>
</li><li> Termination.
<p>You may not propagate or modify a covered work except as expressly
provided under this License.  Any attempt otherwise to propagate or
modify it is void, and will automatically terminate your rights under
this License (including any patent licenses granted under the third
paragraph of section 11).
</p>
<p>However, if you cease all violation of this License, then your license
from a particular copyright holder is reinstated (a) provisionally,
unless and until the copyright holder explicitly and finally
terminates your license, and (b) permanently, if the copyright holder
fails to notify you of the violation by some reasonable means prior to
60 days after the cessation.
</p>
<p>Moreover, your license from a particular copyright holder is
reinstated permanently if the copyright holder notifies you of the
violation by some reasonable means, this is the first time you have
received notice of violation of this License (for any work) from that
copyright holder, and you cure the violation prior to 30 days after
your receipt of the notice.
</p>
<p>Termination of your rights under this section does not terminate the
licenses of parties who have received copies or rights from you under
this License.  If your rights have been terminated and not permanently
reinstated, you do not qualify to receive new licenses for the same
material under section 10.
</p>
</li><li> Acceptance Not Required for Having Copies.
<p>You are not required to accept this License in order to receive or run
a copy of the Program.  Ancillary propagation of a covered work
occurring solely as a consequence of using peer-to-peer transmission
to receive a copy likewise does not require acceptance.  However,
nothing other than this License grants you permission to propagate or
modify any covered work.  These actions infringe copyright if you do
not accept this License.  Therefore, by modifying or propagating a
covered work, you indicate your acceptance of this License to do so.
</p>
</li><li> Automatic Licensing of Downstream Recipients.
<p>Each time you convey a covered work, the recipient automatically
receives a license from the original licensors, to run, modify and
propagate that work, subject to this License.  You are not responsible
for enforcing compliance by third parties with this License.
</p>
<p>An &ldquo;entity transaction&rdquo; is a transaction transferring control of an
organization, or substantially all assets of one, or subdividing an
organization, or merging organizations.  If propagation of a covered
work results from an entity transaction, each party to that
transaction who receives a copy of the work also receives whatever
licenses to the work the party&rsquo;s predecessor in interest had or could
give under the previous paragraph, plus a right to possession of the
Corresponding Source of the work from the predecessor in interest, if
the predecessor has it or can get it with reasonable efforts.
</p>
<p>You may not impose any further restrictions on the exercise of the
rights granted or affirmed under this License.  For example, you may
not impose a license fee, royalty, or other charge for exercise of
rights granted under this License, and you may not initiate litigation
(including a cross-claim or counterclaim in a lawsuit) alleging that
any patent claim is infringed by making, using, selling, offering for
sale, or importing the Program or any portion of it.
</p>
</li><li> Patents.
<p>A &ldquo;contributor&rdquo; is a copyright holder who authorizes use under this
License of the Program or a work on which the Program is based.  The
work thus licensed is called the contributor&rsquo;s &ldquo;contributor version&rdquo;.
</p>
<p>A contributor&rsquo;s &ldquo;essential patent claims&rdquo; are all patent claims owned
or controlled by the contributor, whether already acquired or
hereafter acquired, that would be infringed by some manner, permitted
by this License, of making, using, or selling its contributor version,
but do not include claims that would be infringed only as a
consequence of further modification of the contributor version.  For
purposes of this definition, &ldquo;control&rdquo; includes the right to grant
patent sublicenses in a manner consistent with the requirements of
this License.
</p>
<p>Each contributor grants you a non-exclusive, worldwide, royalty-free
patent license under the contributor&rsquo;s essential patent claims, to
make, use, sell, offer for sale, import and otherwise run, modify and
propagate the contents of its contributor version.
</p>
<p>In the following three paragraphs, a &ldquo;patent license&rdquo; is any express
agreement or commitment, however denominated, not to enforce a patent
(such as an express permission to practice a patent or covenant not to
sue for patent infringement).  To &ldquo;grant&rdquo; such a patent license to a
party means to make such an agreement or commitment not to enforce a
patent against the party.
</p>
<p>If you convey a covered work, knowingly relying on a patent license,
and the Corresponding Source of the work is not available for anyone
to copy, free of charge and under the terms of this License, through a
publicly available network server or other readily accessible means,
then you must either (1) cause the Corresponding Source to be so
available, or (2) arrange to deprive yourself of the benefit of the
patent license for this particular work, or (3) arrange, in a manner
consistent with the requirements of this License, to extend the patent
license to downstream recipients.  &ldquo;Knowingly relying&rdquo; means you have
actual knowledge that, but for the patent license, your conveying the
covered work in a country, or your recipient&rsquo;s use of the covered work
in a country, would infringe one or more identifiable patents in that
country that you have reason to believe are valid.
</p>
<p>If, pursuant to or in connection with a single transaction or
arrangement, you convey, or propagate by procuring conveyance of, a
covered work, and grant a patent license to some of the parties
receiving the covered work authorizing them to use, propagate, modify
or convey a specific copy of the covered work, then the patent license
you grant is automatically extended to all recipients of the covered
work and works based on it.
</p>
<p>A patent license is &ldquo;discriminatory&rdquo; if it does not include within the
scope of its coverage, prohibits the exercise of, or is conditioned on
the non-exercise of one or more of the rights that are specifically
granted under this License.  You may not convey a covered work if you
are a party to an arrangement with a third party that is in the
business of distributing software, under which you make payment to the
third party based on the extent of your activity of conveying the
work, and under which the third party grants, to any of the parties
who would receive the covered work from you, a discriminatory patent
license (a) in connection with copies of the covered work conveyed by
you (or copies made from those copies), or (b) primarily for and in
connection with specific products or compilations that contain the
covered work, unless you entered into that arrangement, or that patent
license was granted, prior to 28 March 2007.
</p>
<p>Nothing in this License shall be construed as excluding or limiting
any implied license or other defenses to infringement that may
otherwise be available to you under applicable patent law.
</p>
</li><li> No Surrender of Others&rsquo; Freedom.
<p>If conditions are imposed on you (whether by court order, agreement or
otherwise) that contradict the conditions of this License, they do not
excuse you from the conditions of this License.  If you cannot convey
a covered work so as to satisfy simultaneously your obligations under
this License and any other pertinent obligations, then as a
consequence you may not convey it at all.  For example, if you agree
to terms that obligate you to collect a royalty for further conveying
from those to whom you convey the Program, the only way you could
satisfy both those terms and this License would be to refrain entirely
from conveying the Program.
</p>
</li><li> Use with the GNU Affero General Public License.
<p>Notwithstanding any other provision of this License, you have
permission to link or combine any covered work with a work licensed
under version 3 of the GNU Affero General Public License into a single
combined work, and to convey the resulting work.  The terms of this
License will continue to apply to the part which is the covered work,
but the special requirements of the GNU Affero General Public License,
section 13, concerning interaction through a network will apply to the
combination as such.
</p>
</li><li> Revised Versions of this License.
<p>The Free Software Foundation may publish revised and/or new versions
of the GNU General Public License from time to time.  Such new
versions will be similar in spirit to the present version, but may
differ in detail to address new problems or concerns.
</p>
<p>Each version is given a distinguishing version number.  If the Program
specifies that a certain numbered version of the GNU General Public
License &ldquo;or any later version&rdquo; applies to it, you have the option of
following the terms and conditions either of that numbered version or
of any later version published by the Free Software Foundation.  If
the Program does not specify a version number of the GNU General
Public License, you may choose any version ever published by the Free
Software Foundation.
</p>
<p>If the Program specifies that a proxy can decide which future versions
of the GNU General Public License can be used, that proxy&rsquo;s public
statement of acceptance of a version permanently authorizes you to
choose that version for the Program.
</p>
<p>Later license versions may give you additional or different
permissions.  However, no additional obligations are imposed on any
author or copyright holder as a result of your choosing to follow a
later version.
</p>
</li><li> Disclaimer of Warranty.
<p>THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY
APPLICABLE LAW.  EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT
HOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM &ldquo;AS IS&rdquo; WITHOUT
WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE.  THE ENTIRE RISK AS TO THE QUALITY AND
PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE PROGRAM PROVE
DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING, REPAIR OR
CORRECTION.
</p>
</li><li> Limitation of Liability.
<p>IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MODIFIES AND/OR
CONVEYS THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,
INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES
ARISING OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT
NOT LIMITED TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR
LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM
TO OPERATE WITH ANY OTHER PROGRAMS), EVEN IF SUCH HOLDER OR OTHER
PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
</p>
</li><li> Interpretation of Sections 15 and 16.
<p>If the disclaimer of warranty and limitation of liability provided
above cannot be given local legal effect according to their terms,
reviewing courts shall apply local law that most closely approximates
an absolute waiver of all civil liability in connection with the
Program, unless a warranty or assumption of liability accompanies a
copy of the Program in return for a fee.
</p>
</li></ol>
<span id="END-OF-TERMS-AND-CONDITIONS"></span><h3 class="heading">END OF TERMS AND CONDITIONS</h3>
<span id="How-to-Apply-These-Terms-to-Your-New-Programs"></span><h3 class="heading">How to Apply These Terms to Your New Programs</h3>
<p>If you develop a new program, and you want it to be of the greatest
possible use to the public, the best way to achieve this is to make it
free software which everyone can redistribute and change under these
terms.
</p>
<p>To do so, attach the following notices to the program.  It is safest
to attach them to the start of each source file to most effectively
state the exclusion of warranty; and each file should have at least
the &ldquo;copyright&rdquo; line and a pointer to where the full notice is found.
</p>
<div class="example">
<pre class="example"><var>one line to give the program's name and a brief idea of what it does.</var>  
Copyright (C) <var>year</var> <var>name of author</var>
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or (at
your option) any later version.
This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.
You should have received a copy of the GNU General Public License
along with this program.  If not, see <a href="http://www.gnu.org/licenses/">http://www.gnu.org/licenses/</a>.
</pre></div>
<p>Also add information on how to contact you by electronic and paper mail.
</p>
<p>If the program does terminal interaction, make it output a short
notice like this when it starts in an interactive mode:
</p>
<div class="example">
<pre class="example"><var>program</var> Copyright (C) <var>year</var> <var>name of author</var> 
This program comes with ABSOLUTELY NO WARRANTY; for details type &lsquo;<samp>show w</samp>&rsquo;.
This is free software, and you are welcome to redistribute it
under certain conditions; type &lsquo;<samp>show c</samp>&rsquo; for details.
</pre></div>
<p>The hypothetical commands &lsquo;<samp>show w</samp>&rsquo; and &lsquo;<samp>show c</samp>&rsquo; should show
the appropriate parts of the General Public License.  Of course, your
program&rsquo;s commands might be different; for a GUI interface, you would
use an &ldquo;about box&rdquo;.
</p>
<p>You should also get your employer (if you work as a programmer) or school,
if any, to sign a &ldquo;copyright disclaimer&rdquo; for the program, if necessary.
For more information on this, and how to apply and follow the GNU GPL, see
<a href="http://www.gnu.org/licenses/">http://www.gnu.org/licenses/</a>.
</p>
<p>The GNU General Public License does not permit incorporating your
program into proprietary programs.  If your program is a subroutine
library, you may consider it more useful to permit linking proprietary
applications with the library.  If this is what you want to do, use
the GNU Lesser General Public License instead of this License.  But
first, please read <a href="http://www.gnu.org/philosophy/why-not-lgpl.html">http://www.gnu.org/philosophy/why-not-lgpl.html</a>.
</p>
<hr>
</div>
<div class="unnumbered" id="Index">
<div class="header">
<p>
Previous: <a href="#Copying" accesskey="p" rel="prev">GNU General Public License</a>, Up: <a href="#Top" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Index-1"></span><h2 class="unnumbered">Index</h2>
 
<table><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#Index_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-E"><b>E</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-G"><b>G</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-H"><b>H</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-I"><b>I</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-K"><b>K</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-L"><b>L</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-M"><b>M</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-O"><b>O</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-P"><b>P</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-Q"><b>Q</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-R"><b>R</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-U"><b>U</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-V"><b>V</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-W"><b>W</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-cp" border="0">
<tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-A">A</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-addon">addon</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Addons">Arduino Addons</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Addon-Introduction">Addon Introduction</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Addons-Overview">Addons Overview</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Addon-package-_002em-file">Addon package .m file</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Addons-Overview">Addons Overview</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Addon-package-directory">Addon package directory</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Addons-Overview">Addons Overview</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Addon-package-header-file">Addon package header file</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Addons-Overview">Addons Overview</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AddonBase">AddonBase</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-I_002fO-package">Arduino I/O package</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Addons-Overview">Addons Overview</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Addons-Overview">Addons Overview</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-arduino">arduino</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Arduino-Addons">Arduino Addons</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Addons">Arduino Addons</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Arduino-Device-Functions">Arduino Device Functions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Device-Functions">Arduino Device Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Arduino-Functions">Arduino Functions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Arduino-I_002fO-package">Arduino I/O package</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-I_002fO-package">Arduino I/O package</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Arduino-I2C-Functions">Arduino I2C Functions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Arduino-Rotary-Encoder-Functions">Arduino Rotary Encoder Functions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Rotary-Encoder-Functions">Arduino Rotary Encoder Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Arduino-Sensor">Arduino Sensor</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Sensors-Overview">Sensors Overview</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Arduino-Sensors">Arduino Sensors</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Sensors">Arduino Sensors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Arduino-Serial-Functions">Arduino Serial Functions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Serial-Functions">Arduino Serial Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Arduino-Servo-Functions">Arduino Servo Functions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Servo-Functions">Arduino Servo Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Arduino-Shiftregister-Functions">Arduino Shiftregister Functions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Shiftregister-Functions">Arduino Shiftregister Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Arduino-SPI-Functions">Arduino SPI Functions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-SPI-Functions">Arduino SPI Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Arduino-Ultrasonic-Functions">Arduino Ultrasonic Functions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Ultrasonic-Functions">Arduino Ultrasonic Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-arduinosetup">arduinosetup</a>:</td><td>&nbsp;</td><td valign="top"><a href="#General-Functions">General Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-arduino_005fbistsetup">arduino_bistsetup</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Test-Functions">Test Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Available-Sensors">Available Sensors</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Sensors-Overview">Sensors Overview</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Available-Sensors-1">Available Sensors</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Sensors-Overview">Sensors Overview</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-B">B</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Basic-Input-and-Output-Overview">Basic Input and Output Overview</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Basic-Input-and-Output-Overview">Basic Input and Output Overview</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Blinking-an-LED">Blinking an LED</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Examples">Examples</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-bme280">bme280</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Sensors">Sensors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-bno055">bno055</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Sensors">Sensors</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-C">C</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-checkI2CAddress">checkI2CAddress</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-configurePin">configurePin</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-configurePinResource">configurePinResource</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Connecting-to-a-single-arduino">Connecting to a single arduino</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Connecting-to-an-arduino">Connecting to an arduino</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Connecting-to-a-specific-arduino">Connecting to a specific arduino</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Connecting-to-an-arduino">Connecting to an arduino</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Connecting-to-an-arduino">Connecting to an arduino</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Connecting-to-an-arduino">Connecting to an arduino</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-copyright">copyright</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Copying">Copying</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Creating-a-addon-object">Creating a addon object</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Addons-Overview">Addons Overview</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Creating-an-addon">Creating an addon</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Addons-Overview">Addons Overview</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-D">D</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-dcmotorv2">dcmotorv2</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Addons">Arduino Addons</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-decrementResourceCount">decrementResourceCount</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-delete">delete</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-delete-1">delete</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-delete-2">delete</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-delete-3">delete</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Rotary-Encoder-Functions">Arduino Rotary Encoder Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-delete-4">delete</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Servo-Functions">Arduino Servo Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-delete-5">delete</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Shiftregister-Functions">Arduino Shiftregister Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-delete-6">delete</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-SPI-Functions">Arduino SPI Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-delete-7">delete</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-SPI-Functions">Arduino SPI Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-delete-8">delete</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Serial-Functions">Arduino Serial Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-delete-9">delete</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Device-Functions">Arduino Device Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-delete-10">delete</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Ultrasonic-Functions">Arduino Ultrasonic Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-device">device</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Serial-Functions">Arduino Serial Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-device-1">device</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Device-Functions">Arduino Device Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-display">display</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-display-1">display</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-display-2">display</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-display-3">display</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Rotary-Encoder-Functions">Arduino Rotary Encoder Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-display-4">display</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Servo-Functions">Arduino Servo Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-display-5">display</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Shiftregister-Functions">Arduino Shiftregister Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-display-6">display</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-SPI-Functions">Arduino SPI Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-display-7">display</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-SPI-Functions">Arduino SPI Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-display-8">display</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Serial-Functions">Arduino Serial Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-display-9">display</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Device-Functions">Arduino Device Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-display-10">display</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Ultrasonic-Functions">Arduino Ultrasonic Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-DS1307">DS1307</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Addons">Arduino Addons</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-DS1307-1">DS1307</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Sensors">Arduino Sensors</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-E">E</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Echo">Echo</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Addons">Arduino Addons</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-EEPRom">EEPRom</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Addons">Arduino Addons</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Examples">Examples</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Examples">Examples</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-F">F</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-FilePath">FilePath</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-I_002fO-package">Arduino I/O package</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-flush">flush</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Serial-Functions">Arduino Serial Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-flush-1">flush</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Device-Functions">Arduino Device Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Function-Reference">Function Reference</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Function-Reference">Function Reference</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-G">G</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-General-Functions">General Functions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#General-Functions">General Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-getBoardConfig">getBoardConfig</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-I_002fO-package">Arduino I/O package</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-getEndian">getEndian</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-getI2CTerminals">getI2CTerminals</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-getInterruptTerminals">getInterruptTerminals</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-getLEDTerminals">getLEDTerminals</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-getMCU">getMCU</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-getPinAlias">getPinAlias</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-getPinInfo">getPinInfo</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-getPinsFromTerminals">getPinsFromTerminals</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-getPWMTerminals">getPWMTerminals</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-getResourceCount">getResourceCount</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-getResourceOwner">getResourceOwner</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-getServoTerminals">getServoTerminals</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-getSharedResourceProperty">getSharedResourceProperty</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-getSPITerminals">getSPITerminals</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-getTerminalMode">getTerminalMode</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-getTerminalsFromPins">getTerminalsFromPins</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GUVAS12SD">GUVAS12SD</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Sensors">Arduino Sensors</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-H">H</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Hardware-setup">Hardware setup</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Hardware-setup">Hardware setup</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-I">I</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-I2C-communication">I2C communication</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Protocol-based-I_002fO-Overview">Protocol based I/O Overview</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-i2cdev">i2cdev</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-incrementResourceCount">incrementResourceCount</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Installing-and-loading">Installing and loading</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Installing-and-loading">Installing and loading</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-isarduino">isarduino</a>:</td><td>&nbsp;</td><td valign="top"><a href="#General-Functions">General Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-isTerminalAnalog">isTerminalAnalog</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-isTerminalDigital">isTerminalDigital</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-K">K</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Known-Arduino-Board-Types">Known Arduino Board Types</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Hardware-setup">Hardware setup</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-L">L</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-LCD">LCD</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Addons">Arduino Addons</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-LibFiles">LibFiles</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-I_002fO-package">Arduino I/O package</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-LibraryBase">LibraryBase</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-I_002fO-package">Arduino I/O package</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-LibraryBase-1">LibraryBase</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Matlab-Compatability-Classes">Matlab Compatability Classes</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-lis3dh">lis3dh</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Sensors">Sensors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-listArduinoLibraries">listArduinoLibraries</a>:</td><td>&nbsp;</td><td valign="top"><a href="#General-Functions">General Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Loading">Loading</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Installing-and-loading">Installing and loading</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-lps22hb">lps22hb</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Sensors">Sensors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-lsm6dso">lsm6dso</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Sensors">Sensors</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-M">M</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Matlab-Compatability-Classes">Matlab Compatability Classes</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Matlab-Compatability-Classes">Matlab Compatability Classes</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Matlab-Compatible-Sensor">Matlab Compatible Sensor</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Sensors-Overview">Sensors Overview</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-motorshieldv2">motorshieldv2</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Addons">Arduino Addons</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-MPC3002">MPC3002</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Sensors">Arduino Sensors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-mpu6050">mpu6050</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Sensors">Sensors</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-O">O</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Off_002dline-install">Off-line install</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Installing-and-loading">Installing and loading</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Online-install">Online install</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Installing-and-loading">Installing and loading</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-P">P</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Performing-Analog-Input">Performing Analog Input</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Basic-Input-and-Output-Overview">Basic Input and Output Overview</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Performing-Digital-I_002fO">Performing Digital I/O</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Basic-Input-and-Output-Overview">Basic Input and Output Overview</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-playTone">playTone</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Programming-the-Arduino">Programming the Arduino</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Hardware-setup">Hardware setup</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Programming-the-arduino-with-the-addon">Programming the arduino with the addon</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Addons-Overview">Addons Overview</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Protocol-based-I_002fO-Overview">Protocol based I/O Overview</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Protocol-based-I_002fO-Overview">Protocol based I/O Overview</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-Q">Q</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Querying-available-arduinos">Querying available arduinos</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Connecting-to-an-arduino">Connecting to an arduino</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-R">R</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-read">read</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-read-1">read</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-read-2">read</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Shiftregister-Functions">Arduino Shiftregister Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-read-3">read</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Serial-Functions">Arduino Serial Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-read-4">read</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Device-Functions">Arduino Device Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-readAnalogPin">readAnalogPin</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-readCount">readCount</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Rotary-Encoder-Functions">Arduino Rotary Encoder Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-readDigitalPin">readDigitalPin</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-readDistance">readDistance</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Ultrasonic-Functions">Arduino Ultrasonic Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-readEchoTime">readEchoTime</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Ultrasonic-Functions">Arduino Ultrasonic Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-readPosition">readPosition</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Servo-Functions">Arduino Servo Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-readRegister">readRegister</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-readRegister-1">readRegister</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-readRegister-2">readRegister</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Device-Functions">Arduino Device Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-readSpeed">readSpeed</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Rotary-Encoder-Functions">Arduino Rotary Encoder Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-readVoltage">readVoltage</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-reset">reset</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-reset-1">reset</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Shiftregister-Functions">Arduino Shiftregister Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-resetCount">resetCount</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Rotary-Encoder-Functions">Arduino Rotary Encoder Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Rotary-Encoder">Rotary Encoder</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Protocol-based-I_002fO-Overview">Protocol based I/O Overview</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-rotaryEncoder">rotaryEncoder</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Rotary-Encoder-Functions">Arduino Rotary Encoder Functions</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-S">S</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-scanForArduinos">scanForArduinos</a>:</td><td>&nbsp;</td><td valign="top"><a href="#General-Functions">General Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-scanI2Cbus">scanI2Cbus</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-sendCommand">sendCommand</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Sensors">Sensors</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Sensors">Sensors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Sensors-Overview">Sensors Overview</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Sensors-Overview">Sensors Overview</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Serial-communication">Serial communication</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Protocol-based-I_002fO-Overview">Protocol based I/O Overview</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-servo">servo</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Servo-Functions">Arduino Servo Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Servo-communication">Servo communication</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Protocol-based-I_002fO-Overview">Protocol based I/O Overview</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-setSharedResourceProperty">setSharedResourceProperty</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Shift-Registers">Shift Registers</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Protocol-based-I_002fO-Overview">Protocol based I/O Overview</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-shiftRegister">shiftRegister</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Shiftregister-Functions">Arduino Shiftregister Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-SI7021">SI7021</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Sensors">Arduino Sensors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-si7021">si7021</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Sensors">Sensors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-SimpleStepper">SimpleStepper</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Addons">Arduino Addons</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-SPI-communication">SPI communication</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Protocol-based-I_002fO-Overview">Protocol based I/O Overview</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-spidev">spidev</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-SPI-Functions">Arduino SPI Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-stepper">stepper</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Addons">Arduino Addons</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-subsref">subsref</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-subsref-1">subsref</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-subsref-2">subsref</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Rotary-Encoder-Functions">Arduino Rotary Encoder Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-subsref-3">subsref</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Servo-Functions">Arduino Servo Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-subsref-4">subsref</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Shiftregister-Functions">Arduino Shiftregister Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-subsref-5">subsref</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-SPI-Functions">Arduino SPI Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-subsref-6">subsref</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-SPI-Functions">Arduino SPI Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-subsref-7">subsref</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Serial-Functions">Arduino Serial Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-subsref-8">subsref</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Device-Functions">Arduino Device Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-subsref-9">subsref</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Ultrasonic-Functions">Arduino Ultrasonic Functions</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-T">T</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Test-Functions">Test Functions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Test-Functions">Test Functions</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-U">U</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-ultrasonic">ultrasonic</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Ultrasonic-Functions">Arduino Ultrasonic Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Ultrasonic-Sensors">Ultrasonic Sensors</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Protocol-based-I_002fO-Overview">Protocol based I/O Overview</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-uptime">uptime</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Using-Addons">Using Addons</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Addons-Overview">Addons Overview</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Using-I2C-to-communicate-with-an-EEPROM">Using I2C to communicate with an EEPROM</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Examples">Examples</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Using-SPI-to-communicate-with-a-mcp3002-10-bit-ADC">Using SPI to communicate with a mcp3002 10 bit ADC</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Examples">Examples</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-V">V</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-validatePin">validatePin</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Verify-octave-can-see-the-addon">Verify octave can see the addon</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Addons-Overview">Addons Overview</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-version">version</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-W">W</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-warranty">warranty</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Copying">Copying</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-write">write</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-write-1">write</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-write-2">write</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Shiftregister-Functions">Arduino Shiftregister Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-write-3">write</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Serial-Functions">Arduino Serial Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-write-4">write</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Device-Functions">Arduino Device Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-writeDigitalPin">writeDigitalPin</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-writePosition">writePosition</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Servo-Functions">Arduino Servo Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-writePWMDutyCycle">writePWMDutyCycle</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-writePWMVoltage">writePWMVoltage</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-writeRead">writeRead</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-SPI-Functions">Arduino SPI Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-writeRead-1">writeRead</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-SPI-Functions">Arduino SPI Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-writeRead-2">writeRead</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Device-Functions">Arduino Device Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-writeRegister">writeRegister</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-writeRegister-1">writeRegister</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-writeRegister-2">writeRegister</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arduino-Device-Functions">Arduino Device Functions</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
<table><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#Index_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-E"><b>E</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-G"><b>G</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-H"><b>H</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-I"><b>I</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-K"><b>K</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-L"><b>L</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-M"><b>M</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-O"><b>O</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-P"><b>P</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-Q"><b>Q</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-R"><b>R</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-U"><b>U</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-V"><b>V</b></a>
 &nbsp; 
<a class="summary-letter" href="#Index_cp_letter-W"><b>W</b></a>
 &nbsp; 
</td></tr></table>
 
</div>
</div>
