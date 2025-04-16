---
layout: "default"
permalink: "/functions/@arduino/16_arduinoarduino/"
pkg_name: "arduino"
pkg_version: "0.12.2"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/arduino"
category: "Arduino Functions"
func_name: "@arduino/arduino"
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
<dt class="deftypefn" id="index-arduino"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">arduino</strong> <code class="def-code-arguments">()</code><a class="copiable-link" href="#index-arduino"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-arduino-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">arduino</strong> <code class="def-code-arguments">(<var class="var">port</var>)</code><a class="copiable-link" href="#index-arduino-1"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-arduino-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">arduino</strong> <code class="def-code-arguments">(<var class="var">port</var>, <var class="var">board</var>)</code><a class="copiable-link" href="#index-arduino-2"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-arduino-3"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">arduino</strong> <code class="def-code-arguments">(<var class="var">port</var>, <var class="var">board</var>[, [<var class="var">propname</var>, <var class="var">propvalue</var>]*)</code><a class="copiable-link" href="#index-arduino-3"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-arduino-4"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">arduino</strong> <code class="def-code-arguments">(<var class="var">iaddress</var>)</code><a class="copiable-link" href="#index-arduino-4"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-arduino-5"><span class="category-def">: </span><span><code class="def-type"><var class="var">retval</var> =</code> <strong class="def-name">arduino</strong> <code class="def-code-arguments">(<var class="var">ipaddress</var>, <var class="var">board</var>)</code><a class="copiable-link" href="#index-arduino-5"></a></span></dt>
<dd><p>Create a arduino object with a connection to an arduino board.
</p> 
<h4 class="subsubheading" id="Inputs"><span>Inputs<a class="copiable-link" href="#Inputs"></a></span></h4>
<p><var class="var">port</var> - full path of serial port to connect to. For Linux,
 usually /dev/ttySXXX, for windows COMXX.
</p>
<p><var class="var">board</var> - name of board to connect (default is &rsquo;uno&rsquo;).
</p>
<p><var class="var">propname</var>, <var class="var">propvalue</var> - property name and value pair
 for additional properties to pass to the creation of the 
 arduino object.
</p>
<p>Currently properties are ignored, with the exception of:
 </p><dl class="table">
<dt>debug</dt>
<dd><p>true / false flag for whether setting debug (default false)
 </p></dd>
<dt>forcebuildon</dt>
<dd><p>true / false flag for whether to force show of the arduino IDE to
 rebuild the installed code on the arduino (default false)
 </p></dd>
<dt>baudrate (read only)</dt>
<dd><p>the communications baudrate to the board. (default 9600)
 </p></dd>
<dt>libraries</dt>
<dd><p>The libraries to be enabled on the arduino board. (default uses whatever is already installed)
 </p></dd>
</dl>

<p>if the arduino function is called without parameters, it will scan
 for the first available arduino it can find and connect to it.
</p>
<h4 class="subsubheading" id="Outputs"><span>Outputs<a class="copiable-link" href="#Outputs"></a></span></h4>
<p><var class="var">retval</var> - a successfully connected arduino object.
</p>
<h4 class="subsubheading" id="Properties"><span>Properties<a class="copiable-link" href="#Properties"></a></span></h4>
<p>The arduino object has the following public properties:
 </p><dl class="table">
<dt>name</dt>
<dd><p>name assigned to the arduino object
 </p></dd>
<dt>debug</dt>
<dd><p>true / false flag for whether debug is turned on
 </p></dd>
<dt>forcebuildon</dt>
<dd><p>true / false flag for whether to force show of the arduino IDE to
 reprogram the arduino
 </p></dd>
<dt>port (read only)</dt>
<dd><p>the communications port the board is connected to.
 </p></dd>
<dt>baudrate (read only)</dt>
<dd><p>the communications baudrate to the board.
 </p></dd>
<dt>board  (read only)</dt>
<dd><p>The name of the board type that the arduino connected to
 </p></dd>
<dt>libraries (read only)</dt>
<dd><p>The libraries currently programmed onto the board
 </p></dd>
<dt>availablepins</dt>
<dd><p>The pins available for use on the board
 </p></dd>
<dt>analogreference</dt>
<dd><p>The analog voltage reference
 </p></dd>
</dl>

<p><strong class="strong">See also:</strong> scanForArduinos, arduinosetup.
 </p></dd></dl>