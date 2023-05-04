---
layout: "default"
permalink: "/functions/20_listArduinoLibraries/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - listArduinoLibraries"
category: "General Functions"
func_name: "listArduinoLibraries"
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
<dt id="index-listArduinoLibraries"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>listArduinoLibraries</strong> <em>()</em><a href='#index-listArduinoLibraries' class='copiable-anchor'></a></span></dt>
<dt id="index-listArduinoLibraries-1"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>listArduinoLibraries</strong> <em>(<var>libtypes</var>)</em><a href='#index-listArduinoLibraries-1' class='copiable-anchor'></a></span></dt>
<dd><p>Retrieve list of all known arduino library modules that are available.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>libtypes</var> - optional specifier for type of libraries to list.
</p>
<p>Options are:
 </p><dl compact="compact">
<dt><span>all</span></dt>
<dd><p>List core and addons
 </p></dd>
<dt><span>core</span></dt>
<dd><p>List core only libraries
 </p></dd>
<dt><span>addons</span></dt>
<dd><p>List addons only
 </p></dd>
</dl>
<p>When no libtypes is specified, all libraries are shown.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> is an cell array of string library names that are
 available for programming to the arduino.
</p>

<p><strong>See also:</strong> arduino, arduinosetup.
 </p></dd></dl>