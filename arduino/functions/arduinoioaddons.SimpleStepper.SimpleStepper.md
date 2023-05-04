---
layout: "default"
permalink: "/functions/43_arduinoioaddonsSimpleStepperSimpleStepper/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - arduinoioaddons.SimpleStepper.SimpleStepper"
category: "Arduino Addons"
func_name: "arduinoioaddons.SimpleStepper.SimpleStepper"
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
<dt id="index-arduinoioaddons_002eSimpleStepper"><span class="category">: </span><span><em></em> <strong>arduinoioaddons.SimpleStepper</strong><a href='#index-arduinoioaddons_002eSimpleStepper' class='copiable-anchor'></a></span></dt>
<dd><p>Stepper class for stepper control using ULN2003 and compatible drivers
 </p></dd></dl>

<span id="Properties"></span><h4 class="subsubheading">Properties</h4>
<dl compact="compact">
<dt><span><var>Id</var></span></dt>
<dd><p>Id of the stepper (Read only)
 </p></dd>
<dt><span><var>Speed</var></span></dt>
<dd><p>Number of steps to do per second.
 </p></dd>
<dt><span>Status</span></dt>
<dd><p>Status of stepper (Read only).
 0 = not moving, 1 = moving, 2 = rotating
 </p></dd>
<dt><span>Parent</span></dt>
<dd><p>the Arduino parent (read only)
 </p></dd>
<dt><span>Pins</span></dt>
<dd><p>the pins used for the stepper (read only)
 </p></dd>
</dl>

<span id="Methods"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-SimpleStepper_0028aObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>SimpleStepper(<var>aObj</var>,</strong> <em><var>pin1</var>, <var>pin2</var>, <var>pin3</var>, <var>pin4</var>)</em><a href='#index-SimpleStepper_0028aObj_002c' class='copiable-anchor'></a></span></dt>
<dt id="index-SimpleStepper_0028aObj_002c-1"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>SimpleStepper(<var>aObj</var>,</strong> <em><var>pin1</var>, <var>pin2</var>, <var>pin3</var>, <var>pin4</var>, <var>pin5</var>)</em><a href='#index-SimpleStepper_0028aObj_002c-1' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create a stepper object
 </p><span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>aObj</var> - The arduino
</p>
<p><var>pin1</var> - The first pin of the controller
</p>
<p><var>pin2</var> - The second pin of the controller
</p>
<p><var>pin3</var> - The third pin of the controller
</p>
<p><var>pin4</var> - The fourth pin of the controller
</p>
<p><var>pin5</var> - The fifth pin of the controller
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>s</var> - a simplestepper object
</p>
<span id="Example"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 # create stepper object
 s = addon(a, &quot;simplestepper/simplestepper&quot;, &quot;d2&quot;, &quot;d3&quot;, &quot;d4&quot;, &quot;d5&quot;)
 # start rotating left
 s.rotate(-1);
 </code>
 </pre></div>


<p><strong>See also:</strong> addon.
 </p></dd></dl>

<dl class="def">
<dt id="index-move_0028sObj_002c"><span class="category">: </span><span><em></em> <strong>move(<var>sObj</var>,</strong> <em><var>steps</var>)</em><a href='#index-move_0028sObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Move the motor the specified number of steps using the configured Speed.
</p>
<span id="Inputs-1"></span><h4 class="subsubheading">Inputs</h4>
<p><var>sObj</var> - the stepper object
</p>
<p><var>steps</var> - the number of steps to move. steps less than 0 will be moving left.
</p>
<span id="Outputs-1"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>

<p><strong>See also:</strong> rotate.
 </p></dd></dl>

<dl class="def">
<dt id="index-rotate_0028sObj_002c"><span class="category">: </span><span><em></em> <strong>rotate(<var>sObj</var>,</strong> <em><var>dir</var>)</em><a href='#index-rotate_0028sObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Start steppermotor moving in the specified direction using the configured Speed.
</p>
<span id="Inputs-2"></span><h4 class="subsubheading">Inputs</h4>
<p><var>sObj</var> - the stepper object
</p>
<p><var>dir</var> - Direction to move. -1 = left, 0 = stop, 1 = right.
</p>
<span id="Outputs-2"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>

<p><strong>See also:</strong> move.
 </p></dd></dl>

<dl class="def">
<dt id="index-release_0028sObj_0029"><span class="category">: </span><span><em></em> <strong>release(<var>sObj</var>)</strong><a href='#index-release_0028sObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Release this stepper motor
</p>
<span id="Inputs-3"></span><h4 class="subsubheading">Inputs</h4>
<p><var>sObj</var> - the stepper object
</p>
<span id="Outputs-3"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>
</dd></dl>