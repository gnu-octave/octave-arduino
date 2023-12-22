---
layout: "default"
permalink: "/functions/15_scanForArduinos/"
pkg_name: "arduino"
pkg_version: "0.12.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - scanForArduinos"
category: "General Functions"
func_name: "scanForArduinos"
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
<dt class="deftypefn" id="index-scanForArduinos"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">scanForArduinos</strong> <code class="def-code-arguments">()</code><a class="copiable-link" href='#index-scanForArduinos'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-scanForArduinos-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">scanForArduinos</strong> <code class="def-code-arguments">(<var class="var">maxCount</var>)</code><a class="copiable-link" href='#index-scanForArduinos-1'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-scanForArduinos-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">scanForArduinos</strong> <code class="def-code-arguments">(<var class="var">&quot;debug&quot;</var>)</code><a class="copiable-link" href='#index-scanForArduinos-2'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-scanForArduinos-3"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">scanForArduinos</strong> <code class="def-code-arguments">(<var class="var">maxCount</var>, <var class="var">type</var>)</code><a class="copiable-link" href='#index-scanForArduinos-3'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-scanForArduinos-4"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">scanForArduinos</strong> <code class="def-code-arguments">(<var class="var">propertyname</var>, <var class="var">propertvalue</var> ...)</code><a class="copiable-link" href='#index-scanForArduinos-4'></a></span></dt>
<dd><p>Scan system for programmed serial connected arduino boards.
</p>
<p>scanForArduinos will scan the system for programmed arduino boards 
 and return at most <var class="var">maxCount</var> of them as a cell array 
 in <var class="var">retval</var>.
</p>
<h4 class="subsubheading" id="Inputs">Inputs</h4>
<p><var class="var">maxCount</var> - max number of arduino boards to detect.
 if <var class="var">maxCount</var> is not specified, or is a less than 1, the 
 function will return as many arduino boards as it can detect.
</p>
<p><var class="var">type</var> - optional board type to match. If specified, the board 
 type must match for the arduino to be added to the return list.
</p>
<p><var class="var">&quot;debug&quot;</var> - if single input parameter is &quot;debug&quot;, the 
 scanForArduinos will display debug information as it scans
 all available ports for arduinos.
</p>
<p><var class="var">propertyname</var>, <var class="var">propertyvalue</var> - property name/value pairs to match search with.
 </p><dl class="table">
<dt>&rsquo;BaudRate&rsquo;</dt>
<dd><p>Numeric BaudRate to use when trying to scan for arduinos.
 </p></dd>
<dt>&rsquo;MaxCount&rsquo;</dt>
<dd><p>Max number of arduinos to scan for.
 </p></dd>
<dt>&rsquo;BoardType&rsquo;</dt>
<dd><p>Boardtype to match.
 </p></dd>
<dt>&rsquo;Debug&rsquo;</dt>
<dd><p>Logical flag for debug mode.
 </p></dd>
</dl>

<h4 class="subsubheading" id="Outputs">Outputs</h4>
<p><var class="var">retval</var> structure cell array of matching detected arduino boards.
</p>
<p>Each cell value of the cell array will contain a structure with values of:
 </p><dl class="table">
<dt>port</dt>
<dd><p>the serial port the arduino is connected to
 </p></dd>
<dt>board</dt>
<dd><p>the board type of the arduino
 </p></dd>
</dl>


<p><strong class="strong">See also:</strong> arduino.
 </p></dd></dl>