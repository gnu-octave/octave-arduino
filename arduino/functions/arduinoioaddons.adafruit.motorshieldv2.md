---
layout: "default"
permalink: "/functions/38_arduinoioaddonsadafruitmotorshieldv2/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - arduinoioaddons.adafruit.motorshieldv2"
category: "Arduino Addons"
func_name: "arduinoioaddons.adafruit.motorshieldv2"
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
<dt id="index-arduinoioaddons_002eadafruit_002emotorshieldv2"><span class="category">: </span><span><em></em> <strong>arduinoioaddons.adafruit.motorshieldv2</strong><a href='#index-arduinoioaddons_002eadafruit_002emotorshieldv2' class='copiable-anchor'></a></span></dt>
<dd><p>Adafruit motor shield addon
</p>

<p><strong>See also:</strong> addon.
 </p></dd></dl>

<span id="Properties"></span><h4 class="subsubheading">Properties</h4>
<p><var>Parent</var> - the parent arduino object.
</p>
<p><var>Pins</var> - the pins allocated the addon.
</p>
<p><var>I2CAddress</var> - the i2c address used for accessing this shield.
</p>
<p><var>PWMFrequency</var> - the set PWM frequency for this shield.
</p>
<span id="Methods"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-motorshieldv2_0028arObj_0029"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>motorshieldv2(<var>arObj</var>)</strong><a href='#index-motorshieldv2_0028arObj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-motorshieldv2_0028arObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>motorshieldv2(<var>arObj</var>,</strong> <em><var>propertyname, propertyvalue</var> ....)</em><a href='#index-motorshieldv2_0028arObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create motorshieldv2 addon object
 </p><span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>arObj</var> - the arduino parent object
</p>
<p><var>propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 </p><dl compact="compact">
<dt><span>address</span></dt>
<dd><p>I2C address of the motor shield  (default 0x60)
 </p></dd>
<dt><span>pwmfrequency</span></dt>
<dd><p>PWM Frequency to set on shield  (default 1600)
 </p></dd>
</dl>

<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created  motorshieldv2 object
</p>
<span id="Example"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 mtr = addon(a, &quot;adafruit/motorshieldv2&quot;)
 </code>
 </pre></div>
</dd></dl>

<dl class="def">
<dt id="index-servo_0028mObj_002c"><span class="category">: </span><span><em><var>s</var> =</em> <strong>servo(<var>mObj</var>,</strong> <em><var>mtrnum</var>)</em><a href='#index-servo_0028mObj_002c' class='copiable-anchor'></a></span></dt>
<dt id="index-servo_0028mObj_002c-1"><span class="category">: </span><span><em><var>s</var> =</em> <strong>servo(<var>mObj</var>,</strong> <em><var>mtrnum</var>, <var>propertyname</var>, <var>propertyvalue</var> ...)</em><a href='#index-servo_0028mObj_002c-1' class='copiable-anchor'></a></span></dt>
<dd><p>Create a servo object
</p>
<span id="Inputs-1"></span><h4 class="subsubheading">Inputs</h4>
<p><var>mObj</var> - the motor shield object
</p>
<p><var>mtrnum</var> - The servo motor number, where 1 is servo on 
 pin &quot;d10&quot; and 2 is a servo on pin &quot;d9&quot;
</p>
<p><var>propertyname</var>, <var>propertyvalue</var> - Optional property 
 name/value pairs to pass to servo object.
</p>
<p>Properties are the same as the base servo object.
</p>
<span id="Outputs-1"></span><h4 class="subsubheading">Outputs</h4>
<p><var>s</var> - a servo object
</p>
<span id="Example-1"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 ms = addon(a, &quot;adafruit/motorshieldv2&quot;)
 # get servo 1 (servo on pin D10)
 s = ms.servo(1)
 </code>
 </pre></div>

<p>The function if the equivalent of calling the arduino.servo with
 the D9 or D10 pin has the input pin.
</p>

<p><strong>See also:</strong> servo.
 </p></dd></dl>

<dl class="def">
<dt id="index-stepper_0028mObj_002c"><span class="category">: </span><span><em><var>s</var> =</em> <strong>stepper(<var>mObj</var>,</strong> <em><var>mtrnum</var>, <var>stepsperrev</var>)</em><a href='#index-stepper_0028mObj_002c' class='copiable-anchor'></a></span></dt>
<dt id="index-stepper_0028mObj_002c-1"><span class="category">: </span><span><em><var>s</var> =</em> <strong>stepper(<var>mObj</var>,</strong> <em><var>mtrnum</var>, <var>stepsperrev</var>, <var>propertyname</var>, <var>propertyvalue</var> ...)</em><a href='#index-stepper_0028mObj_002c-1' class='copiable-anchor'></a></span></dt>
<dd><p>Create a stepper motor object
</p>
<span id="Inputs-2"></span><h4 class="subsubheading">Inputs</h4>
<p><var>mObj</var> - the motor shield object
</p>
<p><var>mtrnum</var> - The stepper motor number (1 or 2)
</p>
<p><var>stepsperrev</var> - Number of steps per revolution.
</p>
<p><var>propertyname</var>, <var>propertyvalue</var> - Optional property
 name/value pairs to pass to stepper object.
</p>
<span id="Outputs-2"></span><h4 class="subsubheading">Outputs</h4>
<p><var>s</var> - a stepper object
</p>
</dd></dl>

<dl class="def">
<dt id="index-dcmotor_0028mObj_002c"><span class="category">: </span><span><em><var>s</var> =</em> <strong>dcmotor(<var>mObj</var>,</strong> <em><var>mtrnum</var>)</em><a href='#index-dcmotor_0028mObj_002c' class='copiable-anchor'></a></span></dt>
<dt id="index-dcmotor_0028mObj_002c-1"><span class="category">: </span><span><em><var>s</var> =</em> <strong>dcmotor(<var>mObj</var>,</strong> <em><var>mtrnum</var>, <var>propertyname</var>, <var>propertyvalue</var> ...)</em><a href='#index-dcmotor_0028mObj_002c-1' class='copiable-anchor'></a></span></dt>
<dd><p>Create a dcmotor motor object
</p>
<span id="Inputs-3"></span><h4 class="subsubheading">Inputs</h4>
<p><var>mObj</var> - the motor shield object
</p>
<p><var>mtrnum</var> - The motor number (1 - 4)
</p>
<p><var>propertyname</var>, <var>propertyvalue</var> - Optional property 
 name/value pairs to pass to motor object.
</p>
<span id="Outputs-3"></span><h4 class="subsubheading">Outputs</h4>
<p><var>s</var> - a dcmotorv2 object
</p>
</dd></dl>