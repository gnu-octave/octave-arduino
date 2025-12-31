---
layout: "default"
permalink: "/functions/21_arduinosensorMPC3002/"
pkg_name: "arduino"
pkg_version: "0.12.3"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - arduinosensor.MPC3002"
category: "Test Functions"
func_name: "arduinosensor.MPC3002"
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
  subitems:
- id: "17_ArduinoFunctions"
  name: "&nbsp;&nbsp;Arduino Functions"
  url: "/functions/#17_ArduinoFunctions"
  subitems:
  - id: "37_ArduinoFunctions-ReadandWriteData"
    name: "&nbsp;&nbsp;&nbsp;&nbsp;Read and Write Data"
    url: "/functions/#37_ArduinoFunctions-ReadandWriteData"
  - id: "36_ArduinoFunctions-TerminalFunctions"
    name: "&nbsp;&nbsp;&nbsp;&nbsp;Terminal Functions"
    url: "/functions/#36_ArduinoFunctions-TerminalFunctions"
  - id: "35_ArduinoFunctions-GeneralFunctions"
    name: "&nbsp;&nbsp;&nbsp;&nbsp;General Functions"
    url: "/functions/#35_ArduinoFunctions-GeneralFunctions"
  - id: "36_ArduinoFunctions-ResourceFunctions"
    name: "&nbsp;&nbsp;&nbsp;&nbsp;Resource Functions"
    url: "/functions/#36_ArduinoFunctions-ResourceFunctions"
  - id: "34_ArduinoFunctions-Arduinocreation"
    name: "&nbsp;&nbsp;&nbsp;&nbsp;Arduino creation"
    url: "/functions/#34_ArduinoFunctions-Arduinocreation"
- id: "21_ArduinoI2CFunctions"
  name: "&nbsp;&nbsp;Arduino I2C Functions"
  url: "/functions/#21_ArduinoI2CFunctions"
  subitems:
- id: "32_ArduinoRotaryEncoderFunctions"
  name: "&nbsp;&nbsp;Arduino Rotary Encoder Functions"
  url: "/functions/#32_ArduinoRotaryEncoderFunctions"
  subitems:
- id: "23_ArduinoServoFunctions"
  name: "&nbsp;&nbsp;Arduino Servo Functions"
  url: "/functions/#23_ArduinoServoFunctions"
  subitems:
- id: "31_ArduinoShiftregisterFunctions"
  name: "&nbsp;&nbsp;Arduino Shiftregister Functions"
  url: "/functions/#31_ArduinoShiftregisterFunctions"
  subitems:
- id: "21_ArduinoSPIFunctions"
  name: "&nbsp;&nbsp;Arduino SPI Functions"
  url: "/functions/#21_ArduinoSPIFunctions"
  subitems:
- id: "24_ArduinoSerialFunctions"
  name: "&nbsp;&nbsp;Arduino Serial Functions"
  url: "/functions/#24_ArduinoSerialFunctions"
  subitems:
- id: "24_ArduinoDeviceFunctions"
  name: "&nbsp;&nbsp;Arduino Device Functions"
  url: "/functions/#24_ArduinoDeviceFunctions"
  subitems:
- id: "28_ArduinoUltrasonicFunctions"
  name: "&nbsp;&nbsp;Arduino Ultrasonic Functions"
  url: "/functions/#28_ArduinoUltrasonicFunctions"
  subitems:
- id: "14_ArduinoAddons"
  name: "&nbsp;&nbsp;Arduino Addons"
  url: "/functions/#14_ArduinoAddons"
  subitems:
- id: "15_ArduinoSensors"
  name: "&nbsp;&nbsp;Arduino Sensors"
  url: "/functions/#15_ArduinoSensors"
  subitems:
- id: "19_ArduinoIOpackage"
  name: "&nbsp;&nbsp;Arduino I/O package"
  url: "/functions/#19_ArduinoIOpackage"
  subitems:
- id: "28_MatlabCompatibilityClasses"
  name: "&nbsp;&nbsp;Matlab Compatibility Classes"
  url: "/functions/#28_MatlabCompatibilityClasses"
  subitems:
- id: "7_Sensors"
  name: "&nbsp;&nbsp;Sensors"
  url: "/functions/#7_Sensors"
  subitems:
- id: "14_TestFunctions"
  name: "&nbsp;&nbsp;Test Functions"
  url: "/functions/#14_TestFunctions"
  subitems:
- id: "news"
  name: "News"
  url: "/news"
- id: "manual"
  name: "Manual"
  url: "/manual"
---
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-arduinosensor_002eMPC3002"><span class="category-def">: </span><span><strong class="def-name">arduinosensor.MPC3002</strong><a class="copiable-link" href="#index-arduinosensor_002eMPC3002"></a></span></dt>
<dd><p>MCP3002 ADC sensor
 </p></dd></dl>

<h4 class="subheading" id="Methods"><span>Methods<a class="copiable-link" href="#Methods"></a></span></h4>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-MPC3002_0028arObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">MPC3002(<var class="var">arObj</var>,</strong> <code class="def-code-arguments"><var class="var">selectPin</var>)</code><a class="copiable-link" href="#index-MPC3002_0028arObj_002c"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn def-line" id="index-MPC3002_0028arObj_002c-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">MPC3002(<var class="var">arObj</var>,</strong> <code class="def-code-arguments"><var class="var">selectPin</var>, <var class="var">propertyname, propertyvalue</var> ....)</code><a class="copiable-link" href="#index-MPC3002_0028arObj_002c-1"></a></span></dt>
<dd><p>Constructor to create MPC3002 sensor
 </p><h4 class="subsubheading" id="Inputs"><span>Inputs<a class="copiable-link" href="#Inputs"></a></span></h4>
<p><var class="var">arObj</var> - the arduino parent object
</p>
<p><var class="var">selectPin</var> - the SPI cs select pin
</p>
<p><var class="var">propertyname, propertyvalue</var> - optional property name, value pairs.
</p>
<p>Current properties are:
 </p><dl class="table">
<dt>referenceVoltage</dt>
<dd><p>Reference voltage for scaling the ADC inputs (default 5.0)
 </p></dd>
</dl>

<h4 class="subsubheading" id="Outputs"><span>Outputs<a class="copiable-link" href="#Outputs"></a></span></h4>
<p><var class="var">obj</var> - created MCP3002 object
</p>
<h4 class="subsubheading" id="Example"><span>Example<a class="copiable-link" href="#Example"></a></span></h4>
<div class="example">
<pre class="example-preformatted"> <code class="code">
 a = arduino()
 sensor = arduinosensor.MPC3002(a, &quot;d10&quot;)
 </code>
 </pre></div>
</dd></dl>

<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-readVoltage_0028dsObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">voltage</var> =</code> <strong class="def-name">readVoltage(<var class="var">dsObj</var>,</strong> <code class="def-code-arguments"><var class="var">chan</var>)</code><a class="copiable-link" href="#index-readVoltage_0028dsObj_002c"></a></span></dt>
<dd><p>Read the voltage from a channel
</p>
<h4 class="subsubheading" id="Inputs-1"><span>Inputs<a class="copiable-link" href="#Inputs-1"></a></span></h4>
<p><var class="var">dsObj</var> - the MPC3002 object
</p>
<p><var class="var">chan</var> - the channel to read (0 or 1)
</p>
<h4 class="subsubheading" id="Outputs-1"><span>Outputs<a class="copiable-link" href="#Outputs-1"></a></span></h4>
<p><var class="var">voltage</var> - read voltage.
</p>
<h4 class="subsubheading" id="Example-1"><span>Example<a class="copiable-link" href="#Example-1"></a></span></h4>
<div class="example">
<pre class="example-preformatted"> <code class="code">
 a = arduino()
 s = arduinosensor.MPC3002(a, &quot;d10&quot;)
 volts = readVoltage(s, 0)
 </code>
 </pre></div>

<p><strong class="strong">See also:</strong> arduinosensor.MPC3002.
 </p></dd></dl>