---
layout: "default"
permalink: "/functions/@rotaryEncoder/24_rotaryEncoderreadCount/"
pkg_name: "arduino"
pkg_version: "0.12.2"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @rotaryEncoder/readCount"
category: "Arduino Rotary Encoder Functions"
func_name: "@rotaryEncoder/readCount"
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
<dt class="deftypefn" id="index-readCount"><span class="category-def">: </span><span><code class="def-type">[<var class="var">count</var>, <var class="var">time</var>] =</code> <strong class="def-name">readCount</strong> <code class="def-code-arguments">(<var class="var">obj</var>)</code><a class="copiable-link" href="#index-readCount"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-readCount-1"><span class="category-def">: </span><span><code class="def-type">[<var class="var">count</var>, <var class="var">time</var>] =</code> <strong class="def-name">readCount</strong> <code class="def-code-arguments">(<var class="var">obj</var>, <var class="var">name</var>, <var class="var">value</var>)</code><a class="copiable-link" href="#index-readCount-1"></a></span></dt>
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

<h4 class="subsubheading" id="Outputs"><span>Outputs<a class="copiable-link" href="#Outputs"></a></span></h4>
<p><var class="var">count</var> - returned count read from the encoder.
</p>
<p><var class="var">time</var> - seconds since arduino started
</p>

<p><strong class="strong">See also:</strong> rotaryEncoder, resetCount.
 </p></dd></dl>