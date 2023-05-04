---
layout: "default"
permalink: "/functions/12_arduinosetup/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - arduinosetup"
category: "General Functions"
func_name: "arduinosetup"
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
<dt id="index-arduinosetup"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduinosetup</strong> <em>()</em><a href='#index-arduinosetup' class='copiable-anchor'></a></span></dt>
<dt id="index-arduinosetup-1"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduinosetup</strong> <em>(<var>propertyname</var>, <var>propertyvalue</var>)</em><a href='#index-arduinosetup-1' class='copiable-anchor'></a></span></dt>
<dd><p>Open the arduino config / programming tool to program the arduino hardware for usage with
 the Octave arduino functions.
</p>
<p>arduinosetup will create a temporary project  using the arduino IDE and allow 
 compiling and programming of the code to an arduino. 
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
 
<p><var>propertyname</var>, <var>propertyvalue</var> - A sequence of property name/value pairs can be given
 to set defaults while programming.
</p>
<p>Currently the following properties can be set:
 </p><dl compact="compact">
<dt><span>libraries</span></dt>
<dd><p>The value should be the name of a library, or string array of libraries to program on the
 arduino board.
 </p></dd>
<dt><span>arduinobinary</span></dt>
<dd><p>The value should be the name/path of the arduino IDE binary for programming. If not specified,
 the function will use getpref preferences of arduino.arduino_binary, and if not found, the
 function will attempt to find the binary itself.
</p>
<p>If provided, the value will be saved to preferences for future calls.
 </p></dd>
</dl>

<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> - return 1 if arduino IDE returned without an error
</p>

<p><strong>See also:</strong> arduino, __arduino_binary__.
 </p></dd></dl>