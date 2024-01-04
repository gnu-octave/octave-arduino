---
layout: "default"
permalink: "/manual/"
title: "Arduino Toolkit - Manual"
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
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#Installing-and-loading" accesskey="n" rel="next">Installing and loading</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="top" id="Introduction">Introduction</h1>
<p>The Arduino toolkit is a somewhat Matlab compatible arduino toolkit for GNU octave.
</p>
<div class="element-contents" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>
<div class="contents">
<ul class="toc-numbered-mark">
  <li><a id="toc-Installing-and-loading-1" href="#Installing-and-loading">1 Installing and loading</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-Online-Direct-install" href="#Online-Direct-install">1.1 Online Direct install</a></li>
    <li><a id="toc-Off_002dline-install" href="#Off_002dline-install">1.2 Off-line install</a></li>
    <li><a id="toc-Loading" href="#Loading">1.3 Loading</a></li>
  </ul></li>
  <li><a id="toc-Hardware-setup-1" href="#Hardware-setup">2 Hardware setup</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-Programming-the-Arduino" href="#Programming-the-Arduino">2.1 Programming the Arduino</a></li>
    <li><a id="toc-Known-Arduino-Board-Types" href="#Known-Arduino-Board-Types">2.2 Known Arduino Board Types</a></li>
  </ul></li>
  <li><a id="toc-Connecting-to-an-arduino-1" href="#Connecting-to-an-arduino">3 Connecting to an arduino</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-Connecting-to-a-single-arduino" href="#Connecting-to-a-single-arduino">3.1 Connecting to a single arduino</a></li>
    <li><a id="toc-Connecting-to-a-specific-arduino" href="#Connecting-to-a-specific-arduino">3.2 Connecting to a specific arduino</a></li>
    <li><a id="toc-Querying-available-arduinos" href="#Querying-available-arduinos">3.3 Querying available arduinos</a></li>
  </ul></li>
  <li><a id="toc-Basic-Input-and-Output-Overview-1" href="#Basic-Input-and-Output-Overview">4 Basic Input and Output Overview</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-Performing-Digital-I_002fO" href="#Performing-Digital-I_002fO">4.1 Performing Digital I/O</a></li>
    <li><a id="toc-Performing-Analog-Input" href="#Performing-Analog-Input">4.2 Performing Analog Input</a></li>
  </ul></li>
  <li><a id="toc-Protocol-based-I_002fO-Overview-1" href="#Protocol-based-I_002fO-Overview">5 Protocol based I/O Overview</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-SPI-communication" href="#SPI-communication">5.1 SPI communication</a></li>
    <li><a id="toc-I2C-communication" href="#I2C-communication">5.2 I2C communication</a></li>
    <li><a id="toc-Servo-communication" href="#Servo-communication">5.3 Servo communication</a></li>
    <li><a id="toc-Shift-Registers" href="#Shift-Registers">5.4 Shift Registers</a></li>
    <li><a id="toc-Rotary-Encoders" href="#Rotary-Encoders">5.5 Rotary Encoders</a></li>
    <li><a id="toc-Ultrasonic-Sensors" href="#Ultrasonic-Sensors">5.6 Ultrasonic Sensors</a></li>
    <li><a id="toc-Serial-communication" href="#Serial-communication">5.7 Serial communication</a></li>
  </ul></li>
  <li><a id="toc-Addons-Overview-1" href="#Addons-Overview">6 Addons Overview</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-Addon-Introduction" href="#Addon-Introduction">6.1 Addon Introduction</a></li>
    <li><a id="toc-Creating-an-addon" href="#Creating-an-addon">6.2 Creating an addon</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-Addon-package-directory" href="#Addon-package-directory">6.2.1 Addon package directory</a></li>
      <li><a id="toc-Addon-package-_002em-file" href="#Addon-package-_002em-file">6.2.2 Addon package .m file</a></li>
      <li><a id="toc-Addon-package-header-file" href="#Addon-package-header-file">6.2.3 Addon package header file</a></li>
      <li><a id="toc-Verify-octave-can-see-the-addon" href="#Verify-octave-can-see-the-addon">6.2.4 Verify octave can see the addon</a></li>
    </ul></li>
    <li><a id="toc-Using-addons" href="#Using-addons">6.3 Using addons</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-Programming-the-arduino-with-the-addon" href="#Programming-the-arduino-with-the-addon">6.3.1 Programming the arduino with the addon</a></li>
      <li><a id="toc-Creating-a-addon-object" href="#Creating-a-addon-object">6.3.2 Creating a addon object</a></li>
    </ul></li>
  </ul></li>
  <li><a id="toc-Sensors-Overview-1" href="#Sensors-Overview">7 Sensors Overview</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-Matlab-Compatible-Sensors" href="#Matlab-Compatible-Sensors">7.1 Matlab Compatible Sensors</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-Overview" href="#Overview">7.1.1 Overview</a></li>
      <li><a id="toc-Available-Sensors" href="#Available-Sensors">7.1.2 Available Sensors</a></li>
    </ul></li>
    <li><a id="toc-Lightweight-Arduino-Sensors" href="#Lightweight-Arduino-Sensors">7.2 Lightweight Arduino Sensors</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-Overview-1" href="#Overview-1">7.2.1 Overview</a></li>
      <li><a id="toc-Available-Sensors-1" href="#Available-Sensors-1">7.2.2 Available Sensors</a></li>
    </ul></li>
  </ul></li>
  <li><a id="toc-Examples-1" href="#Examples">8 Examples</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-Blinking-an-LED" href="#Blinking-an-LED">8.1 Blinking an LED</a></li>
    <li><a id="toc-Using-I2C-to-communicate-with-an-EEPROM" href="#Using-I2C-to-communicate-with-an-EEPROM">8.2 Using I2C to communicate with an EEPROM</a></li>
    <li><a id="toc-Using-SPI-to-communicate-with-a-mcp3002-10-bit-ADC" href="#Using-SPI-to-communicate-with-a-mcp3002-10-bit-ADC">8.3 Using SPI to communicate with a mcp3002 10 bit ADC</a></li>
  </ul></li>
  <li><a id="toc-Function-Reference-1" href="#Function-Reference">9 Function Reference</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-General-Functions-1" href="#General-Functions">9.1 General Functions</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-arduinosetup" href="#arduinosetup">9.1.1 arduinosetup</a></li>
      <li><a id="toc-isarduino" href="#isarduino">9.1.2 isarduino</a></li>
      <li><a id="toc-listArduinoLibraries" href="#listArduinoLibraries">9.1.3 listArduinoLibraries</a></li>
      <li><a id="toc-scanForArduinos" href="#scanForArduinos">9.1.4 scanForArduinos</a></li>
    </ul></li>
    <li><a id="toc-Arduino-Functions-1" href="#Arduino-Functions">9.2 Arduino Functions</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-_0040arduino_002farduino" href="#g_t_0040arduino_002farduino">9.2.1 @arduino/arduino</a></li>
      <li><a id="toc-_0040arduino_002fcheckI2CAddress" href="#g_t_0040arduino_002fcheckI2CAddress">9.2.2 @arduino/checkI2CAddress</a></li>
      <li><a id="toc-_0040arduino_002fconfigurePin" href="#g_t_0040arduino_002fconfigurePin">9.2.3 @arduino/configurePin</a></li>
      <li><a id="toc-_0040arduino_002fconfigurePinResource" href="#g_t_0040arduino_002fconfigurePinResource">9.2.4 @arduino/configurePinResource</a></li>
      <li><a id="toc-_0040arduino_002fdecrementResourceCount" href="#g_t_0040arduino_002fdecrementResourceCount">9.2.5 @arduino/decrementResourceCount</a></li>
      <li><a id="toc-_0040arduino_002fdelete" href="#g_t_0040arduino_002fdelete">9.2.6 @arduino/delete</a></li>
      <li><a id="toc-_0040arduino_002fdisp" href="#g_t_0040arduino_002fdisp">9.2.7 @arduino/disp</a></li>
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
    <ul class="toc-numbered-mark">
      <li><a id="toc-_0040device_002fdelete" href="#g_t_0040device_002fdelete">9.3.1 @device/delete</a></li>
      <li><a id="toc-_0040device_002fdisp" href="#g_t_0040device_002fdisp">9.3.2 @device/disp</a></li>
      <li><a id="toc-_0040device_002fread" href="#g_t_0040device_002fread">9.3.3 @device/read</a></li>
      <li><a id="toc-_0040device_002freadRegister" href="#g_t_0040device_002freadRegister">9.3.4 @device/readRegister</a></li>
      <li><a id="toc-_0040device_002fsubsref" href="#g_t_0040device_002fsubsref">9.3.5 @device/subsref</a></li>
      <li><a id="toc-_0040device_002fwrite" href="#g_t_0040device_002fwrite">9.3.6 @device/write</a></li>
      <li><a id="toc-_0040device_002fwriteRegister" href="#g_t_0040device_002fwriteRegister">9.3.7 @device/writeRegister</a></li>
      <li><a id="toc-_0040i2cdev_002fdelete" href="#g_t_0040i2cdev_002fdelete">9.3.8 @i2cdev/delete</a></li>
      <li><a id="toc-_0040i2cdev_002fdisp" href="#g_t_0040i2cdev_002fdisp">9.3.9 @i2cdev/disp</a></li>
      <li><a id="toc-_0040i2cdev_002fi2cdev" href="#g_t_0040i2cdev_002fi2cdev">9.3.10 @i2cdev/i2cdev</a></li>
      <li><a id="toc-_0040i2cdev_002fread" href="#g_t_0040i2cdev_002fread">9.3.11 @i2cdev/read</a></li>
      <li><a id="toc-_0040i2cdev_002freadRegister" href="#g_t_0040i2cdev_002freadRegister">9.3.12 @i2cdev/readRegister</a></li>
      <li><a id="toc-_0040i2cdev_002fsubsref" href="#g_t_0040i2cdev_002fsubsref">9.3.13 @i2cdev/subsref</a></li>
      <li><a id="toc-_0040i2cdev_002fwrite" href="#g_t_0040i2cdev_002fwrite">9.3.14 @i2cdev/write</a></li>
      <li><a id="toc-_0040i2cdev_002fwriteRegister" href="#g_t_0040i2cdev_002fwriteRegister">9.3.15 @i2cdev/writeRegister</a></li>
      <li><a id="toc-scanI2Cbus" href="#scanI2Cbus">9.3.16 scanI2Cbus</a></li>
    </ul></li>
    <li><a id="toc-Arduino-Rotary-Encoder-Functions-1" href="#Arduino-Rotary-Encoder-Functions">9.4 Arduino Rotary Encoder Functions</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-_0040rotaryEncoder_002fdelete" href="#g_t_0040rotaryEncoder_002fdelete">9.4.1 @rotaryEncoder/delete</a></li>
      <li><a id="toc-_0040rotaryEncoder_002fdisp" href="#g_t_0040rotaryEncoder_002fdisp">9.4.2 @rotaryEncoder/disp</a></li>
      <li><a id="toc-_0040rotaryEncoder_002freadCount" href="#g_t_0040rotaryEncoder_002freadCount">9.4.3 @rotaryEncoder/readCount</a></li>
      <li><a id="toc-_0040rotaryEncoder_002freadSpeed" href="#g_t_0040rotaryEncoder_002freadSpeed">9.4.4 @rotaryEncoder/readSpeed</a></li>
      <li><a id="toc-_0040rotaryEncoder_002fresetCount" href="#g_t_0040rotaryEncoder_002fresetCount">9.4.5 @rotaryEncoder/resetCount</a></li>
      <li><a id="toc-_0040rotaryEncoder_002frotaryEncoder" href="#g_t_0040rotaryEncoder_002frotaryEncoder">9.4.6 @rotaryEncoder/rotaryEncoder</a></li>
      <li><a id="toc-_0040rotaryEncoder_002fsubsref" href="#g_t_0040rotaryEncoder_002fsubsref">9.4.7 @rotaryEncoder/subsref</a></li>
    </ul></li>
    <li><a id="toc-Arduino-Servo-Functions-1" href="#Arduino-Servo-Functions">9.5 Arduino Servo Functions</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-_0040servo_002fdelete" href="#g_t_0040servo_002fdelete">9.5.1 @servo/delete</a></li>
      <li><a id="toc-_0040servo_002fdisp" href="#g_t_0040servo_002fdisp">9.5.2 @servo/disp</a></li>
      <li><a id="toc-_0040servo_002freadPosition" href="#g_t_0040servo_002freadPosition">9.5.3 @servo/readPosition</a></li>
      <li><a id="toc-_0040servo_002fservo" href="#g_t_0040servo_002fservo">9.5.4 @servo/servo</a></li>
      <li><a id="toc-_0040servo_002fsubsref" href="#g_t_0040servo_002fsubsref">9.5.5 @servo/subsref</a></li>
      <li><a id="toc-_0040servo_002fwritePosition" href="#g_t_0040servo_002fwritePosition">9.5.6 @servo/writePosition</a></li>
    </ul></li>
    <li><a id="toc-Arduino-Shiftregister-Functions-1" href="#Arduino-Shiftregister-Functions">9.6 Arduino Shiftregister Functions</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-_0040shiftRegister_002fdelete" href="#g_t_0040shiftRegister_002fdelete">9.6.1 @shiftRegister/delete</a></li>
      <li><a id="toc-_0040shiftRegister_002fdisp" href="#g_t_0040shiftRegister_002fdisp">9.6.2 @shiftRegister/disp</a></li>
      <li><a id="toc-_0040shiftRegister_002fread" href="#g_t_0040shiftRegister_002fread">9.6.3 @shiftRegister/read</a></li>
      <li><a id="toc-_0040shiftRegister_002freset" href="#g_t_0040shiftRegister_002freset">9.6.4 @shiftRegister/reset</a></li>
      <li><a id="toc-_0040shiftRegister_002fshiftRegister" href="#g_t_0040shiftRegister_002fshiftRegister">9.6.5 @shiftRegister/shiftRegister</a></li>
      <li><a id="toc-_0040shiftRegister_002fsubsref" href="#g_t_0040shiftRegister_002fsubsref">9.6.6 @shiftRegister/subsref</a></li>
      <li><a id="toc-_0040shiftRegister_002fwrite" href="#g_t_0040shiftRegister_002fwrite">9.6.7 @shiftRegister/write</a></li>
    </ul></li>
    <li><a id="toc-Arduino-SPI-Functions-1" href="#Arduino-SPI-Functions">9.7 Arduino SPI Functions</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-_0040device_002fdelete-1" href="#g_t_0040device_002fdelete-1">9.7.1 @device/delete</a></li>
      <li><a id="toc-_0040device_002fdisp-1" href="#g_t_0040device_002fdisp-1">9.7.2 @device/disp</a></li>
      <li><a id="toc-_0040device_002fsubsref-1" href="#g_t_0040device_002fsubsref-1">9.7.3 @device/subsref</a></li>
      <li><a id="toc-_0040device_002fwriteRead" href="#g_t_0040device_002fwriteRead">9.7.4 @device/writeRead</a></li>
      <li><a id="toc-_0040spidev_002fdelete" href="#g_t_0040spidev_002fdelete">9.7.5 @spidev/delete</a></li>
      <li><a id="toc-_0040spidev_002fdisp" href="#g_t_0040spidev_002fdisp">9.7.6 @spidev/disp</a></li>
      <li><a id="toc-_0040spidev_002fspidev" href="#g_t_0040spidev_002fspidev">9.7.7 @spidev/spidev</a></li>
      <li><a id="toc-_0040spidev_002fsubsref" href="#g_t_0040spidev_002fsubsref">9.7.8 @spidev/subsref</a></li>
      <li><a id="toc-_0040spidev_002fwriteRead" href="#g_t_0040spidev_002fwriteRead">9.7.9 @spidev/writeRead</a></li>
    </ul></li>
    <li><a id="toc-Arduino-Serial-Functions-1" href="#Arduino-Serial-Functions">9.8 Arduino Serial Functions</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-_0040device_002fdelete-2" href="#g_t_0040device_002fdelete-2">9.8.1 @device/delete</a></li>
      <li><a id="toc-_0040device_002fdevice" href="#g_t_0040device_002fdevice">9.8.2 @device/device</a></li>
      <li><a id="toc-_0040device_002fdisp-2" href="#g_t_0040device_002fdisp-2">9.8.3 @device/disp</a></li>
      <li><a id="toc-_0040device_002fflush" href="#g_t_0040device_002fflush">9.8.4 @device/flush</a></li>
      <li><a id="toc-_0040device_002fread-1" href="#g_t_0040device_002fread-1">9.8.5 @device/read</a></li>
      <li><a id="toc-_0040device_002fsubsref-2" href="#g_t_0040device_002fsubsref-2">9.8.6 @device/subsref</a></li>
      <li><a id="toc-_0040device_002fwrite-1" href="#g_t_0040device_002fwrite-1">9.8.7 @device/write</a></li>
    </ul></li>
    <li><a id="toc-Arduino-Device-Functions-1" href="#Arduino-Device-Functions">9.9 Arduino Device Functions</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-_0040device_002fdelete-3" href="#g_t_0040device_002fdelete-3">9.9.1 @device/delete</a></li>
      <li><a id="toc-_0040device_002fdevice-1" href="#g_t_0040device_002fdevice-1">9.9.2 @device/device</a></li>
      <li><a id="toc-_0040device_002fdisp-3" href="#g_t_0040device_002fdisp-3">9.9.3 @device/disp</a></li>
      <li><a id="toc-_0040device_002fflush-1" href="#g_t_0040device_002fflush-1">9.9.4 @device/flush</a></li>
      <li><a id="toc-_0040device_002fread-2" href="#g_t_0040device_002fread-2">9.9.5 @device/read</a></li>
      <li><a id="toc-_0040device_002freadRegister-1" href="#g_t_0040device_002freadRegister-1">9.9.6 @device/readRegister</a></li>
      <li><a id="toc-_0040device_002fsubsref-3" href="#g_t_0040device_002fsubsref-3">9.9.7 @device/subsref</a></li>
      <li><a id="toc-_0040device_002fwrite-2" href="#g_t_0040device_002fwrite-2">9.9.8 @device/write</a></li>
      <li><a id="toc-_0040device_002fwriteRead-1" href="#g_t_0040device_002fwriteRead-1">9.9.9 @device/writeRead</a></li>
      <li><a id="toc-_0040device_002fwriteRegister-1" href="#g_t_0040device_002fwriteRegister-1">9.9.10 @device/writeRegister</a></li>
    </ul></li>
    <li><a id="toc-Arduino-Ultrasonic-Functions-1" href="#Arduino-Ultrasonic-Functions">9.10 Arduino Ultrasonic Functions</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-_0040ultrasonic_002fdelete" href="#g_t_0040ultrasonic_002fdelete">9.10.1 @ultrasonic/delete</a></li>
      <li><a id="toc-_0040ultrasonic_002fdisp" href="#g_t_0040ultrasonic_002fdisp">9.10.2 @ultrasonic/disp</a></li>
      <li><a id="toc-_0040ultrasonic_002freadDistance" href="#g_t_0040ultrasonic_002freadDistance">9.10.3 @ultrasonic/readDistance</a></li>
      <li><a id="toc-_0040ultrasonic_002freadEchoTime" href="#g_t_0040ultrasonic_002freadEchoTime">9.10.4 @ultrasonic/readEchoTime</a></li>
      <li><a id="toc-_0040ultrasonic_002fsubsref" href="#g_t_0040ultrasonic_002fsubsref">9.10.5 @ultrasonic/subsref</a></li>
      <li><a id="toc-_0040ultrasonic_002fultrasonic" href="#g_t_0040ultrasonic_002fultrasonic">9.10.6 @ultrasonic/ultrasonic</a></li>
    </ul></li>
    <li><a id="toc-Arduino-Addons-1" href="#Arduino-Addons">9.11 Arduino Addons</a>
    <ul class="toc-numbered-mark">
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
    <ul class="toc-numbered-mark">
      <li><a id="toc-arduinosensor_002eDS1307" href="#arduinosensor_002eDS1307">9.12.1 arduinosensor.DS1307</a></li>
      <li><a id="toc-arduinosensor_002eGUVAS12SD" href="#arduinosensor_002eGUVAS12SD">9.12.2 arduinosensor.GUVAS12SD</a></li>
      <li><a id="toc-arduinosensor_002eMPC3002" href="#arduinosensor_002eMPC3002">9.12.3 arduinosensor.MPC3002</a></li>
      <li><a id="toc-arduinosensor_002eSI7021" href="#arduinosensor_002eSI7021">9.12.4 arduinosensor.SI7021</a></li>
    </ul></li>
    <li><a id="toc-Arduino-I_002fO-package-1" href="#Arduino-I_002fO-package">9.13 Arduino I/O package</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-arduinoio_002eAddonBase" href="#arduinoio_002eAddonBase">9.13.1 arduinoio.AddonBase</a></li>
      <li><a id="toc-arduinoio_002eFilePath" href="#arduinoio_002eFilePath">9.13.2 arduinoio.FilePath</a></li>
      <li><a id="toc-arduinoio_002eLibFiles" href="#arduinoio_002eLibFiles">9.13.3 arduinoio.LibFiles</a></li>
      <li><a id="toc-arduinoio_002eLibraryBase" href="#arduinoio_002eLibraryBase">9.13.4 arduinoio.LibraryBase</a></li>
      <li><a id="toc-arduinoio_002egetBoardConfig" href="#arduinoio_002egetBoardConfig">9.13.5 arduinoio.getBoardConfig</a></li>
    </ul></li>
    <li><a id="toc-Matlab-Compatibility-Classes-1" href="#Matlab-Compatibility-Classes">9.14 Matlab Compatibility Classes</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-matlabshared_002eaddon_002eLibraryBase" href="#matlabshared_002eaddon_002eLibraryBase">9.14.1 matlabshared.addon.LibraryBase</a></li>
    </ul></li>
    <li><a id="toc-Sensors-1" href="#Sensors">9.15 Sensors</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-bme280" href="#bme280">9.15.1 bme280</a></li>
      <li><a id="toc-bno055" href="#bno055">9.15.2 bno055</a></li>
      <li><a id="toc-lis3dh" href="#lis3dh">9.15.3 lis3dh</a></li>
      <li><a id="toc-lps22hb" href="#lps22hb">9.15.4 lps22hb</a></li>
      <li><a id="toc-lsm6dso" href="#lsm6dso">9.15.5 lsm6dso</a></li>
      <li><a id="toc-mpu6050" href="#mpu6050">9.15.6 mpu6050</a></li>
      <li><a id="toc-si7021" href="#si7021">9.15.7 si7021</a></li>
    </ul></li>
    <li><a id="toc-Test-Functions-1" href="#Test-Functions">9.16 Test Functions</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-arduino_005fbistsetup" href="#arduino_005fbistsetup">9.16.1 arduino_bistsetup</a></li>
    </ul></li>
  </ul></li>
  <li><a id="toc-GNU-General-Public-License" href="#Copying">Appendix A GNU General Public License</a></li>
  <li><a id="toc-Index-1" href="#Index" rel="index">Index</a></li>
</ul>
</div>
</div>
<hr>
<div class="chapter-level-extent" id="Installing-and-loading">
<div class="nav-panel">
<p>
Next: <a href="#Hardware-setup" accesskey="n" rel="next">Hardware setup</a>, Previous: <a href="#Top" accesskey="p" rel="prev">Introduction</a>, Up: <a href="#Top" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Installing-and-loading-1">1 Installing and loading</h2>
<a class="index-entry-id" id="index-Installing-and-loading"></a>
<p>The Arduino toolkit must be installed and then loaded to be used.
</p>
<p>It can be installed in <abbr class="acronym">GNU</abbr> Octave directly from octave-forge,
or can be installed in an off-line mode via a downloaded tarball.
</p>
<table class="cartouche" border="1"><tr><td>
<p><strong class="strong">NOTE</strong>
</p>
<p>The toolkit requires the <a class="url" href="https://www.arduino.cc/en/software">Arduino IDE</a> in order to program Arduino devices.
</p></td></tr></table>
<table class="cartouche" border="1"><tr><td>
<p><strong class="strong">NOTE</strong>
</p>
<p>The toolkit has a dependency on the instrument-control package, so it must be installed in order
to successfully install the Arduino toolkit
</p></td></tr></table>
<p>The toolkit must be then be loaded once per each <abbr class="acronym">GNU</abbr> Octave session in order to use its functionality.
</p>
<ul class="mini-toc">
<li><a href="#Online-Direct-install" accesskey="1">Online Direct install</a></li>
<li><a href="#Off_002dline-install" accesskey="2">Off-line install</a></li>
<li><a href="#Loading" accesskey="3">Loading</a></li>
</ul>
<div class="section-level-extent" id="Online-Direct-install">
<h3 class="section">1.1 Online Direct install</h3>
<a class="index-entry-id" id="index-Online-install"></a>
<p>With an internet connection available, the Arduino package can be installed from
octave-forge using the following command within <abbr class="acronym">GNU</abbr> Octave:
</p>
<div class="example">
<pre class="example-preformatted">pkg install -forge arduino
</pre></div>
<p>The latest released version of the toolkit will be downloaded and installed.
</p>
</div>
<div class="section-level-extent" id="Off_002dline-install">
<h3 class="section">1.2 Off-line install</h3>
<a class="index-entry-id" id="index-Off_002dline-install"></a>
<p>With the arduino toolkit package already downloaded, and in the current directory when running
<abbr class="acronym">GNU</abbr> Octave, the package can be installed using the following command within <abbr class="acronym">GNU</abbr> Octave:
</p>
<div class="example">
<pre class="example-preformatted">pkg install arduino-0.12.1.tar.gz
</pre></div>
</div>
<div class="section-level-extent" id="Loading">
<h3 class="section">1.3 Loading</h3>
<a class="index-entry-id" id="index-Loading"></a>
<p>Regardless of the method of installing the Arduino toolkit, in order to use its functions,
the toolkit must be loaded using the pkg load command:
</p>
<div class="example">
<pre class="example-preformatted">pkg load arduino
</pre></div>
<p>The toolkit must be loaded on each <abbr class="acronym">GNU</abbr> Octave session.
</p>
<hr>
</div>
</div>
<div class="chapter-level-extent" id="Hardware-setup">
<div class="nav-panel">
<p>
Next: <a href="#Connecting-to-an-arduino" accesskey="n" rel="next">Connecting to an arduino</a>, Previous: <a href="#Installing-and-loading" accesskey="p" rel="prev">Installing and loading</a>, Up: <a href="#Top" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Hardware-setup-1">2 Hardware setup</h2>
<a class="index-entry-id" id="index-Hardware-setup"></a>
<p>In order to use the arduino hardware with the toolkit, it must be programmed with
special firmware.
</p>
<ul class="mini-toc">
<li><a href="#Programming-the-Arduino" accesskey="1">Programming the Arduino</a></li>
<li><a href="#Known-Arduino-Board-Types" accesskey="2">Known Arduino Board Types</a></li>
</ul>
<div class="section-level-extent" id="Programming-the-Arduino">
<h3 class="section">2.1 Programming the Arduino</h3>
<a class="index-entry-id" id="index-Programming-the-Arduino"></a>
<p>To program the hardware, using a default configuration, run the arduinosetup command:
</p>
<div class="example">
<pre class="example-preformatted">arduinosetup
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
<p><strong class="strong">NOTE</strong>
</p>
<p>The arduino programming is not compatible with the Matlab arduino library, so must be programmed by
the Octave Arduino toolkit to communicate to the arduino, even if it was previously used to work with Matlab.
</p></td></tr></table>
<table class="cartouche" border="1"><tr><td>
<p><strong class="strong">NOTE</strong>
</p>
<p>The toolkit requires the <a class="url" href="https://www.arduino.cc/en/software">Arduino IDE</a> in order to program the Arduino device.
</p>
<p>The binary can set using the &rsquo;arduinobinary&rsquo; property when running setup.
</p>
<p>For arduino IDEs before version 2, if the toolkit can not find the IDE, run the IDE manually, close it and retry programming
the Arduino. Otherwise, use the &rsquo;arduino&rsquo; binary property.
</p></td></tr></table>
</div>
<div class="section-level-extent" id="Known-Arduino-Board-Types">
<h3 class="section">2.2 Known Arduino Board Types</h3>
<a class="index-entry-id" id="index-Known-Arduino-Board-Types"></a>
<p>The board type must be known in order to successfully detect and connect to the Arduino board after programming.
</p>
<p>Currently, known boards are:
</p><ul class="itemize mark-bullet">
<li>Arduino Due
</li><li>Arduino UNO
</li><li>Arduino Mega 2560
</li><li>Arduino Nano
</li><li>Arduino Nano Every
</li><li>Arduino Nano 33 BLE
</li><li>Arduino Nano RP2040 Connect
</li><li>Arduino Pro/Pro Mini
</li><li>Arduino Pro Micro
</li><li>Arduino Leonardo
</li><li>Arduino Micro
</li><li>Arduino MKR1000
</li><li>Arduino MKRZero
</li><li>Sparkfun SAMD21
</li><li>Arduino Lilypad
</li><li>Arduino UNO WiFi rev2
<table class="cartouche" border="1"><tr><td>
<p><strong class="strong">NOTE</strong>
</p>
<p>The Arduino servo library code may require modifications to
 eliminate conflicts between servos and the tone library
</p></td></tr></table>
</li><li>Arduino UNO WiFi r4
</li><li>Arduino UNO Minima r4
</li><li>Raspberry Pi Pico
</li><li>EPS32 Dev
</li></ul>
<p>Additional boards can be added easily, however require minor code changes.
</p>
<hr>
</div>
</div>
<div class="chapter-level-extent" id="Connecting-to-an-arduino">
<div class="nav-panel">
<p>
Next: <a href="#Basic-Input-and-Output-Overview" accesskey="n" rel="next">Basic Input and Output Overview</a>, Previous: <a href="#Hardware-setup" accesskey="p" rel="prev">Hardware setup</a>, Up: <a href="#Top" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Connecting-to-an-arduino-1">3 Connecting to an arduino</h2>
<a class="index-entry-id" id="index-Connecting-to-an-arduino"></a>
<p>To control an arduino device, a connection must be made to it by creating an arduino object.
</p>
<ul class="mini-toc">
<li><a href="#Connecting-to-a-single-arduino" accesskey="1">Connecting to a single arduino</a></li>
<li><a href="#Connecting-to-a-specific-arduino" accesskey="2">Connecting to a specific arduino</a></li>
<li><a href="#Querying-available-arduinos" accesskey="3">Querying available arduinos</a></li>
</ul>
<div class="section-level-extent" id="Connecting-to-a-single-arduino">
<h3 class="section">3.1 Connecting to a single arduino</h3>
<a class="index-entry-id" id="index-Connecting-to-a-single-arduino"></a>
<p>Assuming a single arduino device is connected to the computer, creating an arduino object with no arguments will
find the connected arduino and connect to it:
</p>
<div class="example">
<pre class="example-preformatted">ar = arduino()
</pre></div>
</div>
<div class="section-level-extent" id="Connecting-to-a-specific-arduino">
<h3 class="section">3.2 Connecting to a specific arduino</h3>
<a class="index-entry-id" id="index-Connecting-to-a-specific-arduino"></a>
<p>Where multiple arduinos may be connected to the computer, a specific board can be connected by
specifying the name of the port it is connected to:
</p>
<div class="example">
<pre class="example-preformatted">ar = arduino(&quot;/dev/ttyACM0&quot;)
</pre></div>
<p>The port name will be operating system dependent.
</p>
</div>
<div class="section-level-extent" id="Querying-available-arduinos">
<h3 class="section">3.3 Querying available arduinos</h3>
<a class="index-entry-id" id="index-Querying-available-arduinos"></a>
<p>To list the ports of all <em class="emph">programmed</em> available arduinos, the scanForArduinos function can be used:
</p>
<div class="example">
<pre class="example-preformatted">scanForArduinos
</pre></div>
<p>It will provide a list of all available boards it can find with the port they are connected to.
</p>
<table class="cartouche" border="1"><tr><td>
<p><strong class="strong">NOTE</strong>
</p>
<p>The scanForArduinos function will only detect boards that have been programmed using the arduinosetup command
</p></td></tr></table>
<hr>
</div>
</div>
<div class="chapter-level-extent" id="Basic-Input-and-Output-Overview">
<div class="nav-panel">
<p>
Next: <a href="#Protocol-based-I_002fO-Overview" accesskey="n" rel="next">Protocol based I/O Overview</a>, Previous: <a href="#Connecting-to-an-arduino" accesskey="p" rel="prev">Connecting to an arduino</a>, Up: <a href="#Top" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Basic-Input-and-Output-Overview-1">4 Basic Input and Output Overview</h2>
<a class="index-entry-id" id="index-Basic-Input-and-Output-Overview"></a>
<p>Basic input and output can be performed on a connected arduino device using by calling the read and write functions
for a specific named pin on the arduino.
</p>
<p>A list of available pins can get found from the pins property of the connected arduino object and are also displayed
as part of the default shown properties:
</p>
<div class="example">
<pre class="example-preformatted">ar = arduino();
% get the pin names
pins = ar.availablepins
</pre></div>
<p>Pin generally follow a naming scheme of D&lt;number&gt; for digital pins and A&lt;number&gt; for analog pins.
</p>
<p>Digital pins can be used to read and write digital data, but can not read analog voltages.
Analog pins can perform digital I/O as well as reading voltages.
</p>
<ul class="mini-toc">
<li><a href="#Performing-Digital-I_002fO" accesskey="1">Performing Digital I/O</a></li>
<li><a href="#Performing-Analog-Input" accesskey="2">Performing Analog Input</a></li>
</ul>
<div class="section-level-extent" id="Performing-Digital-I_002fO">
<h3 class="section">4.1 Performing Digital I/O</h3>
<a class="index-entry-id" id="index-Performing-Digital-I_002fO"></a>
<p>A pin&rsquo;s digital logic value can be true (1) or false (0) and can be set using the writeDigitalPin function.
</p>
<p>The following example attempts to set the D2 pin of the connected arduino object &quot;ar&quot; to true, waits 5 seconds and
then sets it to false:
</p>
<div class="example">
<pre class="example-preformatted">writeDigitalPin (ar,  &quot;d2&quot;, true);
pause 5
writeDigitalPin (ar,  &quot;d2&quot;, false);
</pre></div>
<p>Using the readDigitalPin will read the current logic state of the pin.
</p>
<div class="example">
<pre class="example-preformatted">value = readDigitalPin (ar,  &quot;d2&quot;);
</pre></div>
</div>
<div class="section-level-extent" id="Performing-Analog-Input">
<h3 class="section">4.2 Performing Analog Input</h3>
<a class="index-entry-id" id="index-Performing-Analog-Input"></a>
<p>For analog pins, the voltage level can be read using a analog to digital conversion and will return a voltage level
between 0 and the boards voltage (nominally 5V):
</p>
<div class="example">
<pre class="example-preformatted">value = readVoltage (ar,  &quot;a0&quot;);
</pre></div>
<p>The raw digital value of the pin can also be read instead of a voltage, giving a value between 0 and 2^x where x is
the number of bits used by the analog to digital converter.
</p>
<div class="example">
<pre class="example-preformatted">value = readAnalogPin (ar,  &quot;a0&quot;);
</pre></div>
<hr>
</div>
</div>
<div class="chapter-level-extent" id="Protocol-based-I_002fO-Overview">
<div class="nav-panel">
<p>
Next: <a href="#Addons-Overview" accesskey="n" rel="next">Addons Overview</a>, Previous: <a href="#Basic-Input-and-Output-Overview" accesskey="p" rel="prev">Basic Input and Output Overview</a>, Up: <a href="#Top" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Protocol-based-I_002fO-Overview-1">5 Protocol based I/O Overview</h2>
<a class="index-entry-id" id="index-Protocol-based-I_002fO-Overview"></a>
<p>The arduino toolkit supports more complex I/O for SPI, I2C, Servo control and more.
</p>
<ul class="mini-toc">
<li><a href="#SPI-communication" accesskey="1">SPI communication</a></li>
<li><a href="#I2C-communication" accesskey="2">I2C communication</a></li>
<li><a href="#Servo-communication" accesskey="3">Servo communication</a></li>
<li><a href="#Shift-Registers" accesskey="4">Shift Registers</a></li>
<li><a href="#Rotary-Encoders" accesskey="5">Rotary Encoders</a></li>
<li><a href="#Ultrasonic-Sensors" accesskey="6">Ultrasonic Sensors</a></li>
<li><a href="#Serial-communication" accesskey="7">Serial communication</a></li>
</ul>
<div class="section-level-extent" id="SPI-communication">
<h3 class="section">5.1 SPI communication</h3>
<a class="index-entry-id" id="index-SPI-communication"></a>
<p>SPI communication can be performed by creating a SPI device object and then calling the writeRead function:
</p>
<div class="example">
<pre class="example-preformatted">spi = device (ar,  &quot;spichipselectpin&quot;, &quot;d2&quot;);
</pre></div>
<p>The function call expects a connected arduino object as the first argument, followed by the chip select pin of the SPI device.
</p>
<p>After a device is created, a write to device followed by read can can be made using the writeRead function:
</p>
<div class="example">
<pre class="example-preformatted">spi = device (ar,  &quot;spichipselectpin&quot;, &quot;d2&quot;);
data = writeRead (spi,  100);
</pre></div>
</div>
<div class="section-level-extent" id="I2C-communication">
<h3 class="section">5.2 I2C communication</h3>
<a class="index-entry-id" id="index-I2C-communication"></a>
<p>I2C communication can be performed by creating an I2C device object for a specific I2C address.
</p>
<p>The following example creates an I2C device that will communicate with a I2C device at address 100&quot;
</p><div class="example">
<pre class="example-preformatted">i2c = device (ar,  &quot;i2caddress&quot;, 100);
</pre></div>
<p>After creating an I2C device, data can be read and written using read, write, readRegister and writeRegister. The data to send 
and receive will be device dependent.
</p>
</div>
<div class="section-level-extent" id="Servo-communication">
<h3 class="section">5.3 Servo communication</h3>
<a class="index-entry-id" id="index-Servo-communication"></a>
<p>Servo communication can be performed after creating a servo device object to operate on a PWM pin:
</p>
<div class="example">
<pre class="example-preformatted">servoobj = servo(ar, &quot;d9&quot;, &quot;minpulseduration&quot;, 1.0e-3, ...
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
<pre class="example-preformatted">servoobj = servo(ar, &quot;d9&quot;, &quot;minpulseduration&quot;, 1.0e-3, ...
  &quot;maxpulseduration&quot;, 2e-3);
writePosition (servoobj, 0.5);
</pre></div>
</div>
<div class="section-level-extent" id="Shift-Registers">
<h3 class="section">5.4 Shift Registers</h3>
<a class="index-entry-id" id="index-Shift-Registers"></a>
<p>A shift register can be controlled by creating a shiftRegister object:
</p>
<div class="example">
<pre class="example-preformatted">registerobj = shiftRegister(ar, '74hc164', &quot;d2&quot;, &quot;d3&quot;);
</pre></div>
<p>The parameters required are dependent on the type of shift register created.
</p>
<p>Once a register object has been created, it can be read and written to using the read and write functions.
</p>
</div>
<div class="section-level-extent" id="Rotary-Encoders">
<h3 class="section">5.5 Rotary Encoders</h3>
<a class="index-entry-id" id="index-Rotary-Encoder"></a>
<p>A rotary encoder can be created by creating a rotaryEncoder object.
</p>
<div class="example">
<pre class="example-preformatted">encoder = rotaryEncoder(ar, &quot;d2&quot;, &quot;d3&quot;, 180);
</pre></div>
<p>Using the created object, the rotary encoder value and speed can be read.
</p>
</div>
<div class="section-level-extent" id="Ultrasonic-Sensors">
<h3 class="section">5.6 Ultrasonic Sensors</h3>
<a class="index-entry-id" id="index-Ultrasonic-Sensors"></a>
<p>An ultrasonic sensor can be read by creating an ultrasonic object.
</p>
<div class="example">
<pre class="example-preformatted">sensor = ultrasonic(ar, &quot;d9&quot;, &quot;d10&quot;);
</pre></div>
<p>Using the created object, the sensor distance and echo time and be read.
</p>
</div>
<div class="section-level-extent" id="Serial-communication">
<h3 class="section">5.7 Serial communication</h3>
<a class="index-entry-id" id="index-Serial-communication"></a>
<p>Serial communication can be performed on devices that support multiple serial devices such as the leonardo and mega2560 boards. 
The communications port to Octave is reserved and can not be used as a user controlled communications port.
</p>
<p>Serial communication can be performed by creating a serial device object and then calling the read and write functions:
</p>
<div class="example">
<pre class="example-preformatted">ser = device (ar,  &quot;serial&quot;, 1);
</pre></div>
<p>The function call expects a connected arduino object as the first argument, followed &quot;serial&quot; and serial id.
</p>
<p>After a device is created, the device can be read and written:
</p>
<div class="example">
<pre class="example-preformatted">ser = device (ar,  &quot;serial&quot;, 1);
write(ser, &quot;hello&quot;);
data = read(ser, 100);
</pre></div>
<hr>
</div>
</div>
<div class="chapter-level-extent" id="Addons-Overview">
<div class="nav-panel">
<p>
Next: <a href="#Sensors-Overview" accesskey="n" rel="next">Sensors Overview</a>, Previous: <a href="#Protocol-based-I_002fO-Overview" accesskey="p" rel="prev">Protocol based I/O Overview</a>, Up: <a href="#Top" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Addons-Overview-1">6 Addons Overview</h2>
<a class="index-entry-id" id="index-Addons-Overview"></a>
<p>This chapter provides an overview of the arduino package addon functionality for adding
additional addons to arduino.
</p>
<ul class="mini-toc">
<li><a href="#Addon-Introduction" accesskey="1">Addon Introduction</a></li>
<li><a href="#Creating-an-addon" accesskey="2">Creating an addon</a></li>
<li><a href="#Using-addons" accesskey="3">Using addons</a></li>
</ul>
<div class="section-level-extent" id="Addon-Introduction">
<h3 class="section">6.1 Addon Introduction</h3>
<a class="index-entry-id" id="index-Addon-Introduction"></a>
<p>Addons provide a way of adding additional functionality to the arduino toolkit
that provides Matlab access directly to the arduino hardware.
</p>
<p>Addons are implemented in two parts.
</p><ol class="enumerate">
<li> code running on the arduino that implements the required functionality
</li><li> a octave wrapper class that provides the Matlab interface and communication to the code.
</li></ol>
<p>Both parts are required to create a plugin.
</p>
<p>The arduino toolkit provides a number of pre-created addons. These can be seen using
the following command:
</p>
<div class="example">
<pre class="example-preformatted"><code class="code">
listArduinoLibraries
</code>
</pre></div>
<p>The command will display all known arduino libraries (addons as well as core libraries), however
addons typically use a &quot;foldername/classname&quot; for this naming.
</p>
<p><strong class="strong">See also:</strong> listArduinoLibraries.
</p>
</div>
<div class="section-level-extent" id="Creating-an-addon">
<h3 class="section">6.2 Creating an addon</h3>
<a class="index-entry-id" id="index-Creating-an-addon"></a>
<p>An addon requires at minimum 3 things:
</p><ol class="enumerate">
<li> A addon package directory that will contain the addon files
</li><li> A Matlab file within that directory that is a subclass of arduinoio.LibraryBase
</li><li> A arduino source/header file that contains the arduino code to load, sub-classed for LibraryBase
</li></ol>
<p>So the addon directory structure at a minimum will be:
</p><div class="example">
<pre class="example-preformatted"><code class="code">
  +arduinoioaddons  (dir) [somewhere in the octave load path]
    +MyAddons (dir)
      MyAddon1.m 
      MyAddon1.h
</code>
</pre></div>
<ul class="mini-toc">
<li><a href="#Addon-package-directory" accesskey="1">Addon package directory</a></li>
<li><a href="#Addon-package-_002em-file" accesskey="2">Addon package .m file</a></li>
<li><a href="#Addon-package-header-file" accesskey="3">Addon package header file</a></li>
<li><a href="#Verify-octave-can-see-the-addon" accesskey="4">Verify octave can see the addon</a></li>
</ul>
<div class="subsection-level-extent" id="Addon-package-directory">
<h4 class="subsection">6.2.1 Addon package directory</h4>
<a class="index-entry-id" id="index-Addon-package-directory"></a>
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
<div class="subsection-level-extent" id="Addon-package-_002em-file">
<h4 class="subsection">6.2.2 Addon package .m file</h4>
<a class="index-entry-id" id="index-Addon-package-_002em-file"></a>
<p>The Matlab interface file within the addon directory provides the Matlab interface for the arduino code
as well as provides information about the addon.
</p>
<h4 class="subsubheading" id="Class-inheritance-and-required-properties">Class inheritance and required properties</h4>
<p>The interface file must be a subclass of arduinoio.LibraryBase and must contain some constant properties values that provide the information.
</p>
<p>A minimum example of required is below:
</p><div class="example">
<pre class="example-preformatted"><code class="code">
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
</p><dl class="table">
<dt>LibraryName</dt>
<dd><p>(Required) The name of the addon. My convention this is usually the directoryname / theclassname
</p></dd>
<dt>CppHeaderFile</dt>
<dd><p>(Required) The header file for the arduino code
</p></dd>
<dt>CppSourceFile</dt>
<dd><p>(Optional) The source file (if any) for the arduino code
</p></dd>
<dt>CppClassName</dt>
<dd><p>(Required) The classname used within the cppheaderfile for the arduino library
</p></dd>
<dt>DependantLibraries</dt>
<dd><p>(Optional) Any additional addons or cores that are needed for this library to be used
</p></dd>
<dt>ArduinoLibraryHeaderFiles</dt>
<dd><p>(Optional) Any additional header files that need to be included
</p></dd>
</dl>
<h4 class="subsubheading" id="Class-constructor">Class constructor</h4>
<p>The Matlab class constructor will be called from the addon function when creating a
instance of the addon and should initialize at least two properties in inherited from
arduinoio.LibraryBase:
</p>
<ol class="enumerate">
<li> Parent
should be set to the first input argument (the arduino class)
</li><li> Pins
should be set to a list of pins that are used for the plugin
</li></ol>
<div class="example">
<pre class="example-preformatted"><code class="code">
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
<h4 class="subsubheading" id="Class-functions">Class functions</h4>
<p>The class functions will usually communicate to the arduino and use the response for 
what is returned to the user.
</p>
<p>By convention, the commands sent to the arduino are defined as constants in the class file but do not have to be.
</p><div class="example">
<pre class="example-preformatted"><code class="code">
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
<p><strong class="strong">NOTE</strong>
</p>
<p>the sendCommand uses the objects parent for the arduino,  the objects library name and the command id
</p></td></tr></table>
<p><strong class="strong">See also:</strong> sendCommand.
</p>
</div>
<div class="subsection-level-extent" id="Addon-package-header-file">
<h4 class="subsection">6.2.3 Addon package header file</h4>
<a class="index-entry-id" id="index-Addon-package-header-file"></a>
<p>The header file should contain a class that matches the functionally and information of the matlab file
and provides the ability to register the code on the arduino.
</p>
<p>The following things should occur in the arduino class files:
</p><ol class="enumerate">
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
<pre class="example-preformatted"><code class="code">
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
<div class="subsection-level-extent" id="Verify-octave-can-see-the-addon">
<h4 class="subsection">6.2.4 Verify octave can see the addon</h4>
<a class="index-entry-id" id="index-Verify-octave-can-see-the-addon"></a>
<p>Use the listArduinoLibaries command to verify that the new addon appears in the list of known libraries.
</p>
<p>If it does not, ensure that the +arduinoioaddons directory is within one of the octave class paths, and that the directory
structure and inheritance requirements have been met.
</p>
</div>
</div>
<div class="section-level-extent" id="Using-addons">
<h3 class="section">6.3 Using addons</h3>
<a class="index-entry-id" id="index-Using-Addons"></a>
<ul class="mini-toc">
<li><a href="#Programming-the-arduino-with-the-addon" accesskey="1">Programming the arduino with the addon</a></li>
<li><a href="#Creating-a-addon-object" accesskey="2">Creating a addon object</a></li>
</ul>
<div class="subsection-level-extent" id="Programming-the-arduino-with-the-addon">
<h4 class="subsection">6.3.1 Programming the arduino with the addon</h4>
<a class="index-entry-id" id="index-Programming-the-arduino-with-the-addon"></a>
<p>To use a addon, the code must be programmed onto the arduino.
</p>
<p>Using the libraries command, when creating a arduino object, the arduino can be reprogrammed if the library does not already
exist on the arduino.
</p>
<div class="example">
<pre class="example-preformatted"><code class="code">
  ar = arduino([],[], 'libraries', 'MyAddons/MyAddon1', 'forcebuild', true)
</code>
</pre></div>
<p>The libraries property of the arduino object should list the libraries programmed on the arduino.
</p>
<p>Alternatively, the library can be added using the libraries property and arduinosetup
</p>
<p><strong class="strong">See also:</strong> arduino, arduinosetup.
</p>
</div>
<div class="subsection-level-extent" id="Creating-a-addon-object">
<h4 class="subsection">6.3.2 Creating a addon object</h4>
<a class="index-entry-id" id="index-Creating-a-addon-object"></a>
<p>An object of the addon type can be created using the addon command.
</p>
<div class="example">
<pre class="example-preformatted"><code class="code">
  ar = arduino([],[], 'libraries', 'MyAddons/MyAddon1', 'forcebuild', true)
  obj = addon(ar, &quot;MyAddons/MyAddon1&quot;);
</code>
</pre></div>
<hr>
</div>
</div>
</div>
<div class="chapter-level-extent" id="Sensors-Overview">
<div class="nav-panel">
<p>
Next: <a href="#Examples" accesskey="n" rel="next">Examples</a>, Previous: <a href="#Addons-Overview" accesskey="p" rel="prev">Addons Overview</a>, Up: <a href="#Top" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Sensors-Overview-1">7 Sensors Overview</h2>
<a class="index-entry-id" id="index-Sensors-Overview"></a>
<p>There are two types of sensors available:
</p><ol class="enumerate">
<li> Matlab compatible(ish) sensors for environment and IMU.
</li><li> Additional lightweight wrappers for some chips in a arduinosensor namespace.
</li></ol>
<ul class="mini-toc">
<li><a href="#Matlab-Compatible-Sensors" accesskey="1">Matlab Compatible Sensors</a></li>
<li><a href="#Lightweight-Arduino-Sensors" accesskey="2">Lightweight Arduino Sensors</a></li>
</ul>
<div class="section-level-extent" id="Matlab-Compatible-Sensors">
<h3 class="section">7.1 Matlab Compatible Sensors</h3>
<a class="index-entry-id" id="index-Matlab-Compatible-Sensor"></a>
<ul class="mini-toc">
<li><a href="#Overview" accesskey="1">Overview</a></li>
<li><a href="#Available-Sensors" accesskey="2">Available Sensors</a></li>
</ul>
<div class="subsection-level-extent" id="Overview">
<h4 class="subsection">7.1.1 Overview</h4>
<p>Matlab compatible functions are provided for a number of sensors, using a similar function naming as
provided by the Matlab arduino package.
</p>
</div>
<div class="subsection-level-extent" id="Available-Sensors">
<h4 class="subsection">7.1.2 Available Sensors</h4>
<a class="index-entry-id" id="index-Available-Sensors"></a>
<p>The functions for each sensor is listed in the function reference, <a class="ref" href="#Sensors">Sensors</a> and provides for:
</p>
<dl class="table">
<dt>bme280</dt>
<dd><p>BME280 temperature, pressure and humidity sensor
</p></dd>
<dt>bno005</dt>
<dd><p>BNO055 acceleration, angular velocity, orientation and magnetic field sensor
</p></dd>
<dt>lis3dh</dt>
<dd><p>LIS3DH acceleration sensor
</p></dd>
<dt>lps22hb</dt>
<dd><p>LPS22HB temperature and pressure sensor
</p></dd>
<dt>lsm6dso</dt>
<dd><p>LSM6DSO acceleration, angular velocity sensor
</p></dd>
<dt>mpu6050</dt>
<dd><p>MPU-6050  acceleration, angular velocity sensor
</p></dd>
<dt>SI7021</dt>
<dd><p>SI7021 temperature and humidity sensor
</p></dd>
</dl>
</div>
</div>
<div class="section-level-extent" id="Lightweight-Arduino-Sensors">
<h3 class="section">7.2 Lightweight Arduino Sensors</h3>
<a class="index-entry-id" id="index-Arduino-Sensor"></a>
<ul class="mini-toc">
<li><a href="#Overview-1" accesskey="1">Overview</a></li>
<li><a href="#Available-Sensors-1" accesskey="2">Available Sensors</a></li>
</ul>
<div class="subsection-level-extent" id="Overview-1">
<h4 class="subsection">7.2.1 Overview</h4>
<p>Arduino sensors are a collection of lightweight wrappers around other underlying protocols for 
providing specific sensor functionality.
</p>
<p>For instance a DS1307 chip communicates using I2C protocol and so a DS1307 class exists that
provides the conversion/commands in order to communicate to the chip.
</p>
<p>Using the class, providing the functionality is very easy:
</p><div class="example">
<pre class="example-preformatted"><code class="code">
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
<div class="subsection-level-extent" id="Available-Sensors-1">
<h4 class="subsection">7.2.2 Available Sensors</h4>
<a class="index-entry-id" id="index-Available-Sensors-1"></a>
<p>The functions for each sensor is listed in the function reference, <a class="ref" href="#Arduino-Sensors">Arduino Sensors</a> and provides for:
</p>
<dl class="table">
<dt>DS1307</dt>
<dd><p>DS1307 RTC clock using i2c.
</p></dd>
<dt>MPC3002</dt>
<dd><p>MPC3002 ADC using SPI
</p></dd>
<dt>SI7021</dt>
<dd><p>SI7021 temperature and humidity sensor
</p></dd>
<dt>GUVAS12SD</dt>
<dd><p>GUVAS12SD analog UV-B sensor
</p></dd>
</dl>
<hr>
</div>
</div>
</div>
<div class="chapter-level-extent" id="Examples">
<div class="nav-panel">
<p>
Next: <a href="#Function-Reference" accesskey="n" rel="next">Function Reference</a>, Previous: <a href="#Sensors-Overview" accesskey="p" rel="prev">Sensors Overview</a>, Up: <a href="#Top" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Examples-1">8 Examples</h2>
<a class="index-entry-id" id="index-Examples"></a>
<ul class="mini-toc">
<li><a href="#Blinking-an-LED" accesskey="1">Blinking an LED</a></li>
<li><a href="#Using-I2C-to-communicate-with-an-EEPROM" accesskey="2">Using I2C to communicate with an EEPROM</a></li>
<li><a href="#Using-SPI-to-communicate-with-a-mcp3002-10-bit-ADC" accesskey="3">Using SPI to communicate with a mcp3002 10 bit ADC</a></li>
</ul>
<div class="section-level-extent" id="Blinking-an-LED">
<h3 class="section">8.1 Blinking an LED</h3>
<a class="index-entry-id" id="index-Blinking-an-LED"></a>
<p>This example shows blinking the inbuilt LED on the Arduino board. Code is available by running:
</p><div class="example">
<pre class="example-preformatted">edit examples/example_blink
</pre></div>
<h3 class="heading" id="Hardware-setup-2">Hardware setup</h3>
<p>This example uses in the builtin LED, so requires only a connection of the Arduino board to
computer for communication.
</p>
<h3 class="heading" id="Create-an-Arduino-object">Create an Arduino object</h3>
<div class="example">
<pre class="example-preformatted">ar = arduino ();
</pre></div>
<p>If you have more than one Arduino board connected, you may need to specify the port in order to
connect to the correct device.
</p>
<h3 class="heading" id="Query-Device-for-pins-connected-to-builtin-LED">Query Device for pins connected to builtin LED</h3>
<p>The pin connected to the Arduino UNO built in led if D13.
</p>
<div class="example">
<pre class="example-preformatted">led_pin = &quot;d13&quot;;
</pre></div>
<p>The connected pins can be queried programatically if desired.
</p>
<div class="example">
<pre class="example-preformatted">pins = getLEDTerminals (ar);
</pre></div>
<p>Connected to a Arduino UNO would return a list pins containing only one item &rsquo;13&rsquo;.
</p>
<p>The terminal number can be converted to a pin using getPinsFromTerminals:
</p>
<div class="example">
<pre class="example-preformatted">led_pin = getPinsFromTerminals (ar, pins{1});
</pre></div>
<h3 class="heading" id="Turn-the-LED-off">Turn the LED off</h3>
<p>Write a 0 value to the pin to turn it off.
</p>
<div class="example">
<pre class="example-preformatted">writeDigitalPin (ar, led_pin, 0);
</pre></div>
<h3 class="heading" id="Turn-the-LED-on">Turn the LED on</h3>
<p>Write a 1 value to the pin to turn it on
</p>
<div class="example">
<pre class="example-preformatted">writeDigitalPin (ar, led_pin, 1);
</pre></div>
<h3 class="heading" id="Making-the-LED-blink">Making the LED blink</h3>
<p>Add a while loop with a pause between the changes in the pin state to blink.
</p>
<div class="example">
<pre class="example-preformatted">while true
  writeDigitalPin (ar, led_pin, 0);
  pause (0.5)
  writeDigitalPin (ar, led_pin, 1);
  pause (0.5)
endwhile
</pre></div>
</div>
<div class="section-level-extent" id="Using-I2C-to-communicate-with-an-EEPROM">
<h3 class="section">8.2 Using I2C to communicate with an EEPROM</h3>
<a class="index-entry-id" id="index-Using-I2C-to-communicate-with-an-EEPROM"></a>
<p>This example shows using I2C to communicate with a EEPROM chip. Code is available by running:
</p><div class="example">
<pre class="example-preformatted">edit examples/example_i2c_eeprom
</pre></div>
<h3 class="heading" id="Hardware-setup-3">Hardware setup</h3>
<p>Using an Arduino UNO, the board should be configured with the following connections between the board and a 24XX256 EEPROM chip:
</p>
<dl class="table">
<dt>A4</dt>
<dd><p>Connected to pin 5 of EEPROM
</p></dd>
<dt>A5</dt>
<dd><p>Connected to pin 6 of EEPROM
</p></dd>
<dt>5V</dt>
<dd><p>Connected to pin 8 of EEPROM
</p></dd>
<dt>GND</dt>
<dd><p>Connected to pin 1,2,3,4 of EEPROM
</p></dd>
</dl>
<h3 class="heading" id="Create-an-Arduino-object-1">Create an Arduino object</h3>
<div class="example">
<pre class="example-preformatted">ar = arduino ();
</pre></div>
<p>If you have more than one Arduino board connected, you may need to specify the port in order to
connect to the correct device.
</p>
<h3 class="heading" id="Query-I2C-pins">Query I2C pins</h3>
<p>Display the I2C terminals of the board:
</p>
<div class="example">
<pre class="example-preformatted">getI2CTerminals(ar)
</pre></div>
<h3 class="heading" id="Scan-the-arduino-for-the-connected-device">Scan the arduino for the connected device</h3>
<div class="example">
<pre class="example-preformatted">scanI2Cbus(ar)
</pre></div>
<p>The devices listed should contain 0x50, the address of the EEPROM chip.
</p>
<h3 class="heading" id="Create-an-I2C-object-to-communicate-to-the-EEPROM">Create an I2C object to communicate to the EEPROM</h3>
<div class="example">
<pre class="example-preformatted">eeprom = device (ar, &quot;i2caddress&quot;, 0x50)
</pre></div>
<h3 class="heading" id="Write-data-to-the-EEPROM">Write data to the EEPROM</h3>
<p>The EEPROM expects the first byte to be the page number, the second the offset, followed by data,
so to write 1 2 3 4, starting address 0 (page 0, offset 0):
</p>
<div class="example">
<pre class="example-preformatted">write(eeprom, [0 0 1 2 3 4])
</pre></div>
<h3 class="heading" id="Reading-from-the-EEPROM">Reading from the EEPROM</h3>
<p>Reading from the EEPROM requires first writing the address to read from, in this case, if we
want to read the 3, 4, this would be page 0, offset 2:
</p>
<div class="example">
<pre class="example-preformatted">write(eeprom, [0 2])
</pre></div>
<p>Next read the 2 bytes:
</p>
<div class="example">
<pre class="example-preformatted">data = read(eeprom, 2)
</pre></div>
</div>
<div class="section-level-extent" id="Using-SPI-to-communicate-with-a-mcp3002-10-bit-ADC">
<h3 class="section">8.3 Using SPI to communicate with a mcp3002 10 bit ADC</h3>
<a class="index-entry-id" id="index-Using-SPI-to-communicate-with-a-mcp3002-10-bit-ADC"></a>
<p>This example shows using SPI to communicate with an mcp3002 10 bit ADC. Code is available by running:
</p><div class="example">
<pre class="example-preformatted">edit examples/example_spi_mcp3002
</pre></div>
<h3 class="heading" id="Hardware-setup-4">Hardware setup</h3>
<p>Using an Arduino UNO, the board should be configured with the following connections between the board and a mcp3002 chip:
</p>
<dl class="table">
<dt>D10</dt>
<dd><p>Connected to pin 1 (CS) of MCP3002
</p></dd>
<dt>D11</dt>
<dd><p>Connected to pin 5 (DI) of MCP3002
</p></dd>
<dt>D12</dt>
<dd><p>Connected to pin 6 (DO) of MCP3002
</p></dd>
<dt>D13</dt>
<dd><p>Connected to pin 7 (CLK) MCP3002
</p></dd>
<dt>VCC</dt>
<dd><p>Connected to pin 8 (VDD) MCP3002
</p></dd>
<dt>GND</dt>
<dd><p>Connected to pin 4 (VSS) MCP3002
</p></dd>
<dt>Analog input</dt>
<dd><p>Connected from pin 2 of the MCP3002 to a LOW (&lt; 5V) voltage to measure
</p></dd>
</dl>
<h3 class="heading" id="Create-an-Arduino-object-2">Create an Arduino object</h3>
<div class="example">
<pre class="example-preformatted">ar = arduino ();
</pre></div>
<p>If you have more than one Arduino board connected, you may need to specify the port in order to
connect to the correct device.
</p>
<h3 class="heading" id="Create-an-SPI-object-to-communicate-to-the-MCP3002">Create an SPI object to communicate to the MCP3002</h3>
<div class="example">
<pre class="example-preformatted">adc = device(ar, &quot;spichipselectpin&quot;, &quot;d10&quot;)
</pre></div>
<p>The d10 is the chip select pin connected from the Arduino to the MCP3002.
</p>
<h3 class="heading" id="Read-the-ADC">Read the ADC</h3>
<p>The MCP3002 expects specific commands in order to read a channel.
</p>
<p>For illustration for the command to read chan 0 in single ended mode:
</p><div class="example">
<pre class="example-preformatted">command (bits) in MSB mode to device:
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
<pre class="example-preformatted">data = writeRead(adc, [hex2dec(&quot;DF&quot;) hex2dec(&quot;FF&quot;)])
</pre></div>
<p>Of the data returned, the last 10 bits is the actual data, so convert data to a 16 bit value:
</p><div class="example">
<pre class="example-preformatted">val = uint16(data(1))*256 + uint16(data(2))
</pre></div>
<p>Then bitand it to remove the non value parts, to get the ADC value:
</p><div class="example">
<pre class="example-preformatted">val = bitand (val, hex2dec('3FF'))
</pre></div>
<p>To make the value correspond to a voltage it needs to be scaled as 0 will be 0 Volts, 1023 will be 5 Volts.
</p><div class="example">
<pre class="example-preformatted">volts = double(val) * 5.0 / 1023.0;
</pre></div>
<hr>
</div>
</div>
<div class="chapter-level-extent" id="Function-Reference">
<div class="nav-panel">
<p>
Next: <a href="#Copying" accesskey="n" rel="next">GNU General Public License</a>, Previous: <a href="#Examples" accesskey="p" rel="prev">Examples</a>, Up: <a href="#Top" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Function-Reference-1">9 Function Reference</h2>
<a class="index-entry-id" id="index-Function-Reference"></a>
<p>The functions currently available in the Arduino toolkit are described below;
</p>
<ul class="mini-toc">
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
<li><a href="#Matlab-Compatibility-Classes">Matlab Compatibility Classes</a></li>
<li><a href="#Sensors">Sensors</a></li>
<li><a href="#Test-Functions">Test Functions</a></li>
</ul>
<hr>
<div class="section-level-extent" id="General-Functions">
<div class="nav-panel">
<p>
Next: <a href="#Arduino-Functions" accesskey="n" rel="next">Arduino Functions</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="General-Functions-1">9.1 General Functions</h3>
<a class="index-entry-id" id="index-General-Functions"></a>
<ul class="mini-toc">
<li><a href="#arduinosetup" accesskey="1">arduinosetup</a></li>
<li><a href="#isarduino" accesskey="2">isarduino</a></li>
<li><a href="#listArduinoLibraries" accesskey="3">listArduinoLibraries</a></li>
<li><a href="#scanForArduinos" accesskey="4">scanForArduinos</a></li>
</ul>
<div class="subsection-level-extent" id="arduinosetup">
<h4 class="subsection">9.1.1 arduinosetup</h4>
<a class="index-entry-id" id="index-arduinosetup"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-arduinosetup-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">arduinosetup</strong> <code class="def-code-arguments">()</code><a class="copiable-link" href='#index-arduinosetup-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-arduinosetup-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">arduinosetup</strong> <code class="def-code-arguments">(<var class="var">propertyname</var>, <var class="var">propertyvalue</var>)</code><a class="copiable-link" href='#index-arduinosetup-2'></a></span></dt>
<dd><p>Open the arduino config / programming tool to program the arduino hardware for usage with
 the Octave arduino functions.
</p>
<p>arduinosetup will create a temporary project  using the arduino IDE and allow
 compiling and programming of the code to an arduino.
</p>
<h4 class="subsubheading" id="Inputs">Inputs</h4>
<p><var class="var">propertyname</var>, <var class="var">propertyvalue</var> - A sequence of property name/value pairs can be given
 to set defaults while programming.
</p>
<p>Currently the following properties can be set:
</p><dl class="table">
<dt>libraries</dt>
<dd><p>The value should be the name of a library, or string array of libraries to program on the
 arduino board.
</p></dd>
<dt>arduinobinary</dt>
<dd><p>The value should be the name/path of the arduino IDE binary for programming. If not specified,
 the function will use getpref preferences of arduino.arduino_binary, and if not found, the
 function will attempt to find the binary itself.
</p>
<p>If provided, the value will be saved to preferences for future calls.
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs">Outputs</h4>
<p><var class="var">retval</var> - return 1 if arduino IDE returned without an error
</p>
<p><strong class="strong">See also:</strong> arduino, __arduino_binary__.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="isarduino">
<h4 class="subsection">9.1.2 isarduino</h4>
<a class="index-entry-id" id="index-isarduino"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-isarduino-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">isarduino</strong> <code class="def-code-arguments">(<var class="var">obj</var>)</code><a class="copiable-link" href='#index-isarduino-1'></a></span></dt>
<dd><p>Check if input value is an arduino object
</p>
<p>Function is essentially just a call of
<code class="code">
 retval = isa(obj, &quot;arduino&quot;);
 </code>
</p>
<h4 class="subsubheading" id="Inputs-1">Inputs</h4>
<p><var class="var">obj</var> - The object to check
</p>
<h4 class="subsubheading" id="Outputs-1">Outputs</h4>
<p><var class="var">retval</var> is true, if obj is an arduino object, false otherwise.
</p>
<p><strong class="strong">See also:</strong> arduino.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="listArduinoLibraries">
<h4 class="subsection">9.1.3 listArduinoLibraries</h4>
<a class="index-entry-id" id="index-listArduinoLibraries"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-listArduinoLibraries-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">listArduinoLibraries</strong> <code class="def-code-arguments">()</code><a class="copiable-link" href='#index-listArduinoLibraries-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-listArduinoLibraries-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">listArduinoLibraries</strong> <code class="def-code-arguments">(<var class="var">libtypes</var>)</code><a class="copiable-link" href='#index-listArduinoLibraries-2'></a></span></dt>
<dd><p>Retrieve list of all known arduino library modules that are available.
</p>
<h4 class="subsubheading" id="Inputs-2">Inputs</h4>
<p><var class="var">libtypes</var> - optional specifier for type of libraries to list.
</p>
<p>Options are:
</p><dl class="table">
<dt>all</dt>
<dd><p>List core and addons
</p></dd>
<dt>core</dt>
<dd><p>List core only libraries
</p></dd>
<dt>addons</dt>
<dd><p>List addons only
</p></dd>
</dl>
<p>When no libtypes is specified, all libraries are shown.
</p>
<h4 class="subsubheading" id="Outputs-2">Outputs</h4>
<p><var class="var">retval</var> is an cell array of string library names that are
 available for programming to the arduino.
</p>
<p><strong class="strong">See also:</strong> arduino, arduinosetup.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="scanForArduinos">
<h4 class="subsection">9.1.4 scanForArduinos</h4>
<a class="index-entry-id" id="index-scanForArduinos"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-scanForArduinos-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">scanForArduinos</strong> <code class="def-code-arguments">()</code><a class="copiable-link" href='#index-scanForArduinos-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-scanForArduinos-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">scanForArduinos</strong> <code class="def-code-arguments">(<var class="var">maxCount</var>)</code><a class="copiable-link" href='#index-scanForArduinos-2'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-scanForArduinos-3"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">scanForArduinos</strong> <code class="def-code-arguments">(<var class="var">&quot;debug&quot;</var>)</code><a class="copiable-link" href='#index-scanForArduinos-3'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-scanForArduinos-4"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">scanForArduinos</strong> <code class="def-code-arguments">(<var class="var">maxCount</var>, <var class="var">type</var>)</code><a class="copiable-link" href='#index-scanForArduinos-4'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-scanForArduinos-5"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">scanForArduinos</strong> <code class="def-code-arguments">(<var class="var">propertyname</var>, <var class="var">propertvalue</var> ...)</code><a class="copiable-link" href='#index-scanForArduinos-5'></a></span></dt>
<dd><p>Scan system for programmed serial connected arduino boards.
</p>
<p>scanForArduinos will scan the system for programmed arduino boards
 and return at most <var class="var">maxCount</var> of them as a cell array
 in <var class="var">retval</var>.
</p>
<h4 class="subsubheading" id="Inputs-3">Inputs</h4>
<p><var class="var">maxCount</var> - max number of arduino boards to detect.
 if <var class="var">maxCount</var> is not specified, or is a less than 1, the
 function will return as many arduino boards as it can detect.
</p>
<p><var class="var">type</var> - optional board type to match. If specified, the board
 type must match for the arduino to be added to the return list.
</p>
<p><var class="var">&quot;debug&quot;</var> - if single input parameter is &quot;debug&quot;, the
 scanForArduinos will display debug information as it scans
 all available ports for arduinos.
</p>
<p><var class="var">propertyname</var>, <var class="var">propertyvalue</var> - property name/value pairs to match search with.
</p><dl class="table">
<dt>&rsquo;BaudRate&rsquo;</dt>
<dd><p>Numeric BaudRate to use when trying to scan for arduinos.
</p></dd>
<dt>&rsquo;MaxCount&rsquo;</dt>
<dd><p>Max number of arduinos to scan for.
</p></dd>
<dt>&rsquo;BoardType&rsquo;</dt>
<dd><p>Boardtype to match.
</p></dd>
<dt>&rsquo;Debug&rsquo;</dt>
<dd><p>Logical flag for debug mode.
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-3">Outputs</h4>
<p><var class="var">retval</var> structure cell array of matching detected arduino boards.
</p>
<p>Each cell value of the cell array will contain a structure with values of:
</p><dl class="table">
<dt>port</dt>
<dd><p>the serial port the arduino is connected to
</p></dd>
<dt>board</dt>
<dd><p>the board type of the arduino
</p></dd>
</dl>
<p><strong class="strong">See also:</strong> arduino.
</p></dd></dl>
<hr>
</div>
</div>
<div class="section-level-extent" id="Arduino-Functions">
<div class="nav-panel">
<p>
Next: <a href="#Arduino-I2C-Functions" accesskey="n" rel="next">Arduino I2C Functions</a>, Previous: <a href="#General-Functions" accesskey="p" rel="prev">General Functions</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Arduino-Functions-1">9.2 Arduino Functions</h3>
<a class="index-entry-id" id="index-Arduino-Functions"></a>
<ul class="mini-toc">
<li><a href="#g_t_0040arduino_002farduino" accesskey="1">@arduino/arduino</a></li>
<li><a href="#g_t_0040arduino_002fcheckI2CAddress" accesskey="2">@arduino/checkI2CAddress</a></li>
<li><a href="#g_t_0040arduino_002fconfigurePin" accesskey="3">@arduino/configurePin</a></li>
<li><a href="#g_t_0040arduino_002fconfigurePinResource" accesskey="4">@arduino/configurePinResource</a></li>
<li><a href="#g_t_0040arduino_002fdecrementResourceCount" accesskey="5">@arduino/decrementResourceCount</a></li>
<li><a href="#g_t_0040arduino_002fdelete" accesskey="6">@arduino/delete</a></li>
<li><a href="#g_t_0040arduino_002fdisp" accesskey="7">@arduino/disp</a></li>
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
<div class="subsection-level-extent" id="g_t_0040arduino_002farduino">
<h4 class="subsection">9.2.1 @arduino/arduino</h4>
<a class="index-entry-id" id="index-arduino"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-arduino-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">arduino</strong> <code class="def-code-arguments">()</code><a class="copiable-link" href='#index-arduino-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-arduino-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">arduino</strong> <code class="def-code-arguments">(<var class="var">port</var>)</code><a class="copiable-link" href='#index-arduino-2'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-arduino-3"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">arduino</strong> <code class="def-code-arguments">(<var class="var">port</var>, <var class="var">board</var>)</code><a class="copiable-link" href='#index-arduino-3'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-arduino-4"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">arduino</strong> <code class="def-code-arguments">(<var class="var">port</var>, <var class="var">board</var>[, [<var class="var">propname</var>, <var class="var">propvalue</var>]*)</code><a class="copiable-link" href='#index-arduino-4'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-arduino-5"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">arduino</strong> <code class="def-code-arguments">(<var class="var">iaddress</var>)</code><a class="copiable-link" href='#index-arduino-5'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-arduino-6"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">arduino</strong> <code class="def-code-arguments">(<var class="var">ipaddress</var>, <var class="var">board</var>)</code><a class="copiable-link" href='#index-arduino-6'></a></span></dt>
<dd><p>Create a arduino object with a connection to an arduino board.
</p>
<h4 class="subsubheading" id="Inputs-4">Inputs</h4>
<p><var class="var">port</var> - full path of serial port to connect to. For Linux,
 usually /dev/ttySXXX, for windows COMXX.
</p>
<p><var class="var">board</var> - name of board to connect (default is &rsquo;uno&rsquo;).
</p>
<p><var class="var">propname</var>, <var class="var">propvalue</var> - property name and value pair
 for additional properties to pass to the creation of the
 arduino object.
</p>
<p>Currently properties are ignored, with the exception of:
</p><dl class="table">
<dt>debug</dt>
<dd><p>true / false flag for whether setting debug (default false)
</p></dd>
<dt>forcebuildon</dt>
<dd><p>true / false flag for whether to force show of the arduino IDE to
 rebuild the installed code on the arduino (default false)
</p></dd>
<dt>baudrate (read only)</dt>
<dd><p>the communications baudrate to the board. (default 9600)
</p></dd>
<dt>libraries</dt>
<dd><p>The libraries to be enabled on the arduino board. (default uses whatever is already installed)
</p></dd>
</dl>
<p>if the arduino function is called without parameters, it will scan
 for the first available arduino it can find and connect to it.
</p>
<h4 class="subsubheading" id="Outputs-4">Outputs</h4>
<p><var class="var">retval</var> - a successfully connected arduino object.
</p>
<h4 class="subsubheading" id="Properties">Properties</h4>
<p>The arduino object has the following public properties:
</p><dl class="table">
<dt>name</dt>
<dd><p>name assigned to the arduino object
</p></dd>
<dt>debug</dt>
<dd><p>true / false flag for whether debug is turned on
</p></dd>
<dt>forcebuildon</dt>
<dd><p>true / false flag for whether to force show of the arduino IDE to
 reprogram the arduino
</p></dd>
<dt>port (read only)</dt>
<dd><p>the communications port the board is connected to.
</p></dd>
<dt>baudrate (read only)</dt>
<dd><p>the communications baudrate to the board.
</p></dd>
<dt>board  (read only)</dt>
<dd><p>The name of the board type that the arduino connected to
</p></dd>
<dt>libraries (read only)</dt>
<dd><p>The libraries currently programmed onto the board
</p></dd>
<dt>availablepins</dt>
<dd><p>The pins available for use on the board
</p></dd>
<dt>analogreference</dt>
<dd><p>The analog voltage reference
</p></dd>
</dl>
<p><strong class="strong">See also:</strong> scanForArduinos, arduinosetup.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fcheckI2CAddress">
<h4 class="subsection">9.2.2 @arduino/checkI2CAddress</h4>
<a class="index-entry-id" id="index-checkI2CAddress"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-checkI2CAddress-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">checkI2CAddress</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">address</var>)</code><a class="copiable-link" href='#index-checkI2CAddress-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-checkI2CAddress-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">checkI2CAddress</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">address</var>, <var class="var">bus</var>)</code><a class="copiable-link" href='#index-checkI2CAddress-2'></a></span></dt>
<dd><p>Check that an address of given address responds on the I2C bus
</p>
<h4 class="subsubheading" id="Inputs-5">Inputs</h4>
<p><var class="var">ar</var> - arduino object connected to a arduino board.
</p>
<p><var class="var">address</var> - I2C address number to check
</p>
<p><var class="var">bus</var> - bus number to check for I2C device, when multiple buses are available.
 If the bus is not specified, it will default to 0.
</p>
<h4 class="subsubheading" id="Outputs-5">Outputs</h4>
<p><var class="var">retval</var> - boolean value of true if address responds on the I2C bus
</p>
<h4 class="subsubheading" id="Example">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 # create arduino connection.
 ar = arduino();
 # scan for devices on the I2C bus
 checkI2CAddress (ar)
 # output if a device using that address is attached
 ans =
   1
 </code>
</pre></div>
<p><strong class="strong">See also:</strong> arduino, scanI2Cbus.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fconfigurePin">
<h4 class="subsection">9.2.3 @arduino/configurePin</h4>
<a class="index-entry-id" id="index-configurePin"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-configurePin-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">currmode</var> =</code> <strong class="def-name">configurePin</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">pin</var>)</code><a class="copiable-link" href='#index-configurePin-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-configurePin-2"><span class="category-def">: </span><span><strong class="def-name">configurePin</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">pin</var>, <var class="var">mode</var>)</code><a class="copiable-link" href='#index-configurePin-2'></a></span></dt>
<dd><p>Set/Get pin mode for a specified pin on arduino connection.
</p>
<p>configurePin (<var class="var">ar</var>, <var class="var">pin</var>) will get the current mode of the specified pin.
</p>
<p>configurePin (<var class="var">ar</var>, <var class="var">pin</var>, <var class="var">mode</var>) will attempt set the pin to the specified
 mode if the mode is unset.
</p>
<h4 class="subsubheading" id="Inputs-6">Inputs</h4>
<p><var class="var">ar</var> - the arduino object of the connection to an arduino board.
</p>
<p><var class="var">pin</var> - string name of the pin to set/get the mode of.
</p>
<p><var class="var">mode</var> - string mode to set the pin to.
</p>
<h4 class="subsubheading" id="Outputs-6">Outputs</h4>
<p><var class="var">mode</var> - string current mode of the pin.
</p>
<p>Valid modes can be:
</p><ul class="itemize mark-bullet">
<li>AnalogInput
 - Acquire analog signals from pin
</li><li>DigitalInput
 - Acquire digital signals from pin
</li><li>DigitalOutput
 - Generate digital signals from pin
</li><li>I2C
 - Specify a pin to use with I2C protocol
</li><li>Pullup
 - Specify pin to use a pullup switch
</li><li>PWM
 - Specify pin to use a pulse width modulator
</li><li>Servo
 - Specify pin to use a servo
</li><li>SPI
 - Specify a pin to use with SPI protocol
</li><li>Interrupt
 - Specify a pin to use for with interrupts
</li><li>Reserved
 - Specify a pin to be reserved
</li><li>Unset
 - Clears pin designation. The pin is no longer reserved and can be automatically
 set at the next operation.
</li></ul>
<p><strong class="strong">See also:</strong> arduino.
</p>
</dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fconfigurePinResource">
<h4 class="subsection">9.2.4 @arduino/configurePinResource</h4>
<a class="index-entry-id" id="index-configurePinResource"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-configurePinResource-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">currmode</var> =</code> <strong class="def-name">configurePinResource</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">pin</var>)</code><a class="copiable-link" href='#index-configurePinResource-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-configurePinResource-2"><span class="category-def">: </span><span><strong class="def-name">configurePinResource</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">pin</var>, <var class="var">owner</var>, <var class="var">mode</var>)</code><a class="copiable-link" href='#index-configurePinResource-2'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-configurePinResource-3"><span class="category-def">: </span><span><strong class="def-name">configurePinResource</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">pin</var>, <var class="var">owner</var>, <var class="var">mode</var>, <var class="var">force</var>)</code><a class="copiable-link" href='#index-configurePinResource-3'></a></span></dt>
<dd><p>Set/Get pin mode for a specified pin on arduino connection.
</p>
<p>configurePinResource (<var class="var">ar</var>, <var class="var">pin</var>) will get the current mode of the specified pin.
</p>
<p>configurePinResource (<var class="var">ar</var>, <var class="var">pin</var>, <var class="var">owner</var>, <var class="var">mode</var>) will attempt set the pin to the specified
 mode and owner.
</p>
<p>If the pin is already owned by another owner, the configure will fail unless the force option is used.
 If the mode is already set, configure will fail unless force is used.
</p>
<h4 class="subsubheading" id="Inputs-7">Inputs</h4>
<p><var class="var">ar</var> - the arduino object of the connection to an arduino board.
</p>
<p><var class="var">pin</var> - string name of the pin to set/get the mode of.
</p>
<p><var class="var">mode</var> - string mode to set the pin to.
</p>
<p><var class="var">owner</var> - string name to use as the pin owner.
</p>
<p><var class="var">force</var> - boolean to force mode change. If not set, it will be false.
</p>
<h4 class="subsubheading" id="Outputs-7">Outputs</h4>
<p><var class="var">currmode</var> - current string mode of the pin.
</p>
<p>Valid modes can be:
</p><ul class="itemize mark-bullet">
<li>AnalogInput
 - Acquire analog signals from pin
</li><li>DigitalInput
 - Acquire digital signals from pin
</li><li>DigitalOutput
 - Generate digital signals from pin
</li><li>I2C
 - Specify a pin to use with I2C protocol
</li><li>Pullup
 - Specify pin to use a pullup switch
</li><li>PWM
 - Specify pin to use a pulse width modulator
</li><li>Servo
 - Specify pin to use a servo
</li><li>SPI
 - Specify a pin to use with SPI protocol
</li><li>Interrupt
 - Specify a pin to use with interrupts
</li><li>Reserved
 - Pin marked reserved, but not for of any particular mode
</li><li>Unset
 - Clears pin designation. The pin is no longer reserved and can be automatically
 set at the next operation.
</li></ul>
<p><strong class="strong">See also:</strong> arduino, configurePin.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fdecrementResourceCount">
<h4 class="subsection">9.2.5 @arduino/decrementResourceCount</h4>
<a class="index-entry-id" id="index-decrementResourceCount"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-decrementResourceCount-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">count</var> =</code> <strong class="def-name">decrementResourceCount</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">resource</var>)</code><a class="copiable-link" href='#index-decrementResourceCount-1'></a></span></dt>
<dd><p>Decrement the count of a named resource by 1 and return the
 new count.
</p>
<h4 class="subsubheading" id="Inputs-8">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object
</p>
<p><var class="var">resource</var> - name of resource to decrement count.
</p>
<h4 class="subsubheading" id="Outputs-8">Outputs</h4>
<p><var class="var">count</var> = count of uses registered to resource.
</p>
<p><strong class="strong">See also:</strong> getResourceCount. incrementResourceCount.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fdelete">
<h4 class="subsection">9.2.6 @arduino/delete</h4>
<a class="index-entry-id" id="index-delete"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-delete-11"><span class="category-def">: </span><span><strong class="def-name">delete</strong> <code class="def-code-arguments">(<var class="var">dev</var>)</code><a class="copiable-link" href='#index-delete-11'></a></span></dt>
<dd><p>Free resources of an arduino object.
</p>
<h4 class="subsubheading" id="Inputs-9">Inputs</h4>
<p><var class="var">dev</var> - object to free
</p>
<p><strong class="strong">See also:</strong> arduino.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fdisp">
<h4 class="subsection">9.2.7 @arduino/disp</h4>
<a class="index-entry-id" id="index-disp"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-disp-11"><span class="category-def">: </span><span><strong class="def-name">disp</strong> <code class="def-code-arguments">(<var class="var">ar</var>)</code><a class="copiable-link" href='#index-disp-11'></a></span></dt>
<dd><p>Display the arduino object in a verbose way, showing the board and available pins.
</p>
<h4 class="subsubheading" id="Inputs-10">Inputs</h4>
<p><var class="var">ar</var> - the arduino object.
</p>
<p>If the arduino object has debug mode set, additional information will be displayed.
</p>
<p><strong class="strong">See also:</strong> arduino.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fgetEndian">
<h4 class="subsection">9.2.8 @arduino/getEndian</h4>
<a class="index-entry-id" id="index-getEndian"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-getEndian-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">mcu</var> =</code> <strong class="def-name">getEndian</strong> <code class="def-code-arguments">(<var class="var">ar</var>)</code><a class="copiable-link" href='#index-getEndian-1'></a></span></dt>
<dd><p>Get the endian used by the connected arduino.
</p>
<h4 class="subsubheading" id="Inputs-11">Inputs</h4>
<p><var class="var">ar</var> - arduino object connected to a arduino board.
</p>
<h4 class="subsubheading" id="Outputs-9">Outputs</h4>
<p><var class="var">endian</var> - string representing the endian used by the arduino board.
</p>
<p>&rsquo;L&rsquo; means little endian,
 &rsquo;B&rsquo; means big endian
</p>
<p><strong class="strong">See also:</strong> arduino, getMCU.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fgetI2CTerminals">
<h4 class="subsection">9.2.9 @arduino/getI2CTerminals</h4>
<a class="index-entry-id" id="index-getI2CTerminals"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-getI2CTerminals-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">pinlist</var> =</code> <strong class="def-name">getI2CTerminals</strong> <code class="def-code-arguments">(<var class="var">ar</var>)</code><a class="copiable-link" href='#index-getI2CTerminals-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-getI2CTerminals-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">pinlist</var> =</code> <strong class="def-name">getI2CTerminals</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">bus</var>)</code><a class="copiable-link" href='#index-getI2CTerminals-2'></a></span></dt>
<dd><p>Get a cell list of pin Ids available are used for I2C mode.
</p>
<h4 class="subsubheading" id="Inputs-12">Inputs</h4>
<p><var class="var">ar</var> - the arduino object.
</p>
<p><var class="var">bus</var> - optional bus number 0 or 1 for boards that support more than 1 bus.
</p>
<h4 class="subsubheading" id="Outputs-10">Outputs</h4>
<p><var class="var">pinlist</var> - cell list of pin numbers available for I2C use.
</p>
<p><strong class="strong">See also:</strong> arduino.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fgetInterruptTerminals">
<h4 class="subsection">9.2.10 @arduino/getInterruptTerminals</h4>
<a class="index-entry-id" id="index-getInterruptTerminals"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-getInterruptTerminals-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">pinlist</var> =</code> <strong class="def-name">getInterruptTerminals</strong> <code class="def-code-arguments">(<var class="var">ar</var>)</code><a class="copiable-link" href='#index-getInterruptTerminals-1'></a></span></dt>
<dd><p>Get a cell list of pin Ids available have interrupt functionality
</p>
<h4 class="subsubheading" id="Inputs-13">Inputs</h4>
<p><var class="var">ar</var> - the arduino object.
</p>
<h4 class="subsubheading" id="Outputs-11">Outputs</h4>
<p><var class="var">pinlist</var> - cell list of pin numbers available for interrupt use.
</p>
<p><strong class="strong">See also:</strong> arduino.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fgetLEDTerminals">
<h4 class="subsection">9.2.11 @arduino/getLEDTerminals</h4>
<a class="index-entry-id" id="index-getLEDTerminals"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-getLEDTerminals-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">pinlist</var> =</code> <strong class="def-name">getLEDTerminals</strong> <code class="def-code-arguments">(<var class="var">ar</var>)</code><a class="copiable-link" href='#index-getLEDTerminals-1'></a></span></dt>
<dd><p>Get a cell list of pin Ids available are connected natively to LEDs.
</p>
<h4 class="subsubheading" id="Inputs-14">Inputs</h4>
<p><var class="var">ar</var> - the arduino object.
</p>
<h4 class="subsubheading" id="Outputs-12">Outputs</h4>
<p><var class="var">pinlist</var> - cell list of pin numbers available for LED use.
</p>
<p><strong class="strong">See also:</strong> arduino.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fgetMCU">
<h4 class="subsection">9.2.12 @arduino/getMCU</h4>
<a class="index-entry-id" id="index-getMCU"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-getMCU-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">mcu</var> =</code> <strong class="def-name">getMCU</strong> <code class="def-code-arguments">(<var class="var">ar</var>)</code><a class="copiable-link" href='#index-getMCU-1'></a></span></dt>
<dd><p>Get the MCU used by the connected arduino.
</p>
<h4 class="subsubheading" id="Inputs-15">Inputs</h4>
<p><var class="var">ar</var> - arduino object connected to a arduino board.
</p>
<h4 class="subsubheading" id="Outputs-13">Outputs</h4>
<p><var class="var">mcu</var> - string representing the mcu used by the arduino board.
</p>
<p><strong class="strong">See also:</strong> arduino.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fgetPWMTerminals">
<h4 class="subsection">9.2.13 @arduino/getPWMTerminals</h4>
<a class="index-entry-id" id="index-getPWMTerminals"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-getPWMTerminals-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">pinlist</var> =</code> <strong class="def-name">getPWMTerminals</strong> <code class="def-code-arguments">(<var class="var">ar</var>)</code><a class="copiable-link" href='#index-getPWMTerminals-1'></a></span></dt>
<dd><p>Get a cell list of pin Ids available for PWM use.
</p>
<h4 class="subsubheading" id="Inputs-16">Inputs</h4>
<p><var class="var">ar</var> - the arduino object.
</p>
<h4 class="subsubheading" id="Outputs-14">Outputs</h4>
<p><var class="var">pinlist</var> - cell list of pin numbers available for PWM use.
</p>
<p><strong class="strong">See also:</strong> arduino.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fgetPinAlias">
<h4 class="subsection">9.2.14 @arduino/getPinAlias</h4>
<a class="index-entry-id" id="index-getPinAlias"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-getPinAlias-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">ouy</var> =</code> <strong class="def-name">getPinAlias</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">pin</var>)</code><a class="copiable-link" href='#index-getPinAlias-1'></a></span></dt>
<dd><p>Get the pin actual pin name from a pin alias.
</p>
<p>For example, the arduino Leonardo, pin &quot;D4&quot; is also &quot;A6&quot;.
</p>
<h4 class="subsubheading" id="Inputs-17">Inputs</h4>
<p><var class="var">ar</var> - the connected arduino object.
</p>
<p><var class="var">pin</var> - a pin name.
</p>
<h4 class="subsubheading" id="Outputs-15">Outputs</h4>
<p><var class="var">out</var> - alias pin name, or same as <var class="var">pin</var> if the pin doesnt have any alias names.
</p>
<p><strong class="strong">See also:</strong> arduino, configurePinResource, getResourceOwner.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fgetPinInfo">
<h4 class="subsection">9.2.15 @arduino/getPinInfo</h4>
<a class="index-entry-id" id="index-getPinInfo"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-getPinInfo-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">pininfo</var> =</code> <strong class="def-name">getPinInfo</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">pin</var>)</code><a class="copiable-link" href='#index-getPinInfo-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-getPinInfo-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">pininfoarray</var> =</code> <strong class="def-name">getPinInfo</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">pinarray</var>)</code><a class="copiable-link" href='#index-getPinInfo-2'></a></span></dt>
<dd><p>Get the pin information from the input pins values.
</p>
<p>getPinInfo (<var class="var">ar</var>, <var class="var">pin</var>) will get information for a single pin.
</p>
<p>getPinInfo (<var class="var">ar</var>, <var class="var">pinarray</var>) will get a cell array of pin information
</p>
<h4 class="subsubheading" id="Inputs-18">Inputs</h4>
<p><var class="var">ar</var> - the connected arduino object.
</p>
<p><var class="var">pin</var> - a pin number or pin name.
</p>
<p><var class="var">pinarray</var> - the array of pin numbers or names
</p>
<p>The pininfo struct contains the following fields:
</p><dl class="table">
<dt>terminal</dt>
<dd><p>Terminal number of the pin
</p></dd>
<dt>name</dt>
<dd><p>String name of the pin
</p></dd>
<dt>owner</dt>
<dd><p>Current item owner of the pin
</p></dd>
<dt>mode</dt>
<dd><p>Current configured mode for the pin
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-16">Outputs</h4>
<p><var class="var">pininfo</var> - struct on pin information.
</p>
<p><var class="var">pininfolist</var> - cell array of pin info
</p>
<p><strong class="strong">See also:</strong> arduino, configurePinResource, getResourceOwner.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fgetPinsFromTerminals">
<h4 class="subsection">9.2.16 @arduino/getPinsFromTerminals</h4>
<a class="index-entry-id" id="index-getPinsFromTerminals"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-getPinsFromTerminals-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">pinnames</var> =</code> <strong class="def-name">getPinsFromTerminals</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">terminals</var>)</code><a class="copiable-link" href='#index-getPinsFromTerminals-1'></a></span></dt>
<dd><p>Get the pin names from the input terminal values.
</p>
<h4 class="subsubheading" id="Inputs-19">Inputs</h4>
<p><var class="var">ar</var> - the connected arduino object.
</p>
<p><var class="var">terminals</var> - the numeric pin number, or array of pin numbers to get pin names.
</p>
<h4 class="subsubheading" id="Outputs-17">Outputs</h4>
<p><var class="var">pinnames</var> - the string names of each input pin. If terminals was a single value, the return
 will be a single string, otherwise it will return a cell array of each pin name.
</p>
<p><strong class="strong">See also:</strong> arduino, getTerminalsFromPins.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fgetResourceCount">
<h4 class="subsection">9.2.17 @arduino/getResourceCount</h4>
<a class="index-entry-id" id="index-getResourceCount"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-getResourceCount-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">count</var> =</code> <strong class="def-name">getResourceCount</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">resource</var>)</code><a class="copiable-link" href='#index-getResourceCount-1'></a></span></dt>
<dd><p>Get the count of uses of  a given resource.
</p>
<h4 class="subsubheading" id="Inputs-20">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object
</p>
<p><var class="var">resource</var> - name of resource to get count for.
</p>
<h4 class="subsubheading" id="Outputs-18">Outputs</h4>
<p><var class="var">count</var> = count of uses registered to resource.
</p>
<p><strong class="strong">See also:</strong> incrementResourceCount. decrementResourceCount.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fgetResourceOwner">
<h4 class="subsection">9.2.18 @arduino/getResourceOwner</h4>
<a class="index-entry-id" id="index-getResourceOwner"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-getResourceOwner-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">owner</var> =</code> <strong class="def-name">getResourceOwner</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">terminal</var>)</code><a class="copiable-link" href='#index-getResourceOwner-1'></a></span></dt>
<dd><p>Get the owner of pin allocated previously by configurePinResource.
</p>
<h4 class="subsubheading" id="Inputs-21">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object
</p>
<p><var class="var">terminal</var> - terminal number to get owner of.
</p>
<h4 class="subsubheading" id="Outputs-19">Outputs</h4>
<p><var class="var">owner</var> = owner of the terminal pin, or &quot;&quot; if not owned.
</p>
<p><strong class="strong">See also:</strong> configurePinResource.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fgetSPITerminals">
<h4 class="subsection">9.2.19 @arduino/getSPITerminals</h4>
<a class="index-entry-id" id="index-getSPITerminals"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-getSPITerminals-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">pinlist</var> =</code> <strong class="def-name">getSPITerminals</strong> <code class="def-code-arguments">(<var class="var">ar</var>)</code><a class="copiable-link" href='#index-getSPITerminals-1'></a></span></dt>
<dd><p>Get a cell list of pin Ids available for SPI mode.
</p>
<h4 class="subsubheading" id="Inputs-22">Inputs</h4>
<p><var class="var">ar</var> - the arduino object.
</p>
<h4 class="subsubheading" id="Outputs-20">Outputs</h4>
<p><var class="var">pinlist</var> - cell list of pin numbers available for SPI use.
</p>
<p><strong class="strong">See also:</strong> arduino.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fgetServoTerminals">
<h4 class="subsection">9.2.20 @arduino/getServoTerminals</h4>
<a class="index-entry-id" id="index-getServoTerminals"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-getServoTerminals-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">pinlist</var> =</code> <strong class="def-name">getServoTerminals</strong> <code class="def-code-arguments">(<var class="var">ar</var>)</code><a class="copiable-link" href='#index-getServoTerminals-1'></a></span></dt>
<dd><p>Get a cell list of pin Ids available for servo use.
</p>
<h4 class="subsubheading" id="Inputs-23">Inputs</h4>
<p><var class="var">ar</var> - the arduino object.
</p>
<h4 class="subsubheading" id="Outputs-21">Outputs</h4>
<p><var class="var">pinlist</var> - cell list of pin numbers available for servo use.
</p>
<p><strong class="strong">See also:</strong> arduino, getPWMTerminals.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fgetSharedResourceProperty">
<h4 class="subsection">9.2.21 @arduino/getSharedResourceProperty</h4>
<a class="index-entry-id" id="index-getSharedResourceProperty"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-getSharedResourceProperty-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">count</var> =</code> <strong class="def-name">getSharedResourceProperty</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">resource</var>, <var class="var">property</var>)</code><a class="copiable-link" href='#index-getSharedResourceProperty-1'></a></span></dt>
<dd><p>Get the value of a property from a given resource.
</p>
<h4 class="subsubheading" id="Inputs-24">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object
</p>
<p><var class="var">resource</var> - name of resource to get property for.
</p>
<p><var class="var">property</var> - name of property from the resource.
</p>
<h4 class="subsubheading" id="Outputs-22">Outputs</h4>
<p><var class="var">propvalue</var> - value of the property
</p>
<p><strong class="strong">See also:</strong> getResourceCount, setSharedResourceProperty.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fgetTerminalMode">
<h4 class="subsection">9.2.22 @arduino/getTerminalMode</h4>
<a class="index-entry-id" id="index-getTerminalMode"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-getTerminalMode-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">mode</var> =</code> <strong class="def-name">getTerminalMode</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">terminal</var>)</code><a class="copiable-link" href='#index-getTerminalMode-1'></a></span></dt>
<dd><p>Get the mode of a pin allocated previously by configurePinResource.
</p>
<h4 class="subsubheading" id="Inputs-25">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object
</p>
<p><var class="var">terminal</var> - terminal number to get owner of.
</p>
<h4 class="subsubheading" id="Outputs-23">Outputs</h4>
<p><var class="var">mode</var> - mode of the terminal pin, or &quot;not_set&quot; if not owned.
</p>
<p><strong class="strong">See also:</strong> configurePinResource, getResourceOwner.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fgetTerminalsFromPins">
<h4 class="subsection">9.2.23 @arduino/getTerminalsFromPins</h4>
<a class="index-entry-id" id="index-getTerminalsFromPins"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-getTerminalsFromPins-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">pinnums</var> =</code> <strong class="def-name">getTerminalsFromPins</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">pins</var>)</code><a class="copiable-link" href='#index-getTerminalsFromPins-1'></a></span></dt>
<dd><p>Get the terminal number for each pin.
</p>
<h4 class="subsubheading" id="Inputs-26">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object
</p>
<p><var class="var">pins</var> - single pin name or cell or vector array of pin names.
</p>
<h4 class="subsubheading" id="Outputs-24">Outputs</h4>
<p><var class="var">pinnums</var> - pin number of each named pin. If the input was a single string, returns a number.
 if the input pins was a vector or cell array, return a cell array of pin numbers corresponding
 to each input pin name.
</p>
<p><strong class="strong">See also:</strong> arduino, getPinsFromTerminals.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fincrementResourceCount">
<h4 class="subsection">9.2.24 @arduino/incrementResourceCount</h4>
<a class="index-entry-id" id="index-incrementResourceCount"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-incrementResourceCount-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">count</var> =</code> <strong class="def-name">incrementResourceCount</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">resource</var>)</code><a class="copiable-link" href='#index-incrementResourceCount-1'></a></span></dt>
<dd><p>Increment the count value of a named resource by 1 and return the
 new count
</p>
<h4 class="subsubheading" id="Inputs-27">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object
</p>
<p><var class="var">resource</var> - name of resource to increment count.
</p>
<h4 class="subsubheading" id="Outputs-25">Outputs</h4>
<p><var class="var">count</var> = count of uses registered to resource.
</p>
<p><strong class="strong">See also:</strong> getResourceCount. decrementResourceCount.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fisTerminalAnalog">
<h4 class="subsection">9.2.25 @arduino/isTerminalAnalog</h4>
<a class="index-entry-id" id="index-isTerminalAnalog"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-isTerminalAnalog-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">ret</var> =</code> <strong class="def-name">isTerminalAnalog</strong> <code class="def-code-arguments">(<var class="var">obj</var>, <var class="var">terminal</var>)</code><a class="copiable-link" href='#index-isTerminalAnalog-1'></a></span></dt>
<dd><p>Return true if pin is capable of analog input
</p>
<h4 class="subsubheading" id="Inputs-28">Inputs</h4>
<p><var class="var">ar</var> - the connected arduino object
</p>
<p><var class="var">terminal</var> is a terminal number to check
</p>
<h4 class="subsubheading" id="Outputs-26">Outputs</h4>
<p><var class="var">ret</var> return 1 if terminal is a analog pin, 0 otherwise
</p>
</dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fisTerminalDigital">
<h4 class="subsection">9.2.26 @arduino/isTerminalDigital</h4>
<a class="index-entry-id" id="index-isTerminalDigital"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-isTerminalDigital_0028obj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">ret</var> =</code> <strong class="def-name">isTerminalDigital(<var class="var">obj</var>,</strong> <code class="def-code-arguments"><var class="var">terminal</var>)</code><a class="copiable-link" href='#index-isTerminalDigital_0028obj_002c'></a></span></dt>
<dd><p>Return true if pin is capable of digital functions
</p>
<h4 class="subsubheading" id="Inputs-29">Inputs</h4>
<p><var class="var">ar</var> - the connected arduino object
</p>
<p><var class="var">terminal</var> is a terminal number to check
</p>
<h4 class="subsubheading" id="Outputs-27">Outputs</h4>
<p><var class="var">ret</var> return 1 if terminal is a digital pin, 0 otherwise
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fplayTone">
<h4 class="subsection">9.2.27 @arduino/playTone</h4>
<a class="index-entry-id" id="index-playTone"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-playTone-1"><span class="category-def">: </span><span><strong class="def-name">playTone</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">pin</var>, <var class="var">freq</var>, <var class="var">duration</var>)</code><a class="copiable-link" href='#index-playTone-1'></a></span></dt>
<dd><p>Play a tone of a given frequency on a specified pin.
</p>
<h4 class="subsubheading" id="Inputs-30">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object
</p>
<p><var class="var">pin</var> - digital pin to play tone on
</p>
<p><var class="var">freq</var> - frequency in  hertz to play between 0 and 32767Hz.
</p>
<p><var class="var">duration</var> duration in seconds to play tone between 0 and 30 seconds
</p>
<p>If duration is 0 or not specified, tone will continue to play until next tone is commanded.
 If frequency is 0, tone will stop playing
</p>
<p><strong class="strong">NOTE:</strong> use of playTone can interfere with PWM output.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002freadAnalogPin">
<h4 class="subsection">9.2.28 @arduino/readAnalogPin</h4>
<a class="index-entry-id" id="index-readAnalogPin"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readAnalogPin-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">value</var> =</code> <strong class="def-name">readAnalogPin</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">pin</var>)</code><a class="copiable-link" href='#index-readAnalogPin-1'></a></span></dt>
<dd><p>Read analog voltage of  <var class="var">pin</var>.
</p>
<h4 class="subsubheading" id="Inputs-31">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object.
</p>
<p><var class="var">pin</var> - string name of the pin to read.
</p>
<h4 class="subsubheading" id="Outputs-28">Outputs</h4>
<p><var class="var">value</var> - analog value of the pin
</p>
<h4 class="subsubheading" id="Example-1">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 ar = arduino ();
 readAnalogPin(ar, &quot;A4&quot;);
 ans =
     87
 </code>
</pre></div>
<p><strong class="strong">See also:</strong> arduino, readVoltage.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002freadDigitalPin">
<h4 class="subsection">9.2.29 @arduino/readDigitalPin</h4>
<a class="index-entry-id" id="index-readDigitalPin"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readDigitalPin-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">value</var> =</code> <strong class="def-name">readDigitalPin</strong> <code class="def-code-arguments">(<var class="var">obj</var>, <var class="var">pin</var>)</code><a class="copiable-link" href='#index-readDigitalPin-1'></a></span></dt>
<dd><p>Read digital value from a digital I/O pin.
</p>
<h4 class="subsubheading" id="Inputs-32">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object.
</p>
<p><var class="var">pin</var> - string name of the pin to read.
</p>
<h4 class="subsubheading" id="Outputs-29">Outputs</h4>
<p><var class="var">value</var> - the logical value (0, 1, true false) of the current pin state.
</p>
<h4 class="subsubheading" id="Example-2">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino ();
 pinvalue = readDigitalPin (a, 'D5');
 </code>
</pre></div>
<p><strong class="strong">See also:</strong> arduino, writeDigitalPin.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002freadVoltage">
<h4 class="subsection">9.2.30 @arduino/readVoltage</h4>
<a class="index-entry-id" id="index-readVoltage"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readVoltage-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">voltage</var> =</code> <strong class="def-name">readVoltage</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">pin</var>)</code><a class="copiable-link" href='#index-readVoltage-1'></a></span></dt>
<dd><p>Read analog voltage of a pin.
</p>
<h4 class="subsubheading" id="Inputs-33">Inputs</h4>
<p><var class="var">ar</var> - connected arduino.
</p>
<p><var class="var">pin</var> - pin name or number to query for voltage
</p>
<h4 class="subsubheading" id="Outputs-30">Outputs</h4>
<p><var class="var">voltage</var> - scaled pin value as a voltage
</p>
<h4 class="subsubheading" id="Example-3">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 ar = arduino ();
 readVoltage(ar, &quot;A4&quot;);
 ans =
     1.401
 </code>
</pre></div>
<p><strong class="strong">See also:</strong> arduino, readAnalogPin.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002freset">
<h4 class="subsection">9.2.31 @arduino/reset</h4>
<a class="index-entry-id" id="index-reset"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-reset-2"><span class="category-def">: </span><span><strong class="def-name">reset</strong> <code class="def-code-arguments">(<var class="var">ar</var>)</code><a class="copiable-link" href='#index-reset-2'></a></span></dt>
<dd><p>Send reset command to arduino hardware to force a hardware reset.
</p>
<h4 class="subsubheading" id="Inputs-34">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object.
</p>
<p><strong class="strong">See also:</strong> arduino.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fsendCommand">
<h4 class="subsection">9.2.32 @arduino/sendCommand</h4>
<a class="index-entry-id" id="index-sendCommand"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-sendCommand-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">outdata, outsize</var> =</code> <strong class="def-name">sendCommand</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">libname</var>, <var class="var">commandid</var>)</code><a class="copiable-link" href='#index-sendCommand-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-sendCommand-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">outdata, outsize</var> =</code> <strong class="def-name">sendCommand</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">libname</var>, <var class="var">commandid</var>, <var class="var">data</var>)</code><a class="copiable-link" href='#index-sendCommand-2'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-sendCommand-3"><span class="category-def">: </span><span><code class="def-type"><var class="var">outdata, outsize</var> =</code> <strong class="def-name">sendCommand</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">libname</var>, <var class="var">commandid</var>, <var class="var">data</var>, <var class="var">timeout</var>)</code><a class="copiable-link" href='#index-sendCommand-3'></a></span></dt>
<dd><p>Send a command with option data to the connected arduino, waiting up to a specified number of seconds
 for a response.
</p>
<h4 class="subsubheading" id="Inputs-35">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object.
</p>
<p><var class="var">libname</var> - library sending the command. The name should match a programmed
 library of the arduino, or an error will be displayed.
</p>
<p><var class="var">commandid</var> - integer value for the command being sent to the arduino.
</p>
<p><var class="var">data</var> - optional data sent with the command.
</p>
<p><var class="var">timeout</var> - optional timeout to wait for data
</p>
<h4 class="subsubheading" id="Outputs-31">Outputs</h4>
<p><var class="var">outdata</var> - data returned back from the arduino in response to command
</p>
<p><var class="var">outsize</var> - size of data received
</p>
<p>If the arduino fails to respond with a valid reply, sendCommand will error.
</p>
<p><strong class="strong">See also:</strong> arduino.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fsetSharedResourceProperty">
<h4 class="subsection">9.2.33 @arduino/setSharedResourceProperty</h4>
<a class="index-entry-id" id="index-setSharedResourceProperty"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-setSharedResourceProperty-1"><span class="category-def">: </span><span><strong class="def-name">setSharedResourceProperty</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">resource</var>, <var class="var">propname</var>, <var class="var">propvalue</var>)</code><a class="copiable-link" href='#index-setSharedResourceProperty-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-setSharedResourceProperty-2"><span class="category-def">: </span><span><strong class="def-name">setSharedResourceProperty</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">resource</var>, <var class="var">propname</var>, <var class="var">propvalue</var>, ___)</code><a class="copiable-link" href='#index-setSharedResourceProperty-2'></a></span></dt>
<dd><p>Set property values for a given resource.
</p>
<h4 class="subsubheading" id="Inputs-36">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object
</p>
<p><var class="var">resource</var> - name of resource to get property for.
</p>
<p><var class="var">propname</var> - name of property from the resource.
</p>
<p><var class="var">propvalue</var> - value of property from the resource.
</p>
<p>Multiple <var class="var">propname</var>, <var class="var">propvalue</var> pairs can be given.
</p>
<h4 class="subsubheading" id="Outputs-32">Outputs</h4>
<p>None
</p>
<h4 class="subsubheading" id="Example-4">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 ar = arduino();
 setSharedResourceProperty(ar, &quot;myresource&quot;, &quot;myproperty&quot;, [1 2 3])
 </code>
</pre></div>
<p><strong class="strong">See also:</strong> getSharedResourceProperty.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fuptime">
<h4 class="subsection">9.2.34 @arduino/uptime</h4>
<a class="index-entry-id" id="index-uptime"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-uptime-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">sec</var> =</code> <strong class="def-name">uptime</strong> <code class="def-code-arguments">(<var class="var">ar</var>)</code><a class="copiable-link" href='#index-uptime-1'></a></span></dt>
<dd><p>Get the number of seconds the arduino board has been running concurrently.
</p>
<h4 class="subsubheading" id="Inputs-37">Inputs</h4>
<p><var class="var">ar</var> - the arduino object of the connection to an arduino board.
</p>
<h4 class="subsubheading" id="Outputs-33">Outputs</h4>
<p><var class="var">sec</var> - the number seconds the board has been running. Note that the count will wrap around after
 approximately 50 days.
</p>
<p><strong class="strong">See also:</strong> arduino.
</p>
</dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fvalidatePin">
<h4 class="subsection">9.2.35 @arduino/validatePin</h4>
<a class="index-entry-id" id="index-validatePin"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-validatePin-1"><span class="category-def">: </span><span><strong class="def-name">validatePin</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">pin</var>, <var class="var">type</var>)</code><a class="copiable-link" href='#index-validatePin-1'></a></span></dt>
<dd><p>Validate that the mode is allowed for specified pin
</p>
<p>If the mode is not valid, and error will be thrown.
</p>
<h4 class="subsubheading" id="Inputs-38">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object
</p>
<p><var class="var">pin</var> -  name of pin to query mode validity of
</p>
<p><var class="var">mode</var> - mode to query
</p>
<p>Known modes are:
</p><ul class="itemize mark-bullet">
<li>&rsquo;I2C&rsquo;
</li><li>&rsquo;SPI&rsquo;
</li><li>&rsquo;PWM&rsquo;
</li><li>&rsquo;Servo&rsquo;
</li><li>&rsquo;analog&rsquo;
</li><li>&rsquo;digital&rsquo;
</li></ul>
<p><strong class="strong">See also:</strong> arduino, configurePin.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fversion">
<h4 class="subsection">9.2.36 @arduino/version</h4>
<a class="index-entry-id" id="index-version"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-version-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">ver</var> =</code> <strong class="def-name">version</strong> <code class="def-code-arguments">(<var class="var">ar</var>)</code><a class="copiable-link" href='#index-version-1'></a></span></dt>
<dd><p>Get version of library code installed on arduino board
</p>
<h4 class="subsubheading" id="Inputs-39">Inputs</h4>
<p><var class="var">ar</var> - the arduino object of the connection to an arduino board.
</p>
<h4 class="subsubheading" id="Outputs-34">Outputs</h4>
<p><var class="var">ver</var> - version string in format of X.Y.Z.
</p>
<p><strong class="strong">See also:</strong> arduino.
</p>
</dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fwriteDigitalPin">
<h4 class="subsection">9.2.37 @arduino/writeDigitalPin</h4>
<a class="index-entry-id" id="index-writeDigitalPin"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-writeDigitalPin-1"><span class="category-def">: </span><span><strong class="def-name">writeDigitalPin</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">pin</var>, <var class="var">value</var>)</code><a class="copiable-link" href='#index-writeDigitalPin-1'></a></span></dt>
<dd><p>Write digital value to a digital I/O pin.
</p>
<h4 class="subsubheading" id="Inputs-40">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object.
</p>
<p><var class="var">pin</var> - string name of the pin to write to.
</p>
<p><var class="var">value</var> - the logical value (0, 1, true false) to write to the pin.
</p>
<p>If pin was unconfigured before using, pin is set into digital mode.
</p>
<h4 class="subsubheading" id="Example-5">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino();
 writeDigitalPin(a,'D5',1);
 </code>
</pre></div>
<p><strong class="strong">See also:</strong> arduino, readDigitalPin.
</p>
</dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fwritePWMDutyCycle">
<h4 class="subsection">9.2.38 @arduino/writePWMDutyCycle</h4>
<a class="index-entry-id" id="index-writePWMDutyCycle"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-writePWMDutyCyle"><span class="category-def">: </span><span><strong class="def-name">writePWMDutyCyle</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">pin</var>, <var class="var">value</var>)</code><a class="copiable-link" href='#index-writePWMDutyCyle'></a></span></dt>
<dd><p>Set pin to output a square wave with a specified duty cycle.
</p>
<h4 class="subsubheading" id="Inputs-41">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object
</p>
<p><var class="var">pin</var> - pin to write to.
</p>
<p><var class="var">value</var> - duty cycle value where 0 = off, 0.5 = 50% on, 1 = always on.
</p>
<h4 class="subsubheading" id="Example-6">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino();
 writePWMDutyCycle(a,'D5',0.5);
 </code>
</pre></div>
<p><strong class="strong">See also:</strong> arduino, writePWMVoltage.
</p>
</dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040arduino_002fwritePWMVoltage">
<h4 class="subsection">9.2.39 @arduino/writePWMVoltage</h4>
<a class="index-entry-id" id="index-writePWMVoltage"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-writePWMVoltage-1"><span class="category-def">: </span><span><strong class="def-name">writePWMVoltage</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">pin</var>, <var class="var">voltage</var>)</code><a class="copiable-link" href='#index-writePWMVoltage-1'></a></span></dt>
<dd><p>Emulate an approximate voltage out of a pin using PWM.
</p>
<h4 class="subsubheading" id="Inputs-42">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object
</p>
<p><var class="var">pin</var> - pin to write to.
</p>
<p><var class="var">voltage</var> - voltage to emulate with PWM, between 0 - 5.0
</p>
<h4 class="subsubheading" id="Example-7">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino();
 writePWMVoltage(a,'D5',1.0);
 </code>
</pre></div>
<p><strong class="strong">See also:</strong> arduino, writePWMDutyCycle.
</p></dd></dl>
<hr>
</div>
</div>
<div class="section-level-extent" id="Arduino-I2C-Functions">
<div class="nav-panel">
<p>
Next: <a href="#Arduino-Rotary-Encoder-Functions" accesskey="n" rel="next">Arduino Rotary Encoder Functions</a>, Previous: <a href="#Arduino-Functions" accesskey="p" rel="prev">Arduino Functions</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Arduino-I2C-Functions-1">9.3 Arduino I2C Functions</h3>
<a class="index-entry-id" id="index-Arduino-I2C-Functions"></a>
<ul class="mini-toc">
<li><a href="#g_t_0040device_002fdelete" accesskey="1">@device/delete</a></li>
<li><a href="#g_t_0040device_002fdisp" accesskey="2">@device/disp</a></li>
<li><a href="#g_t_0040device_002fread" accesskey="3">@device/read</a></li>
<li><a href="#g_t_0040device_002freadRegister" accesskey="4">@device/readRegister</a></li>
<li><a href="#g_t_0040device_002fsubsref" accesskey="5">@device/subsref</a></li>
<li><a href="#g_t_0040device_002fwrite" accesskey="6">@device/write</a></li>
<li><a href="#g_t_0040device_002fwriteRegister" accesskey="7">@device/writeRegister</a></li>
<li><a href="#g_t_0040i2cdev_002fdelete" accesskey="8">@i2cdev/delete</a></li>
<li><a href="#g_t_0040i2cdev_002fdisp" accesskey="9">@i2cdev/disp</a></li>
<li><a href="#g_t_0040i2cdev_002fi2cdev">@i2cdev/i2cdev</a></li>
<li><a href="#g_t_0040i2cdev_002fread">@i2cdev/read</a></li>
<li><a href="#g_t_0040i2cdev_002freadRegister">@i2cdev/readRegister</a></li>
<li><a href="#g_t_0040i2cdev_002fsubsref">@i2cdev/subsref</a></li>
<li><a href="#g_t_0040i2cdev_002fwrite">@i2cdev/write</a></li>
<li><a href="#g_t_0040i2cdev_002fwriteRegister">@i2cdev/writeRegister</a></li>
<li><a href="#scanI2Cbus">scanI2Cbus</a></li>
</ul>
<div class="subsection-level-extent" id="g_t_0040device_002fdelete">
<h4 class="subsection">9.3.1 @device/delete</h4>
<a class="index-entry-id" id="index-delete-1"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-delete-12"><span class="category-def">: </span><span><strong class="def-name">delete</strong> <code class="def-code-arguments">(<var class="var">dev</var>)</code><a class="copiable-link" href='#index-delete-12'></a></span></dt>
<dd><p>Free resources of a device object.
</p>
<h4 class="subsubheading" id="Inputs-43">Inputs</h4>
<p><var class="var">dev</var> - object to free
</p>
<p><strong class="strong">See also:</strong> device.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002fdisp">
<h4 class="subsection">9.3.2 @device/disp</h4>
<a class="index-entry-id" id="index-disp-1"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-disp-12"><span class="category-def">: </span><span><strong class="def-name">disp</strong> <code class="def-code-arguments">(<var class="var">dev</var>)</code><a class="copiable-link" href='#index-disp-12'></a></span></dt>
<dd><p>Display device object.
</p>
<h4 class="subsubheading" id="Inputs-44">Inputs</h4>
<p><var class="var">dev</var> - device object to display
</p>
<p><strong class="strong">See also:</strong> device.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002fread">
<h4 class="subsection">9.3.3 @device/read</h4>
<a class="index-entry-id" id="index-read"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-read-5"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">read</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">numbytes</var>)</code><a class="copiable-link" href='#index-read-5'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-read-6"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">read</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">numbytes</var>, <var class="var">precision</var>)</code><a class="copiable-link" href='#index-read-6'></a></span></dt>
<dd><p>Read a specified number of bytes from a i2c or serial device object
 using optional precision for bytesize.
</p>
<h4 class="subsubheading" id="Inputs-45">Inputs</h4>
<p><var class="var">dev</var> - connected i2c or serial device opened using device
</p>
<p><var class="var">numbytes</var> - number of bytes to read.
</p>
<p><var class="var">precision</var> - Optional precision for the output data read data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<h4 class="subsubheading" id="Outputs-35">Outputs</h4>
<p><var class="var">data</var> - data read from the device
</p>
<p><strong class="strong">See also:</strong> arduino, device.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002freadRegister">
<h4 class="subsection">9.3.4 @device/readRegister</h4>
<a class="index-entry-id" id="index-readRegister"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readRegister-3"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">readRegister</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">reg</var>, <var class="var">numbytes</var>)</code><a class="copiable-link" href='#index-readRegister-3'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-readRegister-4"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">readRegister</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">reg</var>, <var class="var">numbytes</var>, <var class="var">precision</var>)</code><a class="copiable-link" href='#index-readRegister-4'></a></span></dt>
<dd><p>Read a specified number of bytes from a register of an i2cdev object
 using optional precision for bytesize.
</p>
<h4 class="subsubheading" id="Inputs-46">Inputs</h4>
<p><var class="var">dev</var> - connected i2c device opened using device
</p>
<p><var class="var">reg</var> - registry value number
</p>
<p><var class="var">numbytes</var> - number of bytes to read.
</p>
<p><var class="var">precision</var> - Optional precision for the output data read data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<h4 class="subsubheading" id="Output">Output</h4>
<p><var class="var">data</var> - data read from device.
</p>
<p><strong class="strong">See also:</strong> arduino, device.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002fsubsref">
<h4 class="subsection">9.3.5 @device/subsref</h4>
<a class="index-entry-id" id="index-subsref"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-subsref-10"><span class="category-def">: </span><span><code class="def-type"><var class="var">val</var> =</code> <strong class="def-name">subsref</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">sub</var>)</code><a class="copiable-link" href='#index-subsref-10'></a></span></dt>
<dd><p>subref for device
</p>
<p><strong class="strong">See also:</strong> device.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002fwrite">
<h4 class="subsection">9.3.6 @device/write</h4>
<a class="index-entry-id" id="index-write"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-write-5"><span class="category-def">: </span><span><strong class="def-name">write</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">datain</var>)</code><a class="copiable-link" href='#index-write-5'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-write-6"><span class="category-def">: </span><span><strong class="def-name">write</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">datain</var>, <var class="var">precision</var>)</code><a class="copiable-link" href='#index-write-6'></a></span></dt>
<dd><p>Write data to a I2C or serial device object
 using optional precision for the data byte used for the data.
</p>
<h4 class="subsubheading" id="Inputs-47">Inputs</h4>
<p><var class="var">dev</var> - connected i2c or serial device opened using device
</p>
<p><var class="var">datain</var> - data to write to device. Datasize should not exceed the constraints
 of the data type specified for the precision.
</p>
<p><var class="var">precision</var> - Optional precision for the input write data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<p><strong class="strong">See also:</strong> arduino, device, read.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002fwriteRegister">
<h4 class="subsection">9.3.7 @device/writeRegister</h4>
<a class="index-entry-id" id="index-writeRegister"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-writeRegister-3"><span class="category-def">: </span><span><strong class="def-name">writeRegister</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">reg</var>, <var class="var">datain</var>)</code><a class="copiable-link" href='#index-writeRegister-3'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-writeRegister-4"><span class="category-def">: </span><span><strong class="def-name">writeRegister</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">dev</var>, <var class="var">datain</var>, <var class="var">precision</var>)</code><a class="copiable-link" href='#index-writeRegister-4'></a></span></dt>
<dd><p>Write data to i2c device object at a given registry position
 using optional precision for the data byte used for the data.
</p>
<h4 class="subsubheading" id="Inputs-48">Inputs</h4>
<p><var class="var">dev</var> - connected i2c device opened using device
</p>
<p><var class="var">reg</var> - registry position to write to.
</p>
<p><var class="var">datain</var> - data to write to device. Datasize should not exceed the constraints
 of the data type specified for the precision.
</p>
<p><var class="var">precision</var> - Optional precision for the input write data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<p><strong class="strong">See also:</strong> arduino, device, read.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040i2cdev_002fdelete">
<h4 class="subsection">9.3.8 @i2cdev/delete</h4>
<a class="index-entry-id" id="index-delete-2"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-delete-13"><span class="category-def">: </span><span><strong class="def-name">delete</strong> <code class="def-code-arguments">(<var class="var">dev</var>)</code><a class="copiable-link" href='#index-delete-13'></a></span></dt>
<dd><p>Free resources of a i2cdev object.
</p>
<h4 class="subsubheading" id="Inputs-49">Inputs</h4>
<p><var class="var">dev</var> - object to free
</p>
<p><strong class="strong">See also:</strong> i2cdev.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040i2cdev_002fdisp">
<h4 class="subsection">9.3.9 @i2cdev/disp</h4>
<a class="index-entry-id" id="index-disp-2"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-disp-13"><span class="category-def">: </span><span><strong class="def-name">disp</strong> <code class="def-code-arguments">(<var class="var">dev</var>)</code><a class="copiable-link" href='#index-disp-13'></a></span></dt>
<dd><p>Display i2cdev object.
</p>
<h4 class="subsubheading" id="Inputs-50">Inputs</h4>
<p><var class="var">dev</var> - i2cdev object
</p>
<p><strong class="strong">See also:</strong> i2cdev.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040i2cdev_002fi2cdev">
<h4 class="subsection">9.3.10 @i2cdev/i2cdev</h4>
<a class="index-entry-id" id="index-i2cdev"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-i2cdev-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">dev</var> =</code> <strong class="def-name">i2cdev</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">address</var>)</code><a class="copiable-link" href='#index-i2cdev-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-i2cdev-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">dev</var> =</code> <strong class="def-name">i2cdev</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">address</var>, <var class="var">propname</var>, <var class="var">propvalue</var>)</code><a class="copiable-link" href='#index-i2cdev-2'></a></span></dt>
<dd>
<p><code class="code">i2cdev</code> is depreciated and will be removed in a future version.
 Use <code class="code">device</code> instead.
</p>
<p>Create an i2cdev object to communicate to the i2c port on a connected arduino.
</p>
<h4 class="subsubheading" id="Inputs-51">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object
</p>
<p><var class="var">address</var> - address to use for device on I2C bus.
</p>
<p><var class="var">propname</var>, <var class="var">propvalue</var> - property name/value pair for values to pass to devices.
</p>
<p>Currently known properties:
</p><dl class="table">
<dt>bus</dt>
<dd><p>bus number (when arduino board supports multiple I2C buses)
 with value of 0 or 1.
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-36">Outputs</h4>
<p><var class="var">dev</var> - new created i2cdev object.
</p>
<h4 class="subsubheading" id="Properties-1">Properties</h4>
<p>The i2cdev object has the following public properties:
</p><dl class="table">
<dt>parent</dt>
<dd><p>The parent (arduino) for this device
</p></dd>
<dt>pins</dt>
<dd><p>pins used by this object
</p></dd>
<dt>bus</dt>
<dd><p>bus used for created object
</p></dd>
<dt>address</dt>
<dd><p>I2C address set for object
</p></dd>
</dl>
<p><strong class="strong">See also:</strong> arduino.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040i2cdev_002fread">
<h4 class="subsection">9.3.11 @i2cdev/read</h4>
<a class="index-entry-id" id="index-read-1"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-read-7"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">read</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">numbytes</var>)</code><a class="copiable-link" href='#index-read-7'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-read-8"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">read</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">numbytes</var>, <var class="var">precision</var>)</code><a class="copiable-link" href='#index-read-8'></a></span></dt>
<dd><p>Read a specified number of bytes from a i2cdev object
 using optional precision for bytesize.
</p>
<h4 class="subsubheading" id="Inputs-52">Inputs</h4>
<p><var class="var">dev</var> - connected i2c device opened using i2cdev
</p>
<p><var class="var">numbytes</var> - number of bytes to read.
</p>
<p><var class="var">precision</var> - Optional precision for the output data read data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<h4 class="subsubheading" id="Outputs-37">Outputs</h4>
<p><var class="var">data</var> - data read from i2cdevice
</p>
<p><strong class="strong">See also:</strong> arduino, i2cdev.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040i2cdev_002freadRegister">
<h4 class="subsection">9.3.12 @i2cdev/readRegister</h4>
<a class="index-entry-id" id="index-readRegister-1"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readRegister-5"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">readRegister</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">reg</var>, <var class="var">numbytes</var>)</code><a class="copiable-link" href='#index-readRegister-5'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-readRegister-6"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">readRegister</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">reg</var>, <var class="var">numbytes</var>, <var class="var">precision</var>)</code><a class="copiable-link" href='#index-readRegister-6'></a></span></dt>
<dd><p>Read a specified number of bytes from a register of an i2cdev object
 using optional precision for bytesize.
</p>
<h4 class="subsubheading" id="Inputs-53">Inputs</h4>
<p><var class="var">dev</var> - connected i2c device opened using i2cdev
</p>
<p><var class="var">reg</var> - registry value number
</p>
<p><var class="var">numbytes</var> - number of bytes to read.
</p>
<p><var class="var">precision</var> - Optional precision for the output data read data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<h4 class="subsubheading" id="Output-1">Output</h4>
<p><var class="var">data</var> - data read from device.
</p>
<p><strong class="strong">See also:</strong> arduino, i2cdev.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040i2cdev_002fsubsref">
<h4 class="subsection">9.3.13 @i2cdev/subsref</h4>
<a class="index-entry-id" id="index-subsref-1"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-subsref-11"><span class="category-def">: </span><span><code class="def-type"><var class="var">val</var> =</code> <strong class="def-name">subsref</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">sub</var>)</code><a class="copiable-link" href='#index-subsref-11'></a></span></dt>
<dd><p>subref for i2cdev
</p>
<p><strong class="strong">See also:</strong> i2cdev.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040i2cdev_002fwrite">
<h4 class="subsection">9.3.14 @i2cdev/write</h4>
<a class="index-entry-id" id="index-write-1"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-write-7"><span class="category-def">: </span><span><strong class="def-name">write</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">datain</var>)</code><a class="copiable-link" href='#index-write-7'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-write-8"><span class="category-def">: </span><span><strong class="def-name">write</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">datain</var>, <var class="var">precision</var>)</code><a class="copiable-link" href='#index-write-8'></a></span></dt>
<dd><p>Write data to a i2cdev object
 using optional precision for the data byte used for the data.
</p>
<h4 class="subsubheading" id="Inputs-54">Inputs</h4>
<p><var class="var">dev</var> - connected i2c device opened using i2cdev
</p>
<p><var class="var">datain</var> - data to write to device. Datasize should not exceed the constraints
 of the data type specified for the precision.
</p>
<p><var class="var">precision</var> - Optional precision for the input write data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<p><strong class="strong">See also:</strong> arduino, i2cdev, read.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040i2cdev_002fwriteRegister">
<h4 class="subsection">9.3.15 @i2cdev/writeRegister</h4>
<a class="index-entry-id" id="index-writeRegister-1"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-writeRegister-5"><span class="category-def">: </span><span><strong class="def-name">writeRegister</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">reg</var>, <var class="var">datain</var>)</code><a class="copiable-link" href='#index-writeRegister-5'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-writeRegister-6"><span class="category-def">: </span><span><strong class="def-name">writeRegister</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">dev</var>, <var class="var">datain</var>, <var class="var">precision</var>)</code><a class="copiable-link" href='#index-writeRegister-6'></a></span></dt>
<dd><p>Write data to i2cdev object at a given registry position
 using optional precision for the data byte used for the data.
</p>
<h4 class="subsubheading" id="Inputs-55">Inputs</h4>
<p><var class="var">dev</var> - connected i2c device opened using i2cdev
</p>
<p><var class="var">reg</var> - registry position to write to.
</p>
<p><var class="var">datain</var> - data to write to device. Datasize should not exceed the constraints
 of the data type specified for the precision.
</p>
<p><var class="var">precision</var> - Optional precision for the input write data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<p><strong class="strong">See also:</strong> arduino, i2cdev, read.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="scanI2Cbus">
<h4 class="subsection">9.3.16 scanI2Cbus</h4>
<a class="index-entry-id" id="index-scanI2Cbus"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-scanI2Cbus-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">scanI2Cbus</strong> <code class="def-code-arguments">(<var class="var">ar</var>)</code><a class="copiable-link" href='#index-scanI2Cbus-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-scanI2Cbus-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">scanI2Cbus</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">bus</var>)</code><a class="copiable-link" href='#index-scanI2Cbus-2'></a></span></dt>
<dd><p>Scan arduino for devices on the I2C bus.
</p>
<h4 class="subsubheading" id="Inputs-56">Inputs</h4>
<p><var class="var">ar</var> - arduino object connected to a arduino board.
</p>
<p><var class="var">bus</var> - bus number to scan I2C devices, when multiple buses are available.
 If the bus is not specified, it will default to 0.
</p>
<h4 class="subsubheading" id="Outputs-38">Outputs</h4>
<p><var class="var">retval</var> - cell array of addresses as strings in format of &quot;0xXX&quot;.
</p>
<h4 class="subsubheading" id="Example-8">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
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
<p><strong class="strong">See also:</strong> arduino, i2cdev, checkI2CAddress.
</p></dd></dl>
<hr>
</div>
</div>
<div class="section-level-extent" id="Arduino-Rotary-Encoder-Functions">
<div class="nav-panel">
<p>
Next: <a href="#Arduino-Servo-Functions" accesskey="n" rel="next">Arduino Servo Functions</a>, Previous: <a href="#Arduino-I2C-Functions" accesskey="p" rel="prev">Arduino I2C Functions</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Arduino-Rotary-Encoder-Functions-1">9.4 Arduino Rotary Encoder Functions</h3>
<a class="index-entry-id" id="index-Arduino-Rotary-Encoder-Functions"></a>
<ul class="mini-toc">
<li><a href="#g_t_0040rotaryEncoder_002fdelete" accesskey="1">@rotaryEncoder/delete</a></li>
<li><a href="#g_t_0040rotaryEncoder_002fdisp" accesskey="2">@rotaryEncoder/disp</a></li>
<li><a href="#g_t_0040rotaryEncoder_002freadCount" accesskey="3">@rotaryEncoder/readCount</a></li>
<li><a href="#g_t_0040rotaryEncoder_002freadSpeed" accesskey="4">@rotaryEncoder/readSpeed</a></li>
<li><a href="#g_t_0040rotaryEncoder_002fresetCount" accesskey="5">@rotaryEncoder/resetCount</a></li>
<li><a href="#g_t_0040rotaryEncoder_002frotaryEncoder" accesskey="6">@rotaryEncoder/rotaryEncoder</a></li>
<li><a href="#g_t_0040rotaryEncoder_002fsubsref" accesskey="7">@rotaryEncoder/subsref</a></li>
</ul>
<div class="subsection-level-extent" id="g_t_0040rotaryEncoder_002fdelete">
<h4 class="subsection">9.4.1 @rotaryEncoder/delete</h4>
<a class="index-entry-id" id="index-delete-3"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-delete-14"><span class="category-def">: </span><span><strong class="def-name">delete</strong> <code class="def-code-arguments">(<var class="var">dev</var>)</code><a class="copiable-link" href='#index-delete-14'></a></span></dt>
<dd><p>Free resources of a encoder object.
</p>
<h4 class="subsubheading" id="Inputs-57">Inputs</h4>
<p><var class="var">dev</var> - object to free
</p>
<p><strong class="strong">See also:</strong> rotartEncoder.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040rotaryEncoder_002fdisp">
<h4 class="subsection">9.4.2 @rotaryEncoder/disp</h4>
<a class="index-entry-id" id="index-disp-3"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-disp-14"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">disp</strong> <code class="def-code-arguments">(<var class="var">obj</var>)</code><a class="copiable-link" href='#index-disp-14'></a></span></dt>
<dd><p>Display the rotary encoder object in a verbose way,
</p>
<h4 class="subsubheading" id="Inputs-58">Inputs</h4>
<p><var class="var">obj</var> - the arduino rotary encoder object created with rotaryEncoder
</p>
<p><strong class="strong">See also:</strong> rotaryEncoder.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040rotaryEncoder_002freadCount">
<h4 class="subsection">9.4.3 @rotaryEncoder/readCount</h4>
<a class="index-entry-id" id="index-readCount"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readCount-1"><span class="category-def">: </span><span><code class="def-type">[<var class="var">count</var>, <var class="var">time</var>] =</code> <strong class="def-name">readCount</strong> <code class="def-code-arguments">(<var class="var">obj</var>)</code><a class="copiable-link" href='#index-readCount-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-readCount-2"><span class="category-def">: </span><span><code class="def-type">[<var class="var">count</var>, <var class="var">time</var>] =</code> <strong class="def-name">readCount</strong> <code class="def-code-arguments">(<var class="var">obj</var>, <var class="var">name</var>, <var class="var">value</var>)</code><a class="copiable-link" href='#index-readCount-2'></a></span></dt>
<dd><p>read count value from the rotary encoder.
</p>
<p>subsubheading Inputs
<var class="var">obj</var> - rotary encoder object created with rotaryEncoder call.
</p>
<p><var class="var">name</var>, <var class="var">value</var> - optional name,value pairs
</p>
<p>Valid option name pairs currently are:
</p><dl class="table">
<dt>reset</dt>
<dd><p>Reset the count after reading (if true)
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-39">Outputs</h4>
<p><var class="var">count</var> - returned count read from the encoder.
</p>
<p><var class="var">time</var> - seconds since arduino started
</p>
<p><strong class="strong">See also:</strong> rotaryEncoder, resetCount.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040rotaryEncoder_002freadSpeed">
<h4 class="subsection">9.4.4 @rotaryEncoder/readSpeed</h4>
<a class="index-entry-id" id="index-readSpeed"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readSpeed-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">speed</var> =</code> <strong class="def-name">readSpeed</strong> <code class="def-code-arguments">(<var class="var">obj</var>)</code><a class="copiable-link" href='#index-readSpeed-1'></a></span></dt>
<dd><p>read rotational speed from the rotary encoder.
</p>
<h4 class="subsubheading" id="Inputs-59">Inputs</h4>
<p><var class="var">obj</var> - rotary encoder object created with rotaryEncoder call.
</p>
<h4 class="subsubheading" id="Outputs-40">Outputs</h4>
<p><var class="var">speed</var> - returned speed in revolutions per minute read from the encoder.
</p>
<p><strong class="strong">See also:</strong> rotaryEncoder, resetCount.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040rotaryEncoder_002fresetCount">
<h4 class="subsection">9.4.5 @rotaryEncoder/resetCount</h4>
<a class="index-entry-id" id="index-resetCount"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-_0028obj_0029"><span class="category-def">: </span><span><code class="def-type">reset</code> <strong class="def-name">(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-_0028obj_0029'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-_0028obj_002c"><span class="category-def">: </span><span><code class="def-type">reset</code> <strong class="def-name">(<var class="var">obj</var>,</strong> <code class="def-code-arguments"><var class="var">cnt</var>)</code><a class="copiable-link" href='#index-_0028obj_002c'></a></span></dt>
<dd><p>reset the rotary encoder count values
</p>
<h4 class="subsubheading" id="Inputs-60">Inputs</h4>
<p><var class="var">obj</var> - the rotaryEncoder object
</p>
<p><var class="var">cnt</var> - optional count value to reset to
</p>
<p><strong class="strong">See also:</strong> rotaryEncoder, readCount.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040rotaryEncoder_002frotaryEncoder">
<h4 class="subsection">9.4.6 @rotaryEncoder/rotaryEncoder</h4>
<a class="index-entry-id" id="index-rotaryEncoder"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-rotaryEncoder-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">rotaryEncoder</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">chanApin</var>, <var class="var">chanBpin</var>)</code><a class="copiable-link" href='#index-rotaryEncoder-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-rotaryEncoder-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">rotaryEncoder</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">chanApin</var>, <var class="var">chanBpin</var>, <var class="var">ppr</var>)</code><a class="copiable-link" href='#index-rotaryEncoder-2'></a></span></dt>
<dd><p>Create a rotaryEncoder object controlled by the input pins.
</p>
<h4 class="subsubheading" id="Inputs-61">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object.
</p>
<p><var class="var">chanApin</var> - pin used for channel A
</p>
<p><var class="var">chanBpin</var> - pin used for channel B
</p>
<p><var class="var">ppr</var> - count of encoder pulsed required for a full revolution of the encoder.
</p>
<h4 class="subsubheading" id="Outputs-41">Outputs</h4>
<p><var class="var">obj</var> - created rotary encoder object
</p>
<h4 class="subsubheading" id="Example-9">Example</h4>
<div class="example">
<pre class="example-preformatted"> a = arduino ();
 enc = rotaryEncoder(a, &quot;d2&quot;, &quot;d3&quot;, 180);
</pre></div>
<h4 class="subsubheading" id="Properties-2">Properties</h4>
<p>The rotaryEncoder object has the following public properties:
</p><dl class="table">
<dt>parent</dt>
<dd><p>The parent (arduino) for this device
</p></dd>
<dt>pins</dt>
<dd><p>pins used by this object
</p></dd>
<dt>ppr</dt>
<dd><p>Number of pulses used per rotation
</p></dd>
</dl>
<p><strong class="strong">See also:</strong> arduino.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040rotaryEncoder_002fsubsref">
<h4 class="subsection">9.4.7 @rotaryEncoder/subsref</h4>
<a class="index-entry-id" id="index-subsref-2"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-subsref-12"><span class="category-def">: </span><span><code class="def-type"><var class="var">val</var> =</code> <strong class="def-name">subsref</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">sub</var>)</code><a class="copiable-link" href='#index-subsref-12'></a></span></dt>
<dd><p>subref for rotaryEncoder
</p>
<p><strong class="strong">See also:</strong> rotaryEncoder.
</p></dd></dl>
<hr>
</div>
</div>
<div class="section-level-extent" id="Arduino-Servo-Functions">
<div class="nav-panel">
<p>
Next: <a href="#Arduino-Shiftregister-Functions" accesskey="n" rel="next">Arduino Shiftregister Functions</a>, Previous: <a href="#Arduino-Rotary-Encoder-Functions" accesskey="p" rel="prev">Arduino Rotary Encoder Functions</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Arduino-Servo-Functions-1">9.5 Arduino Servo Functions</h3>
<a class="index-entry-id" id="index-Arduino-Servo-Functions"></a>
<ul class="mini-toc">
<li><a href="#g_t_0040servo_002fdelete" accesskey="1">@servo/delete</a></li>
<li><a href="#g_t_0040servo_002fdisp" accesskey="2">@servo/disp</a></li>
<li><a href="#g_t_0040servo_002freadPosition" accesskey="3">@servo/readPosition</a></li>
<li><a href="#g_t_0040servo_002fservo" accesskey="4">@servo/servo</a></li>
<li><a href="#g_t_0040servo_002fsubsref" accesskey="5">@servo/subsref</a></li>
<li><a href="#g_t_0040servo_002fwritePosition" accesskey="6">@servo/writePosition</a></li>
</ul>
<div class="subsection-level-extent" id="g_t_0040servo_002fdelete">
<h4 class="subsection">9.5.1 @servo/delete</h4>
<a class="index-entry-id" id="index-delete-4"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-delete-15"><span class="category-def">: </span><span><strong class="def-name">delete</strong> <code class="def-code-arguments">(<var class="var">dev</var>)</code><a class="copiable-link" href='#index-delete-15'></a></span></dt>
<dd><p>Free resources of a servo object.
</p>
<h4 class="subsubheading" id="Inputs-62">Inputs</h4>
<p><var class="var">dev</var> - object to free
</p>
<p><strong class="strong">See also:</strong> servo.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040servo_002fdisp">
<h4 class="subsection">9.5.2 @servo/disp</h4>
<a class="index-entry-id" id="index-disp-4"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-disp-15"><span class="category-def">: </span><span><strong class="def-name">disp</strong> <code class="def-code-arguments">(<var class="var">dev</var>)</code><a class="copiable-link" href='#index-disp-15'></a></span></dt>
<dd><p>Display servo object.
</p>
<h4 class="subsubheading" id="Inputs-63">Inputs</h4>
<p><var class="var">dev</var> - servo device to display
</p>
<p><strong class="strong">See also:</strong> servo.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040servo_002freadPosition">
<h4 class="subsection">9.5.3 @servo/readPosition</h4>
<a class="index-entry-id" id="index-readPosition"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readPosition-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">position</var> =</code> <strong class="def-name">readPosition</strong> <code class="def-code-arguments">(<var class="var">servo</var>)</code><a class="copiable-link" href='#index-readPosition-1'></a></span></dt>
<dd><p>Read the position of a servo
</p>
<h4 class="subsubheading" id="Inputs-64">Inputs</h4>
<p><var class="var">servo</var> - servo object created from arduino.servo.
</p>
<h4 class="subsubheading" id="Outputs-42">Outputs</h4>
<p><var class="var">position</var> - value between 0 .. 1 for the current servo position,
 where 0 is the servo min position, 1 is the servo maximum position.
</p>
<p><strong class="strong">See also:</strong> servo, writePosition.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040servo_002fservo">
<h4 class="subsection">9.5.4 @servo/servo</h4>
<a class="index-entry-id" id="index-servo"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-servo-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">servo</strong> <code class="def-code-arguments">(<var class="var">arduinoobj</var>, <var class="var">pin</var>)</code><a class="copiable-link" href='#index-servo-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-servo-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">servo</strong> <code class="def-code-arguments">(<var class="var">arduinoobj</var>, <var class="var">pin</var>, <var class="var">propertyname</var>, <var class="var">propertyvalue</var>)</code><a class="copiable-link" href='#index-servo-2'></a></span></dt>
<dd><p>Create a servo object using a specified pin on a arduino board.
</p>
<h4 class="subsubheading" id="Inputs-65">Inputs</h4>
<p><var class="var">obj</var> - servo object
</p>
<p><var class="var">arduinoobj</var> - connected arduino object
</p>
<p><var class="var">propertyname</var>,  <var class="var">propertyvalue</var> - name value pairs for properties to pass
 to the created servo object.
</p>
<p>Current properties are:
</p><dl class="table">
<dt>minpulseduration</dt>
<dd><p>min PWM pulse value in seconds.
</p></dd>
<dt>maxpulseduration</dt>
<dd><p>max PWM pulse value in seconds.
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-43">Outputs</h4>
<p><var class="var">obj</var> - created servo object.
</p>
<h4 class="subsubheading" id="Example-10">Example</h4>
<div class="example">
<pre class="example-preformatted"> # create arduino connection
 ar = arduino();
 # create hobby servo (1 - 2 ms pulse range)
 servo = servo(ar, &quot;d9&quot;, &quot;minpulseduration&quot;, 1.0e-3, &quot;maxpulseduration&quot;, 2e-3);
 # center the servo
 writePosition(servo, 0.5);
</pre></div>
<h4 class="subsubheading" id="Properties-3">Properties</h4>
<p>The servo object has the following public properties:
</p><dl class="table">
<dt>parent</dt>
<dd><p>The parent (arduino) for this device
</p></dd>
<dt>pins</dt>
<dd><p>pins used by this object
</p></dd>
<dt>minpulseduration</dt>
<dd><p>minpulseduration set for object
</p></dd>
<dt>maxpulseduration</dt>
<dd><p>maxpulseduration set for object
</p></dd>
</dl>
<p><strong class="strong">See also:</strong> arduino, readPosition, writePosition.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040servo_002fsubsref">
<h4 class="subsection">9.5.5 @servo/subsref</h4>
<a class="index-entry-id" id="index-subsref-3"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-subsref-13"><span class="category-def">: </span><span><code class="def-type"><var class="var">val</var> =</code> <strong class="def-name">subsref</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">sub</var>)</code><a class="copiable-link" href='#index-subsref-13'></a></span></dt>
<dd><p>subref for servo
</p>
<p><strong class="strong">See also:</strong> servo.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040servo_002fwritePosition">
<h4 class="subsection">9.5.6 @servo/writePosition</h4>
<a class="index-entry-id" id="index-writePosition"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-writePosition-1"><span class="category-def">: </span><span><strong class="def-name">writePosition</strong> <code class="def-code-arguments">(<var class="var">servo</var>, <var class="var">position</var>)</code><a class="copiable-link" href='#index-writePosition-1'></a></span></dt>
<dd><p>Write the position to a servo.
</p>
<h4 class="subsubheading" id="Inputs-66">Inputs</h4>
<p><var class="var">servo</var> - servo object created from arduino.servo.
</p>
<p><var class="var">position</var> - value between 0 .. 1 for the current servo position,
 where 0 is the servo min position, 1 is the servo maximum position.
</p>
<p><strong class="strong">See also:</strong> servo, readPosition.
</p></dd></dl>
<hr>
</div>
</div>
<div class="section-level-extent" id="Arduino-Shiftregister-Functions">
<div class="nav-panel">
<p>
Next: <a href="#Arduino-SPI-Functions" accesskey="n" rel="next">Arduino SPI Functions</a>, Previous: <a href="#Arduino-Servo-Functions" accesskey="p" rel="prev">Arduino Servo Functions</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Arduino-Shiftregister-Functions-1">9.6 Arduino Shiftregister Functions</h3>
<a class="index-entry-id" id="index-Arduino-Shiftregister-Functions"></a>
<ul class="mini-toc">
<li><a href="#g_t_0040shiftRegister_002fdelete" accesskey="1">@shiftRegister/delete</a></li>
<li><a href="#g_t_0040shiftRegister_002fdisp" accesskey="2">@shiftRegister/disp</a></li>
<li><a href="#g_t_0040shiftRegister_002fread" accesskey="3">@shiftRegister/read</a></li>
<li><a href="#g_t_0040shiftRegister_002freset" accesskey="4">@shiftRegister/reset</a></li>
<li><a href="#g_t_0040shiftRegister_002fshiftRegister" accesskey="5">@shiftRegister/shiftRegister</a></li>
<li><a href="#g_t_0040shiftRegister_002fsubsref" accesskey="6">@shiftRegister/subsref</a></li>
<li><a href="#g_t_0040shiftRegister_002fwrite" accesskey="7">@shiftRegister/write</a></li>
</ul>
<div class="subsection-level-extent" id="g_t_0040shiftRegister_002fdelete">
<h4 class="subsection">9.6.1 @shiftRegister/delete</h4>
<a class="index-entry-id" id="index-delete-5"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-delete-16"><span class="category-def">: </span><span><strong class="def-name">delete</strong> <code class="def-code-arguments">(<var class="var">dev</var>)</code><a class="copiable-link" href='#index-delete-16'></a></span></dt>
<dd><p>Free resources of a shiftRegister object.
</p>
<h4 class="subsubheading" id="Inputs-67">Inputs</h4>
<p><var class="var">dev</var> - object to free
</p>
<p><strong class="strong">See also:</strong> shiftRegister.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040shiftRegister_002fdisp">
<h4 class="subsection">9.6.2 @shiftRegister/disp</h4>
<a class="index-entry-id" id="index-disp-5"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-disp-16"><span class="category-def">: </span><span><strong class="def-name">disp</strong> <code class="def-code-arguments">(<var class="var">register</var>)</code><a class="copiable-link" href='#index-disp-16'></a></span></dt>
<dd><p>Display the register object in a verbose way,
</p>
<h4 class="subsubheading" id="Inputs-68">Inputs</h4>
<p><var class="var">register</var> - the arduino register object created with shiftRegister.
</p>
<p><strong class="strong">See also:</strong> shiftRegister.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040shiftRegister_002fread">
<h4 class="subsection">9.6.3 @shiftRegister/read</h4>
<a class="index-entry-id" id="index-read-2"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-read-9"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">read</strong> <code class="def-code-arguments">(<var class="var">register</var>)</code><a class="copiable-link" href='#index-read-9'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-read-10"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">read</strong> <code class="def-code-arguments">(<var class="var">register</var>, <var class="var">precision</var>)</code><a class="copiable-link" href='#index-read-10'></a></span></dt>
<dd><p>read a value from the shift register.
</p>
<h4 class="subsubheading" id="Inputs-69">Inputs</h4>
<p><var class="var">register</var> - shift register created from shiftRegister call.
</p>
<p><var class="var">precision</var> - optional precision of the data, where precision can be a
 number in a multiple of 8 (ie: 8,16,32) or can be a named integer type:     8
 of &rsquo;uint8&rsquo;, &rsquo;uint16&rsquo;, &rsquo;uint32&rsquo;.  The default  precision is 8.
</p>
<h4 class="subsubheading" id="Outputs-44">Outputs</h4>
<p><var class="var">retval</var> - returned data read from the register.
</p>
<p><strong class="strong">See also:</strong> shiftRegister, write.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040shiftRegister_002freset">
<h4 class="subsection">9.6.4 @shiftRegister/reset</h4>
<a class="index-entry-id" id="index-reset-1"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-_0028register_0029"><span class="category-def">: </span><span><code class="def-type">reset</code> <strong class="def-name">(<var class="var">register</var>)</strong><a class="copiable-link" href='#index-_0028register_0029'></a></span></dt>
<dd><p>clear the shift register value.
</p>
<h4 class="subsubheading" id="Inputs-70">Inputs</h4>
<p><var class="var">register</var> - shift register created from shiftRegister call.
</p>
<p><strong class="strong">See also:</strong> shiftRegister, read, write.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040shiftRegister_002fshiftRegister">
<h4 class="subsection">9.6.5 @shiftRegister/shiftRegister</h4>
<a class="index-entry-id" id="index-shiftRegister"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-shiftRegister-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">register</var> =</code> <strong class="def-name">shiftRegister</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">shifttype</var>, <var class="var">dataPin</var>, <var class="var">clockPin</var> ...)</code><a class="copiable-link" href='#index-shiftRegister-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-shiftRegister-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">register</var> =</code> <strong class="def-name">shiftRegister</strong> <code class="def-code-arguments">(<var class="var">ar</var>,'74hc164', <var class="var">dataPin</var>, <var class="var">clockPin</var>, <var class="var">resetPin</var>)</code><a class="copiable-link" href='#index-shiftRegister-2'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-shiftRegister-3"><span class="category-def">: </span><span><code class="def-type"><var class="var">register</var> =</code> <strong class="def-name">shiftRegister</strong> <code class="def-code-arguments">(<var class="var">ar</var>,'74hc165', <var class="var">dataPin</var>, <var class="var">clockPin</var>, <var class="var">loadPin</var>, <var class="var">clockEnablePin</var>)</code><a class="copiable-link" href='#index-shiftRegister-3'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-shiftRegister_0028ar_002c_002774hc595_0027_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">register</var> =</code> <strong class="def-name">shiftRegister(<var class="var">ar</var>,'74hc595',</strong> <code class="def-code-arguments"><var class="var">dataPin</var>, <var class="var">clockPin</var>, <var class="var">latchPin</var> , <var class="var">resetPin</var>)</code><a class="copiable-link" href='#index-shiftRegister_0028ar_002c_002774hc595_0027_002c'></a></span></dt>
<dd><p>Create shift register of a given type, controlled by the input pins.
</p>
<h4 class="subsubheading" id="Inputs-71">Inputs</h4>
<p>Common function parameter definition:
</p>
<p><var class="var">ar</var> - connected arduino object.
</p>
<p><var class="var">shifttype</var> - string name of the shift register type.
</p>
<p><var class="var">dataPin</var> - pin used for data in/out of the device.
</p>
<p><var class="var">clockPin</var> - pin used for clocking data on the shiftRegister.
</p>
<p>Other variables are dependent on the shift register type:
</p><dl class="table">
<dt>&rsquo;74hc164&rsquo;</dt>
<dd><p>Additional inputs:
</p>
<p><var class="var">resetPin</var> - optional  pin for resetting the shift register.
</p>
</dd>
<dt>&rsquo;74hc165&rsquo;</dt>
<dd><p>Additional inputs:
</p>
<p><var class="var">loadPin</var> - load pin to the shift register.
<var class="var">clockEnablePin</var> - clock enable pin.
</p>
</dd>
<dt>&rsquo;74hc595&rsquo;</dt>
<dd><p>Additional inputs:
</p>
<p><var class="var">latchPin</var> - latching data to the shift register.
<var class="var">resetPin</var> - optional pin for resetting the shift register.
</p>
</dd>
</dl>
<h4 class="subsubheading" id="Outputs-45">Outputs</h4>
<p><var class="var">register</var> - register object
</p>
<h4 class="subsubheading" id="Properties-4">Properties</h4>
<p>The shiftRegister object has the following public properties:
</p><dl class="table">
<dt>parent</dt>
<dd><p>The parent (arduino) for this device
</p></dd>
<dt>pins</dt>
<dd><p>pins used by this object
</p></dd>
<dt>model</dt>
<dd><p>model set for object
</p></dd>
</dl>
<p><strong class="strong">See also:</strong> arduino.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040shiftRegister_002fsubsref">
<h4 class="subsection">9.6.6 @shiftRegister/subsref</h4>
<a class="index-entry-id" id="index-subsref-4"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-subsref-14"><span class="category-def">: </span><span><code class="def-type"><var class="var">val</var> =</code> <strong class="def-name">subsref</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">sub</var>)</code><a class="copiable-link" href='#index-subsref-14'></a></span></dt>
<dd><p>subref for shiftRegister
</p>
<p><strong class="strong">See also:</strong> shiftRegister.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040shiftRegister_002fwrite">
<h4 class="subsection">9.6.7 @shiftRegister/write</h4>
<a class="index-entry-id" id="index-write-2"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-_0028register_002c"><span class="category-def">: </span><span><code class="def-type">write</code> <strong class="def-name">(<var class="var">register</var>,</strong> <code class="def-code-arguments"><var class="var">dataIn</var>)</code><a class="copiable-link" href='#index-_0028register_002c'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-_0028register_002c-1"><span class="category-def">: </span><span><code class="def-type">write</code> <strong class="def-name">(<var class="var">register</var>,</strong> <code class="def-code-arguments"><var class="var">dataIn</var>, <var class="var">precision</var>)</code><a class="copiable-link" href='#index-_0028register_002c-1'></a></span></dt>
<dd><p>Write a value to the shift register.
</p>
<h4 class="subsubheading" id="Inputs-72">Inputs</h4>
<p><var class="var">register</var> - shift register created from shiftRegister call.
</p>
<p><var class="var">dataIn</var> - data to clock into the shiftRegister.
</p>
<p><var class="var">precision</var> - optional precision of the data, where precision can be a
 number in a multiple of 8 (ie: 8,16,32) or can be a named integer type
 of &rsquo;uint8&rsquo;, &rsquo;uint16&rsquo;, &rsquo;uint32&rsquo;.  The default  precision is 8.
</p>
<p><strong class="strong">See also:</strong> shiftRegister, read.
</p></dd></dl>
<hr>
</div>
</div>
<div class="section-level-extent" id="Arduino-SPI-Functions">
<div class="nav-panel">
<p>
Next: <a href="#Arduino-Serial-Functions" accesskey="n" rel="next">Arduino Serial Functions</a>, Previous: <a href="#Arduino-Shiftregister-Functions" accesskey="p" rel="prev">Arduino Shiftregister Functions</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Arduino-SPI-Functions-1">9.7 Arduino SPI Functions</h3>
<a class="index-entry-id" id="index-Arduino-SPI-Functions"></a>
<ul class="mini-toc">
<li><a href="#g_t_0040device_002fdelete-1" accesskey="1">@device/delete</a></li>
<li><a href="#g_t_0040device_002fdisp-1" accesskey="2">@device/disp</a></li>
<li><a href="#g_t_0040device_002fsubsref-1" accesskey="3">@device/subsref</a></li>
<li><a href="#g_t_0040device_002fwriteRead" accesskey="4">@device/writeRead</a></li>
<li><a href="#g_t_0040spidev_002fdelete" accesskey="5">@spidev/delete</a></li>
<li><a href="#g_t_0040spidev_002fdisp" accesskey="6">@spidev/disp</a></li>
<li><a href="#g_t_0040spidev_002fspidev" accesskey="7">@spidev/spidev</a></li>
<li><a href="#g_t_0040spidev_002fsubsref" accesskey="8">@spidev/subsref</a></li>
<li><a href="#g_t_0040spidev_002fwriteRead" accesskey="9">@spidev/writeRead</a></li>
</ul>
<div class="subsection-level-extent" id="g_t_0040device_002fdelete-1">
<h4 class="subsection">9.7.1 @device/delete</h4>
<a class="index-entry-id" id="index-delete-6"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-delete-17"><span class="category-def">: </span><span><strong class="def-name">delete</strong> <code class="def-code-arguments">(<var class="var">dev</var>)</code><a class="copiable-link" href='#index-delete-17'></a></span></dt>
<dd><p>Free resources of a device object.
</p>
<h4 class="subsubheading" id="Inputs-73">Inputs</h4>
<p><var class="var">dev</var> - object to free
</p>
<p><strong class="strong">See also:</strong> device.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002fdisp-1">
<h4 class="subsection">9.7.2 @device/disp</h4>
<a class="index-entry-id" id="index-disp-6"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-disp-17"><span class="category-def">: </span><span><strong class="def-name">disp</strong> <code class="def-code-arguments">(<var class="var">dev</var>)</code><a class="copiable-link" href='#index-disp-17'></a></span></dt>
<dd><p>Display device object.
</p>
<h4 class="subsubheading" id="Inputs-74">Inputs</h4>
<p><var class="var">dev</var> - device object to display
</p>
<p><strong class="strong">See also:</strong> device.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002fsubsref-1">
<h4 class="subsection">9.7.3 @device/subsref</h4>
<a class="index-entry-id" id="index-subsref-5"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-subsref-15"><span class="category-def">: </span><span><code class="def-type"><var class="var">val</var> =</code> <strong class="def-name">subsref</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">sub</var>)</code><a class="copiable-link" href='#index-subsref-15'></a></span></dt>
<dd><p>subref for device
</p>
<p><strong class="strong">See also:</strong> device.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002fwriteRead">
<h4 class="subsection">9.7.4 @device/writeRead</h4>
<a class="index-entry-id" id="index-writeRead"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readWrite"><span class="category-def">: </span><span><code class="def-type"><var class="var">dataOut</var> =</code> <strong class="def-name">readWrite</strong> <code class="def-code-arguments">(<var class="var">spi</var>, <var class="var">dataIn</var>)</code><a class="copiable-link" href='#index-readWrite'></a></span></dt>
<dd><p>Write uint8 data to spi device and return
 back clocked out response data of same size.
</p>
<h4 class="subsubheading" id="Inputs-75">Inputs</h4>
<p><var class="var">spi</var> - connected spi device on arduino
</p>
<p><var class="var">dataIn</var> - uint8 sized data to send to spi device framed between SS frame.
</p>
<h4 class="subsubheading" id="Outputs-46">Outputs</h4>
<p><var class="var">dataOut</var> - uint8 data clocked out during send to dataIn.
</p>
<p><strong class="strong">See also:</strong> arduino, device.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040spidev_002fdelete">
<h4 class="subsection">9.7.5 @spidev/delete</h4>
<a class="index-entry-id" id="index-delete-7"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-delete-18"><span class="category-def">: </span><span><strong class="def-name">delete</strong> <code class="def-code-arguments">(<var class="var">dev</var>)</code><a class="copiable-link" href='#index-delete-18'></a></span></dt>
<dd><p>Free resources of a spidev object.
</p>
<h4 class="subsubheading" id="Inputs-76">Inputs</h4>
<p><var class="var">dev</var> - spidev object to free
</p>
<p><strong class="strong">See also:</strong> spidev.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040spidev_002fdisp">
<h4 class="subsection">9.7.6 @spidev/disp</h4>
<a class="index-entry-id" id="index-disp-7"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-disp-18"><span class="category-def">: </span><span><strong class="def-name">disp</strong> <code class="def-code-arguments">(<var class="var">dev</var>)</code><a class="copiable-link" href='#index-disp-18'></a></span></dt>
<dd><p>Display spidev object.
</p>
<h4 class="subsubheading" id="Inputs-77">Inputs</h4>
<p><var class="var">dev</var> - spidev object to display
</p>
<p><strong class="strong">See also:</strong> spidev.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040spidev_002fspidev">
<h4 class="subsection">9.7.7 @spidev/spidev</h4>
<a class="index-entry-id" id="index-spidev"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-spidev-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">dev</var> =</code> <strong class="def-name">spidev</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">cspin</var>)</code><a class="copiable-link" href='#index-spidev-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-spidev-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">dev</var> =</code> <strong class="def-name">spidev</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">cspin</var>, <var class="var">propname</var>, <var class="var">propvalue</var>)</code><a class="copiable-link" href='#index-spidev-2'></a></span></dt>
<dd>
<p><code class="code">spidev</code> is depreciated and will be removed in a future version.
 Use <code class="code">device</code> instead.
</p>
<p>Create an spidev object to communicate to the SPI port on a connected arduino.
</p>
<h4 class="subsubheading" id="Inputs-78">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object
</p>
<p><var class="var">cspin</var> - chip select pin for attached spi device.
</p>
<p><var class="var">propname</var>, <var class="var">propvalue</var> - property name/value pair for values to pass to devices.
</p>
<p>Currently known properties:
</p><dl class="table">
<dt>bitrate</dt>
<dd><p>bit rate speed in Mbs
</p></dd>
<dt>bitorder</dt>
<dd><p>&rsquo;msbfirst&rsquo; or &rsquo;lsbfirst&rsquo;
</p></dd>
<dt>mode</dt>
<dd><p>SPI mode 0 - 3.
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-47">Outputs</h4>
<p><var class="var">dev</var> - created spidev object
</p>
<h4 class="subsubheading" id="Properties-5">Properties</h4>
<p>The spidev object has the following public properties:
</p><dl class="table">
<dt>parent</dt>
<dd><p>The parent (arduino) for this device
</p></dd>
<dt>pins</dt>
<dd><p>pins used by this object
</p></dd>
<dt>mode</dt>
<dd><p>mode used for created object
</p></dd>
<dt>bitrate</dt>
<dd><p>Bitrate set for object
</p></dd>
<dt>bitorder</dt>
<dd><p>Bitorder set for object
</p></dd>
<dt>chipselectpin</dt>
<dd><p>Pin used for chipselect
</p></dd>
</dl>
<p><strong class="strong">See also:</strong> arduino, readWrite.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040spidev_002fsubsref">
<h4 class="subsection">9.7.8 @spidev/subsref</h4>
<a class="index-entry-id" id="index-subsref-6"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-subsref-16"><span class="category-def">: </span><span><code class="def-type"><var class="var">val</var> =</code> <strong class="def-name">subsref</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">sub</var>)</code><a class="copiable-link" href='#index-subsref-16'></a></span></dt>
<dd><p>subref for spidev
</p>
<p><strong class="strong">See also:</strong> spidev.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040spidev_002fwriteRead">
<h4 class="subsection">9.7.9 @spidev/writeRead</h4>
<a class="index-entry-id" id="index-writeRead-1"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readWrite-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">dataOut</var> =</code> <strong class="def-name">readWrite</strong> <code class="def-code-arguments">(<var class="var">spi</var>, <var class="var">dataIn</var>)</code><a class="copiable-link" href='#index-readWrite-1'></a></span></dt>
<dd><p>Write uint8 data to spi device and return
 back clocked out response data of same size.
</p>
<h4 class="subsubheading" id="Inputs-79">Inputs</h4>
<p><var class="var">spi</var> - connected spi device on arduino
</p>
<p><var class="var">dataIn</var> - uint8 sized data to send to spi device framed between SS frame.
</p>
<h4 class="subsubheading" id="Outputs-48">Outputs</h4>
<p><var class="var">dataOut</var> - uint8 data clocked out during send to dataIn.
</p>
<p><strong class="strong">See also:</strong> arduino, spidev.
</p></dd></dl>
<hr>
</div>
</div>
<div class="section-level-extent" id="Arduino-Serial-Functions">
<div class="nav-panel">
<p>
Next: <a href="#Arduino-Device-Functions" accesskey="n" rel="next">Arduino Device Functions</a>, Previous: <a href="#Arduino-SPI-Functions" accesskey="p" rel="prev">Arduino SPI Functions</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Arduino-Serial-Functions-1">9.8 Arduino Serial Functions</h3>
<a class="index-entry-id" id="index-Arduino-Serial-Functions"></a>
<ul class="mini-toc">
<li><a href="#g_t_0040device_002fdelete-2" accesskey="1">@device/delete</a></li>
<li><a href="#g_t_0040device_002fdevice" accesskey="2">@device/device</a></li>
<li><a href="#g_t_0040device_002fdisp-2" accesskey="3">@device/disp</a></li>
<li><a href="#g_t_0040device_002fflush" accesskey="4">@device/flush</a></li>
<li><a href="#g_t_0040device_002fread-1" accesskey="5">@device/read</a></li>
<li><a href="#g_t_0040device_002fsubsref-2" accesskey="6">@device/subsref</a></li>
<li><a href="#g_t_0040device_002fwrite-1" accesskey="7">@device/write</a></li>
</ul>
<div class="subsection-level-extent" id="g_t_0040device_002fdelete-2">
<h4 class="subsection">9.8.1 @device/delete</h4>
<a class="index-entry-id" id="index-delete-8"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-delete-19"><span class="category-def">: </span><span><strong class="def-name">delete</strong> <code class="def-code-arguments">(<var class="var">dev</var>)</code><a class="copiable-link" href='#index-delete-19'></a></span></dt>
<dd><p>Free resources of a device object.
</p>
<h4 class="subsubheading" id="Inputs-80">Inputs</h4>
<p><var class="var">dev</var> - object to free
</p>
<p><strong class="strong">See also:</strong> device.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002fdevice">
<h4 class="subsection">9.8.2 @device/device</h4>
<a class="index-entry-id" id="index-device"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-device-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">dev</var> =</code> <strong class="def-name">device</strong> <code class="def-code-arguments">(<var class="var">ar</var>, 'I2CAddress', <var class="var">address</var>)</code><a class="copiable-link" href='#index-device-2'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-device-3"><span class="category-def">: </span><span><code class="def-type"><var class="var">dev</var> =</code> <strong class="def-name">device</strong> <code class="def-code-arguments">(<var class="var">ar</var>, 'SPIChipSelectPin', <var class="var">pin</var>)</code><a class="copiable-link" href='#index-device-3'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-device-4"><span class="category-def">: </span><span><code class="def-type"><var class="var">dev</var> =</code> <strong class="def-name">device</strong> <code class="def-code-arguments">(<var class="var">ar</var>, 'Serial', <var class="var">serialid</var>)</code><a class="copiable-link" href='#index-device-4'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-device-5"><span class="category-def">: </span><span><code class="def-type"><var class="var">dev</var> =</code> <strong class="def-name">device</strong> <code class="def-code-arguments">(..., <var class="var">propname</var>, <var class="var">propvalue</var>)</code><a class="copiable-link" href='#index-device-5'></a></span></dt>
<dd><p>Create an i2c, spi or serial object to communicate on a connected arduino.
</p>
<h4 class="subsubheading" id="Inputs-81">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object
</p>
<p><var class="var">propname</var>, <var class="var">propvalue</var> - property name/value pair for values to pass to devices.
</p>
<p>A property of &rsquo;i2caddress&rsquo;, &rsquo;spichipselectpin&rsquo; or &rsquo;serial&rsquo;  must be specified to denote the device type to create.
</p>
<p><var class="var">i2caddress</var> - address to use for device on I2C bus.
</p>
<p><var class="var">pin</var> - pin to use for device SPI chip select.
</p>
<p><var class="var">serialid</var> - Serial port id to use
</p>
<p>Additional properties can also be specified for the device object
</p>
<p>Currently known input I2C properties values:
</p><dl class="table">
<dt>bus</dt>
<dd><p>bus number (when arduino board supports multiple I2C buses)
 with value of 0 or 1.
</p></dd>
<dt>noprobe</dt>
<dd><p>Do not probe the existence of device on creation if set to 1 (default 0)
</p></dd>
<dt>bitrate</dt>
<dd><p>bit rate speed in Mbs - default 100000
</p></dd>
</dl>
<p>Currently known input SPI properties values:
</p><dl class="table">
<dt>bitrate</dt>
<dd><p>bit rate speed in Mbs
</p></dd>
<dt>bitorder</dt>
<dd><p>&rsquo;msbfirst&rsquo; or &rsquo;lsbfirst&rsquo;
</p></dd>
<dt>spimode</dt>
<dd><p>SPI mode 0 - 3.
</p></dd>
</dl>
<p>Currently known input Serial properties values:
</p><dl class="table">
<dt>baudrate</dt>
<dd><p>baudrate value (default 9600)
</p></dd>
<dt>databits</dt>
<dd><p>number of databits (5,6,7,8) (default 8)
</p></dd>
<dt>stopbits</dt>
<dd><p>number of stopbits (1,2) (default 1)
</p></dd>
<dt>parity</dt>
<dd><p>parity of device (&rsquo;odd&rsquo;,&rsquo;even&rsquo;,&rsquo;none&rsquo;) (default &rsquo;none&rsquo;)
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-49">Outputs</h4>
<p><var class="var">dev</var> - new created device object.
</p>
<h4 class="subsubheading" id="Properties-6">Properties</h4>
<p>The object has the following public properties:
</p><dl class="table">
<dt>parent</dt>
<dd><p>The parent (arduino) for this device
</p></dd>
<dt>interface</dt>
<dd><p>The interface type for this device (&quot;SPI&quot; or &quot;I2C&quot; or &quot;Serial&quot;)
</p></dd>
</dl>
<p>In addition, depending on type, the object will have these properties:
</p>
<h4 class="subsubheading" id="I2C-Properties">I2C Properties</h4>
<p>The object has the following public properties:
</p><dl class="table">
<dt>bus</dt>
<dd><p>bus used for created object
</p></dd>
<dt>i2caddress</dt>
<dd><p>I2C address set for object
</p></dd>
<dt>sclpin</dt>
<dd><p>the SCL pin of the device
</p></dd>
<dt>sdapin</dt>
<dd><p>the SDA pin of the device
</p></dd>
<dt>bitrate</dt>
<dd><p>bit rate for the i2c clock
</p></dd>
</dl>
<h4 class="subsubheading" id="SPI-Properties">SPI Properties</h4>
<p>The object has the following public properties:
</p><dl class="table">
<dt>spimode</dt>
<dd><p>mode used for created object
</p></dd>
<dt>bitrate</dt>
<dd><p>Bitrate set for object
</p></dd>
<dt>bitorder</dt>
<dd><p>Bitorder set for object
</p></dd>
<dt>spichipselectpin</dt>
<dd><p>Pin used for chipselect
</p></dd>
<dt>mosipin</dt>
<dd><p>Pin used for mosi
</p></dd>
<dt>misopin</dt>
<dd><p>Pin used for miso
</p></dd>
<dt>sckpin</dt>
<dd><p>Pin used for sckpin
</p></dd>
</dl>
<h4 class="subsubheading" id="Serial-Properties">Serial Properties</h4>
<p>The object has the following public properties:
</p><dl class="table">
<dt>id</dt>
<dd><p>serial port id
</p></dd>
<dt>baudrate</dt>
<dd><p>baudrate
</p></dd>
<dt>databits</dt>
<dd><p>number of databits (5,6,7,8)
</p></dd>
<dt>stopbits</dt>
<dd><p>number of stopbits (1,2)
</p></dd>
<dt>parity</dt>
<dd><p>parity of device (&rsquo;odd&rsquo;,&rsquo;even&rsquo;,&rsquo;none&rsquo;)
</p></dd>
</dl>
<p><strong class="strong">See also:</strong> arduino, i2cdev, spidev.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002fdisp-2">
<h4 class="subsection">9.8.3 @device/disp</h4>
<a class="index-entry-id" id="index-disp-8"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-disp-19"><span class="category-def">: </span><span><strong class="def-name">disp</strong> <code class="def-code-arguments">(<var class="var">dev</var>)</code><a class="copiable-link" href='#index-disp-19'></a></span></dt>
<dd><p>Display device object.
</p>
<h4 class="subsubheading" id="Inputs-82">Inputs</h4>
<p><var class="var">dev</var> - device object to display
</p>
<p><strong class="strong">See also:</strong> device.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002fflush">
<h4 class="subsection">9.8.4 @device/flush</h4>
<a class="index-entry-id" id="index-flush"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-flush-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">flush</strong> <code class="def-code-arguments">(<var class="var">dev</var>)</code><a class="copiable-link" href='#index-flush-2'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-flush-3"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">flush</strong> <code class="def-code-arguments">(<var class="var">dev</var>, &quot;input&quot;)</code><a class="copiable-link" href='#index-flush-3'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-flush-4"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">flush</strong> <code class="def-code-arguments">(<var class="var">dev</var>, &quot;output&quot;)</code><a class="copiable-link" href='#index-flush-4'></a></span></dt>
<dd><p>Flush the serial port buffers
</p>
<h4 class="subsubheading" id="Inputs-83">Inputs</h4>
<p><var class="var">dev</var> - connected serial device opened using device
</p>
<p>If an additional parameter is provided of &quot;input&quot; or &quot;output&quot;,
 then only the input or output buffer will be flushed
</p>
<h4 class="subsubheading" id="Outputs-50">Outputs</h4>
<p>None
</p>
<p><strong class="strong">See also:</strong> arduino, device, read.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002fread-1">
<h4 class="subsection">9.8.5 @device/read</h4>
<a class="index-entry-id" id="index-read-3"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-read-11"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">read</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">numbytes</var>)</code><a class="copiable-link" href='#index-read-11'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-read-12"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">read</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">numbytes</var>, <var class="var">precision</var>)</code><a class="copiable-link" href='#index-read-12'></a></span></dt>
<dd><p>Read a specified number of bytes from a i2c or serial device object
 using optional precision for bytesize.
</p>
<h4 class="subsubheading" id="Inputs-84">Inputs</h4>
<p><var class="var">dev</var> - connected i2c or serial device opened using device
</p>
<p><var class="var">numbytes</var> - number of bytes to read.
</p>
<p><var class="var">precision</var> - Optional precision for the output data read data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<h4 class="subsubheading" id="Outputs-51">Outputs</h4>
<p><var class="var">data</var> - data read from the device
</p>
<p><strong class="strong">See also:</strong> arduino, device.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002fsubsref-2">
<h4 class="subsection">9.8.6 @device/subsref</h4>
<a class="index-entry-id" id="index-subsref-7"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-subsref-17"><span class="category-def">: </span><span><code class="def-type"><var class="var">val</var> =</code> <strong class="def-name">subsref</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">sub</var>)</code><a class="copiable-link" href='#index-subsref-17'></a></span></dt>
<dd><p>subref for device
</p>
<p><strong class="strong">See also:</strong> device.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002fwrite-1">
<h4 class="subsection">9.8.7 @device/write</h4>
<a class="index-entry-id" id="index-write-3"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-write-9"><span class="category-def">: </span><span><strong class="def-name">write</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">datain</var>)</code><a class="copiable-link" href='#index-write-9'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-write-10"><span class="category-def">: </span><span><strong class="def-name">write</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">datain</var>, <var class="var">precision</var>)</code><a class="copiable-link" href='#index-write-10'></a></span></dt>
<dd><p>Write data to a I2C or serial device object
 using optional precision for the data byte used for the data.
</p>
<h4 class="subsubheading" id="Inputs-85">Inputs</h4>
<p><var class="var">dev</var> - connected i2c or serial device opened using device
</p>
<p><var class="var">datain</var> - data to write to device. Datasize should not exceed the constraints
 of the data type specified for the precision.
</p>
<p><var class="var">precision</var> - Optional precision for the input write data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<p><strong class="strong">See also:</strong> arduino, device, read.
</p></dd></dl>
<hr>
</div>
</div>
<div class="section-level-extent" id="Arduino-Device-Functions">
<div class="nav-panel">
<p>
Next: <a href="#Arduino-Ultrasonic-Functions" accesskey="n" rel="next">Arduino Ultrasonic Functions</a>, Previous: <a href="#Arduino-Serial-Functions" accesskey="p" rel="prev">Arduino Serial Functions</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Arduino-Device-Functions-1">9.9 Arduino Device Functions</h3>
<a class="index-entry-id" id="index-Arduino-Device-Functions"></a>
<ul class="mini-toc">
<li><a href="#g_t_0040device_002fdelete-3" accesskey="1">@device/delete</a></li>
<li><a href="#g_t_0040device_002fdevice-1" accesskey="2">@device/device</a></li>
<li><a href="#g_t_0040device_002fdisp-3" accesskey="3">@device/disp</a></li>
<li><a href="#g_t_0040device_002fflush-1" accesskey="4">@device/flush</a></li>
<li><a href="#g_t_0040device_002fread-2" accesskey="5">@device/read</a></li>
<li><a href="#g_t_0040device_002freadRegister-1" accesskey="6">@device/readRegister</a></li>
<li><a href="#g_t_0040device_002fsubsref-3" accesskey="7">@device/subsref</a></li>
<li><a href="#g_t_0040device_002fwrite-2" accesskey="8">@device/write</a></li>
<li><a href="#g_t_0040device_002fwriteRead-1" accesskey="9">@device/writeRead</a></li>
<li><a href="#g_t_0040device_002fwriteRegister-1">@device/writeRegister</a></li>
</ul>
<div class="subsection-level-extent" id="g_t_0040device_002fdelete-3">
<h4 class="subsection">9.9.1 @device/delete</h4>
<a class="index-entry-id" id="index-delete-9"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-delete-20"><span class="category-def">: </span><span><strong class="def-name">delete</strong> <code class="def-code-arguments">(<var class="var">dev</var>)</code><a class="copiable-link" href='#index-delete-20'></a></span></dt>
<dd><p>Free resources of a device object.
</p>
<h4 class="subsubheading" id="Inputs-86">Inputs</h4>
<p><var class="var">dev</var> - object to free
</p>
<p><strong class="strong">See also:</strong> device.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002fdevice-1">
<h4 class="subsection">9.9.2 @device/device</h4>
<a class="index-entry-id" id="index-device-1"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-device-6"><span class="category-def">: </span><span><code class="def-type"><var class="var">dev</var> =</code> <strong class="def-name">device</strong> <code class="def-code-arguments">(<var class="var">ar</var>, 'I2CAddress', <var class="var">address</var>)</code><a class="copiable-link" href='#index-device-6'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-device-7"><span class="category-def">: </span><span><code class="def-type"><var class="var">dev</var> =</code> <strong class="def-name">device</strong> <code class="def-code-arguments">(<var class="var">ar</var>, 'SPIChipSelectPin', <var class="var">pin</var>)</code><a class="copiable-link" href='#index-device-7'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-device-8"><span class="category-def">: </span><span><code class="def-type"><var class="var">dev</var> =</code> <strong class="def-name">device</strong> <code class="def-code-arguments">(<var class="var">ar</var>, 'Serial', <var class="var">serialid</var>)</code><a class="copiable-link" href='#index-device-8'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-device-9"><span class="category-def">: </span><span><code class="def-type"><var class="var">dev</var> =</code> <strong class="def-name">device</strong> <code class="def-code-arguments">(..., <var class="var">propname</var>, <var class="var">propvalue</var>)</code><a class="copiable-link" href='#index-device-9'></a></span></dt>
<dd><p>Create an i2c, spi or serial object to communicate on a connected arduino.
</p>
<h4 class="subsubheading" id="Inputs-87">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object
</p>
<p><var class="var">propname</var>, <var class="var">propvalue</var> - property name/value pair for values to pass to devices.
</p>
<p>A property of &rsquo;i2caddress&rsquo;, &rsquo;spichipselectpin&rsquo; or &rsquo;serial&rsquo;  must be specified to denote the device type to create.
</p>
<p><var class="var">i2caddress</var> - address to use for device on I2C bus.
</p>
<p><var class="var">pin</var> - pin to use for device SPI chip select.
</p>
<p><var class="var">serialid</var> - Serial port id to use
</p>
<p>Additional properties can also be specified for the device object
</p>
<p>Currently known input I2C properties values:
</p><dl class="table">
<dt>bus</dt>
<dd><p>bus number (when arduino board supports multiple I2C buses)
 with value of 0 or 1.
</p></dd>
<dt>noprobe</dt>
<dd><p>Do not probe the existence of device on creation if set to 1 (default 0)
</p></dd>
<dt>bitrate</dt>
<dd><p>bit rate speed in Mbs - default 100000
</p></dd>
</dl>
<p>Currently known input SPI properties values:
</p><dl class="table">
<dt>bitrate</dt>
<dd><p>bit rate speed in Mbs
</p></dd>
<dt>bitorder</dt>
<dd><p>&rsquo;msbfirst&rsquo; or &rsquo;lsbfirst&rsquo;
</p></dd>
<dt>spimode</dt>
<dd><p>SPI mode 0 - 3.
</p></dd>
</dl>
<p>Currently known input Serial properties values:
</p><dl class="table">
<dt>baudrate</dt>
<dd><p>baudrate value (default 9600)
</p></dd>
<dt>databits</dt>
<dd><p>number of databits (5,6,7,8) (default 8)
</p></dd>
<dt>stopbits</dt>
<dd><p>number of stopbits (1,2) (default 1)
</p></dd>
<dt>parity</dt>
<dd><p>parity of device (&rsquo;odd&rsquo;,&rsquo;even&rsquo;,&rsquo;none&rsquo;) (default &rsquo;none&rsquo;)
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-52">Outputs</h4>
<p><var class="var">dev</var> - new created device object.
</p>
<h4 class="subsubheading" id="Properties-7">Properties</h4>
<p>The object has the following public properties:
</p><dl class="table">
<dt>parent</dt>
<dd><p>The parent (arduino) for this device
</p></dd>
<dt>interface</dt>
<dd><p>The interface type for this device (&quot;SPI&quot; or &quot;I2C&quot; or &quot;Serial&quot;)
</p></dd>
</dl>
<p>In addition, depending on type, the object will have these properties:
</p>
<h4 class="subsubheading" id="I2C-Properties-1">I2C Properties</h4>
<p>The object has the following public properties:
</p><dl class="table">
<dt>bus</dt>
<dd><p>bus used for created object
</p></dd>
<dt>i2caddress</dt>
<dd><p>I2C address set for object
</p></dd>
<dt>sclpin</dt>
<dd><p>the SCL pin of the device
</p></dd>
<dt>sdapin</dt>
<dd><p>the SDA pin of the device
</p></dd>
<dt>bitrate</dt>
<dd><p>bit rate for the i2c clock
</p></dd>
</dl>
<h4 class="subsubheading" id="SPI-Properties-1">SPI Properties</h4>
<p>The object has the following public properties:
</p><dl class="table">
<dt>spimode</dt>
<dd><p>mode used for created object
</p></dd>
<dt>bitrate</dt>
<dd><p>Bitrate set for object
</p></dd>
<dt>bitorder</dt>
<dd><p>Bitorder set for object
</p></dd>
<dt>spichipselectpin</dt>
<dd><p>Pin used for chipselect
</p></dd>
<dt>mosipin</dt>
<dd><p>Pin used for mosi
</p></dd>
<dt>misopin</dt>
<dd><p>Pin used for miso
</p></dd>
<dt>sckpin</dt>
<dd><p>Pin used for sckpin
</p></dd>
</dl>
<h4 class="subsubheading" id="Serial-Properties-1">Serial Properties</h4>
<p>The object has the following public properties:
</p><dl class="table">
<dt>id</dt>
<dd><p>serial port id
</p></dd>
<dt>baudrate</dt>
<dd><p>baudrate
</p></dd>
<dt>databits</dt>
<dd><p>number of databits (5,6,7,8)
</p></dd>
<dt>stopbits</dt>
<dd><p>number of stopbits (1,2)
</p></dd>
<dt>parity</dt>
<dd><p>parity of device (&rsquo;odd&rsquo;,&rsquo;even&rsquo;,&rsquo;none&rsquo;)
</p></dd>
</dl>
<p><strong class="strong">See also:</strong> arduino, i2cdev, spidev.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002fdisp-3">
<h4 class="subsection">9.9.3 @device/disp</h4>
<a class="index-entry-id" id="index-disp-9"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-disp-20"><span class="category-def">: </span><span><strong class="def-name">disp</strong> <code class="def-code-arguments">(<var class="var">dev</var>)</code><a class="copiable-link" href='#index-disp-20'></a></span></dt>
<dd><p>Display device object.
</p>
<h4 class="subsubheading" id="Inputs-88">Inputs</h4>
<p><var class="var">dev</var> - device object to display
</p>
<p><strong class="strong">See also:</strong> device.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002fflush-1">
<h4 class="subsection">9.9.4 @device/flush</h4>
<a class="index-entry-id" id="index-flush-1"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-flush-5"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">flush</strong> <code class="def-code-arguments">(<var class="var">dev</var>)</code><a class="copiable-link" href='#index-flush-5'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-flush-6"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">flush</strong> <code class="def-code-arguments">(<var class="var">dev</var>, &quot;input&quot;)</code><a class="copiable-link" href='#index-flush-6'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-flush-7"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">flush</strong> <code class="def-code-arguments">(<var class="var">dev</var>, &quot;output&quot;)</code><a class="copiable-link" href='#index-flush-7'></a></span></dt>
<dd><p>Flush the serial port buffers
</p>
<h4 class="subsubheading" id="Inputs-89">Inputs</h4>
<p><var class="var">dev</var> - connected serial device opened using device
</p>
<p>If an additional parameter is provided of &quot;input&quot; or &quot;output&quot;,
 then only the input or output buffer will be flushed
</p>
<h4 class="subsubheading" id="Outputs-53">Outputs</h4>
<p>None
</p>
<p><strong class="strong">See also:</strong> arduino, device, read.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002fread-2">
<h4 class="subsection">9.9.5 @device/read</h4>
<a class="index-entry-id" id="index-read-4"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-read-13"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">read</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">numbytes</var>)</code><a class="copiable-link" href='#index-read-13'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-read-14"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">read</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">numbytes</var>, <var class="var">precision</var>)</code><a class="copiable-link" href='#index-read-14'></a></span></dt>
<dd><p>Read a specified number of bytes from a i2c or serial device object
 using optional precision for bytesize.
</p>
<h4 class="subsubheading" id="Inputs-90">Inputs</h4>
<p><var class="var">dev</var> - connected i2c or serial device opened using device
</p>
<p><var class="var">numbytes</var> - number of bytes to read.
</p>
<p><var class="var">precision</var> - Optional precision for the output data read data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<h4 class="subsubheading" id="Outputs-54">Outputs</h4>
<p><var class="var">data</var> - data read from the device
</p>
<p><strong class="strong">See also:</strong> arduino, device.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002freadRegister-1">
<h4 class="subsection">9.9.6 @device/readRegister</h4>
<a class="index-entry-id" id="index-readRegister-2"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readRegister-7"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">readRegister</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">reg</var>, <var class="var">numbytes</var>)</code><a class="copiable-link" href='#index-readRegister-7'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-readRegister-8"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">readRegister</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">reg</var>, <var class="var">numbytes</var>, <var class="var">precision</var>)</code><a class="copiable-link" href='#index-readRegister-8'></a></span></dt>
<dd><p>Read a specified number of bytes from a register of an i2cdev object
 using optional precision for bytesize.
</p>
<h4 class="subsubheading" id="Inputs-91">Inputs</h4>
<p><var class="var">dev</var> - connected i2c device opened using device
</p>
<p><var class="var">reg</var> - registry value number
</p>
<p><var class="var">numbytes</var> - number of bytes to read.
</p>
<p><var class="var">precision</var> - Optional precision for the output data read data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<h4 class="subsubheading" id="Output-2">Output</h4>
<p><var class="var">data</var> - data read from device.
</p>
<p><strong class="strong">See also:</strong> arduino, device.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002fsubsref-3">
<h4 class="subsection">9.9.7 @device/subsref</h4>
<a class="index-entry-id" id="index-subsref-8"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-subsref-18"><span class="category-def">: </span><span><code class="def-type"><var class="var">val</var> =</code> <strong class="def-name">subsref</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">sub</var>)</code><a class="copiable-link" href='#index-subsref-18'></a></span></dt>
<dd><p>subref for device
</p>
<p><strong class="strong">See also:</strong> device.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002fwrite-2">
<h4 class="subsection">9.9.8 @device/write</h4>
<a class="index-entry-id" id="index-write-4"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-write-11"><span class="category-def">: </span><span><strong class="def-name">write</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">datain</var>)</code><a class="copiable-link" href='#index-write-11'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-write-12"><span class="category-def">: </span><span><strong class="def-name">write</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">datain</var>, <var class="var">precision</var>)</code><a class="copiable-link" href='#index-write-12'></a></span></dt>
<dd><p>Write data to a I2C or serial device object
 using optional precision for the data byte used for the data.
</p>
<h4 class="subsubheading" id="Inputs-92">Inputs</h4>
<p><var class="var">dev</var> - connected i2c or serial device opened using device
</p>
<p><var class="var">datain</var> - data to write to device. Datasize should not exceed the constraints
 of the data type specified for the precision.
</p>
<p><var class="var">precision</var> - Optional precision for the input write data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<p><strong class="strong">See also:</strong> arduino, device, read.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002fwriteRead-1">
<h4 class="subsection">9.9.9 @device/writeRead</h4>
<a class="index-entry-id" id="index-writeRead-2"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readWrite-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">dataOut</var> =</code> <strong class="def-name">readWrite</strong> <code class="def-code-arguments">(<var class="var">spi</var>, <var class="var">dataIn</var>)</code><a class="copiable-link" href='#index-readWrite-2'></a></span></dt>
<dd><p>Write uint8 data to spi device and return
 back clocked out response data of same size.
</p>
<h4 class="subsubheading" id="Inputs-93">Inputs</h4>
<p><var class="var">spi</var> - connected spi device on arduino
</p>
<p><var class="var">dataIn</var> - uint8 sized data to send to spi device framed between SS frame.
</p>
<h4 class="subsubheading" id="Outputs-55">Outputs</h4>
<p><var class="var">dataOut</var> - uint8 data clocked out during send to dataIn.
</p>
<p><strong class="strong">See also:</strong> arduino, device.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040device_002fwriteRegister-1">
<h4 class="subsection">9.9.10 @device/writeRegister</h4>
<a class="index-entry-id" id="index-writeRegister-2"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-writeRegister-7"><span class="category-def">: </span><span><strong class="def-name">writeRegister</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">reg</var>, <var class="var">datain</var>)</code><a class="copiable-link" href='#index-writeRegister-7'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-writeRegister-8"><span class="category-def">: </span><span><strong class="def-name">writeRegister</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">dev</var>, <var class="var">datain</var>, <var class="var">precision</var>)</code><a class="copiable-link" href='#index-writeRegister-8'></a></span></dt>
<dd><p>Write data to i2c device object at a given registry position
 using optional precision for the data byte used for the data.
</p>
<h4 class="subsubheading" id="Inputs-94">Inputs</h4>
<p><var class="var">dev</var> - connected i2c device opened using device
</p>
<p><var class="var">reg</var> - registry position to write to.
</p>
<p><var class="var">datain</var> - data to write to device. Datasize should not exceed the constraints
 of the data type specified for the precision.
</p>
<p><var class="var">precision</var> - Optional precision for the input write data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<p><strong class="strong">See also:</strong> arduino, device, read.
</p></dd></dl>
<hr>
</div>
</div>
<div class="section-level-extent" id="Arduino-Ultrasonic-Functions">
<div class="nav-panel">
<p>
Next: <a href="#Arduino-Addons" accesskey="n" rel="next">Arduino Addons</a>, Previous: <a href="#Arduino-Device-Functions" accesskey="p" rel="prev">Arduino Device Functions</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Arduino-Ultrasonic-Functions-1">9.10 Arduino Ultrasonic Functions</h3>
<a class="index-entry-id" id="index-Arduino-Ultrasonic-Functions"></a>
<ul class="mini-toc">
<li><a href="#g_t_0040ultrasonic_002fdelete" accesskey="1">@ultrasonic/delete</a></li>
<li><a href="#g_t_0040ultrasonic_002fdisp" accesskey="2">@ultrasonic/disp</a></li>
<li><a href="#g_t_0040ultrasonic_002freadDistance" accesskey="3">@ultrasonic/readDistance</a></li>
<li><a href="#g_t_0040ultrasonic_002freadEchoTime" accesskey="4">@ultrasonic/readEchoTime</a></li>
<li><a href="#g_t_0040ultrasonic_002fsubsref" accesskey="5">@ultrasonic/subsref</a></li>
<li><a href="#g_t_0040ultrasonic_002fultrasonic" accesskey="6">@ultrasonic/ultrasonic</a></li>
</ul>
<div class="subsection-level-extent" id="g_t_0040ultrasonic_002fdelete">
<h4 class="subsection">9.10.1 @ultrasonic/delete</h4>
<a class="index-entry-id" id="index-delete-10"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-delete-21"><span class="category-def">: </span><span><strong class="def-name">delete</strong> <code class="def-code-arguments">(<var class="var">dev</var>)</code><a class="copiable-link" href='#index-delete-21'></a></span></dt>
<dd><p>Free resources of a ultrasonic object.
</p>
<h4 class="subsubheading" id="Inputs-95">Inputs</h4>
<p><var class="var">dev</var> - ultrasonic object to free
</p>
<p><strong class="strong">See also:</strong> ultrasonic.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040ultrasonic_002fdisp">
<h4 class="subsection">9.10.2 @ultrasonic/disp</h4>
<a class="index-entry-id" id="index-disp-10"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-disp-21"><span class="category-def">: </span><span><strong class="def-name">disp</strong> <code class="def-code-arguments">(<var class="var">dev</var>)</code><a class="copiable-link" href='#index-disp-21'></a></span></dt>
<dd><p>Display ultrasonic object.
</p>
<h4 class="subsubheading" id="Inputs-96">Inputs</h4>
<p><var class="var">dev</var> - ultrasonic object to display
</p>
<p><strong class="strong">See also:</strong> ultrasonic.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040ultrasonic_002freadDistance">
<h4 class="subsection">9.10.3 @ultrasonic/readDistance</h4>
<a class="index-entry-id" id="index-readDistance"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readDistance-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">distance</var> =</code> <strong class="def-name">readDistance</strong> <code class="def-code-arguments">(<var class="var">dev</var>)</code><a class="copiable-link" href='#index-readDistance-1'></a></span></dt>
<dd><p>Read the distance from a ultrasonic device
</p>
<h4 class="subsubheading" id="Inputs-97">Inputs</h4>
<p><var class="var">dev</var> - connected ultrasonic device opened using ultrasonic
</p>
<h4 class="subsubheading" id="Outputs-56">Outputs</h4>
<p><var class="var">distance</var> - distance value in meters from the ultrasonic device, or Inf if out of sensor range
</p>
<p><strong class="strong">See also:</strong> arduino, ultrasonic.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040ultrasonic_002freadEchoTime">
<h4 class="subsection">9.10.4 @ultrasonic/readEchoTime</h4>
<a class="index-entry-id" id="index-readEchoTime"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readEchoTime-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">time</var> =</code> <strong class="def-name">readEchoTime</strong> <code class="def-code-arguments">(<var class="var">dev</var>)</code><a class="copiable-link" href='#index-readEchoTime-1'></a></span></dt>
<dd><p>Measure the time for waves to reflect back to the ultrasonic device
</p>
<h4 class="subsubheading" id="Inputs-98">Inputs</h4>
<p><var class="var">dev</var> - connected ultrasonic device opened using ultrasonic()
</p>
<h4 class="subsubheading" id="Outputs-57">Outputs</h4>
<p><var class="var">time</var> - time in seconds, or Inf if out of sensor range
</p>
<p><strong class="strong">See also:</strong> arduino, ultrasonic.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040ultrasonic_002fsubsref">
<h4 class="subsection">9.10.5 @ultrasonic/subsref</h4>
<a class="index-entry-id" id="index-subsref-9"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-subsref-19"><span class="category-def">: </span><span><code class="def-type"><var class="var">val</var> =</code> <strong class="def-name">subsref</strong> <code class="def-code-arguments">(<var class="var">dev</var>, <var class="var">sub</var>)</code><a class="copiable-link" href='#index-subsref-19'></a></span></dt>
<dd><p>subref for ultrasonic
</p>
<p><strong class="strong">See also:</strong> ultrasonic.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040ultrasonic_002fultrasonic">
<h4 class="subsection">9.10.6 @ultrasonic/ultrasonic</h4>
<a class="index-entry-id" id="index-ultrasonic"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-ultrasonic-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">dev</var> =</code> <strong class="def-name">ultrasonic</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">triggerpin</var>)</code><a class="copiable-link" href='#index-ultrasonic-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-ultrasonic-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">dev</var> =</code> <strong class="def-name">ultrasonic</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">triggerpin</var>, <var class="var">echopin</var>)</code><a class="copiable-link" href='#index-ultrasonic-2'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-ultrasonic-3"><span class="category-def">: </span><span><code class="def-type"><var class="var">dev</var> =</code> <strong class="def-name">ultrasonic</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">triggerpin</var>, <var class="var">echopin</var>, <var class="var">propname</var>, <var class="var">propvalue</var>)</code><a class="copiable-link" href='#index-ultrasonic-3'></a></span></dt>
<dd><p>Create an ultrasonic object to communicate to a connected ultrasonic device
</p>
<h4 class="subsubheading" id="Inputs-99">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object
</p>
<p><var class="var">triggerpin</var> - trigger pin for attached device.
</p>
<p><var class="var">echopin</var> - trigger pin for attached device.
</p>
<p><var class="var">propname</var>, <var class="var">propvalue</var> - property name/value pair for values to pass to devices.
</p>
<p>Currently known properties:
</p><dl class="table">
<dt>outputformat</dt>
<dd><p>string designating number format for output (&rsquo;double&rsquo;)
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-58">Outputs</h4>
<p><var class="var">dev</var> - created ultrasonic object
</p>
<h4 class="subsubheading" id="Properties-8">Properties</h4>
<p>The ultrasonic object has the following public properties:
</p><dl class="table">
<dt>parent</dt>
<dd><p>The parent (arduino) for this device
</p></dd>
<dt>pins</dt>
<dd><p>pins used by this object
</p></dd>
<dt>triggerpin</dt>
<dd><p>trigger used for created object
</p></dd>
<dt>echopin</dt>
<dd><p>Echo pin set for object
</p></dd>
<dt>outputformat</dt>
<dd><p>Output format for the created object
</p></dd>
</dl>
<p><strong class="strong">See also:</strong> arduino, readDistance, readEchoTime.
</p></dd></dl>
<hr>
</div>
</div>
<div class="section-level-extent" id="Arduino-Addons">
<div class="nav-panel">
<p>
Next: <a href="#Arduino-Sensors" accesskey="n" rel="next">Arduino Sensors</a>, Previous: <a href="#Arduino-Ultrasonic-Functions" accesskey="p" rel="prev">Arduino Ultrasonic Functions</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Arduino-Addons-1">9.11 Arduino Addons</h3>
<a class="index-entry-id" id="index-Arduino-Addons"></a>
<ul class="mini-toc">
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
<div class="subsection-level-extent" id="addon">
<h4 class="subsection">9.11.1 addon</h4>
<a class="index-entry-id" id="index-addon"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-addon-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">addon</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">addonname</var>)</code><a class="copiable-link" href='#index-addon-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-addon-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">addon</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">addonname</var>, varargs)</code><a class="copiable-link" href='#index-addon-2'></a></span></dt>
<dd><p>Create an addon object using the addon named class.
</p>
<h4 class="subsubheading" id="Inputs-100">Inputs</h4>
<p><var class="var">ar</var> - connected arduino object
</p>
<p><var class="var">addonname</var> - the name of the addon to create. The addon name can be a user
 addon or an inbuilt addon, however must appear in the listArduinoLibraries
 output and have been programmed onto the arduino.
</p>
<p><var class="var">varargs</var> - optional values that will be provided verbatim to the
 the addon class constructor.
</p>
<h4 class="subsubheading" id="Outputs-59">Outputs</h4>
<p><var class="var">retval</var> - cell array of string library names.
</p>
<p><strong class="strong">See also:</strong> arduino, arduinosetup, listArduinoLibraries.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="arduinoioaddons_002eEEPRomAddon_002eEEPRom">
<h4 class="subsection">9.11.2 arduinoioaddons.EEPRomAddon.EEPRom</h4>
<a class="index-entry-id" id="index-EEPRom"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-arduinoioaddons_002eEEPRomAddon_002eEEPRom"><span class="category-def">: </span><span><strong class="def-name">arduinoioaddons.EEPRomAddon.EEPRom</strong><a class="copiable-link" href='#index-arduinoioaddons_002eEEPRomAddon_002eEEPRom'></a></span></dt>
<dd><p>EEPROM addon for arduino
</p>
<p>Allows read and write of uint8 data to the onboard arduino EEPROM.
</p>
<h4 class="subsubheading" id="Example-11">Example</h4>
<p>Assuming eeprom addon has been programmed into the Arduino:
</p><div class="example">
<pre class="example-preformatted"> a = arduino ();
 e = addon (a, &quot;eepromaddon/eeprom&quot;);
 write (e, 0, uint8(&quot;hello world&quot;));
 str = uint8( read(e, 0, 11) )
</pre></div>
<p><strong class="strong">See also:</strong> addon.
</p></dd></dl>
<h4 class="subsubheading" id="Properties-9">Properties</h4>
<p><var class="var">length</var> - Size of the EEPROM.
</p>
<h4 class="subheading" id="Methods">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-EEPRom-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">eeprom</var> =</code> <strong class="def-name">EEPRom</strong> <code class="def-code-arguments">()</code><a class="copiable-link" href='#index-EEPRom-1'></a></span></dt>
<dd><p>Constructor to create EEPROM device.
</p><h4 class="subsubheading" id="Outputs-60">Outputs</h4>
<p><var class="var">eeprom</var> - created EEPROM device.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-erase"><span class="category-def">: </span><span><strong class="def-name">erase</strong> <code class="def-code-arguments">()</code><a class="copiable-link" href='#index-erase'></a></span></dt>
<dd><p>Erase all values in EEPROM (Effectively setting the 0xFF)
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-write-13"><span class="category-def">: </span><span><strong class="def-name">write</strong> <code class="def-code-arguments">(<var class="var">address</var>, <var class="var">uintdata</var>)</code><a class="copiable-link" href='#index-write-13'></a></span></dt>
<dd><p>Write data to EEPROM at the provided address.
</p><h4 class="subsubheading" id="Inputs-101">Inputs</h4>
<p><var class="var">address</var> - start address to write data to, should be an
 integer between 0 and the size of the EEPROM.
</p>
<p><var class="var">uintdata</var> a value or array of uint8 data to write to EEPROM.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-read-15"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">read</strong> <code class="def-code-arguments">(<var class="var">address</var>)</code><a class="copiable-link" href='#index-read-15'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-read-16"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">read</strong> <code class="def-code-arguments">(<var class="var">address</var>, <var class="var">count</var>)</code><a class="copiable-link" href='#index-read-16'></a></span></dt>
<dd><p>Read data from starting address of EEPROM.
</p><h4 class="subsubheading" id="Inputs-102">Inputs</h4>
<p><var class="var">address</var> - start address to read data from, should be an
 integer between 0 and the size of the EEPROM.
</p>
<p><var class="var">count</var> - Number of uint8 values to read from the EEPROM (default is 1)
</p>
<h4 class="subsubheading" id="Outputs-61">Outputs</h4>
<p><var class="var">data</var> a value or array of uint8 data read from the EEPROM.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="arduinoioaddons_002eExampleAddon_002eEcho">
<h4 class="subsection">9.11.3 arduinoioaddons.ExampleAddon.Echo</h4>
<a class="index-entry-id" id="index-Echo"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-arduinoioaddons_002eExampleAddon_002eEcho"><span class="category-def">: </span><span><strong class="def-name">arduinoioaddons.ExampleAddon.Echo</strong><a class="copiable-link" href='#index-arduinoioaddons_002eExampleAddon_002eEcho'></a></span></dt>
<dd><p>Basic Example matlab/octave code to illustrate creating
 a user addon.
</p>
<p><strong class="strong">See also:</strong> addon.
</p></dd></dl>
<h4 class="subsubheading" id="Properties-10">Properties</h4>
<p><var class="var">Parent</var> - the parent arduino object.
</p>
<p><var class="var">Pins</var> - the pins allocated the addon.
</p>
<h4 class="subheading" id="Methods-1">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-Echo_0028arObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">Echo(arObj)</strong><a class="copiable-link" href='#index-Echo_0028arObj_0029'></a></span></dt>
<dd><p>Constructor to create Echo addon
</p><h4 class="subsubheading" id="Inputs-103">Inputs</h4>
<p><var class="var">arObj</var> - the arduino parent object
</p>
<h4 class="subsubheading" id="Outputs-62">Outputs</h4>
<p><var class="var">obj</var> - created Echo object
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-shout_0028text_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">response</var> =</code> <strong class="def-name">shout(<var class="var">text</var>)</strong><a class="copiable-link" href='#index-shout_0028text_0029'></a></span></dt>
<dd><p>Send text to arduino and receive back the echoed reply
</p>
<h4 class="subsubheading" id="Inputs-104">Inputs</h4>
<p><var class="var">text</var> - text to send to arduino
</p>
<h4 class="subsubheading" id="Outputs-63">Outputs</h4>
<p><var class="var">response</var> - response from the arduino, which should be the same as
 the input text.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="arduinoioaddons_002eExampleLCD_002eLCD">
<h4 class="subsection">9.11.4 arduinoioaddons.ExampleLCD.LCD</h4>
<a class="index-entry-id" id="index-LCD"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-arduinoioaddons_002eLCDAddon_002eLCD"><span class="category-def">: </span><span><strong class="def-name">arduinoioaddons.LCDAddon.LCD</strong><a class="copiable-link" href='#index-arduinoioaddons_002eLCDAddon_002eLCD'></a></span></dt>
<dd><p>Basic Example octave addon for LCD
</p>
<p>Allows basic manipulation of an LCD as a illustration of using
 the addon functionality.
</p><h4 class="subsubheading" id="Example-12">Example</h4>
<p>Assuming the arduino has been programmed with the lcd addon:
</p><div class="example">
<pre class="example-preformatted"> a = arduino();
 lcd = addon(a, &quot;examplelcd/lcd&quot;, &quot;d8&quot;, &quot;d9&quot;, &quot;d4&quot;, &quot;d5&quot;, &quot;d6&quot;, &quot;d7&quot;)
 clearLCD(lcd);
 printLCD(lcd, &quot;Hello&quot;);
 # go to next line
 gotoLCD(lcd, 0, 1);
 printLCD(lcd, &quot;World&quot;);
</pre></div>
<p><strong class="strong">See also:</strong> addon.
</p></dd></dl>
<h4 class="subsubheading" id="Properties-11">Properties</h4>
<p><var class="var">Pins</var> - the pins allocated the LCD display.
</p>
<h4 class="subheading" id="Methods-2">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-LCD_0028arObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">lcd</var> =</code> <strong class="def-name">LCD(arObj,</strong> <code class="def-code-arguments">rs, enable, d0, d1, d2, d3)</code><a class="copiable-link" href='#index-LCD_0028arObj_002c'></a></span></dt>
<dd><p>Constructor to create LCD device
</p><h4 class="subsubheading" id="Inputs-105">Inputs</h4>
<p><var class="var">arObj</var> - the arduino parent object
</p>
<p><var class="var">rs</var> - the pin to use for the rs line.
</p>
<p><var class="var">enable</var> - the pin to use for the enable line.
</p>
<p><var class="var">d0</var> - the pin to use for the d0 line.
</p>
<p><var class="var">d1</var> - the pin to use for the d1 line.
</p>
<p><var class="var">d2</var> - the pin to use for the d2 line.
</p>
<p><var class="var">d3</var> - the pin to use for the d3 line.
</p>
<h4 class="subsubheading" id="Outputs-64">Outputs</h4>
<p><var class="var">lcd</var> - created LCD object
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-freeLCD_0028_0029"><span class="category-def">: </span><span><strong class="def-name">freeLCD()</strong><a class="copiable-link" href='#index-freeLCD_0028_0029'></a></span></dt>
<dd><p>Free the LCD
</p>
<p>Should be called before discarding the LCD
</p><h4 class="subsubheading" id="Inputs-106">Inputs</h4>
<p>None.
</p>
<h4 class="subsubheading" id="Outputs-65">Outputs</h4>
<p>None.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-clearLCD_0028_0029"><span class="category-def">: </span><span><strong class="def-name">clearLCD()</strong><a class="copiable-link" href='#index-clearLCD_0028_0029'></a></span></dt>
<dd><p>Clear the LCD display and set the cursor position to the home position.
</p>
<h4 class="subsubheading" id="Inputs-107">Inputs</h4>
<p>None.
</p>
<h4 class="subsubheading" id="Outputs-66">Outputs</h4>
<p>None.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-printLCD_0028text_0029"><span class="category-def">: </span><span><strong class="def-name">printLCD(<var class="var">text</var>)</strong><a class="copiable-link" href='#index-printLCD_0028text_0029'></a></span></dt>
<dd><p>Display text on LCD starting at the current cursor position.
</p>
<h4 class="subsubheading" id="Inputs-108">Inputs</h4>
<p><var class="var">text</var> - text to display on LCD
</p>
<h4 class="subsubheading" id="Outputs-67">Outputs</h4>
<p>None.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-gotoLCD_0028col_002c"><span class="category-def">: </span><span><strong class="def-name">gotoLCD(<var class="var">col</var>,</strong> <code class="def-code-arguments"><var class="var">row</var>)</code><a class="copiable-link" href='#index-gotoLCD_0028col_002c'></a></span></dt>
<dd><p>Set the cursor position to row, col
</p>
<h4 class="subsubheading" id="Inputs-109">Inputs</h4>
<p><var class="var">col</var> - 0 indexed LCD column to position to.
</p>
<p><var class="var">row</var> - 0 indexed LCD row to position to.
</p>
<h4 class="subsubheading" id="Outputs-68">Outputs</h4>
<p>None.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="arduinoioaddons_002eRTCAddon_002eDS1307">
<h4 class="subsection">9.11.5 arduinoioaddons.RTCAddon.DS1307</h4>
<a class="index-entry-id" id="index-DS1307"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-arduinoioaddons_002eRTCAddon_002eDS1307"><span class="category-def">: </span><span><strong class="def-name">arduinoioaddons.RTCAddon.DS1307</strong><a class="copiable-link" href='#index-arduinoioaddons_002eRTCAddon_002eDS1307'></a></span></dt>
<dd><p>DS1307 addon
</p>
<p><strong class="strong">See also:</strong> addon.
</p></dd></dl>
<h4 class="subsubheading" id="Properties-12">Properties</h4>
<p><var class="var">Parent</var> - the parent arduino object.
</p>
<p><var class="var">Pins</var> - the pins allocated the addon.
</p>
<h4 class="subheading" id="Methods-3">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-DS1307_0028arObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">DS1307(<var class="var">arObj</var>)</strong><a class="copiable-link" href='#index-DS1307_0028arObj_0029'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-DS1307_0028arObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">DS1307(<var class="var">arObj</var>,</strong> <code class="def-code-arguments"><var class="var">propertyname, propertyvalue</var> ....)</code><a class="copiable-link" href='#index-DS1307_0028arObj_002c'></a></span></dt>
<dd><p>Constructor to create DS1307 addon
</p><h4 class="subsubheading" id="Inputs-110">Inputs</h4>
<p><var class="var">arObj</var> - the arduino parent object
</p>
<p><var class="var">propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
</p><dl class="table">
<dt>address</dt>
<dd><p>I2C address of the DS1307 (default 0x68)
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-69">Outputs</h4>
<p><var class="var">obj</var> - created DS1307 object
</p>
<h4 class="subsubheading" id="Example-13">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 rtc = addon(a, &quot;rtcaddon/ds1307&quot;)
 </code>
</pre></div>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-clock_0028dsObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">date</var> =</code> <strong class="def-name">clock(<var class="var">dsObj</var>)</strong><a class="copiable-link" href='#index-clock_0028dsObj_0029'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-clock_0028dsObj_002c"><span class="category-def">: </span><span><strong class="def-name">clock(<var class="var">dsObj</var>,</strong> <code class="def-code-arguments"><var class="var">date</var>)</code><a class="copiable-link" href='#index-clock_0028dsObj_002c'></a></span></dt>
<dd><p>Get/set the DS1307 clock
</p>
<h4 class="subsubheading" id="Inputs-111">Inputs</h4>
<p><var class="var">dsObj</var> - the ds1307 object
</p>
<p><var class="var">date</var> - a date vector in same format as datevec and clock
</p>
<h4 class="subsubheading" id="Outputs-70">Outputs</h4>
<p><var class="var">date</var> - a date vector in same format as datevec and clock
</p>
<h4 class="subsubheading" id="Example-14">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 rtc = addon(a, &quot;rtcaddon/ds1307&quot;)
 # get and display rtc time as a date string
 datestr(rtc.clock)
 </code>
</pre></div>
<p><strong class="strong">See also:</strong> datevec.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-control_0028dsObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">ctrl</var> =</code> <strong class="def-name">control(<var class="var">dsObj</var>)</strong><a class="copiable-link" href='#index-control_0028dsObj_0029'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-control_0028dsObj_002c"><span class="category-def">: </span><span><strong class="def-name">control(<var class="var">dsObj</var>,</strong> <code class="def-code-arguments"><var class="var">ctrl</var>)</code><a class="copiable-link" href='#index-control_0028dsObj_002c'></a></span></dt>
<dd><p>Get/set the DS1307 clock
</p>
<h4 class="subsubheading" id="Inputs-112">Inputs</h4>
<p><var class="var">dsObj</var> - the ds1307 object
</p>
<p><var class="var">ctrl</var> - a structure containing the control bit fields.
</p>
<h4 class="subsubheading" id="Outputs-71">Outputs</h4>
<p><var class="var">ctrl</var> - a structure containing the control bit fields.
</p>
<p>Control structure fields are:
 Current properties are:
</p><dl class="table">
<dt>out</dt>
<dd><p>Out bit in the control register
</p></dd>
<dt>sqwe</dt>
<dd><p>Square wave enable bit in control register
</p></dd>
<dt>rs</dt>
<dd><p>The combined RS0, RS1 value
</p></dd>
</dl>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-isstarted_0028dsObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">YN</var> =</code> <strong class="def-name">isstarted(<var class="var">dsObj</var>)</strong><a class="copiable-link" href='#index-isstarted_0028dsObj_0029'></a></span></dt>
<dd><p>Get whether the RTC clock is currently counting time
</p>
<h4 class="subsubheading" id="Inputs-113">Inputs</h4>
<p><var class="var">dsObj</var> - the ds1307 object
</p>
<h4 class="subsubheading" id="Outputs-72">Outputs</h4>
<p><var class="var">YN</var> - returns true if the RTC is counting
</p>
<p><strong class="strong">See also:</strong> start, stop.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-start_0028dsObj_0029"><span class="category-def">: </span><span><strong class="def-name">start(<var class="var">dsObj</var>)</strong><a class="copiable-link" href='#index-start_0028dsObj_0029'></a></span></dt>
<dd><p>Start the RTC counting
</p>
<h4 class="subsubheading" id="Inputs-114">Inputs</h4>
<p><var class="var">dsObj</var> - the ds1307 object
</p>
<h4 class="subsubheading" id="Outputs-73">Outputs</h4>
<p>None
</p>
<p><strong class="strong">See also:</strong> datevec.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-stop_0028dsObj_0029"><span class="category-def">: </span><span><strong class="def-name">stop(<var class="var">dsObj</var>)</strong><a class="copiable-link" href='#index-stop_0028dsObj_0029'></a></span></dt>
<dd><p>Stop the RTC counting
</p>
<h4 class="subsubheading" id="Inputs-115">Inputs</h4>
<p><var class="var">dsObj</var> - the ds1307 object
</p>
<h4 class="subsubheading" id="Outputs-74">Outputs</h4>
<p>None
</p>
<p><strong class="strong">See also:</strong> datevec.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="arduinoioaddons_002eSimpleStepper_002eSimpleStepper">
<h4 class="subsection">9.11.6 arduinoioaddons.SimpleStepper.SimpleStepper</h4>
<a class="index-entry-id" id="index-SimpleStepper"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-arduinoioaddons_002eSimpleStepper"><span class="category-def">: </span><span><strong class="def-name">arduinoioaddons.SimpleStepper</strong><a class="copiable-link" href='#index-arduinoioaddons_002eSimpleStepper'></a></span></dt>
<dd><p>Stepper class for stepper control using ULN2003 and compatible drivers
</p></dd></dl>
<h4 class="subsubheading" id="Properties-13">Properties</h4>
<dl class="table">
<dt><var class="var">Id</var></dt>
<dd><p>Id of the stepper (Read only)
</p></dd>
<dt><var class="var">Speed</var></dt>
<dd><p>Number of steps to do per second.
</p></dd>
<dt>Status</dt>
<dd><p>Status of stepper (Read only).
 0 = not moving, 1 = moving, 2 = rotating
</p></dd>
<dt>Parent</dt>
<dd><p>the Arduino parent (read only)
</p></dd>
<dt>Pins</dt>
<dd><p>the pins used for the stepper (read only)
</p></dd>
</dl>
<h4 class="subheading" id="Methods-4">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-SimpleStepper_0028aObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">SimpleStepper(<var class="var">aObj</var>,</strong> <code class="def-code-arguments"><var class="var">pin1</var>, <var class="var">pin2</var>, <var class="var">pin3</var>, <var class="var">pin4</var>)</code><a class="copiable-link" href='#index-SimpleStepper_0028aObj_002c'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-SimpleStepper_0028aObj_002c-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">SimpleStepper(<var class="var">aObj</var>,</strong> <code class="def-code-arguments"><var class="var">pin1</var>, <var class="var">pin2</var>, <var class="var">pin3</var>, <var class="var">pin4</var>, <var class="var">pin5</var>)</code><a class="copiable-link" href='#index-SimpleStepper_0028aObj_002c-1'></a></span></dt>
<dd><p>Constructor to create a stepper object
</p><h4 class="subsubheading" id="Inputs-116">Inputs</h4>
<p><var class="var">aObj</var> - The arduino
</p>
<p><var class="var">pin1</var> - The first pin of the controller
</p>
<p><var class="var">pin2</var> - The second pin of the controller
</p>
<p><var class="var">pin3</var> - The third pin of the controller
</p>
<p><var class="var">pin4</var> - The fourth pin of the controller
</p>
<p><var class="var">pin5</var> - The fifth pin of the controller
</p>
<h4 class="subsubheading" id="Outputs-75">Outputs</h4>
<p><var class="var">s</var> - a simplestepper object
</p>
<h4 class="subsubheading" id="Example-15">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 # create stepper object
 s = addon(a, &quot;simplestepper/simplestepper&quot;, &quot;d2&quot;, &quot;d3&quot;, &quot;d4&quot;, &quot;d5&quot;)
 # start rotating left
 s.rotate(-1);
 </code>
</pre></div>
<p><strong class="strong">See also:</strong> addon.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-move_0028sObj_002c"><span class="category-def">: </span><span><strong class="def-name">move(<var class="var">sObj</var>,</strong> <code class="def-code-arguments"><var class="var">steps</var>)</code><a class="copiable-link" href='#index-move_0028sObj_002c'></a></span></dt>
<dd><p>Move the motor the specified number of steps using the configured Speed.
</p>
<h4 class="subsubheading" id="Inputs-117">Inputs</h4>
<p><var class="var">sObj</var> - the stepper object
</p>
<p><var class="var">steps</var> - the number of steps to move. steps less than 0 will be moving left.
</p>
<h4 class="subsubheading" id="Outputs-76">Outputs</h4>
<p>None
</p>
<p><strong class="strong">See also:</strong> rotate.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-rotate_0028sObj_002c"><span class="category-def">: </span><span><strong class="def-name">rotate(<var class="var">sObj</var>,</strong> <code class="def-code-arguments"><var class="var">dir</var>)</code><a class="copiable-link" href='#index-rotate_0028sObj_002c'></a></span></dt>
<dd><p>Start steppermotor moving in the specified direction using the configured Speed.
</p>
<h4 class="subsubheading" id="Inputs-118">Inputs</h4>
<p><var class="var">sObj</var> - the stepper object
</p>
<p><var class="var">dir</var> - Direction to move. -1 = left, 0 = stop, 1 = right.
</p>
<h4 class="subsubheading" id="Outputs-77">Outputs</h4>
<p>None
</p>
<p><strong class="strong">See also:</strong> move.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-release_0028sObj_0029"><span class="category-def">: </span><span><strong class="def-name">release(<var class="var">sObj</var>)</strong><a class="copiable-link" href='#index-release_0028sObj_0029'></a></span></dt>
<dd><p>Release this stepper motor
</p>
<h4 class="subsubheading" id="Inputs-119">Inputs</h4>
<p><var class="var">sObj</var> - the stepper object
</p>
<h4 class="subsubheading" id="Outputs-78">Outputs</h4>
<p>None
</p>
</dd></dl>
</div>
<div class="subsection-level-extent" id="arduinoioaddons_002eadafruit_002edcmotorv2">
<h4 class="subsection">9.11.7 arduinoioaddons.adafruit.dcmotorv2</h4>
<a class="index-entry-id" id="index-dcmotorv2"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-arduinoioaddons_002eadafruit_002edcmotorv2"><span class="category-def">: </span><span><strong class="def-name">arduinoioaddons.adafruit.dcmotorv2</strong><a class="copiable-link" href='#index-arduinoioaddons_002eadafruit_002edcmotorv2'></a></span></dt>
<dd><p>DC Motor class for dc motor control on the adafruit motor shield
</p>
<p><strong class="strong">See also:</strong> arduinoioaddons.adafruit.motorshieldv2.
</p></dd></dl>
<h4 class="subsubheading" id="Properties-14">Properties</h4>
<p><var class="var">Speed</var> - The speed value set for the motor
</p>
<p><var class="var">Parent</var> - The parent shield for object (read only)
</p>
<p><var class="var">MotorNumber</var> - The motor number (read only) values 1-4
</p>
<p><var class="var">IsRunning</var> - boolean for if the motor is started (read only)
</p>
<h4 class="subheading" id="Methods-5">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-dcmotorv2_0028mObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">dcmotorv2(<var class="var">mObj</var>,</strong> <code class="def-code-arguments"><var class="var">mnum</var>)</code><a class="copiable-link" href='#index-dcmotorv2_0028mObj_002c'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-dcmotorv2_0028mObj_002c-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">dcmotorv2(<var class="var">mObj</var>,</strong> <code class="def-code-arguments"><var class="var">mnum</var>, <var class="var">propertyname, propertyvalue</var> ....)</code><a class="copiable-link" href='#index-dcmotorv2_0028mObj_002c-1'></a></span></dt>
<dd><p>Constructor to create dcmotor object
</p><h4 class="subsubheading" id="Inputs-120">Inputs</h4>
<p><var class="var">mObj</var> - the motor shield object
</p>
<p><var class="var">mnum</var> - The motor number (1 - 4)
</p>
<p><var class="var">propertyname, propertyvalue</var> - Optional property name/value
 pairs to pass to motor object.
</p>
<p>Current known properties are:
</p><dl class="table">
<dt>Speed</dt>
<dd><p>Initial speed (default 0). Should be a value between -1 and 1.
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-79">Outputs</h4>
<p><var class="var">s</var> - a dcmotorv2 object
</p>
<h4 class="subsubheading" id="Example-16">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 ms = addon(a, &quot;adafruit/motorshieldv2&quot;)
 mtr = dcmotor(ms, 1)
 </code>
</pre></div>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-start_0028dcObj_0029"><span class="category-def">: </span><span><strong class="def-name">start(<var class="var">dcObj</var>)</strong><a class="copiable-link" href='#index-start_0028dcObj_0029'></a></span></dt>
<dd><p>Start the motor moving in previously set speed/direction
</p>
<h4 class="subsubheading" id="Inputs-121">Inputs</h4>
<p><var class="var">dcObj</var> - the dcmotor object
</p>
<h4 class="subsubheading" id="Outputs-80">Outputs</h4>
<p>None
</p>
<p><strong class="strong">See also:</strong> adafruit.motorshieldv2.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-stop_0028dcObj_0029"><span class="category-def">: </span><span><strong class="def-name">stop(<var class="var">dcObj</var>)</strong><a class="copiable-link" href='#index-stop_0028dcObj_0029'></a></span></dt>
<dd><p>Stop the motor moving
</p>
<h4 class="subsubheading" id="Inputs-122">Inputs</h4>
<p><var class="var">dcObj</var> - the dcmotor object
</p>
<h4 class="subsubheading" id="Outputs-81">Outputs</h4>
<p>None
</p>
<p><strong class="strong">See also:</strong> adafruit.motorshieldv2.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="arduinoioaddons_002eadafruit_002emotorshieldv2">
<h4 class="subsection">9.11.8 arduinoioaddons.adafruit.motorshieldv2</h4>
<a class="index-entry-id" id="index-motorshieldv2"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-arduinoioaddons_002eadafruit_002emotorshieldv2"><span class="category-def">: </span><span><strong class="def-name">arduinoioaddons.adafruit.motorshieldv2</strong><a class="copiable-link" href='#index-arduinoioaddons_002eadafruit_002emotorshieldv2'></a></span></dt>
<dd><p>Adafruit motor shield addon
</p>
<p><strong class="strong">See also:</strong> addon.
</p></dd></dl>
<h4 class="subsubheading" id="Properties-15">Properties</h4>
<p><var class="var">Parent</var> - the parent arduino object.
</p>
<p><var class="var">Pins</var> - the pins allocated the addon.
</p>
<p><var class="var">I2CAddress</var> - the i2c address used for accessing this shield.
</p>
<p><var class="var">PWMFrequency</var> - the set PWM frequency for this shield.
</p>
<h4 class="subheading" id="Methods-6">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-motorshieldv2_0028arObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">motorshieldv2(<var class="var">arObj</var>)</strong><a class="copiable-link" href='#index-motorshieldv2_0028arObj_0029'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-motorshieldv2_0028arObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">motorshieldv2(<var class="var">arObj</var>,</strong> <code class="def-code-arguments"><var class="var">propertyname, propertyvalue</var> ....)</code><a class="copiable-link" href='#index-motorshieldv2_0028arObj_002c'></a></span></dt>
<dd><p>Constructor to create motorshieldv2 addon object
</p><h4 class="subsubheading" id="Inputs-123">Inputs</h4>
<p><var class="var">arObj</var> - the arduino parent object
</p>
<p><var class="var">propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
</p><dl class="table">
<dt>address</dt>
<dd><p>I2C address of the motor shield  (default 0x60)
</p></dd>
<dt>pwmfrequency</dt>
<dd><p>PWM Frequency to set on shield  (default 1600)
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-82">Outputs</h4>
<p><var class="var">obj</var> - created  motorshieldv2 object
</p>
<h4 class="subsubheading" id="Example-17">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 mtr = addon(a, &quot;adafruit/motorshieldv2&quot;)
 </code>
</pre></div>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-servo_0028mObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">s</var> =</code> <strong class="def-name">servo(<var class="var">mObj</var>,</strong> <code class="def-code-arguments"><var class="var">mtrnum</var>)</code><a class="copiable-link" href='#index-servo_0028mObj_002c'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-servo_0028mObj_002c-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">s</var> =</code> <strong class="def-name">servo(<var class="var">mObj</var>,</strong> <code class="def-code-arguments"><var class="var">mtrnum</var>, <var class="var">propertyname</var>, <var class="var">propertyvalue</var> ...)</code><a class="copiable-link" href='#index-servo_0028mObj_002c-1'></a></span></dt>
<dd><p>Create a servo object
</p>
<h4 class="subsubheading" id="Inputs-124">Inputs</h4>
<p><var class="var">mObj</var> - the motor shield object
</p>
<p><var class="var">mtrnum</var> - The servo motor number, where 1 is servo on
 pin &quot;d10&quot; and 2 is a servo on pin &quot;d9&quot;
</p>
<p><var class="var">propertyname</var>, <var class="var">propertyvalue</var> - Optional property
 name/value pairs to pass to servo object.
</p>
<p>Properties are the same as the base servo object.
</p>
<h4 class="subsubheading" id="Outputs-83">Outputs</h4>
<p><var class="var">s</var> - a servo object
</p>
<h4 class="subsubheading" id="Example-18">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 ms = addon(a, &quot;adafruit/motorshieldv2&quot;)
 # get servo 1 (servo on pin D10)
 s = ms.servo(1)
 </code>
</pre></div>
<p>The function if the equivalent of calling the arduino.servo with
 the D9 or D10 pin has the input pin.
</p>
<p><strong class="strong">See also:</strong> servo.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-stepper_0028mObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">s</var> =</code> <strong class="def-name">stepper(<var class="var">mObj</var>,</strong> <code class="def-code-arguments"><var class="var">mtrnum</var>, <var class="var">stepsperrev</var>)</code><a class="copiable-link" href='#index-stepper_0028mObj_002c'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-stepper_0028mObj_002c-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">s</var> =</code> <strong class="def-name">stepper(<var class="var">mObj</var>,</strong> <code class="def-code-arguments"><var class="var">mtrnum</var>, <var class="var">stepsperrev</var>, <var class="var">propertyname</var>, <var class="var">propertyvalue</var> ...)</code><a class="copiable-link" href='#index-stepper_0028mObj_002c-1'></a></span></dt>
<dd><p>Create a stepper motor object
</p>
<h4 class="subsubheading" id="Inputs-125">Inputs</h4>
<p><var class="var">mObj</var> - the motor shield object
</p>
<p><var class="var">mtrnum</var> - The stepper motor number (1 or 2)
</p>
<p><var class="var">stepsperrev</var> - Number of steps per revolution.
</p>
<p><var class="var">propertyname</var>, <var class="var">propertyvalue</var> - Optional property
 name/value pairs to pass to stepper object.
</p>
<h4 class="subsubheading" id="Outputs-84">Outputs</h4>
<p><var class="var">s</var> - a stepper object
</p>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-dcmotor_0028mObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">s</var> =</code> <strong class="def-name">dcmotor(<var class="var">mObj</var>,</strong> <code class="def-code-arguments"><var class="var">mtrnum</var>)</code><a class="copiable-link" href='#index-dcmotor_0028mObj_002c'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-dcmotor_0028mObj_002c-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">s</var> =</code> <strong class="def-name">dcmotor(<var class="var">mObj</var>,</strong> <code class="def-code-arguments"><var class="var">mtrnum</var>, <var class="var">propertyname</var>, <var class="var">propertyvalue</var> ...)</code><a class="copiable-link" href='#index-dcmotor_0028mObj_002c-1'></a></span></dt>
<dd><p>Create a dcmotor motor object
</p>
<h4 class="subsubheading" id="Inputs-126">Inputs</h4>
<p><var class="var">mObj</var> - the motor shield object
</p>
<p><var class="var">mtrnum</var> - The motor number (1 - 4)
</p>
<p><var class="var">propertyname</var>, <var class="var">propertyvalue</var> - Optional property
 name/value pairs to pass to motor object.
</p>
<h4 class="subsubheading" id="Outputs-85">Outputs</h4>
<p><var class="var">s</var> - a dcmotorv2 object
</p>
</dd></dl>
</div>
<div class="subsection-level-extent" id="arduinoioaddons_002eadafruit_002estepper">
<h4 class="subsection">9.11.9 arduinoioaddons.adafruit.stepper</h4>
<a class="index-entry-id" id="index-stepper"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-arduinoioaddons_002eadafruit_002estepper"><span class="category-def">: </span><span><strong class="def-name">arduinoioaddons.adafruit.stepper</strong><a class="copiable-link" href='#index-arduinoioaddons_002eadafruit_002estepper'></a></span></dt>
<dd><p>Stepper class for stepper control on the adafruit motor shield
</p>
<p><strong class="strong">See also:</strong> arduinoioaddons.adafruit.motorshieldv2.
</p></dd></dl>
<h4 class="subsubheading" id="Properties-16">Properties</h4>
<dl class="table">
<dt><var class="var">RPM</var></dt>
<dd><p>The rpm value set for the stepper motor
</p></dd>
<dt>StepType</dt>
<dd><p>the StepType for the stepper (string) which can be &quot;single&quot;,
 &quot;double&quot;, &quot;interleave&quot; or &quot;microstep&quot;
</p></dd>
<dt>StepsPerRevolution</dt>
<dd><p>the StepsPerRevoluion for the stepper (read only)
</p></dd>
<dt>MotorNumber</dt>
<dd><p>the motor number for the stepper (read only) value will be 1 or 2.
</p></dd>
<dt>Parent</dt>
<dd><p>the parent shield of this stepper (read only)
</p></dd>
</dl>
<h4 class="subheading" id="Methods-7">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-stepper_0028mObj_002c-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">stepper(<var class="var">mObj</var>,</strong> <code class="def-code-arguments"><var class="var">mnum</var>, <var class="var">stepsperrev</var>)</code><a class="copiable-link" href='#index-stepper_0028mObj_002c-2'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-stepper_0028mObj_002c-3"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">stepper(<var class="var">mObj</var>,</strong> <code class="def-code-arguments"><var class="var">mnum</var>, <var class="var">stepsperrev</var>, <var class="var">propertyname, propertyvalue</var> ....)</code><a class="copiable-link" href='#index-stepper_0028mObj_002c-3'></a></span></dt>
<dd><p>Constructor to create dcmotor object
</p><h4 class="subsubheading" id="Inputs-127">Inputs</h4>
<p><var class="var">mObj</var> - the motor shield object
</p>
<p><var class="var">mnum</var> - The motor number (1 or 2)
</p>
<p><var class="var">stepsperrev</var> - Number of steps per revolution.
</p>
<p><var class="var">propertyname, propertyvalue</var> - Optional property
 name/value pairs to pass to motor object.
</p>
<p>Current known properties are:
</p><dl class="table">
<dt>RPM</dt>
<dd><p>the RPM for the stepper (revolutions per minute)
</p></dd>
<dt>StepType</dt>
<dd><p>the StepType for the stepper (string) which can be
 &quot;single&quot;, &quot;double&quot;, &quot;interleave&quot; or &quot;microstep&quot;
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-86">Outputs</h4>
<p><var class="var">s</var> - a stepper object
</p>
<h4 class="subsubheading" id="Example-19">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 ms = addon(a, &quot;adafruit/motorshieldv2&quot;)
 mtr = stepper(ms, 1, 200)
 </code>
</pre></div>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-move_0028sObj_002c-1"><span class="category-def">: </span><span><strong class="def-name">move(<var class="var">sObj</var>,</strong> <code class="def-code-arguments"><var class="var">steps</var>)</code><a class="copiable-link" href='#index-move_0028sObj_002c-1'></a></span></dt>
<dd><p>Move the motor moving in the specified steps using the configured RPM.
</p>
<h4 class="subsubheading" id="Inputs-128">Inputs</h4>
<p><var class="var">sObj</var> - the stepper object
</p>
<h4 class="subsubheading" id="Outputs-87">Outputs</h4>
<p>None
</p>
<p><strong class="strong">See also:</strong> adafruit.motorshieldv2.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-release_0028sObj_0029-1"><span class="category-def">: </span><span><strong class="def-name">release(<var class="var">sObj</var>)</strong><a class="copiable-link" href='#index-release_0028sObj_0029-1'></a></span></dt>
<dd><p>Release this motor
</p>
<h4 class="subsubheading" id="Inputs-129">Inputs</h4>
<p><var class="var">sObj</var> - the stepper object
</p>
<h4 class="subsubheading" id="Outputs-88">Outputs</h4>
<p>None
</p>
<p><strong class="strong">See also:</strong> adafruit.motorshieldv2.
</p></dd></dl>
<hr>
</div>
</div>
<div class="section-level-extent" id="Arduino-Sensors">
<div class="nav-panel">
<p>
Next: <a href="#Arduino-I_002fO-package" accesskey="n" rel="next">Arduino I/O package</a>, Previous: <a href="#Arduino-Addons" accesskey="p" rel="prev">Arduino Addons</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Arduino-Sensors-1">9.12 Arduino Sensors</h3>
<a class="index-entry-id" id="index-Arduino-Sensors"></a>
<ul class="mini-toc">
<li><a href="#arduinosensor_002eDS1307" accesskey="1">arduinosensor.DS1307</a></li>
<li><a href="#arduinosensor_002eGUVAS12SD" accesskey="2">arduinosensor.GUVAS12SD</a></li>
<li><a href="#arduinosensor_002eMPC3002" accesskey="3">arduinosensor.MPC3002</a></li>
<li><a href="#arduinosensor_002eSI7021" accesskey="4">arduinosensor.SI7021</a></li>
</ul>
<div class="subsection-level-extent" id="arduinosensor_002eDS1307">
<h4 class="subsection">9.12.1 arduinosensor.DS1307</h4>
<a class="index-entry-id" id="index-DS1307-1"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-arduinosensor_002eDS1307"><span class="category-def">: </span><span><strong class="def-name">arduinosensor.DS1307</strong><a class="copiable-link" href='#index-arduinosensor_002eDS1307'></a></span></dt>
<dd><p>DS1307 realtime clock sensor
</p></dd></dl>
<h4 class="subheading" id="Methods-8">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-DS1307_0028arObj_0029-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">DS1307(<var class="var">arObj</var>)</strong><a class="copiable-link" href='#index-DS1307_0028arObj_0029-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-DS1307_0028arObj_002c-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">DS1307(<var class="var">arObj</var>,</strong> <code class="def-code-arguments"><var class="var">propertyname, propertyvalue</var> ....)</code><a class="copiable-link" href='#index-DS1307_0028arObj_002c-1'></a></span></dt>
<dd><p>Constructor to create DS1307 sensor
</p><h4 class="subsubheading" id="Inputs-130">Inputs</h4>
<p><var class="var">arObj</var> - the arduino parent object
</p>
<p><var class="var">propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 Current properties are:
</p><dl class="table">
<dt>i2caddress</dt>
<dd><p>I2C address of the DS1307 (default 0x68)
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-89">Outputs</h4>
<p><var class="var">obj</var> - created DS1307 object
</p>
<h4 class="subsubheading" id="Example-20">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 rtc = arduinosensor.DS1307(a)
 </code>
</pre></div>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-clock_0028dsObj_0029-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">date</var> =</code> <strong class="def-name">clock(<var class="var">dsObj</var>)</strong><a class="copiable-link" href='#index-clock_0028dsObj_0029-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-clock_0028dsObj_002c-1"><span class="category-def">: </span><span><strong class="def-name">clock(<var class="var">dsObj</var>,</strong> <code class="def-code-arguments"><var class="var">date</var>)</code><a class="copiable-link" href='#index-clock_0028dsObj_002c-1'></a></span></dt>
<dd><p>Get/set the DS1307 clock
</p>
<h4 class="subsubheading" id="Inputs-131">Inputs</h4>
<p><var class="var">dsObj</var> - the ds1307 object
</p>
<p><var class="var">date</var> - a date vector in same format as datevec and clock
</p>
<h4 class="subsubheading" id="Outputs-90">Outputs</h4>
<p><var class="var">date</var> - a date vector in same format as datevec and clock
</p>
<h4 class="subsubheading" id="Example-21">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 rtc = arduinosensor.DS1307(a)
 # get and display rtc time as a date string
 datestr(rtc.clock)
 </code>
</pre></div>
<p><strong class="strong">See also:</strong> datevec.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-control_0028dsObj_0029-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">ctrl</var> =</code> <strong class="def-name">control(<var class="var">dsObj</var>)</strong><a class="copiable-link" href='#index-control_0028dsObj_0029-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-control_0028dsObj_002c-1"><span class="category-def">: </span><span><strong class="def-name">control(<var class="var">dsObj</var>,</strong> <code class="def-code-arguments"><var class="var">ctrl</var>)</code><a class="copiable-link" href='#index-control_0028dsObj_002c-1'></a></span></dt>
<dd><p>Get/set the DS1307 clock
</p>
<h4 class="subsubheading" id="Inputs-132">Inputs</h4>
<p><var class="var">dsObj</var> - the ds1307 object
</p>
<p><var class="var">ctrl</var> - a structure containing the control bit fields.
</p>
<h4 class="subsubheading" id="Outputs-91">Outputs</h4>
<p><var class="var">ctrl</var> - a structure containing the control bit fields.
</p>
<p>Control structure fields are:
 Current properties are:
</p><dl class="table">
<dt>out</dt>
<dd><p>Out bit in the control register
</p></dd>
<dt>sqwe</dt>
<dd><p>Square wave enable bit in control register
</p></dd>
<dt>rs</dt>
<dd><p>The combined RS0, RS1 value
</p></dd>
</dl>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-isstarted_0028dsObj_0029-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">YN</var> =</code> <strong class="def-name">isstarted(<var class="var">dsObj</var>)</strong><a class="copiable-link" href='#index-isstarted_0028dsObj_0029-1'></a></span></dt>
<dd><p>Get whether the RTC clock is currently counting time
</p>
<h4 class="subsubheading" id="Inputs-133">Inputs</h4>
<p><var class="var">dsObj</var> - the ds1307 object
</p>
<h4 class="subsubheading" id="Outputs-92">Outputs</h4>
<p><var class="var">YN</var> - returns true if the RTC is counting
</p>
<p><strong class="strong">See also:</strong> start, stop.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-start_0028dsObj_0029-1"><span class="category-def">: </span><span><strong class="def-name">start(<var class="var">dsObj</var>)</strong><a class="copiable-link" href='#index-start_0028dsObj_0029-1'></a></span></dt>
<dd><p>Start the RTC counting
</p>
<h4 class="subsubheading" id="Inputs-134">Inputs</h4>
<p><var class="var">dsObj</var> - the ds1307 object
</p>
<h4 class="subsubheading" id="Outputs-93">Outputs</h4>
<p>None
</p>
<p><strong class="strong">See also:</strong> datevec.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-stop_0028dsObj_0029-1"><span class="category-def">: </span><span><strong class="def-name">stop(<var class="var">dsObj</var>)</strong><a class="copiable-link" href='#index-stop_0028dsObj_0029-1'></a></span></dt>
<dd><p>Stop the RTC counting
</p>
<h4 class="subsubheading" id="Inputs-135">Inputs</h4>
<p><var class="var">dsObj</var> - the ds1307 object
</p>
<h4 class="subsubheading" id="Outputs-94">Outputs</h4>
<p>None
</p>
<p><strong class="strong">See also:</strong> datevec.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="arduinosensor_002eGUVAS12SD">
<h4 class="subsection">9.12.2 arduinosensor.GUVAS12SD</h4>
<a class="index-entry-id" id="index-GUVAS12SD"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-arduinosensor_002eGUVAS12SD"><span class="category-def">: </span><span><strong class="def-name">arduinosensor.GUVAS12SD</strong><a class="copiable-link" href='#index-arduinosensor_002eGUVAS12SD'></a></span></dt>
<dd><p>A thin wrapper for the GUVAS12SD analog UV-B sensor
</p></dd></dl>
<h4 class="subheading" id="Methods-9">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-GUVAS12SD_0028arObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">GUVAS12SD(<var class="var">arObj</var>,</strong> <code class="def-code-arguments"><var class="var">pin</var>)</code><a class="copiable-link" href='#index-GUVAS12SD_0028arObj_002c'></a></span></dt>
<dd><p>Constructor to create GUVAS12SD sensor
</p><h4 class="subsubheading" id="Inputs-136">Inputs</h4>
<p><var class="var">arObj</var> - the arduino parent object
</p>
<p><var class="var">pin</var> - the analog pin that the sensor is connected to
</p>
<h4 class="subsubheading" id="Outputs-95">Outputs</h4>
<p><var class="var">obj</var> - created GUVAS12SD object
</p>
<h4 class="subsubheading" id="Example-22">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 # create sensor attached to pin a0.
 sensor = arduinosensor.GUVAS12SD(a, &quot;a0&quot;)
 </code>
</pre></div>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-read_0028dsObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">V</var> =</code> <strong class="def-name">read(<var class="var">dsObj</var>)</strong><a class="copiable-link" href='#index-read_0028dsObj_0029'></a></span></dt>
<dd><p>Read the voltage of the sensor
</p>
<h4 class="subsubheading" id="Inputs-137">Inputs</h4>
<p><var class="var">dsObj</var> - the GUVAS12SD object
</p>
<h4 class="subsubheading" id="Outputs-96">Outputs</h4>
<p><var class="var">V</var> - read voltage - effectively equivalent to
 readAnalogPin(arObj, pin).
</p>
<h4 class="subsubheading" id="Example-23">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 s = arduinosensor.GUVAS12SD(a)
 # voltage
 volts = s.read
 </code>
</pre></div>
<p><strong class="strong">See also:</strong> arduinosensor.GUVAS12SD.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readIndex_0028dsObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">Idx</var> =</code> <strong class="def-name">readIndex(<var class="var">dsObj</var>)</strong><a class="copiable-link" href='#index-readIndex_0028dsObj_0029'></a></span></dt>
<dd><p>Read the UV index
</p>
<h4 class="subsubheading" id="Inputs-138">Inputs</h4>
<p><var class="var">dsObj</var> - the GUVAS12SD object
</p>
<h4 class="subsubheading" id="Outputs-97">Outputs</h4>
<p><var class="var">Idx</var> - the sensor reading as a UV index reading
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readuA_0028dsObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">uA</var> =</code> <strong class="def-name">readuA(<var class="var">dsObj</var>)</strong><a class="copiable-link" href='#index-readuA_0028dsObj_0029'></a></span></dt>
<dd><p>Read the uA of the sensor
</p>
<h4 class="subsubheading" id="Inputs-139">Inputs</h4>
<p><var class="var">dsObj</var> - the GUVAS12SD object
</p>
<h4 class="subsubheading" id="Outputs-98">Outputs</h4>
<p><var class="var">uA</var> - the sensor reading as a uAmp value
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="arduinosensor_002eMPC3002">
<h4 class="subsection">9.12.3 arduinosensor.MPC3002</h4>
<a class="index-entry-id" id="index-MPC3002"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-arduinosensor_002eMPC3002"><span class="category-def">: </span><span><strong class="def-name">arduinosensor.MPC3002</strong><a class="copiable-link" href='#index-arduinosensor_002eMPC3002'></a></span></dt>
<dd><p>MCP3002 ADC sensor
</p></dd></dl>
<h4 class="subheading" id="Methods-10">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-MPC3002_0028arObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">MPC3002(<var class="var">arObj</var>,</strong> <code class="def-code-arguments"><var class="var">selectPin</var>)</code><a class="copiable-link" href='#index-MPC3002_0028arObj_002c'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-MPC3002_0028arObj_002c-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">MPC3002(<var class="var">arObj</var>,</strong> <code class="def-code-arguments"><var class="var">selectPin</var>, <var class="var">propertyname, propertyvalue</var> ....)</code><a class="copiable-link" href='#index-MPC3002_0028arObj_002c-1'></a></span></dt>
<dd><p>Constructor to create MPC3002 sensor
</p><h4 class="subsubheading" id="Inputs-140">Inputs</h4>
<p><var class="var">arObj</var> - the arduino parent object
</p>
<p><var class="var">selectPin</var> - the SPI cs select pin
</p>
<p><var class="var">propertyname, propertyvalue</var> - optional property name, value pairs.
</p>
<p>Current properties are:
</p><dl class="table">
<dt>referenceVoltage</dt>
<dd><p>Reference voltage for scaling the ADC inputs (default 5.0)
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-99">Outputs</h4>
<p><var class="var">obj</var> - created MCP3002 object
</p>
<h4 class="subsubheading" id="Example-24">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 sensor = arduinosensor.MPC3002(a, &quot;d10&quot;)
 </code>
</pre></div>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readVoltage_0028dsObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">voltage</var> =</code> <strong class="def-name">readVoltage(<var class="var">dsObj</var>,</strong> <code class="def-code-arguments"><var class="var">chan</var>)</code><a class="copiable-link" href='#index-readVoltage_0028dsObj_002c'></a></span></dt>
<dd><p>Read the voltage from a channel
</p>
<h4 class="subsubheading" id="Inputs-141">Inputs</h4>
<p><var class="var">dsObj</var> - the MPC3002 object
</p>
<p><var class="var">chan</var> - the channel to read (0 or 1)
</p>
<h4 class="subsubheading" id="Outputs-100">Outputs</h4>
<p><var class="var">voltage</var> - read voltage.
</p>
<h4 class="subsubheading" id="Example-25">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 s = arduinosensor.MPC3002(a, &quot;d10&quot;)
 volts = readVoltage(s, 0)
 </code>
</pre></div>
<p><strong class="strong">See also:</strong> arduinosensor.MPC3002.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="arduinosensor_002eSI7021">
<h4 class="subsection">9.12.4 arduinosensor.SI7021</h4>
<a class="index-entry-id" id="index-SI7021"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-arduinosensor_002eSI7021"><span class="category-def">: </span><span><strong class="def-name">arduinosensor.SI7021</strong><a class="copiable-link" href='#index-arduinosensor_002eSI7021'></a></span></dt>
<dd><p>SI7021 temperature and humidity sensor
</p></dd></dl>
<h4 class="subheading" id="Methods-11">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-SI7021_0028arObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">SI7021(<var class="var">arObj</var>)</strong><a class="copiable-link" href='#index-SI7021_0028arObj_0029'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-SI7021_0028arObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">SI7021(<var class="var">arObj</var>,</strong> <code class="def-code-arguments"><var class="var">propertyname, propertyvalue</var> ....)</code><a class="copiable-link" href='#index-SI7021_0028arObj_002c'></a></span></dt>
<dd><p>Constructor to create SI7021 sensor
</p><h4 class="subsubheading" id="Inputs-142">Inputs</h4>
<p><var class="var">arObj</var> - the arduino parent object
</p>
<p><var class="var">propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 Current properties are:
</p><dl class="table">
<dt>i2caddress</dt>
<dd><p>I2C address of the SI7021 (default 0x40)
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-101">Outputs</h4>
<p><var class="var">obj</var> - created SI7020 object
</p>
<h4 class="subsubheading" id="Example-26">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 sensor = arduinosensor.SI7021(a)
 </code>
</pre></div>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-temperature_0028dsObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">C</var> =</code> <strong class="def-name">temperature(<var class="var">dsObj</var>)</strong><a class="copiable-link" href='#index-temperature_0028dsObj_0029'></a></span></dt>
<dd><p>Read the temperature
</p>
<h4 class="subsubheading" id="Inputs-143">Inputs</h4>
<p><var class="var">dsObj</var> - the si7021 object
</p>
<h4 class="subsubheading" id="Outputs-102">Outputs</h4>
<p><var class="var">C</var> - read temperature in deg C.
</p>
<h4 class="subsubheading" id="Example-27">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 s = arduinosensor.SI7021(a)
 # get temp
 temp = s.temperature
 </code>
</pre></div>
<p><strong class="strong">See also:</strong> arduinosensor.SI7021.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-humidity_0028dsObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">relH</var> =</code> <strong class="def-name">humidity(<var class="var">dsObj</var>)</strong><a class="copiable-link" href='#index-humidity_0028dsObj_0029'></a></span></dt>
<dd><p>Read the relative humidity
</p>
<h4 class="subsubheading" id="Inputs-144">Inputs</h4>
<p><var class="var">dsObj</var> - the si7021 object
</p>
<h4 class="subsubheading" id="Outputs-103">Outputs</h4>
<p><var class="var">relH</var> - relative humidity as a percentage (0 - 100.0)
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-info_0028dsObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">relH</var> =</code> <strong class="def-name">info(<var class="var">dsObj</var>)</strong><a class="copiable-link" href='#index-info_0028dsObj_0029'></a></span></dt>
<dd><p>Read the sensor info
</p>
<h4 class="subsubheading" id="Inputs-145">Inputs</h4>
<p><var class="var">dsObj</var> - the si7021 object
</p>
<h4 class="subsubheading" id="Outputs-104">Outputs</h4>
<p><var class="var">inf</var> - structure containing the sensor information.
</p>
<p>Structure fields are:
</p><dl class="table">
<dt>version</dt>
<dd><p>Chip firmware version
</p></dd>
<dt>id</dt>
<dd><p>sensor id1,id2 value
</p></dd>
<dt>type</dt>
<dd><p>String for detected chip type
</p></dd>
</dl>
</dd></dl>
<hr>
</div>
</div>
<div class="section-level-extent" id="Arduino-I_002fO-package">
<div class="nav-panel">
<p>
Next: <a href="#Matlab-Compatibility-Classes" accesskey="n" rel="next">Matlab Compatibility Classes</a>, Previous: <a href="#Arduino-Sensors" accesskey="p" rel="prev">Arduino Sensors</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Arduino-I_002fO-package-1">9.13 Arduino I/O package</h3>
<a class="index-entry-id" id="index-Arduino-I_002fO-package"></a>
<ul class="mini-toc">
<li><a href="#arduinoio_002eAddonBase" accesskey="1">arduinoio.AddonBase</a></li>
<li><a href="#arduinoio_002eFilePath" accesskey="2">arduinoio.FilePath</a></li>
<li><a href="#arduinoio_002eLibFiles" accesskey="3">arduinoio.LibFiles</a></li>
<li><a href="#arduinoio_002eLibraryBase" accesskey="4">arduinoio.LibraryBase</a></li>
<li><a href="#arduinoio_002egetBoardConfig" accesskey="5">arduinoio.getBoardConfig</a></li>
</ul>
<div class="subsection-level-extent" id="arduinoio_002eAddonBase">
<h4 class="subsection">9.13.1 arduinoio.AddonBase</h4>
<a class="index-entry-id" id="index-AddonBase"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-arduinoio_002eAddonBase"><span class="category-def">: </span><span><strong class="def-name">arduinoio.AddonBase</strong><a class="copiable-link" href='#index-arduinoio_002eAddonBase'></a></span></dt>
<dd><p>Base class used for arduino library sensors
</p>
<p><strong class="strong">See also:</strong> arduinoio.LibraryBase.
</p></dd></dl>
<h4 class="subheading" id="Properties-17">Properties</h4>
<p>Base properties are expected to be inherited and overwritten in inherited classes.
 and are constant in order to query through the metaobject mechanism.
</p>
<p><var class="var">Parent</var> - parent librarybase object
</p>
<h4 class="subheading" id="Methods-12">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-AddonBase-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">ab</var> =</code> <strong class="def-name">AddonBase</strong> <code class="def-code-arguments">()</code><a class="copiable-link" href='#index-AddonBase-1'></a></span></dt>
<dd><p>Constructor of base class
</p>
<h4 class="subsubheading" id="Outputs-105">Outputs</h4>
<p>The return value <var class="var">ab</var> is an object of the arduinio.AddonBase class.
</p>
<p><strong class="strong">See also:</strong> arduino, addon.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-disp-22"><span class="category-def">: </span><span><strong class="def-name">disp</strong> <code class="def-code-arguments">()</code><a class="copiable-link" href='#index-disp-22'></a></span></dt>
<dd><p>Display the addon in a verbose way.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="arduinoio_002eFilePath">
<h4 class="subsection">9.13.2 arduinoio.FilePath</h4>
<a class="index-entry-id" id="index-FilePath"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-arduinoio_002eFilePath"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">arduinoio.FilePath</strong> <code class="def-code-arguments">(<var class="var">fullpathname</var>)</code><a class="copiable-link" href='#index-arduinoio_002eFilePath'></a></span></dt>
<dd><p>Get the directory component of a pathname.
</p>
<h4 class="subsubheading" id="Inputs-146">Inputs</h4>
<p><var class="var">fullpathname</var> filepath to get directory component of.
</p>
<h4 class="subsubheading" id="Outputs-106">Outputs</h4>
<p><var class="var">retval</var> the directory part of the filename.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="arduinoio_002eLibFiles">
<h4 class="subsection">9.13.3 arduinoio.LibFiles</h4>
<a class="index-entry-id" id="index-LibFiles"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-arduinoio_002eLibFiles"><span class="category-def">: </span><span><code class="def-type"><var class="var">filelist</var> =</code> <strong class="def-name">arduinoio.LibFiles</strong> <code class="def-code-arguments">()</code><a class="copiable-link" href='#index-arduinoio_002eLibFiles'></a></span></dt>
<dd><p>Get the list of files used for the building arduino library
</p><h4 class="subsubheading" id="Outputs-107">Outputs</h4>
<p><var class="var">filelist</var> - string cell array of files for the arduino project
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="arduinoio_002eLibraryBase">
<h4 class="subsection">9.13.4 arduinoio.LibraryBase</h4>
<a class="index-entry-id" id="index-LibraryBase"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-arduinoio_002eLibraryBase"><span class="category-def">: </span><span><strong class="def-name">arduinoio.LibraryBase</strong><a class="copiable-link" href='#index-arduinoio_002eLibraryBase'></a></span></dt>
<dd><p>Base class used for arduino library plugins
</p>
<p><strong class="strong">See also:</strong> arduino, listArduinoLibraries, addon.
</p></dd></dl>
<h4 class="subheading" id="Properties-18">Properties</h4>
<p>Base properties are expected to be inherited and overwritten in
 inherited classes and are constant in order to query through the
 metaobject mechanism.
</p>
<p><var class="var">LibraryName</var> - name of the addon library
</p>
<p><var class="var">DependentLibraries</var> - array of dependent library names that
  must be included when installing this plugin.
</p>
<p><var class="var">CppHeaderFile</var> - name (if any) of header file that will be
 included into the arduino project when adding this library.
</p>
<p><var class="var">CppSourceFile</var> - name (if any) of source file that will be
 included into the arduino project when adding this library.
</p>
<p><var class="var">CppClassName</var> - name of the cpp class for the addon library.
 project when adding this library.
</p>
<p><var class="var">Pins</var> - pins allocated to the addon
</p>
<p><var class="var">Parent</var> - parent arduino object.
</p>
<h4 class="subheading" id="Methods-13">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-LibraryBase-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">lb</var> =</code> <strong class="def-name">LibraryBase</strong> <code class="def-code-arguments">()</code><a class="copiable-link" href='#index-LibraryBase-2'></a></span></dt>
<dd><p>Constructor of base class
</p>
<p>The constructor is usually not called but called indirectly
 from the addon function.
</p>
<h4 class="subsubheading" id="Outputs-108">Outputs</h4>
<p>The return value <var class="var">lb</var> is an object of the arduinio.LibraryBase class.
</p>
<p><strong class="strong">See also:</strong> arduino, listArduinoLibraries, addon.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-disp-23"><span class="category-def">: </span><span><strong class="def-name">disp</strong> <code class="def-code-arguments">()</code><a class="copiable-link" href='#index-disp-23'></a></span></dt>
<dd><p>Display the addon in a verbose way.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="arduinoio_002egetBoardConfig">
<h4 class="subsection">9.13.5 arduinoio.getBoardConfig</h4>
<a class="index-entry-id" id="index-getBoardConfig"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-arduinoio_002egetBoardConfig"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">arduinoio.getBoardConfig</strong> <code class="def-code-arguments">(<var class="var">boardname</var>)</code><a class="copiable-link" href='#index-arduinoio_002egetBoardConfig'></a></span></dt>
<dd><p>Return the configuration for a known arduino board type
</p>
<p>Function is used to get the expected pin/board configuration for a named board type
 which is used to verify and identify the functionality of the board.
</p>
<h4 class="subsubheading" id="Inputs-147">Inputs</h4>
<p><var class="var">boardname</var> - name of board to get configuration of ie: &quot;uno&quot;
</p>
<h4 class="subsubheading" id="Outputs-109">Outputs</h4>
<p><var class="var">retval</var> configuration struct.
</p></dd></dl>
<hr>
</div>
</div>
<div class="section-level-extent" id="Matlab-Compatibility-Classes">
<div class="nav-panel">
<p>
Next: <a href="#Sensors" accesskey="n" rel="next">Sensors</a>, Previous: <a href="#Arduino-I_002fO-package" accesskey="p" rel="prev">Arduino I/O package</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Matlab-Compatibility-Classes-1">9.14 Matlab Compatibility Classes</h3>
<a class="index-entry-id" id="index-Matlab-Compatibility-Classes"></a>
<ul class="mini-toc">
<li><a href="#matlabshared_002eaddon_002eLibraryBase" accesskey="1">matlabshared.addon.LibraryBase</a></li>
</ul>
<div class="subsection-level-extent" id="matlabshared_002eaddon_002eLibraryBase">
<h4 class="subsection">9.14.1 matlabshared.addon.LibraryBase</h4>
<a class="index-entry-id" id="index-LibraryBase-1"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-matlabshared_002eaddon_002eLibraryBase"><span class="category-def">: </span><span><strong class="def-name">matlabshared.addon.LibraryBase</strong><a class="copiable-link" href='#index-matlabshared_002eaddon_002eLibraryBase'></a></span></dt>
<dd><p>Compatability class used for arduino library plugins using
 matlabshared.addons.LibraryBase
</p>
<p><strong class="strong">See also:</strong> arduinoio.LibraryBase, arduino, listArduinoLibraries, addon.
</p></dd></dl>
<h4 class="subheading" id="Properties-19">Properties</h4>
<p>Base properties are expected to be inherited and overwritten in
 inherited classes and are constant in order to query through the
 metaobject mechanism.
</p>
<p><var class="var">LibraryName</var> - name of the addon library
</p>
<p><var class="var">DependentLibraries</var> - array of dependent library names that
  must be included when installing this plugin.
</p>
<p><var class="var">CppHeaderFile</var> - name (if any) of header file that will be
 included into the arduino project when adding this library.
</p>
<p><var class="var">CppSourceFile</var> - name (if any) of source file that will be
 included into the arduino project when adding this library.
</p>
<p><var class="var">CppClassName</var> - name of the cpp class for the addon library.
 project when adding this library.
</p>
<p><var class="var">Pins</var> - pins allocated to the addon
</p>
<p><var class="var">Parent</var> - parent arduino object.
</p>
<h4 class="subheading" id="Methods-14">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-LibraryBase-3"><span class="category-def">: </span><span><code class="def-type"><var class="var">lb</var> =</code> <strong class="def-name">LibraryBase</strong> <code class="def-code-arguments">()</code><a class="copiable-link" href='#index-LibraryBase-3'></a></span></dt>
<dd><p>Constructor of base class
</p>
<p>The constructor is usually not called but called indirectly
 from the addon function.
</p>
<h4 class="subsubheading" id="Outputs-110">Outputs</h4>
<p>The return value <var class="var">lb</var> is an object of the
 matlabshare.addons.LibraryBase class.
</p>
<p><strong class="strong">See also:</strong> arduino, listArduinoLibraries, addon.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-disp-24"><span class="category-def">: </span><span><strong class="def-name">disp</strong> <code class="def-code-arguments">()</code><a class="copiable-link" href='#index-disp-24'></a></span></dt>
<dd><p>Display the addon in a verbose way.
</p></dd></dl>
<hr>
</div>
</div>
<div class="section-level-extent" id="Sensors">
<div class="nav-panel">
<p>
Next: <a href="#Test-Functions" accesskey="n" rel="next">Test Functions</a>, Previous: <a href="#Matlab-Compatibility-Classes" accesskey="p" rel="prev">Matlab Compatibility Classes</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Sensors-1">9.15 Sensors</h3>
<a class="index-entry-id" id="index-Sensors"></a>
<ul class="mini-toc">
<li><a href="#bme280" accesskey="1">bme280</a></li>
<li><a href="#bno055" accesskey="2">bno055</a></li>
<li><a href="#lis3dh" accesskey="3">lis3dh</a></li>
<li><a href="#lps22hb" accesskey="4">lps22hb</a></li>
<li><a href="#lsm6dso" accesskey="5">lsm6dso</a></li>
<li><a href="#mpu6050" accesskey="6">mpu6050</a></li>
<li><a href="#si7021" accesskey="7">si7021</a></li>
</ul>
<div class="subsection-level-extent" id="bme280">
<h4 class="subsection">9.15.1 bme280</h4>
<a class="index-entry-id" id="index-bme280"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-bme280-1"><span class="category-def">: </span><span><strong class="def-name">bme280</strong><a class="copiable-link" href='#index-bme280-1'></a></span></dt>
<dd><p>BME280 pressure, temperature and humidity sensor
</p></dd></dl>
<h4 class="subheading" id="Methods-15">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-bme280_0028arObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">bme280(<var class="var">arObj</var>)</strong><a class="copiable-link" href='#index-bme280_0028arObj_0029'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-bme280_0028arObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">bme280(<var class="var">arObj</var>,</strong> <code class="def-code-arguments"><var class="var">propertyname, propertyvalue</var> ....)</code><a class="copiable-link" href='#index-bme280_0028arObj_002c'></a></span></dt>
<dd><p>Constructor to create BME280 sensor
</p><h4 class="subsubheading" id="Inputs-148">Inputs</h4>
<p><var class="var">arObj</var> - the arduino parent object
</p>
<p><var class="var">propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 Current properties are:
</p><dl class="table">
<dt>I2CAddress</dt>
<dd><p>I2C address of the sensor (default 0x40)
</p></dd>
<dt>Bus</dt>
<dd><p>I2C bus  - 0 or 1 (default 0)
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-111">Outputs</h4>
<p><var class="var">obj</var> - created object
</p>
<h4 class="subsubheading" id="Example-28">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 sensor = bme280(a)
 </code>
</pre></div>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readTemperature_0028obj_0029"><span class="category-def">: </span><span><code class="def-type">[<var class="var">C</var>, <var class="var">timestamp</var>] =</code> <strong class="def-name">readTemperature(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-readTemperature_0028obj_0029'></a></span></dt>
<dd><p>Read the temperature
</p>
<h4 class="subsubheading" id="Inputs-149">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-112">Outputs</h4>
<p><var class="var">C</var> - read temperature in deg C.
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p>
<h4 class="subsubheading" id="Example-29">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 s = bme280(a)
 # get temp
 temp = s.readTemperature
 </code>
</pre></div>
<p><strong class="strong">See also:</strong> bme280.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readHumidity_0028obj_0029"><span class="category-def">: </span><span><code class="def-type">[<var class="var">relH</var>, <var class="var">timestamp</var>] =</code> <strong class="def-name">readHumidity(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-readHumidity_0028obj_0029'></a></span></dt>
<dd><p>Read the relative humidity
</p>
<h4 class="subsubheading" id="Inputs-150">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-113">Outputs</h4>
<p><var class="var">relH</var> - relative humidity as a percentage (0 - 100.0)
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readPressure_0028obj_0029"><span class="category-def">: </span><span><code class="def-type">[<var class="var">P</var>, <var class="var">timestamp</var>] =</code> <strong class="def-name">readPressure(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-readPressure_0028obj_0029'></a></span></dt>
<dd><p>Read the pressure
</p>
<h4 class="subsubheading" id="Inputs-151">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-114">Outputs</h4>
<p><var class="var">P</var> - pressure reading from sensor.
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-read_0028obj_0029"><span class="category-def">: </span><span><code class="def-type">[<var class="var">readings</var>, <var class="var">overrun</var>] =</code> <strong class="def-name">read(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-read_0028obj_0029'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-read_0028obj_0029-1"><span class="category-def">: </span><span><code class="def-type">[<var class="var">P</var>, <var class="var">H</var>, <var class="var">C</var>, <var class="var">timestamp</var>, <var class="var">overrun</var>] =</code> <strong class="def-name">read(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-read_0028obj_0029-1'></a></span></dt>
<dd><p>Read the sensor data
</p>
<h4 class="subsubheading" id="Inputs-152">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-115">Outputs</h4>
<p><var class="var">P</var> - pressure reading from sensor.
</p>
<p><var class="var">H</var> - humidity reading from sensor.
</p>
<p><var class="var">C</var> - temperature reading from sensor.
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p>
<p><var class="var">overrun</var> - overrun flag.
</p>
<p><var class="var">readings</var> - table structure with fields for Timestamp, Pressure, Temperature and Humidity.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-info_0028obj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">inf</var> =</code> <strong class="def-name">info(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-info_0028obj_0029'></a></span></dt>
<dd><p>Read the sensor info
</p>
<h4 class="subsubheading" id="Inputs-153">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-116">Outputs</h4>
<p><var class="var">inf</var> - structure containing the sensor information.
</p>
<p>Structure fields are:
</p><dl class="table">
<dt>Version</dt>
<dd><p>Chip firmware version
</p></dd>
<dt>SensorId</dt>
<dd><p>sensor id value
</p></dd>
<dt>Type</dt>
<dd><p>sensor type &rsquo;bme280&rsquo;
</p></dd>
<dt>Status</dt>
<dd><p>Status value read from sensor
</p></dd>
</dl>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-flush_0028obj_0029"><span class="category-def">: </span><span><strong class="def-name">flush(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-flush_0028obj_0029'></a></span></dt>
<dd><p>Flush sensor data
</p>
<h4 class="subsubheading" id="Inputs-154">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-117">Outputs</h4>
<p>None
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-release_0028obj_0029"><span class="category-def">: </span><span><strong class="def-name">release(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-release_0028obj_0029'></a></span></dt>
<dd><p>Release the resources of the sensor
</p>
<h4 class="subsubheading" id="Inputs-155">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-118">Outputs</h4>
<p>None
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="bno055">
<h4 class="subsection">9.15.2 bno055</h4>
<a class="index-entry-id" id="index-bno055"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-bno055-1"><span class="category-def">: </span><span><strong class="def-name">bno055</strong><a class="copiable-link" href='#index-bno055-1'></a></span></dt>
<dd><p>BNO055 9 axis orientation sensor
</p></dd></dl>
<h4 class="subheading" id="Methods-16">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-bno055_0028arObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">bno055(<var class="var">arObj</var>)</strong><a class="copiable-link" href='#index-bno055_0028arObj_0029'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-bno055_0028arObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">bno055(<var class="var">arObj</var>,</strong> <code class="def-code-arguments"><var class="var">propertyname, propertyvalue</var> ....)</code><a class="copiable-link" href='#index-bno055_0028arObj_002c'></a></span></dt>
<dd><p>Constructor to create BME280 sensor
</p><h4 class="subsubheading" id="Inputs-156">Inputs</h4>
<p><var class="var">arObj</var> - the arduino parent object
</p>
<p><var class="var">propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 Current properties are:
</p><dl class="table">
<dt>I2CAddress</dt>
<dd><p>I2C address of the sensor (default 0x40)
</p></dd>
<dt>Bus</dt>
<dd><p>I2C bus  - 0 or 1 (default 0)
</p></dd>
<dt>OperatingMode</dt>
<dd><p>Operating mode &rsquo;ndof&rsquo; or &rsquo;amg&rsquo;
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-119">Outputs</h4>
<p><var class="var">obj</var> - created object
</p>
<h4 class="subsubheading" id="Example-30">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 sensor = bno055(a)
 </code>
</pre></div>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readTemperature_0028obj_0029-1"><span class="category-def">: </span><span><code class="def-type">[<var class="var">C</var>, <var class="var">timestamp</var>] =</code> <strong class="def-name">readTemperature(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-readTemperature_0028obj_0029-1'></a></span></dt>
<dd><p>Read the temperature
</p>
<h4 class="subsubheading" id="Inputs-157">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-120">Outputs</h4>
<p><var class="var">C</var> - read temperature in deg C.
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p>
<h4 class="subsubheading" id="Example-31">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 s = bno055(a)
 # get temp
 temp = s.readTemperature
 </code>
</pre></div>
<p><strong class="strong">See also:</strong> bno055.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readAcceleration_0028obj_0029"><span class="category-def">: </span><span><code class="def-type">[<var class="var">readVal</var>, <var class="var">timestamp</var>] =</code> <strong class="def-name">readAcceleration(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-readAcceleration_0028obj_0029'></a></span></dt>
<dd><p>Read the acceleration rate
</p>
<h4 class="subsubheading" id="Inputs-158">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-121">Outputs</h4>
<p><var class="var">readVal</var> - the 3 acceleration values
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readAngularVelocity_0028obj_0029"><span class="category-def">: </span><span><code class="def-type">[<var class="var">readVal</var>, <var class="var">timestamp</var>] =</code> <strong class="def-name">readAngularVelocity(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-readAngularVelocity_0028obj_0029'></a></span></dt>
<dd><p>Read the angular velocity
</p>
<h4 class="subsubheading" id="Inputs-159">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-122">Outputs</h4>
<p><var class="var">readVal</var> - the 3 angular velocity values
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readMagneticField_0028obj_0029"><span class="category-def">: </span><span><code class="def-type">[<var class="var">readVal</var>, <var class="var">timestamp</var>] =</code> <strong class="def-name">readMagneticField(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-readMagneticField_0028obj_0029'></a></span></dt>
<dd><p>Read the magnetic field components
</p>
<h4 class="subsubheading" id="Inputs-160">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-123">Outputs</h4>
<p><var class="var">readVal</var> - the 3 magnetic field values
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readOrientation_0028obj_0029"><span class="category-def">: </span><span><code class="def-type">[<var class="var">readVal</var>, <var class="var">timestamp</var>] =</code> <strong class="def-name">readOrientation(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-readOrientation_0028obj_0029'></a></span></dt>
<dd><p>Read the oriientation components
</p>
<h4 class="subsubheading" id="Inputs-161">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-124">Outputs</h4>
<p><var class="var">readVal</var> - the 3 orientation values
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-read_0028obj_0029-2"><span class="category-def">: </span><span><code class="def-type">[<var class="var">readings</var>, <var class="var">overrun</var>] =</code> <strong class="def-name">read(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-read_0028obj_0029-2'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-read_0028obj_0029-3"><span class="category-def">: </span><span><code class="def-type">[<var class="var">accel</var>, <var class="var">gyro</var>, <var class="var">mag</var>, <var class="var">timestamp</var>, <var class="var">overrun</var>] =</code> <strong class="def-name">read(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-read_0028obj_0029-3'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-read_0028obj_0029-4"><span class="category-def">: </span><span><code class="def-type">[<var class="var">accel</var>, <var class="var">gyro</var>, <var class="var">mag</var>, <var class="var">orientation</var>, <var class="var">timestamp</var>, <var class="var">overrun</var>] =</code> <strong class="def-name">read(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-read_0028obj_0029-4'></a></span></dt>
<dd><p>Read the sensor data
</p>
<h4 class="subsubheading" id="Inputs-162">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-125">Outputs</h4>
<p><var class="var">accel</var> - acceleration reading from sensor.
</p>
<p><var class="var">gyro</var> - angular acceleration reading from sensor.
</p>
<p><var class="var">mag</var> - magnetic field reading from sensor.
</p>
<p><var class="var">orientation</var> - orientation reading from sensor.
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p>
<p><var class="var">overrun</var> - overrun flag.
</p>
<p><var class="var">readings</var> - table structure with fields for Timestamp, Acceleration, AngularVelocity, MagneticField, Orientation.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readCalibrationStatus_0028obj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">inf</var> =</code> <strong class="def-name">readCalibrationStatus(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-readCalibrationStatus_0028obj_0029'></a></span></dt>
<dd><p>Read the sensor calibration status
</p>
<h4 class="subsubheading" id="Inputs-163">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-126">Outputs</h4>
<p><var class="var">status</var> - structure containing the calibration information.
</p>
<p>Structure fields are:
</p><dl class="table">
<dt>System</dt>
<dd><p>System calibrarion
</p></dd>
<dt>Accelerometer</dt>
<dd><p>Accelerometer calibration status
</p></dd>
<dt>Gyroscope</dt>
<dd><p>Gyroscope calibration status
</p></dd>
<dt>Magnetometer</dt>
<dd><p>Magnetometer calibration status
</p></dd>
</dl>
<p>Values for each will be either &rsquo;uncalibrated&rsquo;, &rsquo;partial&rsquo; or &rsquo;full&rsquo;.
</p>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-info_0028obj_0029-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">inf</var> =</code> <strong class="def-name">info(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-info_0028obj_0029-1'></a></span></dt>
<dd><p>Read the sensor info
</p>
<h4 class="subsubheading" id="Inputs-164">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-127">Outputs</h4>
<p><var class="var">inf</var> - structure containing the sensor information.
</p>
<p>Structure fields are:
</p><dl class="table">
<dt>Version</dt>
<dd><p>Software firmware version
</p></dd>
<dt>SensorId</dt>
<dd><p>sensor id value
</p></dd>
<dt>Type</dt>
<dd><p>sensor type &rsquo;bno055&rsquo;
</p></dd>
</dl>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-flush_0028obj_0029-1"><span class="category-def">: </span><span><strong class="def-name">flush(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-flush_0028obj_0029-1'></a></span></dt>
<dd><p>Flush sensor data
</p>
<h4 class="subsubheading" id="Inputs-165">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-128">Outputs</h4>
<p>None
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-release_0028obj_0029-1"><span class="category-def">: </span><span><strong class="def-name">release(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-release_0028obj_0029-1'></a></span></dt>
<dd><p>Release the resources of the sensor
</p>
<h4 class="subsubheading" id="Inputs-166">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-129">Outputs</h4>
<p>None
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="lis3dh">
<h4 class="subsection">9.15.3 lis3dh</h4>
<a class="index-entry-id" id="index-lis3dh"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-lis3dh-1"><span class="category-def">: </span><span><strong class="def-name">lis3dh</strong><a class="copiable-link" href='#index-lis3dh-1'></a></span></dt>
<dd><p>LIS3DH 3 degrees sensor
</p></dd></dl>
<h4 class="subheading" id="Methods-17">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-lis3dh_0028arObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">lis3dh(<var class="var">arObj</var>)</strong><a class="copiable-link" href='#index-lis3dh_0028arObj_0029'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-lis3dh_0028arObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">lis3dh(<var class="var">arObj</var>,</strong> <code class="def-code-arguments"><var class="var">propertyname, propertyvalue</var> ....)</code><a class="copiable-link" href='#index-lis3dh_0028arObj_002c'></a></span></dt>
<dd><p>Constructor to create LIS3DH sensor
</p><h4 class="subsubheading" id="Inputs-167">Inputs</h4>
<p><var class="var">arObj</var> - the arduino parent object
</p>
<p><var class="var">propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 Current properties are:
</p><dl class="table">
<dt>I2CAddress</dt>
<dd><p>I2C address of the sensor (default 0x40)
</p></dd>
<dt>Bus</dt>
<dd><p>I2C bus  - 0 or 1 (default 0)
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-130">Outputs</h4>
<p><var class="var">obj</var> - created object
</p>
<h4 class="subsubheading" id="Example-32">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 sensor = lis3dh(a)
 </code>
</pre></div>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readAcceleration_0028obj_0029-1"><span class="category-def">: </span><span><code class="def-type">[<var class="var">readVal</var>, <var class="var">timestamp</var>] =</code> <strong class="def-name">readAcceleration(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-readAcceleration_0028obj_0029-1'></a></span></dt>
<dd><p>Read the acceleration rate
</p>
<h4 class="subsubheading" id="Inputs-168">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-131">Outputs</h4>
<p><var class="var">readVal</var> - the 3 acceleration values
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-read_0028obj_0029-5"><span class="category-def">: </span><span><code class="def-type">[<var class="var">readings</var>, <var class="var">overrun</var>] =</code> <strong class="def-name">read(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-read_0028obj_0029-5'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-read_0028obj_0029-6"><span class="category-def">: </span><span><code class="def-type">[<var class="var">accel</var>, <var class="var">timestamp</var>, <var class="var">overrun</var>] =</code> <strong class="def-name">read(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-read_0028obj_0029-6'></a></span></dt>
<dd><p>Read the sensor data
</p>
<h4 class="subsubheading" id="Inputs-169">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-132">Outputs</h4>
<p><var class="var">accel</var> - acceleration reading from sensor.
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p>
<p><var class="var">overrun</var> - overrun flag.
</p>
<p><var class="var">readings</var> - table structure with fields for Timestamp, Acceleration.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-info_0028obj_0029-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">inf</var> =</code> <strong class="def-name">info(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-info_0028obj_0029-2'></a></span></dt>
<dd><p>Read the sensor info
</p>
<h4 class="subsubheading" id="Inputs-170">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-133">Outputs</h4>
<p><var class="var">inf</var> - structure containing the sensor information.
</p>
<p>Structure fields are:
</p><dl class="table">
<dt>SensorId</dt>
<dd><p>sensor id value
</p></dd>
<dt>Type</dt>
<dd><p>sensor type &rsquo;lis3dh&rsquo;
</p></dd>
<dt>Status</dt>
<dd><p>sensor status value
</p></dd>
</dl>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-flush_0028obj_0029-2"><span class="category-def">: </span><span><strong class="def-name">flush(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-flush_0028obj_0029-2'></a></span></dt>
<dd><p>Flush sensor data
</p>
<h4 class="subsubheading" id="Inputs-171">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-134">Outputs</h4>
<p>None
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-release_0028obj_0029-2"><span class="category-def">: </span><span><strong class="def-name">release(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-release_0028obj_0029-2'></a></span></dt>
<dd><p>Release the resources of the sensor
</p>
<h4 class="subsubheading" id="Inputs-172">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-135">Outputs</h4>
<p>None
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="lps22hb">
<h4 class="subsection">9.15.4 lps22hb</h4>
<a class="index-entry-id" id="index-lps22hb"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-lps22hb-1"><span class="category-def">: </span><span><strong class="def-name">lps22hb</strong><a class="copiable-link" href='#index-lps22hb-1'></a></span></dt>
<dd><p>LPS22HB absolute pressure and temperature sensor
</p></dd></dl>
<h4 class="subheading" id="Methods-18">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-lps22hb_0028arObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">lps22hb(<var class="var">arObj</var>)</strong><a class="copiable-link" href='#index-lps22hb_0028arObj_0029'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-lps22hb_0028arObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">lps22hb(<var class="var">arObj</var>,</strong> <code class="def-code-arguments"><var class="var">propertyname, propertyvalue</var> ....)</code><a class="copiable-link" href='#index-lps22hb_0028arObj_002c'></a></span></dt>
<dd><p>Constructor to create LPS22HB sensor
</p><h4 class="subsubheading" id="Inputs-173">Inputs</h4>
<p><var class="var">arObj</var> - the arduino parent object
</p>
<p><var class="var">propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 Current properties are:
</p><dl class="table">
<dt>I2CAddress</dt>
<dd><p>I2C address of the sensor (default 0x5C)
</p></dd>
<dt>Bus</dt>
<dd><p>I2C bus  - 0 or 1 (default 0)
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-136">Outputs</h4>
<p><var class="var">obj</var> - created object
</p>
<h4 class="subsubheading" id="Example-33">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 sensor = lps22hb(a)
 </code>
</pre></div>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readTemperature_0028obj_0029-2"><span class="category-def">: </span><span><code class="def-type">[<var class="var">C</var>, <var class="var">timestamp</var>] =</code> <strong class="def-name">readTemperature(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-readTemperature_0028obj_0029-2'></a></span></dt>
<dd><p>Read the temperature
</p>
<h4 class="subsubheading" id="Inputs-174">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-137">Outputs</h4>
<p><var class="var">C</var> - read temperature in deg C.
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p>
<h4 class="subsubheading" id="Example-34">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 s = lps22hb(a)
 # get temp
 temp = s.readTemperature
 </code>
</pre></div>
<p><strong class="strong">See also:</strong> lps22hb.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readPressure_0028obj_0029-1"><span class="category-def">: </span><span><code class="def-type">[<var class="var">P</var>, <var class="var">timestamp</var>] =</code> <strong class="def-name">readPressure(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-readPressure_0028obj_0029-1'></a></span></dt>
<dd><p>Read the pressure
</p>
<h4 class="subsubheading" id="Inputs-175">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-138">Outputs</h4>
<p><var class="var">P</var> - pressure reading from sensor.
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-read_0028obj_0029-7"><span class="category-def">: </span><span><code class="def-type">[<var class="var">readings</var>, <var class="var">overrun</var>] =</code> <strong class="def-name">read(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-read_0028obj_0029-7'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-read_0028obj_0029-8"><span class="category-def">: </span><span><code class="def-type">[<var class="var">P</var>, <var class="var">C</var>, <var class="var">timestamp</var>, <var class="var">overrun</var>] =</code> <strong class="def-name">read(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-read_0028obj_0029-8'></a></span></dt>
<dd><p>Read the sensor data
</p>
<h4 class="subsubheading" id="Inputs-176">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-139">Outputs</h4>
<p><var class="var">P</var> - pressure reading from sensor.
</p>
<p><var class="var">C</var> - temperature reading from sensor.
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p>
<p><var class="var">overrun</var> - overrun flag.
</p>
<p><var class="var">readings</var> - table structure with fields for Timestamp, Pressure, Temperature and Humidity.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-info_0028obj_0029-3"><span class="category-def">: </span><span><code class="def-type"><var class="var">inf</var> =</code> <strong class="def-name">info(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-info_0028obj_0029-3'></a></span></dt>
<dd><p>Read the sensor info
</p>
<h4 class="subsubheading" id="Inputs-177">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-140">Outputs</h4>
<p><var class="var">inf</var> - structure containing the sensor information.
</p>
<p>Structure fields are:
</p><dl class="table">
<dt>Version</dt>
<dd><p>Chip firmware version
</p></dd>
<dt>SensorId</dt>
<dd><p>sensor id value
</p></dd>
<dt>Type</dt>
<dd><p>sensor type &rsquo;lps22hb&rsquo;
</p></dd>
<dt>Status</dt>
<dd><p>Status value read from sensor
</p></dd>
</dl>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-flush_0028obj_0029-3"><span class="category-def">: </span><span><strong class="def-name">flush(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-flush_0028obj_0029-3'></a></span></dt>
<dd><p>Flush sensor data
</p>
<h4 class="subsubheading" id="Inputs-178">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-141">Outputs</h4>
<p>None
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-release_0028obj_0029-3"><span class="category-def">: </span><span><strong class="def-name">release(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-release_0028obj_0029-3'></a></span></dt>
<dd><p>Release the resources of the sensor
</p>
<h4 class="subsubheading" id="Inputs-179">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-142">Outputs</h4>
<p>None
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="lsm6dso">
<h4 class="subsection">9.15.5 lsm6dso</h4>
<a class="index-entry-id" id="index-lsm6dso"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-lsm6dso-1"><span class="category-def">: </span><span><strong class="def-name">lsm6dso</strong><a class="copiable-link" href='#index-lsm6dso-1'></a></span></dt>
<dd><p>LSM6DSO 6 degrees sensor
</p></dd></dl>
<h4 class="subheading" id="Methods-19">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-lsm6dso_0028arObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">lsm6dso(<var class="var">arObj</var>)</strong><a class="copiable-link" href='#index-lsm6dso_0028arObj_0029'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-lsm6dso_0028arObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">lsm6dso(<var class="var">arObj</var>,</strong> <code class="def-code-arguments"><var class="var">propertyname, propertyvalue</var> ....)</code><a class="copiable-link" href='#index-lsm6dso_0028arObj_002c'></a></span></dt>
<dd><p>Constructor to create LSM6DSO sensor
</p><h4 class="subsubheading" id="Inputs-180">Inputs</h4>
<p><var class="var">arObj</var> - the arduino parent object
</p>
<p><var class="var">propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 Current properties are:
</p><dl class="table">
<dt>I2CAddress</dt>
<dd><p>I2C address of the sensor (default 0x40)
</p></dd>
<dt>Bus</dt>
<dd><p>I2C bus  - 0 or 1 (default 0)
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-143">Outputs</h4>
<p><var class="var">obj</var> - created object
</p>
<h4 class="subsubheading" id="Example-35">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 sensor = lsm6dso(a)
 </code>
</pre></div>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readTemperature_0028obj_0029-3"><span class="category-def">: </span><span><code class="def-type">[<var class="var">C</var>, <var class="var">timestamp</var>] =</code> <strong class="def-name">readTemperature(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-readTemperature_0028obj_0029-3'></a></span></dt>
<dd><p>Read the temperature
</p>
<h4 class="subsubheading" id="Inputs-181">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-144">Outputs</h4>
<p><var class="var">C</var> - read temperature in deg C.
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p>
<h4 class="subsubheading" id="Example-36">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 s = lsm6dso(a)
 # get temp
 temp = s.readTemperature
 </code>
</pre></div>
<p><strong class="strong">See also:</strong> lsm6dso.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readAcceleration_0028obj_0029-2"><span class="category-def">: </span><span><code class="def-type">[<var class="var">readVal</var>, <var class="var">timestamp</var>] =</code> <strong class="def-name">readAcceleration(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-readAcceleration_0028obj_0029-2'></a></span></dt>
<dd><p>Read the acceleration rate
</p>
<h4 class="subsubheading" id="Inputs-182">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-145">Outputs</h4>
<p><var class="var">readVal</var> - the 3 acceleration values
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readAngularVelocity_0028obj_0029-1"><span class="category-def">: </span><span><code class="def-type">[<var class="var">readVal</var>, <var class="var">timestamp</var>] =</code> <strong class="def-name">readAngularVelocity(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-readAngularVelocity_0028obj_0029-1'></a></span></dt>
<dd><p>Read the angular velocity
</p>
<h4 class="subsubheading" id="Inputs-183">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-146">Outputs</h4>
<p><var class="var">readVal</var> - the 3 angular velocity values
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-read_0028obj_0029-9"><span class="category-def">: </span><span><code class="def-type">[<var class="var">readings</var>, <var class="var">overrun</var>] =</code> <strong class="def-name">read(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-read_0028obj_0029-9'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-read_0028obj_0029-10"><span class="category-def">: </span><span><code class="def-type">[<var class="var">accel</var>, <var class="var">gyro</var>, <var class="var">mag</var>, <var class="var">timestamp</var>, <var class="var">overrun</var>] =</code> <strong class="def-name">read(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-read_0028obj_0029-10'></a></span></dt>
<dd><p>Read the sensor data
</p>
<h4 class="subsubheading" id="Inputs-184">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-147">Outputs</h4>
<p><var class="var">accel</var> - acceleration reading from sensor.
</p>
<p><var class="var">gyro</var> - angular acceleration reading from sensor.
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p>
<p><var class="var">overrun</var> - overrun flag.
</p>
<p><var class="var">readings</var> - table structure with fields for Timestamp, Acceleration, AngularVelocity.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-info_0028obj_0029-4"><span class="category-def">: </span><span><code class="def-type"><var class="var">inf</var> =</code> <strong class="def-name">info(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-info_0028obj_0029-4'></a></span></dt>
<dd><p>Read the sensor info
</p>
<h4 class="subsubheading" id="Inputs-185">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-148">Outputs</h4>
<p><var class="var">inf</var> - structure containing the sensor information.
</p>
<p>Structure fields are:
</p><dl class="table">
<dt>SensorId</dt>
<dd><p>sensor id value
</p></dd>
<dt>Type</dt>
<dd><p>sensor type &rsquo;lsm6dso&rsquo;
</p></dd>
</dl>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-flush_0028obj_0029-4"><span class="category-def">: </span><span><strong class="def-name">flush(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-flush_0028obj_0029-4'></a></span></dt>
<dd><p>Flush sensor data
</p>
<h4 class="subsubheading" id="Inputs-186">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-149">Outputs</h4>
<p>None
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-release_0028obj_0029-4"><span class="category-def">: </span><span><strong class="def-name">release(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-release_0028obj_0029-4'></a></span></dt>
<dd><p>Release the resources of the sensor
</p>
<h4 class="subsubheading" id="Inputs-187">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-150">Outputs</h4>
<p>None
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="mpu6050">
<h4 class="subsection">9.15.6 mpu6050</h4>
<a class="index-entry-id" id="index-mpu6050"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-mpu6050-1"><span class="category-def">: </span><span><strong class="def-name">mpu6050</strong><a class="copiable-link" href='#index-mpu6050-1'></a></span></dt>
<dd><p>MPU-6050 6 degrees sensor
</p></dd></dl>
<h4 class="subheading" id="Methods-20">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-mpu6050_0028arObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">mpu6050(<var class="var">arObj</var>)</strong><a class="copiable-link" href='#index-mpu6050_0028arObj_0029'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-mpu6050_0028arObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">mpu6050(<var class="var">arObj</var>,</strong> <code class="def-code-arguments"><var class="var">propertyname, propertyvalue</var> ....)</code><a class="copiable-link" href='#index-mpu6050_0028arObj_002c'></a></span></dt>
<dd><p>Constructor to create MPU-6050 sensor
</p><h4 class="subsubheading" id="Inputs-188">Inputs</h4>
<p><var class="var">arObj</var> - the arduino parent object
</p>
<p><var class="var">propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 Current properties are:
</p><dl class="table">
<dt>I2CAddress</dt>
<dd><p>I2C address of the sensor (default 0x40)
</p></dd>
<dt>Bus</dt>
<dd><p>I2C bus  - 0 or 1 (default 0)
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-151">Outputs</h4>
<p><var class="var">obj</var> - created object
</p>
<h4 class="subsubheading" id="Example-37">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 sensor = mpu6050(a)
 </code>
</pre></div>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readTemperature_0028obj_0029-4"><span class="category-def">: </span><span><code class="def-type">[<var class="var">C</var>, <var class="var">timestamp</var>] =</code> <strong class="def-name">readTemperature(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-readTemperature_0028obj_0029-4'></a></span></dt>
<dd><p>Read the temperature
</p>
<h4 class="subsubheading" id="Inputs-189">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-152">Outputs</h4>
<p><var class="var">C</var> - read temperature in deg C.
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p>
<h4 class="subsubheading" id="Example-38">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 s = mpu6050(a)
 # get temp
 temp = s.readTemperature
 </code>
</pre></div>
<p><strong class="strong">See also:</strong> mpu6050.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readAcceleration_0028obj_0029-3"><span class="category-def">: </span><span><code class="def-type">[<var class="var">readVal</var>, <var class="var">timestamp</var>] =</code> <strong class="def-name">readAcceleration(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-readAcceleration_0028obj_0029-3'></a></span></dt>
<dd><p>Read the acceleration rate
</p>
<h4 class="subsubheading" id="Inputs-190">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-153">Outputs</h4>
<p><var class="var">readVal</var> - the 3 acceleration values
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readAngularVelocity_0028obj_0029-2"><span class="category-def">: </span><span><code class="def-type">[<var class="var">readVal</var>, <var class="var">timestamp</var>] =</code> <strong class="def-name">readAngularVelocity(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-readAngularVelocity_0028obj_0029-2'></a></span></dt>
<dd><p>Read the angular velocity
</p>
<h4 class="subsubheading" id="Inputs-191">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-154">Outputs</h4>
<p><var class="var">readVal</var> - the 3 angular velocity values
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-read_0028obj_0029-11"><span class="category-def">: </span><span><code class="def-type">[<var class="var">readings</var>, <var class="var">overrun</var>] =</code> <strong class="def-name">read(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-read_0028obj_0029-11'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-read_0028obj_0029-12"><span class="category-def">: </span><span><code class="def-type">[<var class="var">accel</var>, <var class="var">gyro</var>, <var class="var">mag</var>, <var class="var">timestamp</var>, <var class="var">overrun</var>] =</code> <strong class="def-name">read(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-read_0028obj_0029-12'></a></span></dt>
<dd><p>Read the sensor data
</p>
<h4 class="subsubheading" id="Inputs-192">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-155">Outputs</h4>
<p><var class="var">accel</var> - acceleration reading from sensor.
</p>
<p><var class="var">gyro</var> - angular acceleration reading from sensor.
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p>
<p><var class="var">overrun</var> - overrun flag.
</p>
<p><var class="var">readings</var> - table structure with fields for Timestamp, Acceleration, AngularVelocity.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-info_0028obj_0029-5"><span class="category-def">: </span><span><code class="def-type"><var class="var">inf</var> =</code> <strong class="def-name">info(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-info_0028obj_0029-5'></a></span></dt>
<dd><p>Read the sensor info
</p>
<h4 class="subsubheading" id="Inputs-193">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-156">Outputs</h4>
<p><var class="var">inf</var> - structure containing the sensor information.
</p>
<p>Structure fields are:
</p><dl class="table">
<dt>SensorId</dt>
<dd><p>sensor id value
</p></dd>
<dt>Type</dt>
<dd><p>sensor type &rsquo;mpu6050&rsquo;
</p></dd>
</dl>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-flush_0028obj_0029-5"><span class="category-def">: </span><span><strong class="def-name">flush(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-flush_0028obj_0029-5'></a></span></dt>
<dd><p>Flush sensor data
</p>
<h4 class="subsubheading" id="Inputs-194">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-157">Outputs</h4>
<p>None
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-release_0028obj_0029-5"><span class="category-def">: </span><span><strong class="def-name">release(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-release_0028obj_0029-5'></a></span></dt>
<dd><p>Release the resources of the sensor
</p>
<h4 class="subsubheading" id="Inputs-195">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-158">Outputs</h4>
<p>None
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="si7021">
<h4 class="subsection">9.15.7 si7021</h4>
<a class="index-entry-id" id="index-si7021"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-si7021-1"><span class="category-def">: </span><span><strong class="def-name">si7021</strong><a class="copiable-link" href='#index-si7021-1'></a></span></dt>
<dd><p>SI7021 temperature and humidity sensor
</p></dd></dl>
<h4 class="subheading" id="Methods-21">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-si7021_0028arObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">si7021(<var class="var">arObj</var>)</strong><a class="copiable-link" href='#index-si7021_0028arObj_0029'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-si7021_0028arObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">si7021(<var class="var">arObj</var>,</strong> <code class="def-code-arguments"><var class="var">propertyname, propertyvalue</var> ....)</code><a class="copiable-link" href='#index-si7021_0028arObj_002c'></a></span></dt>
<dd><p>Constructor to create si7021 sensor
</p><h4 class="subsubheading" id="Inputs-196">Inputs</h4>
<p><var class="var">arObj</var> - the arduino parent object
</p>
<p><var class="var">propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 Current properties are:
</p><dl class="table">
<dt>I2Caddress</dt>
<dd><p>I2C address of the si7021 (default 0x40)
</p></dd>
<dt>Bus</dt>
<dd><p>I2C bus (default 0)
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-159">Outputs</h4>
<p><var class="var">obj</var> - created SI7020 object
</p>
<h4 class="subsubheading" id="Example-39">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 sensor = si7021(a)
 </code>
</pre></div>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readTemperature_0028obj_0029-5"><span class="category-def">: </span><span><code class="def-type">[<var class="var">C</var>, <var class="var">timestamp</var>] =</code> <strong class="def-name">readTemperature(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-readTemperature_0028obj_0029-5'></a></span></dt>
<dd><p>Read the temperature
</p>
<h4 class="subsubheading" id="Inputs-197">Inputs</h4>
<p><var class="var">obj</var> - the si7021 object
</p>
<h4 class="subsubheading" id="Outputs-160">Outputs</h4>
<p><var class="var">C</var> - read temperature in deg C.
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p>
<h4 class="subsubheading" id="Example-40">Example</h4>
<div class="example">
<pre class="example-preformatted"><code class="code">
 a = arduino()
 s = si7021(a)
 # get temp
 temp = s.readTemperature()
 </code>
</pre></div>
<p><strong class="strong">See also:</strong> si7021.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readHumidity_0028obj_0029-1"><span class="category-def">: </span><span><code class="def-type">[<var class="var">relH</var>, <var class="var">timestamp</var>] =</code> <strong class="def-name">readHumidity(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-readHumidity_0028obj_0029-1'></a></span></dt>
<dd><p>Read the relative humidity
</p>
<h4 class="subsubheading" id="Inputs-198">Inputs</h4>
<p><var class="var">obj</var> - the si7021 object
</p>
<h4 class="subsubheading" id="Outputs-161">Outputs</h4>
<p><var class="var">relH</var> - relative humidity as a percentage (0 - 100.0)
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-read_0028obj_0029-13"><span class="category-def">: </span><span><code class="def-type">[<var class="var">readings</var>, <var class="var">overrun</var>] =</code> <strong class="def-name">read(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-read_0028obj_0029-13'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-read_0028obj_0029-14"><span class="category-def">: </span><span><code class="def-type">[<var class="var">H</var>, <var class="var">C</var>, <var class="var">timestamp</var>, <var class="var">overrun</var>] =</code> <strong class="def-name">read(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-read_0028obj_0029-14'></a></span></dt>
<dd><p>Read the sensor data
</p>
<h4 class="subsubheading" id="Inputs-199">Inputs</h4>
<p><var class="var">obj</var> - the si2071 sensor object
</p>
<h4 class="subsubheading" id="Outputs-162">Outputs</h4>
<p><var class="var">H</var> - humidity reading from sensor.
</p>
<p><var class="var">C</var> - temperature reading from sensor.
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p>
<p><var class="var">overrun</var> - overrun flag.
</p>
<p><var class="var">readings</var> - table structure with fields for Timestamp, Temperature and Humidity.
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-info_0028dsObj_0029-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">relH</var> =</code> <strong class="def-name">info(<var class="var">dsObj</var>)</strong><a class="copiable-link" href='#index-info_0028dsObj_0029-1'></a></span></dt>
<dd><p>Read the sensor info
</p>
<h4 class="subsubheading" id="Inputs-200">Inputs</h4>
<p><var class="var">dsObj</var> - the si7021 object
</p>
<h4 class="subsubheading" id="Outputs-163">Outputs</h4>
<p><var class="var">inf</var> - structure containing the sensor information.
</p>
<p>Structure fields are:
</p><dl class="table">
<dt>Version</dt>
<dd><p>Chip firmware version
</p></dd>
<dt>SensorDd</dt>
<dd><p>sensor id value
</p></dd>
<dt>Type</dt>
<dd><p>String for detected chip type
</p></dd>
</dl>
</dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-flush_0028obj_0029-6"><span class="category-def">: </span><span><strong class="def-name">flush(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-flush_0028obj_0029-6'></a></span></dt>
<dd><p>Flush sensor data
</p>
<h4 class="subsubheading" id="Inputs-201">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-164">Outputs</h4>
<p>None
</p></dd></dl>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-release_0028obj_0029-6"><span class="category-def">: </span><span><strong class="def-name">release(<var class="var">obj</var>)</strong><a class="copiable-link" href='#index-release_0028obj_0029-6'></a></span></dt>
<dd><p>Release the resources of the sensor
</p>
<h4 class="subsubheading" id="Inputs-202">Inputs</h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-165">Outputs</h4>
<p>None
</p></dd></dl>
<hr>
</div>
</div>
<div class="section-level-extent" id="Test-Functions">
<div class="nav-panel">
<p>
Previous: <a href="#Sensors" accesskey="p" rel="prev">Sensors</a>, Up: <a href="#Function-Reference" accesskey="u" rel="up">Function Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Test-Functions-1">9.16 Test Functions</h3>
<a class="index-entry-id" id="index-Test-Functions"></a>
<ul class="mini-toc">
<li><a href="#arduino_005fbistsetup" accesskey="1">arduino_bistsetup</a></li>
</ul>
<div class="subsection-level-extent" id="arduino_005fbistsetup">
<h4 class="subsection">9.16.1 arduino_bistsetup</h4>
<a class="index-entry-id" id="index-arduino_005fbistsetup"></a>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-arduino_005fbistsetup-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">arduino_bistsetup</strong> <code class="def-code-arguments">()</code><a class="copiable-link" href='#index-arduino_005fbistsetup-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-arduino_005fbistsetup-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">arduino_bistsetup</strong> <code class="def-code-arguments">(<var class="var">propertyname</var>, <var class="var">propertyvalue</var>)</code><a class="copiable-link" href='#index-arduino_005fbistsetup-2'></a></span></dt>
<dd><p>Install on an arduino the required core libraries to run the BIST tests
</p>
<p>As part of the setup, the arduino IDE will be opened to allow programming
 the arduino board.
</p>
<h4 class="subsubheading" id="Inputs-203">Inputs</h4>
<p><var class="var">propertyname</var>, <var class="var">propertyvalue</var> - A sequence of property name/value pairs can be given
 to set defaults while programming.
</p>
<p>Currently the following properties can be set:
</p><dl class="table">
<dt>arduinobinary</dt>
<dd><p>The value should be the name/path of the arduino IDE binary for programming. If not specified,
 the function will attempt to find the binary itself.
</p></dd>
<dt>debug</dt>
<dd><p>Set the debug flag when checking the arduino
</p></dd>
</dl>
<h4 class="subsubheading" id="Outputs-166">Outputs</h4>
<p><var class="var">retval</var> - return 1 if everything installed ok
</p>
<p><strong class="strong">See also:</strong> arduino, arduinosetup.
</p></dd></dl>
<hr>
</div>
</div>
</div>
<div class="appendix-level-extent" id="Copying">
<div class="nav-panel">
<p>
Next: <a href="#Index" accesskey="n" rel="next">Index</a>, Previous: <a href="#Function-Reference" accesskey="p" rel="prev">Function Reference</a>, Up: <a href="#Top" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="appendix" id="GNU-General-Public-License">Appendix A GNU General Public License</h2>
<a class="index-entry-id" id="index-warranty"></a>
<a class="index-entry-id" id="index-copyright"></a>
<div class="center">Version 3, 29 June 2007
</div>
<div class="display">
<pre class="display-preformatted">Copyright &copy; 2007 Free Software Foundation, Inc. <a class="url" href="http://fsf.org/">http://fsf.org/</a>
Everyone is permitted to copy and distribute verbatim copies of this
license document, but changing it is not allowed.
</pre></div>
<h3 class="heading" id="Preamble">Preamble</h3>
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
<h3 class="heading" id="TERMS-AND-CONDITIONS">TERMS AND CONDITIONS</h3>
<ol class="enumerate" start="0">
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
<ol class="enumerate" type="a" start="1">
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
<ol class="enumerate" type="a" start="1">
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
<ol class="enumerate" type="a" start="1">
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
<h3 class="heading" id="END-OF-TERMS-AND-CONDITIONS">END OF TERMS AND CONDITIONS</h3>
<h3 class="heading" id="How-to-Apply-These-Terms-to-Your-New-Programs">How to Apply These Terms to Your New Programs</h3>
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
<div class="example smallexample">
<pre class="example-preformatted"><var class="var">one line to give the program's name and a brief idea of what it does.</var>  
Copyright (C) <var class="var">year</var> <var class="var">name of author</var>
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or (at
your option) any later version.
This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.
You should have received a copy of the GNU General Public License
along with this program.  If not, see <a class="url" href="http://www.gnu.org/licenses/">http://www.gnu.org/licenses/</a>.
</pre></div>
<p>Also add information on how to contact you by electronic and paper mail.
</p>
<p>If the program does terminal interaction, make it output a short
notice like this when it starts in an interactive mode:
</p>
<div class="example smallexample">
<pre class="example-preformatted"><var class="var">program</var> Copyright (C) <var class="var">year</var> <var class="var">name of author</var> 
This program comes with ABSOLUTELY NO WARRANTY; for details type &lsquo;<samp class="samp">show w</samp>&rsquo;.
This is free software, and you are welcome to redistribute it
under certain conditions; type &lsquo;<samp class="samp">show c</samp>&rsquo; for details.
</pre></div>
<p>The hypothetical commands &lsquo;<samp class="samp">show w</samp>&rsquo; and &lsquo;<samp class="samp">show c</samp>&rsquo; should show
the appropriate parts of the General Public License.  Of course, your
program&rsquo;s commands might be different; for a GUI interface, you would
use an &ldquo;about box&rdquo;.
</p>
<p>You should also get your employer (if you work as a programmer) or school,
if any, to sign a &ldquo;copyright disclaimer&rdquo; for the program, if necessary.
For more information on this, and how to apply and follow the GNU GPL, see
<a class="url" href="http://www.gnu.org/licenses/">http://www.gnu.org/licenses/</a>.
</p>
<p>The GNU General Public License does not permit incorporating your
program into proprietary programs.  If your program is a subroutine
library, you may consider it more useful to permit linking proprietary
applications with the library.  If this is what you want to do, use
the GNU Lesser General Public License instead of this License.  But
first, please read <a class="url" href="http://www.gnu.org/philosophy/why-not-lgpl.html">http://www.gnu.org/philosophy/why-not-lgpl.html</a>.
</p>
<hr>
</div>
<div class="unnumbered-level-extent" id="Index">
<div class="nav-panel">
<p>
Previous: <a href="#Copying" accesskey="p" rel="prev">GNU General Public License</a>, Up: <a href="#Top" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="unnumbered" id="Index-1">Index</h2>
 
<div class="printindex cp-printindex">
<table class="cp-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#Index_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-E"><b>E</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-G"><b>G</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-H"><b>H</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-I"><b>I</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-K"><b>K</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-L"><b>L</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-M"><b>M</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-O"><b>O</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-P"><b>P</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-Q"><b>Q</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-R"><b>R</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-U"><b>U</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-V"><b>V</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-W"><b>W</b></a>
 &nbsp; 
</td></tr></table>
<table class="cp-entries-printindex" border="0">
<tr><td></td><th class="entries-header-printindex">Index Entry</th><td>&nbsp;</td><th class="sections-header-printindex"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-A">A</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-addon">addon</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Addons">Arduino Addons</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Addon-Introduction">Addon Introduction</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Addons-Overview">Addons Overview</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Addon-package-_002em-file">Addon package .m file</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Addons-Overview">Addons Overview</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Addon-package-directory">Addon package directory</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Addons-Overview">Addons Overview</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Addon-package-header-file">Addon package header file</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Addons-Overview">Addons Overview</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-AddonBase">AddonBase</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-I_002fO-package">Arduino I/O package</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Addons-Overview">Addons Overview</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Addons-Overview">Addons Overview</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-arduino">arduino</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Arduino-Addons">Arduino Addons</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Addons">Arduino Addons</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Arduino-Device-Functions">Arduino Device Functions</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Device-Functions">Arduino Device Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Arduino-Functions">Arduino Functions</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Arduino-I_002fO-package">Arduino I/O package</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-I_002fO-package">Arduino I/O package</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Arduino-I2C-Functions">Arduino I2C Functions</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Arduino-Rotary-Encoder-Functions">Arduino Rotary Encoder Functions</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Rotary-Encoder-Functions">Arduino Rotary Encoder Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Arduino-Sensor">Arduino Sensor</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Sensors-Overview">Sensors Overview</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Arduino-Sensors">Arduino Sensors</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Sensors">Arduino Sensors</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Arduino-Serial-Functions">Arduino Serial Functions</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Serial-Functions">Arduino Serial Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Arduino-Servo-Functions">Arduino Servo Functions</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Servo-Functions">Arduino Servo Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Arduino-Shiftregister-Functions">Arduino Shiftregister Functions</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Shiftregister-Functions">Arduino Shiftregister Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Arduino-SPI-Functions">Arduino SPI Functions</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-SPI-Functions">Arduino SPI Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Arduino-Ultrasonic-Functions">Arduino Ultrasonic Functions</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Ultrasonic-Functions">Arduino Ultrasonic Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-arduinosetup">arduinosetup</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#General-Functions">General Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-arduino_005fbistsetup">arduino_bistsetup</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Test-Functions">Test Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Available-Sensors">Available Sensors</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Sensors-Overview">Sensors Overview</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Available-Sensors-1">Available Sensors</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Sensors-Overview">Sensors Overview</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-B">B</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Basic-Input-and-Output-Overview">Basic Input and Output Overview</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Basic-Input-and-Output-Overview">Basic Input and Output Overview</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Blinking-an-LED">Blinking an LED</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Examples">Examples</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-bme280">bme280</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Sensors">Sensors</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-bno055">bno055</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Sensors">Sensors</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-C">C</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-checkI2CAddress">checkI2CAddress</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-configurePin">configurePin</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-configurePinResource">configurePinResource</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Connecting-to-a-single-arduino">Connecting to a single arduino</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Connecting-to-an-arduino">Connecting to an arduino</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Connecting-to-a-specific-arduino">Connecting to a specific arduino</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Connecting-to-an-arduino">Connecting to an arduino</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Connecting-to-an-arduino">Connecting to an arduino</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Connecting-to-an-arduino">Connecting to an arduino</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-copyright">copyright</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Copying">Copying</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Creating-a-addon-object">Creating a addon object</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Addons-Overview">Addons Overview</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Creating-an-addon">Creating an addon</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Addons-Overview">Addons Overview</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-D">D</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-dcmotorv2">dcmotorv2</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Addons">Arduino Addons</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-decrementResourceCount">decrementResourceCount</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-delete">delete</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-delete-1">delete</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-delete-2">delete</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-delete-3">delete</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Rotary-Encoder-Functions">Arduino Rotary Encoder Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-delete-4">delete</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Servo-Functions">Arduino Servo Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-delete-5">delete</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Shiftregister-Functions">Arduino Shiftregister Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-delete-6">delete</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-SPI-Functions">Arduino SPI Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-delete-7">delete</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-SPI-Functions">Arduino SPI Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-delete-8">delete</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Serial-Functions">Arduino Serial Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-delete-9">delete</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Device-Functions">Arduino Device Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-delete-10">delete</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Ultrasonic-Functions">Arduino Ultrasonic Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-device">device</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Serial-Functions">Arduino Serial Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-device-1">device</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Device-Functions">Arduino Device Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-disp">disp</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-disp-1">disp</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-disp-2">disp</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-disp-3">disp</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Rotary-Encoder-Functions">Arduino Rotary Encoder Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-disp-4">disp</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Servo-Functions">Arduino Servo Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-disp-5">disp</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Shiftregister-Functions">Arduino Shiftregister Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-disp-6">disp</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-SPI-Functions">Arduino SPI Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-disp-7">disp</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-SPI-Functions">Arduino SPI Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-disp-8">disp</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Serial-Functions">Arduino Serial Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-disp-9">disp</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Device-Functions">Arduino Device Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-disp-10">disp</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Ultrasonic-Functions">Arduino Ultrasonic Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-DS1307">DS1307</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Addons">Arduino Addons</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-DS1307-1">DS1307</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Sensors">Arduino Sensors</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-E">E</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Echo">Echo</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Addons">Arduino Addons</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-EEPRom">EEPRom</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Addons">Arduino Addons</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Examples">Examples</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Examples">Examples</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-F">F</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-FilePath">FilePath</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-I_002fO-package">Arduino I/O package</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-flush">flush</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Serial-Functions">Arduino Serial Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-flush-1">flush</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Device-Functions">Arduino Device Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Function-Reference">Function Reference</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Function-Reference">Function Reference</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-G">G</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-General-Functions">General Functions</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#General-Functions">General Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-getBoardConfig">getBoardConfig</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-I_002fO-package">Arduino I/O package</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-getEndian">getEndian</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-getI2CTerminals">getI2CTerminals</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-getInterruptTerminals">getInterruptTerminals</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-getLEDTerminals">getLEDTerminals</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-getMCU">getMCU</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-getPinAlias">getPinAlias</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-getPinInfo">getPinInfo</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-getPinsFromTerminals">getPinsFromTerminals</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-getPWMTerminals">getPWMTerminals</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-getResourceCount">getResourceCount</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-getResourceOwner">getResourceOwner</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-getServoTerminals">getServoTerminals</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-getSharedResourceProperty">getSharedResourceProperty</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-getSPITerminals">getSPITerminals</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-getTerminalMode">getTerminalMode</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-getTerminalsFromPins">getTerminalsFromPins</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-GUVAS12SD">GUVAS12SD</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Sensors">Arduino Sensors</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-H">H</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Hardware-setup">Hardware setup</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Hardware-setup">Hardware setup</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-I">I</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-I2C-communication">I2C communication</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Protocol-based-I_002fO-Overview">Protocol based I/O Overview</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-i2cdev">i2cdev</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-incrementResourceCount">incrementResourceCount</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Installing-and-loading">Installing and loading</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Installing-and-loading">Installing and loading</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-isarduino">isarduino</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#General-Functions">General Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-isTerminalAnalog">isTerminalAnalog</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-isTerminalDigital">isTerminalDigital</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-K">K</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Known-Arduino-Board-Types">Known Arduino Board Types</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Hardware-setup">Hardware setup</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-L">L</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-LCD">LCD</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Addons">Arduino Addons</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-LibFiles">LibFiles</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-I_002fO-package">Arduino I/O package</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-LibraryBase">LibraryBase</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-I_002fO-package">Arduino I/O package</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-LibraryBase-1">LibraryBase</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Matlab-Compatibility-Classes">Matlab Compatibility Classes</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-lis3dh">lis3dh</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Sensors">Sensors</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-listArduinoLibraries">listArduinoLibraries</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#General-Functions">General Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Loading">Loading</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Installing-and-loading">Installing and loading</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-lps22hb">lps22hb</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Sensors">Sensors</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-lsm6dso">lsm6dso</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Sensors">Sensors</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-M">M</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Matlab-Compatibility-Classes">Matlab Compatibility Classes</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Matlab-Compatibility-Classes">Matlab Compatibility Classes</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Matlab-Compatible-Sensor">Matlab Compatible Sensor</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Sensors-Overview">Sensors Overview</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-motorshieldv2">motorshieldv2</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Addons">Arduino Addons</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-MPC3002">MPC3002</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Sensors">Arduino Sensors</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-mpu6050">mpu6050</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Sensors">Sensors</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-O">O</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Off_002dline-install">Off-line install</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Installing-and-loading">Installing and loading</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Online-install">Online install</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Installing-and-loading">Installing and loading</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-P">P</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Performing-Analog-Input">Performing Analog Input</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Basic-Input-and-Output-Overview">Basic Input and Output Overview</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Performing-Digital-I_002fO">Performing Digital I/O</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Basic-Input-and-Output-Overview">Basic Input and Output Overview</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-playTone">playTone</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Programming-the-Arduino">Programming the Arduino</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Hardware-setup">Hardware setup</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Programming-the-arduino-with-the-addon">Programming the arduino with the addon</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Addons-Overview">Addons Overview</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Protocol-based-I_002fO-Overview">Protocol based I/O Overview</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Protocol-based-I_002fO-Overview">Protocol based I/O Overview</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-Q">Q</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Querying-available-arduinos">Querying available arduinos</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Connecting-to-an-arduino">Connecting to an arduino</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-R">R</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-read">read</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-read-1">read</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-read-2">read</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Shiftregister-Functions">Arduino Shiftregister Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-read-3">read</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Serial-Functions">Arduino Serial Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-read-4">read</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Device-Functions">Arduino Device Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-readAnalogPin">readAnalogPin</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-readCount">readCount</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Rotary-Encoder-Functions">Arduino Rotary Encoder Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-readDigitalPin">readDigitalPin</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-readDistance">readDistance</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Ultrasonic-Functions">Arduino Ultrasonic Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-readEchoTime">readEchoTime</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Ultrasonic-Functions">Arduino Ultrasonic Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-readPosition">readPosition</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Servo-Functions">Arduino Servo Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-readRegister">readRegister</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-readRegister-1">readRegister</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-readRegister-2">readRegister</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Device-Functions">Arduino Device Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-readSpeed">readSpeed</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Rotary-Encoder-Functions">Arduino Rotary Encoder Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-readVoltage">readVoltage</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-reset">reset</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-reset-1">reset</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Shiftregister-Functions">Arduino Shiftregister Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-resetCount">resetCount</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Rotary-Encoder-Functions">Arduino Rotary Encoder Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Rotary-Encoder">Rotary Encoder</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Protocol-based-I_002fO-Overview">Protocol based I/O Overview</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-rotaryEncoder">rotaryEncoder</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Rotary-Encoder-Functions">Arduino Rotary Encoder Functions</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-S">S</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-scanForArduinos">scanForArduinos</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#General-Functions">General Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-scanI2Cbus">scanI2Cbus</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-sendCommand">sendCommand</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Sensors">Sensors</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Sensors">Sensors</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Sensors-Overview">Sensors Overview</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Sensors-Overview">Sensors Overview</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Serial-communication">Serial communication</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Protocol-based-I_002fO-Overview">Protocol based I/O Overview</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-servo">servo</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Servo-Functions">Arduino Servo Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Servo-communication">Servo communication</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Protocol-based-I_002fO-Overview">Protocol based I/O Overview</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-setSharedResourceProperty">setSharedResourceProperty</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Shift-Registers">Shift Registers</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Protocol-based-I_002fO-Overview">Protocol based I/O Overview</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-shiftRegister">shiftRegister</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Shiftregister-Functions">Arduino Shiftregister Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-SI7021">SI7021</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Sensors">Arduino Sensors</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-si7021">si7021</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Sensors">Sensors</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-SimpleStepper">SimpleStepper</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Addons">Arduino Addons</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-SPI-communication">SPI communication</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Protocol-based-I_002fO-Overview">Protocol based I/O Overview</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-spidev">spidev</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-SPI-Functions">Arduino SPI Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-stepper">stepper</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Addons">Arduino Addons</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-subsref">subsref</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-subsref-1">subsref</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-subsref-2">subsref</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Rotary-Encoder-Functions">Arduino Rotary Encoder Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-subsref-3">subsref</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Servo-Functions">Arduino Servo Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-subsref-4">subsref</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Shiftregister-Functions">Arduino Shiftregister Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-subsref-5">subsref</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-SPI-Functions">Arduino SPI Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-subsref-6">subsref</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-SPI-Functions">Arduino SPI Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-subsref-7">subsref</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Serial-Functions">Arduino Serial Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-subsref-8">subsref</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Device-Functions">Arduino Device Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-subsref-9">subsref</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Ultrasonic-Functions">Arduino Ultrasonic Functions</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-T">T</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Test-Functions">Test Functions</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Test-Functions">Test Functions</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-U">U</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-ultrasonic">ultrasonic</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Ultrasonic-Functions">Arduino Ultrasonic Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Ultrasonic-Sensors">Ultrasonic Sensors</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Protocol-based-I_002fO-Overview">Protocol based I/O Overview</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-uptime">uptime</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Using-Addons">Using Addons</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Addons-Overview">Addons Overview</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Using-I2C-to-communicate-with-an-EEPROM">Using I2C to communicate with an EEPROM</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Examples">Examples</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Using-SPI-to-communicate-with-a-mcp3002-10-bit-ADC">Using SPI to communicate with a mcp3002 10 bit ADC</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Examples">Examples</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-V">V</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-validatePin">validatePin</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Verify-octave-can-see-the-addon">Verify octave can see the addon</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Addons-Overview">Addons Overview</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-version">version</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Index_cp_letter-W">W</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-warranty">warranty</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Copying">Copying</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-write">write</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-write-1">write</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-write-2">write</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Shiftregister-Functions">Arduino Shiftregister Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-write-3">write</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Serial-Functions">Arduino Serial Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-write-4">write</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Device-Functions">Arduino Device Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-writeDigitalPin">writeDigitalPin</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-writePosition">writePosition</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Servo-Functions">Arduino Servo Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-writePWMDutyCycle">writePWMDutyCycle</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-writePWMVoltage">writePWMVoltage</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Functions">Arduino Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-writeRead">writeRead</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-SPI-Functions">Arduino SPI Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-writeRead-1">writeRead</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-SPI-Functions">Arduino SPI Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-writeRead-2">writeRead</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Device-Functions">Arduino Device Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-writeRegister">writeRegister</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-writeRegister-1">writeRegister</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-I2C-Functions">Arduino I2C Functions</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-writeRegister-2">writeRegister</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Arduino-Device-Functions">Arduino Device Functions</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
<table class="cp-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#Index_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-E"><b>E</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-G"><b>G</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-H"><b>H</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-I"><b>I</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-K"><b>K</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-L"><b>L</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-M"><b>M</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-O"><b>O</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-P"><b>P</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-Q"><b>Q</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-R"><b>R</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-U"><b>U</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-V"><b>V</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-W"><b>W</b></a>
 &nbsp; 
</td></tr></table>
</div>
 
</div>
</div>
