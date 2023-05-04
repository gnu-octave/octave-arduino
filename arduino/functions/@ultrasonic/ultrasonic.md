---
layout: "default"
permalink: "/functions/@ultrasonic/22_ultrasonicultrasonic/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @ultrasonic/ultrasonic"
category: "Arduino Ultrasonic Functions"
func_name: "@ultrasonic/ultrasonic"
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
<dt id="index-ultrasonic"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>ultrasonic</strong> <em>(<var>ar</var>, <var>triggerpin</var>)</em><a href='#index-ultrasonic' class='copiable-anchor'></a></span></dt>
<dt id="index-ultrasonic-1"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>ultrasonic</strong> <em>(<var>ar</var>, <var>triggerpin</var>, <var>echopin</var>)</em><a href='#index-ultrasonic-1' class='copiable-anchor'></a></span></dt>
<dt id="index-ultrasonic-2"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>ultrasonic</strong> <em>(<var>ar</var>, <var>triggerpin</var>, <var>echopin</var>, <var>propname</var>, <var>propvalue</var>)</em><a href='#index-ultrasonic-2' class='copiable-anchor'></a></span></dt>
<dd><p>Create an ultrasonic object to communicate to a connected ultrasonic device
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
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

<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>dev</var> - created ultrasonic object
</p>
<span id="Properties"></span><h4 class="subsubheading">Properties</h4>
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