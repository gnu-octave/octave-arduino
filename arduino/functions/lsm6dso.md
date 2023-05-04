---
layout: "default"
permalink: "/functions/7_lsm6dso/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - lsm6dso"
category: "Sensors"
func_name: "lsm6dso"
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
<dt id="index-lsm6dso"><span class="category">: </span><span><em></em> <strong>lsm6dso</strong><a href='#index-lsm6dso' class='copiable-anchor'></a></span></dt>
<dd><p>LSM6DSO 6 degrees sensor
 </p></dd></dl>

<span id="Methods"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-lsm6dso_0028arObj_0029"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>lsm6dso(<var>arObj</var>)</strong><a href='#index-lsm6dso_0028arObj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-lsm6dso_0028arObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>lsm6dso(<var>arObj</var>,</strong> <em><var>propertyname, propertyvalue</var> ....)</em><a href='#index-lsm6dso_0028arObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create LSM6DSO sensor
 </p><span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>arObj</var> - the arduino parent object
</p>
<p><var>propertyname, propertyvalue</var> - optional property name, value pairs.
 Current known properties are:
 Current properties are:
 </p><dl compact="compact">
<dt><span>I2CAddress</span></dt>
<dd><p>I2C address of the sensor (default 0x40)
 </p></dd>
<dt><span>Bus</span></dt>
<dd><p>I2C bus  - 0 or 1 (default 0)
 </p></dd>
</dl>

<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created object
</p>
<span id="Example"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 sensor = lsm6dso(a)
 </code>
 </pre></div>
</dd></dl>

<dl class="def">
<dt id="index-readTemperature_0028obj_0029"><span class="category">: </span><span><em>[<var>C</var>, <var>timestamp</var>] =</em> <strong>readTemperature(<var>obj</var>)</strong><a href='#index-readTemperature_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the temperature
</p>
<span id="Inputs-1"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-1"></span><h4 class="subsubheading">Outputs</h4>
<p><var>C</var> - read temperature in deg C.
</p>
<p><var>timestamp</var> - timestamp when read
</p>
<span id="Example-1"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 s = lsm6dso(a)
 # get temp
 temp = s.readTemperature
 </code>
 </pre></div>

<p><strong>See also:</strong> lsm6dso.
 </p></dd></dl>

<dl class="def">
<dt id="index-readAcceleration_0028obj_0029"><span class="category">: </span><span><em>[<var>readVal</var>, <var>timestamp</var>] =</em> <strong>readAcceleration(<var>obj</var>)</strong><a href='#index-readAcceleration_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the acceleration rate
</p>
<span id="Inputs-2"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-2"></span><h4 class="subsubheading">Outputs</h4>
<p><var>readVal</var> - the 3 acceleration values
</p>
<p><var>timestamp</var> - timestamp when read
 </p></dd></dl>

<dl class="def">
<dt id="index-readAngularVelocity_0028obj_0029"><span class="category">: </span><span><em>[<var>readVal</var>, <var>timestamp</var>] =</em> <strong>readAngularVelocity(<var>obj</var>)</strong><a href='#index-readAngularVelocity_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the angular velocity
</p>
<span id="Inputs-3"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-3"></span><h4 class="subsubheading">Outputs</h4>
<p><var>readVal</var> - the 3 angular velocity values
</p>
<p><var>timestamp</var> - timestamp when read
 </p></dd></dl>
 
<dl class="def">
<dt id="index-read_0028obj_0029"><span class="category">: </span><span><em>[<var>readings</var>, <var>overrun</var>] =</em> <strong>read(<var>obj</var>)</strong><a href='#index-read_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dt id="index-read_0028obj_0029-1"><span class="category">: </span><span><em>[<var>accel</var>, <var>gyro</var>, <var>mag</var>, <var>timestamp</var>, <var>overrun</var>] =</em> <strong>read(<var>obj</var>)</strong><a href='#index-read_0028obj_0029-1' class='copiable-anchor'></a></span></dt>
<dd><p>Read the sensor data
</p>
<span id="Inputs-4"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-4"></span><h4 class="subsubheading">Outputs</h4>
<p><var>accel</var> - acceleration reading from sensor.
</p>
<p><var>gyro</var> - angular acceleration reading from sensor.
</p>
<p><var>timestamp</var> - timestamp when read
</p>
<p><var>overrun</var> - overrun flag.
</p>
<p><var>readings</var> - table structure with fields for Timestamp, Acceleration, AngularVelocity.
 </p></dd></dl>
 
<dl class="def">
<dt id="index-info_0028obj_0029"><span class="category">: </span><span><em><var>inf</var> =</em> <strong>info(<var>obj</var>)</strong><a href='#index-info_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the sensor info
</p>
<span id="Inputs-5"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-5"></span><h4 class="subsubheading">Outputs</h4>
<p><var>inf</var> - structure containing the sensor information.
</p>
<p>Structure fields are:
 </p><dl compact="compact">
<dt><span>SensorId</span></dt>
<dd><p>sensor id value
 </p></dd>
<dt><span>Type</span></dt>
<dd><p>sensor type &rsquo;lsm6dso&rsquo;
 </p></dd>
</dl>

</dd></dl>

<dl class="def">
<dt id="index-flush_0028obj_0029"><span class="category">: </span><span><em></em> <strong>flush(<var>obj</var>)</strong><a href='#index-flush_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Flush sensor data
</p>
<span id="Inputs-6"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-6"></span><h4 class="subsubheading">Outputs</h4>
<p>None
 </p></dd></dl>

<dl class="def">
<dt id="index-release_0028obj_0029"><span class="category">: </span><span><em></em> <strong>release(<var>obj</var>)</strong><a href='#index-release_0028obj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Release the resources of the sensor
</p>
<span id="Inputs-7"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - the sensor object
</p>
<span id="Outputs-7"></span><h4 class="subsubheading">Outputs</h4>
<p>None
 </p></dd></dl>