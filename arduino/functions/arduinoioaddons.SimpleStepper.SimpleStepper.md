---
layout: "default"
permalink: "/functions/43_arduinoioaddonsSimpleStepperSimpleStepper/"
pkg_name: "arduino"
pkg_version: "0.12.2"
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
<dt class="deftypefn" id="index-arduinoioaddons_002eSimpleStepper"><span class="category-def">: </span><span><strong class="def-name">arduinoioaddons.SimpleStepper</strong><a class="copiable-link" href="#index-arduinoioaddons_002eSimpleStepper"></a></span></dt>
<dd><p>Stepper class for stepper control using ULN2003 and compatible drivers
 </p></dd></dl>

<h4 class="subsubheading" id="Properties"><span>Properties<a class="copiable-link" href="#Properties"></a></span></h4>
<dl class="table">
<dt><var class="var">Id</var></dt>
<dd><p>Id of the stepper (Read only)
 </p></dd>
<dt><var class="var">Speed</var></dt>
<dd><p>Number of steps to do per second.
 </p></dd>
<dt>Status</dt>
<dd><p>Status of stepper (Read only).
 0 = not moving, 1 = moving, 2 = rotating
 </p></dd>
<dt>Parent</dt>
<dd><p>the Arduino parent (read only)
 </p></dd>
<dt>Pins</dt>
<dd><p>the pins used for the stepper (read only)
 </p></dd>
</dl>

<h4 class="subheading" id="Methods"><span>Methods<a class="copiable-link" href="#Methods"></a></span></h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-SimpleStepper_0028aObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">SimpleStepper(<var class="var">aObj</var>,</strong> <code class="def-code-arguments"><var class="var">pin1</var>, <var class="var">pin2</var>, <var class="var">pin3</var>, <var class="var">pin4</var>)</code><a class="copiable-link" href="#index-SimpleStepper_0028aObj_002c"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-SimpleStepper_0028aObj_002c-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">SimpleStepper(<var class="var">aObj</var>,</strong> <code class="def-code-arguments"><var class="var">pin1</var>, <var class="var">pin2</var>, <var class="var">pin3</var>, <var class="var">pin4</var>, <var class="var">pin5</var>)</code><a class="copiable-link" href="#index-SimpleStepper_0028aObj_002c-1"></a></span></dt>
<dd><p>Constructor to create a stepper object
 </p><h4 class="subsubheading" id="Inputs"><span>Inputs<a class="copiable-link" href="#Inputs"></a></span></h4>
<p><var class="var">aObj</var> - The arduino
</p>
<p><var class="var">pin1</var> - The first pin of the controller
</p>
<p><var class="var">pin2</var> - The second pin of the controller
</p>
<p><var class="var">pin3</var> - The third pin of the controller
</p>
<p><var class="var">pin4</var> - The fourth pin of the controller
</p>
<p><var class="var">pin5</var> - The fifth pin of the controller
</p>
<h4 class="subsubheading" id="Outputs"><span>Outputs<a class="copiable-link" href="#Outputs"></a></span></h4>
<p><var class="var">s</var> - a simplestepper object
</p>
<h4 class="subsubheading" id="Example"><span>Example<a class="copiable-link" href="#Example"></a></span></h4>
<div class="example">
<pre class="example-preformatted"> <code class="code">
 a = arduino()
 # create stepper object
 s = addon(a, &quot;simplestepper/simplestepper&quot;, &quot;d2&quot;, &quot;d3&quot;, &quot;d4&quot;, &quot;d5&quot;)
 # start rotating left
 s.rotate(-1);
 </code>
 </pre></div>


<p><strong class="strong">See also:</strong> addon.
 </p></dd></dl>

<dl class="first-deftypefn">
<dt class="deftypefn" id="index-move_0028sObj_002c"><span class="category-def">: </span><span><strong class="def-name">move(<var class="var">sObj</var>,</strong> <code class="def-code-arguments"><var class="var">steps</var>)</code><a class="copiable-link" href="#index-move_0028sObj_002c"></a></span></dt>
<dd><p>Move the motor the specified number of steps using the configured Speed.
</p>
<h4 class="subsubheading" id="Inputs-1"><span>Inputs<a class="copiable-link" href="#Inputs-1"></a></span></h4>
<p><var class="var">sObj</var> - the stepper object
</p>
<p><var class="var">steps</var> - the number of steps to move. steps less than 0 will be moving left.
</p>
<h4 class="subsubheading" id="Outputs-1"><span>Outputs<a class="copiable-link" href="#Outputs-1"></a></span></h4>
<p>None
</p>

<p><strong class="strong">See also:</strong> rotate.
 </p></dd></dl>

<dl class="first-deftypefn">
<dt class="deftypefn" id="index-rotate_0028sObj_002c"><span class="category-def">: </span><span><strong class="def-name">rotate(<var class="var">sObj</var>,</strong> <code class="def-code-arguments"><var class="var">dir</var>)</code><a class="copiable-link" href="#index-rotate_0028sObj_002c"></a></span></dt>
<dd><p>Start steppermotor moving in the specified direction using the configured Speed.
</p>
<h4 class="subsubheading" id="Inputs-2"><span>Inputs<a class="copiable-link" href="#Inputs-2"></a></span></h4>
<p><var class="var">sObj</var> - the stepper object
</p>
<p><var class="var">dir</var> - Direction to move. -1 = left, 0 = stop, 1 = right.
</p>
<h4 class="subsubheading" id="Outputs-2"><span>Outputs<a class="copiable-link" href="#Outputs-2"></a></span></h4>
<p>None
</p>

<p><strong class="strong">See also:</strong> move.
 </p></dd></dl>

<dl class="first-deftypefn">
<dt class="deftypefn" id="index-release_0028sObj_0029"><span class="category-def">: </span><span><strong class="def-name">release(<var class="var">sObj</var>)</strong><a class="copiable-link" href="#index-release_0028sObj_0029"></a></span></dt>
<dd><p>Release this stepper motor
</p>
<h4 class="subsubheading" id="Inputs-3"><span>Inputs<a class="copiable-link" href="#Inputs-3"></a></span></h4>
<p><var class="var">sObj</var> - the stepper object
</p>
<h4 class="subsubheading" id="Outputs-3"><span>Outputs<a class="copiable-link" href="#Outputs-3"></a></span></h4>
<p>None
</p>
</dd></dl>