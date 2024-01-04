---
layout: "default"
permalink: "/functions/@shiftRegister/28_shiftRegistershiftRegister/"
pkg_name: "arduino"
pkg_version: "0.12.1"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @shiftRegister/shiftRegister"
category: "Arduino Shiftregister Functions"
func_name: "@shiftRegister/shiftRegister"
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
<dt class="deftypefn" id="index-shiftRegister"><span class="category-def">: </span><span><code class="def-type"><var class="var">register</var> =</code> <strong class="def-name">shiftRegister</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">shifttype</var>, <var class="var">dataPin</var>, <var class="var">clockPin</var> ...)</code><a class="copiable-link" href='#index-shiftRegister'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-shiftRegister-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">register</var> =</code> <strong class="def-name">shiftRegister</strong> <code class="def-code-arguments">(<var class="var">ar</var>,'74hc164', <var class="var">dataPin</var>, <var class="var">clockPin</var>, <var class="var">resetPin</var>)</code><a class="copiable-link" href='#index-shiftRegister-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-shiftRegister-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">register</var> =</code> <strong class="def-name">shiftRegister</strong> <code class="def-code-arguments">(<var class="var">ar</var>,'74hc165', <var class="var">dataPin</var>, <var class="var">clockPin</var>, <var class="var">loadPin</var>, <var class="var">clockEnablePin</var>)</code><a class="copiable-link" href='#index-shiftRegister-2'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-shiftRegister_0028ar_002c_002774hc595_0027_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">register</var> =</code> <strong class="def-name">shiftRegister(<var class="var">ar</var>,'74hc595',</strong> <code class="def-code-arguments"><var class="var">dataPin</var>, <var class="var">clockPin</var>, <var class="var">latchPin</var> , <var class="var">resetPin</var>)</code><a class="copiable-link" href='#index-shiftRegister_0028ar_002c_002774hc595_0027_002c'></a></span></dt>
<dd><p>Create shift register of a given type, controlled by the input pins.
</p>
<h4 class="subsubheading" id="Inputs">Inputs</h4>
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

<h4 class="subsubheading" id="Outputs">Outputs</h4>
<p><var class="var">register</var> - register object
</p>
<h4 class="subsubheading" id="Properties">Properties</h4>
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