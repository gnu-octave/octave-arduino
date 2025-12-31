---
layout: "default"
permalink: "/functions/23_arduinosensorGUVAS12SD/"
pkg_name: "arduino"
pkg_version: "0.12.3"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - arduinosensor.GUVAS12SD"
category: "Test Functions"
func_name: "arduinosensor.GUVAS12SD"
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
<dt class="deftypefn def-line" id="index-arduinosensor_002eGUVAS12SD"><span class="category-def">: </span><span><strong class="def-name">arduinosensor.GUVAS12SD</strong><a class="copiable-link" href="#index-arduinosensor_002eGUVAS12SD"></a></span></dt>
<dd><p>A thin wrapper for the GUVAS12SD analog UV-B sensor
 </p></dd></dl>

<h4 class="subheading" id="Methods"><span>Methods<a class="copiable-link" href="#Methods"></a></span></h4>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-GUVAS12SD_0028arObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">GUVAS12SD(<var class="var">arObj</var>,</strong> <code class="def-code-arguments"><var class="var">pin</var>)</code><a class="copiable-link" href="#index-GUVAS12SD_0028arObj_002c"></a></span></dt>
<dd><p>Constructor to create GUVAS12SD sensor
 </p><h4 class="subsubheading" id="Inputs"><span>Inputs<a class="copiable-link" href="#Inputs"></a></span></h4>
<p><var class="var">arObj</var> - the arduino parent object
</p>
<p><var class="var">pin</var> - the analog pin that the sensor is connected to
</p>
<h4 class="subsubheading" id="Outputs"><span>Outputs<a class="copiable-link" href="#Outputs"></a></span></h4>
<p><var class="var">obj</var> - created GUVAS12SD object
</p>
<h4 class="subsubheading" id="Example"><span>Example<a class="copiable-link" href="#Example"></a></span></h4>
<div class="example">
<pre class="example-preformatted"> <code class="code">
 a = arduino()
 # create sensor attached to pin a0.
 sensor = arduinosensor.GUVAS12SD(a, &quot;a0&quot;)
 </code>
 </pre></div>
</dd></dl>

<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-read_0028dsObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">V</var> =</code> <strong class="def-name">read(<var class="var">dsObj</var>)</strong><a class="copiable-link" href="#index-read_0028dsObj_0029"></a></span></dt>
<dd><p>Read the voltage of the sensor
</p>
<h4 class="subsubheading" id="Inputs-1"><span>Inputs<a class="copiable-link" href="#Inputs-1"></a></span></h4>
<p><var class="var">dsObj</var> - the GUVAS12SD object
</p>
<h4 class="subsubheading" id="Outputs-1"><span>Outputs<a class="copiable-link" href="#Outputs-1"></a></span></h4>
<p><var class="var">V</var> - read voltage - effectively equivalent to 
 readAnalogPin(arObj, pin).
</p>
<h4 class="subsubheading" id="Example-1"><span>Example<a class="copiable-link" href="#Example-1"></a></span></h4>
<div class="example">
<pre class="example-preformatted"> <code class="code">
 a = arduino()
 s = arduinosensor.GUVAS12SD(a)
 # voltage
 volts = s.read
 </code>
 </pre></div>

<p><strong class="strong">See also:</strong> arduinosensor.GUVAS12SD.
 </p></dd></dl>

<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-readIndex_0028dsObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">Idx</var> =</code> <strong class="def-name">readIndex(<var class="var">dsObj</var>)</strong><a class="copiable-link" href="#index-readIndex_0028dsObj_0029"></a></span></dt>
<dd><p>Read the UV index
</p>
<h4 class="subsubheading" id="Inputs-2"><span>Inputs<a class="copiable-link" href="#Inputs-2"></a></span></h4>
<p><var class="var">dsObj</var> - the GUVAS12SD object
</p>
<h4 class="subsubheading" id="Outputs-2"><span>Outputs<a class="copiable-link" href="#Outputs-2"></a></span></h4>
<p><var class="var">Idx</var> - the sensor reading as a UV index reading
 </p></dd></dl>

<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-readuA_0028dsObj_0029"><span class="category-def">: </span><span><code class="def-type"><var class="var">uA</var> =</code> <strong class="def-name">readuA(<var class="var">dsObj</var>)</strong><a class="copiable-link" href="#index-readuA_0028dsObj_0029"></a></span></dt>
<dd><p>Read the uA of the sensor
</p>
<h4 class="subsubheading" id="Inputs-3"><span>Inputs<a class="copiable-link" href="#Inputs-3"></a></span></h4>
<p><var class="var">dsObj</var> - the GUVAS12SD object
</p>
<h4 class="subsubheading" id="Outputs-3"><span>Outputs<a class="copiable-link" href="#Outputs-3"></a></span></h4>
<p><var class="var">uA</var> - the sensor reading as a uAmp value
 </p></dd></dl>