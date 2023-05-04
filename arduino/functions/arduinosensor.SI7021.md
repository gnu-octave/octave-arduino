---
layout: "default"
permalink: "/functions/20_arduinosensorSI7021/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - arduinosensor.SI7021"
category: "Arduino Sensors"
func_name: "arduinosensor.SI7021"
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
<dt id="index-arduinosensor_002eSI7021"><span class="category">: </span><span><em></em> <strong>arduinosensor.SI7021</strong><a href='#index-arduinosensor_002eSI7021' class='copiable-anchor'></a></span></dt>
<dd><p>SI7021 temperature and humidity sensor
 </p></dd></dl>

<span id="Methods"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-SI7021_0028arObj_0029"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>SI7021(<var>arObj</var>)</strong><a href='#index-SI7021_0028arObj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-SI7021_0028arObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>SI7021(<var>arObj</var>,</strong> <em><var>propertyname, propertyvalue</var> ....)</em><a href='#index-SI7021_0028arObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create SI7021 sensor
 </p><span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
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

<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created SI7020 object
</p>
<span id="Example"></span><h4 class="subsubheading">Example</h4>
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
<span id="Inputs-1"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the si7021 object
</p>
<span id="Outputs-1"></span><h4 class="subsubheading">Outputs</h4>
<p><var>C</var> - read temperature in deg C.
</p>
<span id="Example-1"></span><h4 class="subsubheading">Example</h4>
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
<span id="Inputs-2"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the si7021 object
</p>
<span id="Outputs-2"></span><h4 class="subsubheading">Outputs</h4>
<p><var>relH</var> - relative humidity as a percentage (0 - 100.0)
 </p></dd></dl>

<dl class="def">
<dt id="index-info_0028dsObj_0029"><span class="category">: </span><span><em><var>relH</var> =</em> <strong>info(<var>dsObj</var>)</strong><a href='#index-info_0028dsObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the sensor info
</p>
<span id="Inputs-3"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the si7021 object
</p>
<span id="Outputs-3"></span><h4 class="subsubheading">Outputs</h4>
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