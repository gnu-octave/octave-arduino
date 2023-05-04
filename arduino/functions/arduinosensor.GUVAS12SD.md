---
layout: "default"
permalink: "/functions/23_arduinosensorGUVAS12SD/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - arduinosensor.GUVAS12SD"
category: "Arduino Sensors"
func_name: "arduinosensor.GUVAS12SD"
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
<dt id="index-arduinosensor_002eGUVAS12SD"><span class="category">: </span><span><em></em> <strong>arduinosensor.GUVAS12SD</strong><a href='#index-arduinosensor_002eGUVAS12SD' class='copiable-anchor'></a></span></dt>
<dd><p>A thin wrapper for the GUVAS12SD analog UV-B sensor
 </p></dd></dl>

<span id="Methods"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-GUVAS12SD_0028arObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>GUVAS12SD(<var>arObj</var>,</strong> <em><var>pin</var>)</em><a href='#index-GUVAS12SD_0028arObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create GUVAS12SD sensor
 </p><span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>arObj</var> - the arduino parent object
</p>
<p><var>pin</var> - the analog pin that the sensor is connected to
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created GUVAS12SD object
</p>
<span id="Example"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 # create sensor attached to pin a0.
 sensor = arduinosensor.GUVAS12SD(a, &quot;a0&quot;)
 </code>
 </pre></div>
</dd></dl>

<dl class="def">
<dt id="index-read_0028dsObj_0029"><span class="category">: </span><span><em><var>V</var> =</em> <strong>read(<var>dsObj</var>)</strong><a href='#index-read_0028dsObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the voltage of the sensor
</p>
<span id="Inputs-1"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the GUVAS12SD object
</p>
<span id="Outputs-1"></span><h4 class="subsubheading">Outputs</h4>
<p><var>V</var> - read voltage - effectively equivalent to 
 readAnalogPin(arObj, pin).
</p>
<span id="Example-1"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 s = arduinosensor.GUVAS12SD(a)
 # voltage
 volts = s.read
 </code>
 </pre></div>

<p><strong>See also:</strong> arduinosensor.GUVAS12SD.
 </p></dd></dl>

<dl class="def">
<dt id="index-readIndex_0028dsObj_0029"><span class="category">: </span><span><em><var>Idx</var> =</em> <strong>readIndex(<var>dsObj</var>)</strong><a href='#index-readIndex_0028dsObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the UV index
</p>
<span id="Inputs-2"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the GUVAS12SD object
</p>
<span id="Outputs-2"></span><h4 class="subsubheading">Outputs</h4>
<p><var>Idx</var> - the sensor reading as a UV index reading
 </p></dd></dl>

<dl class="def">
<dt id="index-readuA_0028dsObj_0029"><span class="category">: </span><span><em><var>uA</var> =</em> <strong>readuA(<var>dsObj</var>)</strong><a href='#index-readuA_0028dsObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Read the uA of the sensor
</p>
<span id="Inputs-3"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the GUVAS12SD object
</p>
<span id="Outputs-3"></span><h4 class="subsubheading">Outputs</h4>
<p><var>uA</var> - the sensor reading as a uAmp value
 </p></dd></dl>