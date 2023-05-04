---
layout: "default"
permalink: "/functions/@arduino/20_arduinosendCommand/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/sendCommand"
category: "Arduino Functions"
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
<dt id="index-sendCommand"><span class="category">: </span><span><em><var>outdata, outsize</var> =</em> <strong>sendCommand</strong> <em>(<var>ar</var>, <var>libname</var>, <var>commandid</var>)</em><a href='#index-sendCommand' class='copiable-anchor'></a></span></dt>
<dt id="index-sendCommand-1"><span class="category">: </span><span><em><var>outdata, outsize</var> =</em> <strong>sendCommand</strong> <em>(<var>ar</var>, <var>libname</var>, <var>commandid</var>, <var>data</var>)</em><a href='#index-sendCommand-1' class='copiable-anchor'></a></span></dt>
<dt id="index-sendCommand-2"><span class="category">: </span><span><em><var>outdata, outsize</var> =</em> <strong>sendCommand</strong> <em>(<var>ar</var>, <var>libname</var>, <var>commandid</var>, <var>data</var>, <var>timeout</var>)</em><a href='#index-sendCommand-2' class='copiable-anchor'></a></span></dt>
<dd><p>Send a command with option data to the connected arduino, waiting up to a specified number of seconds
 for a response.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object.
</p>
<p><var>libname</var> - library sending the command. The name should match a programmed 
 library of the arduino, or an error will be displayed.
</p>
<p><var>commandid</var> - integer value for the command being sent to the arduino.
</p>
<p><var>data</var> - optional data sent with the command.
</p>
<p><var>timeout</var> - optional timeout to wait for data
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>outdata</var> - data returned back from the arduino in response to command
</p>
<p><var>outsize</var> - size of data received
</p>
<p>If the arduino fails to respond with a valid reply, sendCommand will error.
</p>

<p><strong>See also:</strong> arduino.
 </p></dd></dl>