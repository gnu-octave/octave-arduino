---
layout: "default"
permalink: "/functions/@arduino/16_arduinoarduino/"
pkg_name: "arduino"
pkg_version: "0.10.0"
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
<dt id="index-arduino"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduino</strong> <em>()</em><a href='#index-arduino' class='copiable-anchor'></a></span></dt>
<dt id="index-arduino-1"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduino</strong> <em>(<var>port</var>)</em><a href='#index-arduino-1' class='copiable-anchor'></a></span></dt>
<dt id="index-arduino-2"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduino</strong> <em>(<var>port</var>, <var>board</var>)</em><a href='#index-arduino-2' class='copiable-anchor'></a></span></dt>
<dt id="index-arduino-3"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduino</strong> <em>(<var>port</var>, <var>board</var>[, [<var>propname</var>, <var>propvalue</var>]*)</em><a href='#index-arduino-3' class='copiable-anchor'></a></span></dt>
<dt id="index-arduino-4"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduino</strong> <em>(<var>iaddress</var>)</em><a href='#index-arduino-4' class='copiable-anchor'></a></span></dt>
<dt id="index-arduino-5"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduino</strong> <em>(<var>ipaddress</var>, <var>board</var>)</em><a href='#index-arduino-5' class='copiable-anchor'></a></span></dt>
<dd><p>Create a arduino object with a connection to an arduino board.
</p> 
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>port</var> - full path of serial port to connect to. For Linux,
 usually /dev/ttySXXX, for windows COMXX.
</p>
<p><var>board</var> - name of board to connect (default is &rsquo;uno&rsquo;).
</p>
<p><var>propname</var>, <var>propvalue</var> - property name and value pair
 for additional properties to pass to the creation of the 
 arduino object.
</p>
<p>Currently properties are ignored.
</p>
<p>if the arduino function is called without parameters, it will scan
 for the first available arduino it can find and connect to it.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> - a successfully connected arduino object.
</p>
<span id="Properties"></span><h4 class="subsubheading">Properties</h4>
<p>The arduino object has the following public properties:
 </p><dl compact="compact">
<dt><span>name</span></dt>
<dd><p>name assigned to the arduino object
 </p></dd>
<dt><span>debug</span></dt>
<dd><p>true / false flag for whether debug in turned on
 </p></dd>
<dt><span>forcebuildon</span></dt>
<dd><p>true / false flag for whether to force show of the arduino IDE to
 reprogram the arduino
 </p></dd>
<dt><span>port (read only)</span></dt>
<dd><p>the communications port the board is connected to.
 </p></dd>
<dt><span>board  (read only)</span></dt>
<dd><p>The name of the board type that the arduino connected to
 </p></dd>
<dt><span>libraries (read only)</span></dt>
<dd><p>The libraries currently programmed onto the board
 </p></dd>
<dt><span>availablepins</span></dt>
<dd><p>The pins available for use on the board
 </p></dd>
<dt><span>analogreference</span></dt>
<dd><p>The analog voltage reference
 </p></dd>
</dl>

<p><strong>See also:</strong> scanForArduinos, arduinosetup.
 </p></dd></dl>