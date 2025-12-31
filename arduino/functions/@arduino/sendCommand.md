---
layout: "default"
permalink: "/functions/@arduino/20_arduinosendCommand/"
pkg_name: "arduino"
pkg_version: "0.12.3"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/sendCommand"
category: "Test Functions"
func_name: "@arduino/sendCommand"
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
<dt class="deftypefn def-line" id="index-sendCommand"><span class="category-def">: </span><span><code class="def-type"><var class="var">outdata, outsize</var> =</code> <strong class="def-name">sendCommand</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">libname</var>, <var class="var">commandid</var>)</code><a class="copiable-link" href="#index-sendCommand"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn def-line" id="index-sendCommand-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">outdata, outsize</var> =</code> <strong class="def-name">sendCommand</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">libname</var>, <var class="var">commandid</var>, <var class="var">data</var>)</code><a class="copiable-link" href="#index-sendCommand-1"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn def-line" id="index-sendCommand-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">outdata, outsize</var> =</code> <strong class="def-name">sendCommand</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">libname</var>, <var class="var">commandid</var>, <var class="var">data</var>, <var class="var">timeout</var>)</code><a class="copiable-link" href="#index-sendCommand-2"></a></span></dt>
<dd><p>Send a command with option data to the connected arduino, waiting up to a specified number of seconds
 for a response.
</p>
<h4 class="subsubheading" id="Inputs"><span>Inputs<a class="copiable-link" href="#Inputs"></a></span></h4>
<p><var class="var">ar</var> - connected arduino object.
</p>
<p><var class="var">libname</var> - library sending the command. The name should match a programmed 
 library of the arduino, or an error will be displayed.
</p>
<p><var class="var">commandid</var> - integer value for the command being sent to the arduino.
</p>
<p><var class="var">data</var> - optional data sent with the command.
</p>
<p><var class="var">timeout</var> - optional timeout to wait for data
</p>
<h4 class="subsubheading" id="Outputs"><span>Outputs<a class="copiable-link" href="#Outputs"></a></span></h4>
<p><var class="var">outdata</var> - data returned back from the arduino in response to command
</p>
<p><var class="var">outsize</var> - size of data received
</p>
<p>If the arduino fails to respond with a valid reply, sendCommand will error.
</p>

<p><strong class="strong">See also:</strong> arduino.
 </p></dd></dl>