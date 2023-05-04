---
layout: "default"
permalink: "/functions/6_lis3dh/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - lis3dh"
category: "Sensors"
func_name: "lis3dh"
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
<dt id="index-lis3dh"><span class="category">: </span><span><em></em> <strong>lis3dh</strong><a href='#index-lis3dh' class='copiable-anchor'></a></span></dt>
<dd><p>LIS3DH 3 degrees sensor
 </p></dd></dl>

<span id="Methods"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-lis3dh_0028arObj_0029"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>lis3dh(<var>arObj</var>)</strong><a href='#index-lis3dh_0028arObj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-lis3dh_0028arObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>lis3dh(<var>arObj</var>,</strong> <em><var>propertyname, propertyvalue</var> ....)</em><a href='#index-lis3dh_0028arObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create LIS3DH sensor
 </p><span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
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

<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created object
</p>
<span id="Example"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 sensor = lis3dh(a)
 </code>
 </pre></div>
</dd></dl>

<dl class="def">
<dt id="index-readAcceleration_0028obj_0029"><span class="category">: </span><span><em>[<var>readVal</var>, <var>timestamp</var>] =</em> <strong>readAcceleration(<var>obj</var>)</strong><a href='#index-readAcceleration_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the acceleration rate
</p>
<span id="Inputs-1"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-1"></span><h4 class="subsubheading">Outputs</h4>
<p><var>readVal</var> - the 3 acceleration values
</p>
<p><var>timestamp</var> - timestamp when read
 </p></dd></dl>

<dl class="def">
<dt id="index-read_0028obj_0029"><span class="category">: </span><span><em>[<var>readings</var>, <var>overrun</var>] =</em> <strong>read(<var>obj</var>)</strong><a href='#index-read_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-read_0028obj_0029-1"><span class="category">: </span><span><em>[<var>accel</var>, <var>timestamp</var>, <var>overrun</var>] =</em> <strong>read(<var>obj</var>)</strong><a href='#index-read_0028obj_0029-1' class='copiable-anchor'></a></span></dt>
<dd><p>Read the sensor data
</p>
<span id="Inputs-2"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-2"></span><h4 class="subsubheading">Outputs</h4>
<p><var>accel</var> - acceleration reading from sensor.
</p>
<p><var>timestamp</var> - timestamp when read
</p>
<p><var>overrun</var> - overrun flag.
</p>
<p><var>readings</var> - table structure with fields for Timestamp, Acceleration.
 </p></dd></dl>
 
<dl class="def">
<dt id="index-info_0028obj_0029"><span class="category">: </span><span><em><var>inf</var> =</em> <strong>info(<var>obj</var>)</strong><a href='#index-info_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the sensor info
</p>
<span id="Inputs-3"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-3"></span><h4 class="subsubheading">Outputs</h4>
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
<dt id="index-flush_0028obj_0029"><span class="category">: </span><span><em></em> <strong>flush(<var>obj</var>)</strong><a href='#index-flush_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Flush sensor data
</p>
<span id="Inputs-4"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-4"></span><h4 class="subsubheading">Outputs</h4>
<p>None
 </p></dd></dl>

<dl class="def">
<dt id="index-release_0028obj_0029"><span class="category">: </span><span><em></em> <strong>release(<var>obj</var>)</strong><a href='#index-release_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Release the resources of the sensor
</p>
<span id="Inputs-5"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-5"></span><h4 class="subsubheading">Outputs</h4>
<p>None
 </p></dd></dl>