---
layout: "default"
permalink: "/functions/20_arduinosensorDS1307/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - arduinosensor.DS1307"
category: "Arduino Sensors"
func_name: "arduinosensor.DS1307"
navigation:
- id: "overview"
  name: "Overview"
  url: "/index"
- id: "Functions"
  name: "Function Reference"
  url: "/functions"
- id: "news"
  name: "News"
  url: "/news"
- id: "manual"
  name: "Manual"
  url: "/manual"
---
<dl class="def">
<dt id="index-arduinosensor_002eDS1307"><span class="category">: </span><span><em></em> <strong>arduinosensor.DS1307</strong><a href='#index-arduinosensor_002eDS1307' class='copiable-anchor'></a></span></dt>
<dd><p>DS1307 realtime clock sensor
 </p></dd></dl>

<span id="Methods"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-DS1307_0028arObj_0029"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>DS1307(<var>arObj</var>)</strong><a href='#index-DS1307_0028arObj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-DS1307_0028arObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>DS1307(<var>arObj</var>,</strong> <em><var>propertyname, propertyvalue</var> ....)</em><a href='#index-DS1307_0028arObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create DS1307 sensor
 </p><span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>arObj</var> - the arduino parent object
</p>
<p><var>propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 Current properties are:
 </p><dl compact="compact">
<dt><span>i2caddress</span></dt>
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
 rtc = arduinosensor.DS1307(a)
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
 rtc = arduinosensor.DS1307(a)
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