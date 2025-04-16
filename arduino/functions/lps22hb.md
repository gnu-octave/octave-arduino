---
layout: "default"
permalink: "/functions/7_lps22hb/"
pkg_name: "arduino"
pkg_version: "0.12.2"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - lps22hb"
category: "Sensors"
func_name: "lps22hb"
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
<dt class="deftypefn" id="index-lps22hb"><span class="category-def">: </span><span><strong class="def-name">lps22hb</strong><a class="copiable-link" href="#index-lps22hb"></a></span></dt>
<dd><p>LPS22HB absolute pressure and temperature sensor
 </p></dd></dl>

<h4 class="subheading" id="Methods"><span>Methods<a class="copiable-link" href="#Methods"></a></span></h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-lps22hb_0028arObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">lps22hb(<var class="var">arObj</var>)</strong><a class="copiable-link" href="#index-lps22hb_0028arObj_0029"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-lps22hb_0028arObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">lps22hb(<var class="var">arObj</var>,</strong> <code class="def-code-arguments"><var class="var">propertyname, propertyvalue</var> ....)</code><a class="copiable-link" href="#index-lps22hb_0028arObj_002c"></a></span></dt>
<dd><p>Constructor to create LPS22HB sensor
 </p><h4 class="subsubheading" id="Inputs"><span>Inputs<a class="copiable-link" href="#Inputs"></a></span></h4>
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

<h4 class="subsubheading" id="Outputs"><span>Outputs<a class="copiable-link" href="#Outputs"></a></span></h4>
<p><var class="var">obj</var> - created object
</p>
<h4 class="subsubheading" id="Example"><span>Example<a class="copiable-link" href="#Example"></a></span></h4>
<div class="example">
<pre class="example-preformatted"> <code class="code">
 a = arduino()
 sensor = lps22hb(a)
 </code>
 </pre></div>
</dd></dl>

<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readTemperature_0028obj_0029"><span class="category-def">: </span><span><code class="def-type">[<var class="var">C</var>, <var class="var">timestamp</var>] =</code> <strong class="def-name">readTemperature(<var class="var">obj</var>)</strong><a class="copiable-link" href="#index-readTemperature_0028obj_0029"></a></span></dt>
<dd><p>Read the temperature
</p>
<h4 class="subsubheading" id="Inputs-1"><span>Inputs<a class="copiable-link" href="#Inputs-1"></a></span></h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-1"><span>Outputs<a class="copiable-link" href="#Outputs-1"></a></span></h4>
<p><var class="var">C</var> - read temperature in deg C.
</p>
<p><var class="var">timestamp</var> - timestamp when read
</p>
<h4 class="subsubheading" id="Example-1"><span>Example<a class="copiable-link" href="#Example-1"></a></span></h4>
<div class="example">
<pre class="example-preformatted"> <code class="code">
 a = arduino()
 s = lps22hb(a)
 # get temp
 temp = s.readTemperature
 </code>
 </pre></div>

<p><strong class="strong">See also:</strong> lps22hb.
 </p></dd></dl>

<dl class="first-deftypefn">
<dt class="deftypefn" id="index-readPressure_0028obj_0029"><span class="category-def">: </span><span><code class="def-type">[<var class="var">P</var>, <var class="var">timestamp</var>] =</code> <strong class="def-name">readPressure(<var class="var">obj</var>)</strong><a class="copiable-link" href="#index-readPressure_0028obj_0029"></a></span></dt>
<dd><p>Read the pressure
</p>
<h4 class="subsubheading" id="Inputs-2"><span>Inputs<a class="copiable-link" href="#Inputs-2"></a></span></h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-2"><span>Outputs<a class="copiable-link" href="#Outputs-2"></a></span></h4>
<p><var class="var">P</var> - pressure reading from sensor.
</p>
<p><var class="var">timestamp</var> - timestamp when read
 </p></dd></dl>
 
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-read_0028obj_0029"><span class="category-def">: </span><span><code class="def-type">[<var class="var">readings</var>, <var class="var">overrun</var>] =</code> <strong class="def-name">read(<var class="var">obj</var>)</strong><a class="copiable-link" href="#index-read_0028obj_0029"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-read_0028obj_0029-1"><span class="category-def">: </span><span><code class="def-type">[<var class="var">P</var>, <var class="var">C</var>, <var class="var">timestamp</var>, <var class="var">overrun</var>] =</code> <strong class="def-name">read(<var class="var">obj</var>)</strong><a class="copiable-link" href="#index-read_0028obj_0029-1"></a></span></dt>
<dd><p>Read the sensor data
</p>
<h4 class="subsubheading" id="Inputs-3"><span>Inputs<a class="copiable-link" href="#Inputs-3"></a></span></h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-3"><span>Outputs<a class="copiable-link" href="#Outputs-3"></a></span></h4>
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
<dt class="deftypefn" id="index-info_0028obj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">inf</var> =</code> <strong class="def-name">info(<var class="var">obj</var>)</strong><a class="copiable-link" href="#index-info_0028obj_0029"></a></span></dt>
<dd><p>Read the sensor info
</p>
<h4 class="subsubheading" id="Inputs-4"><span>Inputs<a class="copiable-link" href="#Inputs-4"></a></span></h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-4"><span>Outputs<a class="copiable-link" href="#Outputs-4"></a></span></h4>
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
<dt class="deftypefn" id="index-flush_0028obj_0029"><span class="category-def">: </span><span><strong class="def-name">flush(<var class="var">obj</var>)</strong><a class="copiable-link" href="#index-flush_0028obj_0029"></a></span></dt>
<dd><p>Flush sensor data
</p>
<h4 class="subsubheading" id="Inputs-5"><span>Inputs<a class="copiable-link" href="#Inputs-5"></a></span></h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-5"><span>Outputs<a class="copiable-link" href="#Outputs-5"></a></span></h4>
<p>None
 </p></dd></dl>

<dl class="first-deftypefn">
<dt class="deftypefn" id="index-release_0028obj_0029"><span class="category-def">: </span><span><strong class="def-name">release(<var class="var">obj</var>)</strong><a class="copiable-link" href="#index-release_0028obj_0029"></a></span></dt>
<dd><p>Release the resources of the sensor
</p>
<h4 class="subsubheading" id="Inputs-6"><span>Inputs<a class="copiable-link" href="#Inputs-6"></a></span></h4>
<p><var class="var">obj</var> - the sensor object
</p>
<h4 class="subsubheading" id="Outputs-6"><span>Outputs<a class="copiable-link" href="#Outputs-6"></a></span></h4>
<p>None
 </p></dd></dl>