---
layout: "default"
permalink: "/functions/20_arduinosensorSI7021/"
pkg_name: "arduino"
pkg_version: "0.12.2"
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
<dt class="deftypefn" id="index-arduinosensor_002eSI7021"><span class="category-def">: </span><span><strong class="def-name">arduinosensor.SI7021</strong><a class="copiable-link" href="#index-arduinosensor_002eSI7021"></a></span></dt>
<dd><p>SI7021 temperature and humidity sensor
 </p></dd></dl>

<h4 class="subheading" id="Methods"><span>Methods<a class="copiable-link" href="#Methods"></a></span></h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-SI7021_0028arObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">SI7021(<var class="var">arObj</var>)</strong><a class="copiable-link" href="#index-SI7021_0028arObj_0029"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-SI7021_0028arObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">SI7021(<var class="var">arObj</var>,</strong> <code class="def-code-arguments"><var class="var">propertyname, propertyvalue</var> ....)</code><a class="copiable-link" href="#index-SI7021_0028arObj_002c"></a></span></dt>
<dd><p>Constructor to create SI7021 sensor
 </p><h4 class="subsubheading" id="Inputs"><span>Inputs<a class="copiable-link" href="#Inputs"></a></span></h4>
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

<h4 class="subsubheading" id="Outputs"><span>Outputs<a class="copiable-link" href="#Outputs"></a></span></h4>
<p><var class="var">obj</var> - created SI7020 object
</p>
<h4 class="subsubheading" id="Example"><span>Example<a class="copiable-link" href="#Example"></a></span></h4>
<div class="example">
<pre class="example-preformatted"> <code class="code">
 a = arduino()
 sensor = arduinosensor.SI7021(a)
 </code>
 </pre></div>
</dd></dl>

<dl class="first-deftypefn">
<dt class="deftypefn" id="index-temperature_0028dsObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">C</var> =</code> <strong class="def-name">temperature(<var class="var">dsObj</var>)</strong><a class="copiable-link" href="#index-temperature_0028dsObj_0029"></a></span></dt>
<dd><p>Read the temperature
</p>
<h4 class="subsubheading" id="Inputs-1"><span>Inputs<a class="copiable-link" href="#Inputs-1"></a></span></h4>
<p><var class="var">dsObj</var> - the si7021 object
</p>
<h4 class="subsubheading" id="Outputs-1"><span>Outputs<a class="copiable-link" href="#Outputs-1"></a></span></h4>
<p><var class="var">C</var> - read temperature in deg C.
</p>
<h4 class="subsubheading" id="Example-1"><span>Example<a class="copiable-link" href="#Example-1"></a></span></h4>
<div class="example">
<pre class="example-preformatted"> <code class="code">
 a = arduino()
 s = arduinosensor.SI7021(a)
 # get temp
 temp = s.temperature
 </code>
 </pre></div>

<p><strong class="strong">See also:</strong> arduinosensor.SI7021.
 </p></dd></dl>

<dl class="first-deftypefn">
<dt class="deftypefn" id="index-humidity_0028dsObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">relH</var> =</code> <strong class="def-name">humidity(<var class="var">dsObj</var>)</strong><a class="copiable-link" href="#index-humidity_0028dsObj_0029"></a></span></dt>
<dd><p>Read the relative humidity
</p>
<h4 class="subsubheading" id="Inputs-2"><span>Inputs<a class="copiable-link" href="#Inputs-2"></a></span></h4>
<p><var class="var">dsObj</var> - the si7021 object
</p>
<h4 class="subsubheading" id="Outputs-2"><span>Outputs<a class="copiable-link" href="#Outputs-2"></a></span></h4>
<p><var class="var">relH</var> - relative humidity as a percentage (0 - 100.0)
 </p></dd></dl>

<dl class="first-deftypefn">
<dt class="deftypefn" id="index-info_0028dsObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">relH</var> =</code> <strong class="def-name">info(<var class="var">dsObj</var>)</strong><a class="copiable-link" href="#index-info_0028dsObj_0029"></a></span></dt>
<dd><p>Read the sensor info
</p>
<h4 class="subsubheading" id="Inputs-3"><span>Inputs<a class="copiable-link" href="#Inputs-3"></a></span></h4>
<p><var class="var">dsObj</var> - the si7021 object
</p>
<h4 class="subsubheading" id="Outputs-3"><span>Outputs<a class="copiable-link" href="#Outputs-3"></a></span></h4>
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