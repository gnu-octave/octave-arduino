---
layout: "default"
permalink: "/functions/21_arduinosensorMPC3002/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - arduinosensor.MPC3002"
category: "Arduino Sensors"
func_name: "arduinosensor.MPC3002"
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
<dt id="index-arduinosensor_002eMPC3002"><span class="category">: </span><span><em></em> <strong>arduinosensor.MPC3002</strong><a href='#index-arduinosensor_002eMPC3002' class='copiable-anchor'></a></span></dt>
<dd><p>MCP3002 ADC sensor
 </p></dd></dl>

<span id="Methods"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-MPC3002_0028arObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>MPC3002(<var>arObj</var>,</strong> <em><var>selectPin</var>)</em><a href='#index-MPC3002_0028arObj_002c' class='copiable-anchor'></a></span></dt>
<dt id="index-MPC3002_0028arObj_002c-1"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>MPC3002(<var>arObj</var>,</strong> <em><var>selectPin</var>, <var>propertyname, propertyvalue</var> ....)</em><a href='#index-MPC3002_0028arObj_002c-1' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create MPC3002 sensor
 </p><span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>arObj</var> - the arduino parent object
</p>
<p><var>selectPin</var> - the SPI cs select pin
</p>
<p><var>propertyname, propertyvalue</var> - optional property name, value pairs.
</p>
<p>Current properties are:
 </p><dl compact="compact">
<dt><span>referenceVoltage</span></dt>
<dd><p>Reference voltage for scaling the ADC inputs (default 5.0)
 </p></dd>
</dl>

<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created MCP3002 object
</p>
<span id="Example"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 sensor = arduinosensor.MPC3002(a, &quot;d10&quot;)
 </code>
 </pre></div>
</dd></dl>

<dl class="def">
<dt id="index-readVoltage_0028dsObj_002c"><span class="category">: </span><span><em><var>voltage</var> =</em> <strong>readVoltage(<var>dsObj</var>,</strong> <em><var>chan</var>)</em><a href='#index-readVoltage_0028dsObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Read the voltage from a channel
</p>
<span id="Inputs-1"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dsObj</var> - the MPC3002 object
</p>
<p><var>chan</var> - the channel to read (0 or 1)
</p>
<span id="Outputs-1"></span><h4 class="subsubheading">Outputs</h4>
<p><var>voltage</var> - read voltage.
</p>
<span id="Example-1"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 s = arduinosensor.MPC3002(a, &quot;d10&quot;)
 volts = readVoltage(s, 0)
 </code>
 </pre></div>

<p><strong>See also:</strong> arduinosensor.MPC3002.
 </p></dd></dl>