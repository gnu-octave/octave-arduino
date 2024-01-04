---
layout: "default"
permalink: "/functions/20_arduinosensorDS1307/"
pkg_name: "arduino"
pkg_version: "0.12.1"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - arduinosensor.DS1307"
category: "Arduino Sensors"
func_name: "arduinosensor.DS1307"
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
<dt class="deftypefn" id="index-arduinosensor_002eDS1307"><span class="category-def">: </span><span><strong class="def-name">arduinosensor.DS1307</strong><a class="copiable-link" href='#index-arduinosensor_002eDS1307'></a></span></dt>
<dd><p>DS1307 realtime clock sensor
 </p></dd></dl>

<h4 class="subheading" id="Methods">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-DS1307_0028arObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">DS1307(<var class="var">arObj</var>)</strong><a class="copiable-link" href='#index-DS1307_0028arObj_0029'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-DS1307_0028arObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">DS1307(<var class="var">arObj</var>,</strong> <code class="def-code-arguments"><var class="var">propertyname, propertyvalue</var> ....)</code><a class="copiable-link" href='#index-DS1307_0028arObj_002c'></a></span></dt>
<dd><p>Constructor to create DS1307 sensor
 </p><h4 class="subsubheading" id="Inputs">Inputs</h4>
<p><var class="var">arObj</var> - the arduino parent object
</p>
<p><var class="var">propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 Current properties are:
 </p><dl class="table">
<dt>i2caddress</dt>
<dd><p>I2C address of the DS1307 (default 0x68)
 </p></dd>
</dl>

<h4 class="subsubheading" id="Outputs">Outputs</h4>
<p><var class="var">obj</var> - created DS1307 object
</p>
<h4 class="subsubheading" id="Example">Example</h4>
<div class="example">
<pre class="example-preformatted"> <code class="code">
 a = arduino()
 rtc = arduinosensor.DS1307(a)
 </code>
 </pre></div>
</dd></dl>

<dl class="first-deftypefn">
<dt class="deftypefn" id="index-clock_0028dsObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">date</var> =</code> <strong class="def-name">clock(<var class="var">dsObj</var>)</strong><a class="copiable-link" href='#index-clock_0028dsObj_0029'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-clock_0028dsObj_002c"><span class="category-def">: </span><span><strong class="def-name">clock(<var class="var">dsObj</var>,</strong> <code class="def-code-arguments"><var class="var">date</var>)</code><a class="copiable-link" href='#index-clock_0028dsObj_002c'></a></span></dt>
<dd><p>Get/set the DS1307 clock
</p>
<h4 class="subsubheading" id="Inputs-1">Inputs</h4>
<p><var class="var">dsObj</var> - the ds1307 object
</p>
<p><var class="var">date</var> - a date vector in same format as datevec and clock
</p>
<h4 class="subsubheading" id="Outputs-1">Outputs</h4>
<p><var class="var">date</var> - a date vector in same format as datevec and clock
</p>
<h4 class="subsubheading" id="Example-1">Example</h4>
<div class="example">
<pre class="example-preformatted"> <code class="code">
 a = arduino()
 rtc = arduinosensor.DS1307(a)
 # get and display rtc time as a date string
 datestr(rtc.clock)
 </code>
 </pre></div>

<p><strong class="strong">See also:</strong> datevec.
 </p></dd></dl>

<dl class="first-deftypefn">
<dt class="deftypefn" id="index-control_0028dsObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">ctrl</var> =</code> <strong class="def-name">control(<var class="var">dsObj</var>)</strong><a class="copiable-link" href='#index-control_0028dsObj_0029'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-control_0028dsObj_002c"><span class="category-def">: </span><span><strong class="def-name">control(<var class="var">dsObj</var>,</strong> <code class="def-code-arguments"><var class="var">ctrl</var>)</code><a class="copiable-link" href='#index-control_0028dsObj_002c'></a></span></dt>
<dd><p>Get/set the DS1307 clock
</p>
<h4 class="subsubheading" id="Inputs-2">Inputs</h4>
<p><var class="var">dsObj</var> - the ds1307 object
</p>
<p><var class="var">ctrl</var> - a structure containing the control bit fields.
</p>
<h4 class="subsubheading" id="Outputs-2">Outputs</h4>
<p><var class="var">ctrl</var> - a structure containing the control bit fields.
</p>
<p>Control structure fields are:
 Current properties are:
 </p><dl class="table">
<dt>out</dt>
<dd><p>Out bit in the control register
 </p></dd>
<dt>sqwe</dt>
<dd><p>Square wave enable bit in control register
 </p></dd>
<dt>rs</dt>
<dd><p>The combined RS0, RS1 value
 </p></dd>
</dl>

</dd></dl>

<dl class="first-deftypefn">
<dt class="deftypefn" id="index-isstarted_0028dsObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">YN</var> =</code> <strong class="def-name">isstarted(<var class="var">dsObj</var>)</strong><a class="copiable-link" href='#index-isstarted_0028dsObj_0029'></a></span></dt>
<dd><p>Get whether the RTC clock is currently counting time
</p>
<h4 class="subsubheading" id="Inputs-3">Inputs</h4>
<p><var class="var">dsObj</var> - the ds1307 object
</p>
<h4 class="subsubheading" id="Outputs-3">Outputs</h4>
<p><var class="var">YN</var> - returns true if the RTC is counting
</p>

<p><strong class="strong">See also:</strong> start, stop.
 </p></dd></dl>

<dl class="first-deftypefn">
<dt class="deftypefn" id="index-start_0028dsObj_0029"><span class="category-def">: </span><span><strong class="def-name">start(<var class="var">dsObj</var>)</strong><a class="copiable-link" href='#index-start_0028dsObj_0029'></a></span></dt>
<dd><p>Start the RTC counting
</p>
<h4 class="subsubheading" id="Inputs-4">Inputs</h4>
<p><var class="var">dsObj</var> - the ds1307 object
</p>
<h4 class="subsubheading" id="Outputs-4">Outputs</h4>
<p>None
</p>

<p><strong class="strong">See also:</strong> datevec.
 </p></dd></dl>

<dl class="first-deftypefn">
<dt class="deftypefn" id="index-stop_0028dsObj_0029"><span class="category-def">: </span><span><strong class="def-name">stop(<var class="var">dsObj</var>)</strong><a class="copiable-link" href='#index-stop_0028dsObj_0029'></a></span></dt>
<dd><p>Stop the RTC counting
</p>
<h4 class="subsubheading" id="Inputs-5">Inputs</h4>
<p><var class="var">dsObj</var> - the ds1307 object
</p>
<h4 class="subsubheading" id="Outputs-5">Outputs</h4>
<p>None
</p>

<p><strong class="strong">See also:</strong> datevec.
 </p></dd></dl>