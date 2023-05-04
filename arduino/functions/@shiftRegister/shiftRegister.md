---
layout: "default"
permalink: "/functions/@shiftRegister/28_shiftRegistershiftRegister/"
pkg_name: "arduino"
pkg_version: "0.10.0"
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
- id: "28_MatlabCompatabilityClasses"
  name: "&nbsp;&nbsp;Matlab Compatability Classes"
  url: "/functions/#28_MatlabCompatabilityClasses"
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
<dl class="def">
<dt id="index-shiftRegister"><span class="category">: </span><span><em><var>register</var> =</em> <strong>shiftRegister</strong> <em>(<var>ar</var>, <var>shifttype</var>, <var>dataPin</var>, <var>clockPin</var> ...)</em><a href='#index-shiftRegister' class='copiable-anchor'></a></span></dt>
<dt id="index-shiftRegister-1"><span class="category">: </span><span><em><var>register</var> =</em> <strong>shiftRegister</strong> <em>(<var>ar</var>,'74hc164', <var>dataPin</var>, <var>clockPin</var>, <var>resetPin</var>)</em><a href='#index-shiftRegister-1' class='copiable-anchor'></a></span></dt>
<dt id="index-shiftRegister-2"><span class="category">: </span><span><em><var>register</var> =</em> <strong>shiftRegister</strong> <em>(<var>ar</var>,'74hc165', <var>dataPin</var>, <var>clockPin</var>, <var>loadPin</var>, <var>clockEnablePin</var>)</em><a href='#index-shiftRegister-2' class='copiable-anchor'></a></span></dt>
<dt id="index-shiftRegister_0028ar_002c_002774hc595_0027_002c"><span class="category">: </span><span><em><var>register</var> =</em> <strong>shiftRegister(<var>ar</var>,'74hc595',</strong> <em><var>dataPin</var>, <var>clockPin</var>, <var>latchPin</var> , <var>resetPin</var>)</em><a href='#index-shiftRegister_0028ar_002c_002774hc595_0027_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Create shift register of a given type, controlled by the input pins.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
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

<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>register</var> - register object
</p>
<span id="Properties"></span><h4 class="subsubheading">Properties</h4>
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