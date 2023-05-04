---
layout: "default"
permalink: "/functions/32_arduinoioaddonsadafruitstepper/"
pkg_name: "arduino"
pkg_version: "0.10.0"
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
<dt id="index-arduinoioaddons_002eadafruit_002estepper"><span class="category">: </span><span><em></em> <strong>arduinoioaddons.adafruit.stepper</strong><a href='#index-arduinoioaddons_002eadafruit_002estepper' class='copiable-anchor'></a></span></dt>
<dd><p>Stepper class for stepper control on the adafruit motor shield
</p>

<p><strong>See also:</strong> arduinoioaddons.adafruit.motorshieldv2.
 </p></dd></dl>

<span id="Properties"></span><h4 class="subsubheading">Properties</h4>
<dl compact="compact">
<dt><span><var>RPM</var></span></dt>
<dd><p>The rpm value set for the stepper motor
 </p></dd>
<dt><span>StepType</span></dt>
<dd><p>the StepType for the stepper (string) which can be &quot;single&quot;, 
 &quot;double&quot;, &quot;interleave&quot; or &quot;microstep&quot;
 </p></dd>
<dt><span>StepsPerRevolution</span></dt>
<dd><p>the StepsPerRevoluion for the stepper (read only)
 </p></dd>
<dt><span>MotorNumber</span></dt>
<dd><p>the motor number for the stepper (read only) value will be 1 or 2.
 </p></dd>
<dt><span>Parent</span></dt>
<dd><p>the parent shield of this stepper (read only)
 </p></dd>
</dl>

<span id="Methods"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-stepper_0028mObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>stepper(<var>mObj</var>,</strong> <em><var>mnum</var>, <var>stepsperrev</var>)</em><a href='#index-stepper_0028mObj_002c' class='copiable-anchor'></a></span></dt>
<dt id="index-stepper_0028mObj_002c-1"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>stepper(<var>mObj</var>,</strong> <em><var>mnum</var>, <var>stepsperrev</var>, <var>propertyname, propertyvalue</var> ....)</em><a href='#index-stepper_0028mObj_002c-1' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create dcmotor object
 </p><span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>mObj</var> - the motor shield object
</p>
<p><var>mnum</var> - The motor number (1 or 2)
</p>
<p><var>stepsperrev</var> - Number of steps per revolution.
</p>
<p><var>propertyname, propertyvalue</var> - Optional property 
 name/value pairs to pass to motor object.
</p>
<p>Current known properties are:
 </p><dl compact="compact">
<dt><span>RPM</span></dt>
<dd><p>the RPM for the stepper (revolutions per minute)
 </p></dd>
<dt><span>StepType</span></dt>
<dd><p>the StepType for the stepper (string) which can be 
 &quot;single&quot;, &quot;double&quot;, &quot;interleave&quot; or &quot;microstep&quot;
 </p></dd>
</dl>

<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>s</var> - a stepper object
</p>
<span id="Example"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 ms = addon(a, &quot;adafruit/motorshieldv2&quot;)
 mtr = stepper(ms, 1, 200)
 </code>
 </pre></div>
</dd></dl>

<dl class="def">
<dt id="index-move_0028sObj_002c"><span class="category">: </span><span><em></em> <strong>move(<var>sObj</var>,</strong> <em><var>steps</var>)</em><a href='#index-move_0028sObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Move the motor moving in the specified steps using the configured RPM.
</p>
<span id="Inputs-1"></span><h4 class="subsubheading">Inputs</h4>
<p><var>sObj</var> - the stepper object
</p>
<span id="Outputs-1"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>

<p><strong>See also:</strong> adafruit.motorshieldv2.
 </p></dd></dl>

<dl class="def">
<dt id="index-release_0028sObj_0029"><span class="category">: </span><span><em></em> <strong>release(<var>sObj</var>)</strong><a href='#index-release_0028sObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Release this motor
</p>
<span id="Inputs-2"></span><h4 class="subsubheading">Inputs</h4>
<p><var>sObj</var> - the stepper object
</p>
<span id="Outputs-2"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>

<p><strong>See also:</strong> adafruit.motorshieldv2.
 </p></dd></dl>