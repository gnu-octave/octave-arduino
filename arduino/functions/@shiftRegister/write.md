---
layout: "default"
permalink: "/functions/@shiftRegister/20_shiftRegisterwrite/"
pkg_name: "arduino"
pkg_version: "0.11.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @shiftRegister/write"
category: "Arduino Shiftregister Functions"
func_name: "@shiftRegister/write"
navigation:
- id: "overview"
  name: "Overview"
  url: "/index"
- id: "Functions"
  name: "Function Reference"
  url: "/functions"
- id: "17_GeneralFunctions"
  name: "&nbsp;&nbsp;General Functions"
  url: "/functions/#17_GeneralFunctions"
- id: "17_ArduinoFunctions"
  name: "&nbsp;&nbsp;Arduino Functions"
  url: "/functions/#17_ArduinoFunctions"
- id: "21_ArduinoI2CFunctions"
  name: "&nbsp;&nbsp;Arduino I2C Functions"
  url: "/functions/#21_ArduinoI2CFunctions"
- id: "32_ArduinoRotaryEncoderFunctions"
  name: "&nbsp;&nbsp;Arduino Rotary Encoder Functions"
  url: "/functions/#32_ArduinoRotaryEncoderFunctions"
- id: "23_ArduinoServoFunctions"
  name: "&nbsp;&nbsp;Arduino Servo Functions"
  url: "/functions/#23_ArduinoServoFunctions"
- id: "31_ArduinoShiftregisterFunctions"
  name: "&nbsp;&nbsp;Arduino Shiftregister Functions"
  url: "/functions/#31_ArduinoShiftregisterFunctions"
- id: "21_ArduinoSPIFunctions"
  name: "&nbsp;&nbsp;Arduino SPI Functions"
  url: "/functions/#21_ArduinoSPIFunctions"
- id: "24_ArduinoSerialFunctions"
  name: "&nbsp;&nbsp;Arduino Serial Functions"
  url: "/functions/#24_ArduinoSerialFunctions"
- id: "24_ArduinoDeviceFunctions"
  name: "&nbsp;&nbsp;Arduino Device Functions"
  url: "/functions/#24_ArduinoDeviceFunctions"
- id: "28_ArduinoUltrasonicFunctions"
  name: "&nbsp;&nbsp;Arduino Ultrasonic Functions"
  url: "/functions/#28_ArduinoUltrasonicFunctions"
- id: "14_ArduinoAddons"
  name: "&nbsp;&nbsp;Arduino Addons"
  url: "/functions/#14_ArduinoAddons"
- id: "15_ArduinoSensors"
  name: "&nbsp;&nbsp;Arduino Sensors"
  url: "/functions/#15_ArduinoSensors"
- id: "19_ArduinoIOpackage"
  name: "&nbsp;&nbsp;Arduino I/O package"
  url: "/functions/#19_ArduinoIOpackage"
- id: "28_MatlabCompatibilityClasses"
  name: "&nbsp;&nbsp;Matlab Compatibility Classes"
  url: "/functions/#28_MatlabCompatibilityClasses"
- id: "7_Sensors"
  name: "&nbsp;&nbsp;Sensors"
  url: "/functions/#7_Sensors"
- id: "14_TestFunctions"
  name: "&nbsp;&nbsp;Test Functions"
  url: "/functions/#14_TestFunctions"
- id: "news"
  name: "News"
  url: "/news"
- id: "manual"
  name: "Manual"
  url: "/manual"
---
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-_0028register_002c"><span class="category-def">: </span><span><code class="def-type">write</code> <strong class="def-name">(<var class="var">register</var>,</strong> <code class="def-code-arguments"><var class="var">dataIn</var>)</code><a class="copiable-link" href='#index-_0028register_002c'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-_0028register_002c-1"><span class="category-def">: </span><span><code class="def-type">write</code> <strong class="def-name">(<var class="var">register</var>,</strong> <code class="def-code-arguments"><var class="var">dataIn</var>, <var class="var">precision</var>)</code><a class="copiable-link" href='#index-_0028register_002c-1'></a></span></dt>
<dd><p>Write a value to the shift register.
</p>
<h4 class="subsubheading" id="Inputs">Inputs</h4>
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