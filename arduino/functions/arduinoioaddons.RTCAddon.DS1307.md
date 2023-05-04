---
layout: "default"
permalink: "/functions/31_arduinoioaddonsRTCAddonDS1307/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - arduinoioaddons.RTCAddon.DS1307"
category: "Arduino Addons"
func_name: "arduinoioaddons.RTCAddon.DS1307"
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
<dt id="index-arduinoioaddons_002eRTCAddon_002eDS1307"><span class="category">: </span><span><em></em> <strong>arduinoioaddons.RTCAddon.DS1307</strong><a href='#index-arduinoioaddons_002eRTCAddon_002eDS1307' class='copiable-anchor'></a></span></dt>
<dd><p>DS1307 addon
</p>

<p><strong>See also:</strong> addon.
 </p></dd></dl>

<span id="Properties"></span><h4 class="subsubheading">Properties</h4>
<p><var>Parent</var> - the parent arduino object.
</p>
<p><var>Pins</var> - the pins allocated the addon.
</p>
<span id="Methods"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-DS1307_0028arObj_0029"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>DS1307(<var>arObj</var>)</strong><a href='#index-DS1307_0028arObj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-DS1307_0028arObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>DS1307(<var>arObj</var>,</strong> <em><var>propertyname, propertyvalue</var> ....)</em><a href='#index-DS1307_0028arObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create DS1307 addon
 </p><span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>arObj</var> - the arduino parent object
</p>
<p><var>propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 </p><dl compact="compact">
<dt><span>address</span></dt>
<dd><p>I2C address of the DS1307 (default 0x68)
 </p></dd>
</dl>

<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created DS1307 object
</p>
<span id="Example"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 rtc = addon(a, &quot;rtcaddon/ds1307&quot;)
 </code>
 </pre></div>
</dd></dl>

<dl class="def">
<dt id="index-clock_0028dsObj_0029"><span class="category">: </span><span><em><var>date</var> =</em> <strong>clock(<var>dsObj</var>)</strong><a href='#index-clock_0028dsObj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-clock_0028dsObj_002c"><span class="category">: </span><span><em></em> <strong>clock(<var>dsObj</var>,</strong> <em><var>date</var>)</em><a href='#index-clock_0028dsObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Get/set the DS1307 clock
</p>
<span id="Inputs-1"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the ds1307 object
</p>
<p><var>date</var> - a date vector in same format as datevec and clock
</p>
<span id="Outputs-1"></span><h4 class="subsubheading">Outputs</h4>
<p><var>date</var> - a date vector in same format as datevec and clock
</p>
<span id="Example-1"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 rtc = addon(a, &quot;rtcaddon/ds1307&quot;)
 # get and display rtc time as a date string
 datestr(rtc.clock)
 </code>
 </pre></div>

<p><strong>See also:</strong> datevec.
 </p></dd></dl>

<dl class="def">
<dt id="index-control_0028dsObj_0029"><span class="category">: </span><span><em><var>ctrl</var> =</em> <strong>control(<var>dsObj</var>)</strong><a href='#index-control_0028dsObj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-control_0028dsObj_002c"><span class="category">: </span><span><em></em> <strong>control(<var>dsObj</var>,</strong> <em><var>ctrl</var>)</em><a href='#index-control_0028dsObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Get/set the DS1307 clock
</p>
<span id="Inputs-2"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the ds1307 object
</p>
<p><var>ctrl</var> - a structure containing the control bit fields.
</p>
<span id="Outputs-2"></span><h4 class="subsubheading">Outputs</h4>
<p><var>ctrl</var> - a structure containing the control bit fields.
</p>
<p>Control structure fields are:
 Current properties are:
 </p><dl compact="compact">
<dt><span>out</span></dt>
<dd><p>Out bit in the control register
 </p></dd>
<dt><span>sqwe</span></dt>
<dd><p>Square wave enable bit in control register
 </p></dd>
<dt><span>rs</span></dt>
<dd><p>The combined RS0, RS1 value
 </p></dd>
</dl>

</dd></dl>

<dl class="def">
<dt id="index-isstarted_0028dsObj_0029"><span class="category">: </span><span><em><var>YN</var> =</em> <strong>isstarted(<var>dsObj</var>)</strong><a href='#index-isstarted_0028dsObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Get whether the RTC clock is currently counting time
</p>
<span id="Inputs-3"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the ds1307 object
</p>
<span id="Outputs-3"></span><h4 class="subsubheading">Outputs</h4>
<p><var>YN</var> - returns true if the RTC is counting
</p>

<p><strong>See also:</strong> start, stop.
 </p></dd></dl>

<dl class="def">
<dt id="index-start_0028dsObj_0029"><span class="category">: </span><span><em></em> <strong>start(<var>dsObj</var>)</strong><a href='#index-start_0028dsObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Start the RTC counting
</p>
<span id="Inputs-4"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the ds1307 object
</p>
<span id="Outputs-4"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>

<p><strong>See also:</strong> datevec.
 </p></dd></dl>

<dl class="def">
<dt id="index-stop_0028dsObj_0029"><span class="category">: </span><span><em></em> <strong>stop(<var>dsObj</var>)</strong><a href='#index-stop_0028dsObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Stop the RTC counting
</p>
<span id="Inputs-5"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the ds1307 object
</p>
<span id="Outputs-5"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>

<p><strong>See also:</strong> datevec.
 </p></dd></dl>