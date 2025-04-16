---
layout: "default"
permalink: "/functions/32_arduinoioaddonsadafruitstepper/"
pkg_name: "arduino"
pkg_version: "0.12.2"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - arduinoioaddons.adafruit.stepper"
category: "Arduino Addons"
func_name: "arduinoioaddons.adafruit.stepper"
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
<dt class="deftypefn" id="index-arduinoioaddons_002eadafruit_002estepper"><span class="category-def">: </span><span><strong class="def-name">arduinoioaddons.adafruit.stepper</strong><a class="copiable-link" href="#index-arduinoioaddons_002eadafruit_002estepper"></a></span></dt>
<dd><p>Stepper class for stepper control on the adafruit motor shield
</p>

<p><strong class="strong">See also:</strong> arduinoioaddons.adafruit.motorshieldv2.
 </p></dd></dl>

<h4 class="subsubheading" id="Properties"><span>Properties<a class="copiable-link" href="#Properties"></a></span></h4>
<dl class="table">
<dt><var class="var">RPM</var></dt>
<dd><p>The rpm value set for the stepper motor
 </p></dd>
<dt>StepType</dt>
<dd><p>the StepType for the stepper (string) which can be &quot;single&quot;, 
 &quot;double&quot;, &quot;interleave&quot; or &quot;microstep&quot;
 </p></dd>
<dt>StepsPerRevolution</dt>
<dd><p>the StepsPerRevoluion for the stepper (read only)
 </p></dd>
<dt>MotorNumber</dt>
<dd><p>the motor number for the stepper (read only) value will be 1 or 2.
 </p></dd>
<dt>Parent</dt>
<dd><p>the parent shield of this stepper (read only)
 </p></dd>
</dl>

<h4 class="subheading" id="Methods"><span>Methods<a class="copiable-link" href="#Methods"></a></span></h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-stepper_0028mObj_002c"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">stepper(<var class="var">mObj</var>,</strong> <code class="def-code-arguments"><var class="var">mnum</var>, <var class="var">stepsperrev</var>)</code><a class="copiable-link" href="#index-stepper_0028mObj_002c"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-stepper_0028mObj_002c-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">obj</var> =</code> <strong class="def-name">stepper(<var class="var">mObj</var>,</strong> <code class="def-code-arguments"><var class="var">mnum</var>, <var class="var">stepsperrev</var>, <var class="var">propertyname, propertyvalue</var> ....)</code><a class="copiable-link" href="#index-stepper_0028mObj_002c-1"></a></span></dt>
<dd><p>Constructor to create dcmotor object
 </p><h4 class="subsubheading" id="Inputs"><span>Inputs<a class="copiable-link" href="#Inputs"></a></span></h4>
<p><var class="var">mObj</var> - the motor shield object
</p>
<p><var class="var">mnum</var> - The motor number (1 or 2)
</p>
<p><var class="var">stepsperrev</var> - Number of steps per revolution.
</p>
<p><var class="var">propertyname, propertyvalue</var> - Optional property 
 name/value pairs to pass to motor object.
</p>
<p>Current known properties are:
 </p><dl class="table">
<dt>RPM</dt>
<dd><p>the RPM for the stepper (revolutions per minute)
 </p></dd>
<dt>StepType</dt>
<dd><p>the StepType for the stepper (string) which can be 
 &quot;single&quot;, &quot;double&quot;, &quot;interleave&quot; or &quot;microstep&quot;
 </p></dd>
</dl>

<h4 class="subsubheading" id="Outputs"><span>Outputs<a class="copiable-link" href="#Outputs"></a></span></h4>
<p><var class="var">s</var> - a stepper object
</p>
<h4 class="subsubheading" id="Example"><span>Example<a class="copiable-link" href="#Example"></a></span></h4>
<div class="example">
<pre class="example-preformatted"> <code class="code">
 a = arduino()
 ms = addon(a, &quot;adafruit/motorshieldv2&quot;)
 mtr = stepper(ms, 1, 200)
 </code>
 </pre></div>
</dd></dl>

<dl class="first-deftypefn">
<dt class="deftypefn" id="index-move_0028sObj_002c"><span class="category-def">: </span><span><strong class="def-name">move(<var class="var">sObj</var>,</strong> <code class="def-code-arguments"><var class="var">steps</var>)</code><a class="copiable-link" href="#index-move_0028sObj_002c"></a></span></dt>
<dd><p>Move the motor moving in the specified steps using the configured RPM.
</p>
<h4 class="subsubheading" id="Inputs-1"><span>Inputs<a class="copiable-link" href="#Inputs-1"></a></span></h4>
<p><var class="var">sObj</var> - the stepper object
</p>
<h4 class="subsubheading" id="Outputs-1"><span>Outputs<a class="copiable-link" href="#Outputs-1"></a></span></h4>
<p>None
</p>

<p><strong class="strong">See also:</strong> adafruit.motorshieldv2.
 </p></dd></dl>

<dl class="first-deftypefn">
<dt class="deftypefn" id="index-release_0028sObj_0029"><span class="category-def">: </span><span><strong class="def-name">release(<var class="var">sObj</var>)</strong><a class="copiable-link" href="#index-release_0028sObj_0029"></a></span></dt>
<dd><p>Release this motor
</p>
<h4 class="subsubheading" id="Inputs-2"><span>Inputs<a class="copiable-link" href="#Inputs-2"></a></span></h4>
<p><var class="var">sObj</var> - the stepper object
</p>
<h4 class="subsubheading" id="Outputs-2"><span>Outputs<a class="copiable-link" href="#Outputs-2"></a></span></h4>
<p>None
</p>

<p><strong class="strong">See also:</strong> adafruit.motorshieldv2.
 </p></dd></dl>