---
layout: "default"
permalink: "/functions/@arduino/20_arduinoreadVoltage/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/readVoltage"
category: "Arduino Functions"
func_name: "@arduino/readVoltage"
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
<dt id="index-readVoltage"><span class="category">: </span><span><em><var>voltage</var> =</em> <strong>readVoltage</strong> <em>(<var>ar</var>, <var>pin</var>)</em><a href='#index-readVoltage' class='copiable-anchor'></a></span></dt>
<dd><p>Read analog voltage of a pin.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino.
</p>
<p><var>pin</var> - pin name or number to query for voltage
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>voltage</var> - scaled pin value as a voltage
</p>
<span id="Example"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 ar = arduino ();
 readVoltage(ar, &quot;A4&quot;);
 ans = 
     1.401
 </code>
 </pre></div>

<p><strong>See also:</strong> arduino, readAnalogPin.
 </p></dd></dl>