---
layout: "default"
permalink: "/functions/34_arduinoioaddonsadafruitdcmotorv2/"
pkg_name: "arduino"
pkg_version: "0.12.1"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - arduinoioaddons.adafruit.dcmotorv2"
category: "Arduino Addons"
func_name: "arduinoioaddons.adafruit.dcmotorv2"
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
<dt class="deftypefn" id="index-arduinoioaddons_002eadafruit_002edcmotorv2"><span class="category-def">: </span><span><strong class="def-name">arduinoioaddons.adafruit.dcmotorv2</strong><a class="copiable-link" href='#index-arduinoioaddons_002eadafruit_002edcmotorv2'></a></span></dt>
<dd><p>DC Motor class for dc motor control on the adafruit motor shield
</p>

<p><strong class="strong">See also:</strong> arduinoioaddons.adafruit.motorshieldv2.
 </p></dd></dl>

<h4 class="subsubheading" id="Properties">Properties</h4>
<p><var class="var">Speed</var> - The speed value set for the motor
</p>
<p><var class="var">Parent</var> - The parent shield for object (read only)
</p>
<p><var class="var">MotorNumber</var> - The motor number (read only) values 1-4
</p>
<p><var class="var">IsRunning</var> - boolean for if the motor is started (read only)
</p>
<h4 class="subheading" id="Methods">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-dcmotorv2_0028mObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">dcmotorv2(<var class="var">mObj</var>,</strong> <code class="def-code-arguments"><var class="var">mnum</var>)</code><a class="copiable-link" href='#index-dcmotorv2_0028mObj_002c'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-dcmotorv2_0028mObj_002c-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">dcmotorv2(<var class="var">mObj</var>,</strong> <code class="def-code-arguments"><var class="var">mnum</var>, <var class="var">propertyname, propertyvalue</var> ....)</code><a class="copiable-link" href='#index-dcmotorv2_0028mObj_002c-1'></a></span></dt>
<dd><p>Constructor to create dcmotor object
 </p><h4 class="subsubheading" id="Inputs">Inputs</h4>
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

<h4 class="subsubheading" id="Outputs">Outputs</h4>
<p><var class="var">s</var> - a dcmotorv2 object
</p>
<h4 class="subsubheading" id="Example">Example</h4>
<div class="example">
<pre class="example-preformatted"> <code class="code">
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
<h4 class="subsubheading" id="Inputs-1">Inputs</h4>
<p><var class="var">dcObj</var> - the dcmotor object
</p>
<h4 class="subsubheading" id="Outputs-1">Outputs</h4>
<p>None
</p>

<p><strong class="strong">See also:</strong> adafruit.motorshieldv2.
 </p></dd></dl>

<dl class="first-deftypefn">
<dt class="deftypefn" id="index-stop_0028dcObj_0029"><span class="category-def">: </span><span><strong class="def-name">stop(<var class="var">dcObj</var>)</strong><a class="copiable-link" href='#index-stop_0028dcObj_0029'></a></span></dt>
<dd><p>Stop the motor moving
</p>
<h4 class="subsubheading" id="Inputs-2">Inputs</h4>
<p><var class="var">dcObj</var> - the dcmotor object
</p>
<h4 class="subsubheading" id="Outputs-2">Outputs</h4>
<p>None
</p>

<p><strong class="strong">See also:</strong> adafruit.motorshieldv2.
 </p></dd></dl>