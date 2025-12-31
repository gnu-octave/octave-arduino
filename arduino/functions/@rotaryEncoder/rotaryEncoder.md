---
layout: "default"
permalink: "/functions/@rotaryEncoder/28_rotaryEncoderrotaryEncoder/"
pkg_name: "arduino"
pkg_version: "0.12.3"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @rotaryEncoder/rotaryEncoder"
category: "Test Functions"
func_name: "@rotaryEncoder/rotaryEncoder"
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
<dt class="deftypefn def-line" id="index-rotaryEncoder"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">rotaryEncoder</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">chanApin</var>, <var class="var">chanBpin</var>)</code><a class="copiable-link" href="#index-rotaryEncoder"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn def-line" id="index-rotaryEncoder-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">rotaryEncoder</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">chanApin</var>, <var class="var">chanBpin</var>, <var class="var">ppr</var>)</code><a class="copiable-link" href="#index-rotaryEncoder-1"></a></span></dt>
<dd><p>Create a rotaryEncoder object controlled by the input pins.
</p>
<h4 class="subsubheading" id="Inputs"><span>Inputs<a class="copiable-link" href="#Inputs"></a></span></h4>
<p><var class="var">ar</var> - connected arduino object.
</p>
<p><var class="var">chanApin</var> - pin used for channel A
</p>
<p><var class="var">chanBpin</var> - pin used for channel B
</p>
<p><var class="var">ppr</var> - count of encoder pulsed required for a full revolution of the encoder.
</p>
<h4 class="subsubheading" id="Outputs"><span>Outputs<a class="copiable-link" href="#Outputs"></a></span></h4>
<p><var class="var">obj</var> - created rotary encoder object
</p>
<h4 class="subsubheading" id="Example"><span>Example<a class="copiable-link" href="#Example"></a></span></h4>
<div class="example">
<pre class="example-preformatted"> a = arduino ();
 enc = rotaryEncoder(a, &quot;d2&quot;, &quot;d3&quot;, 180);
 </pre></div>

<h4 class="subsubheading" id="Properties"><span>Properties<a class="copiable-link" href="#Properties"></a></span></h4>
<p>The rotaryEncoder object has the following public properties:
 </p><dl class="table">
<dt>parent</dt>
<dd><p>The parent (arduino) for this device
 </p></dd>
<dt>pins</dt>
<dd><p>pins used by this object
 </p></dd>
<dt>ppr</dt>
<dd><p>Number of pulses used per rotation
 </p></dd>
</dl>


<p><strong class="strong">See also:</strong> arduino.
 </p></dd></dl>