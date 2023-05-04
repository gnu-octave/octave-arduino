---
layout: "default"
permalink: "/functions/@arduino/22_arduinoreadAnalogPin/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/readAnalogPin"
category: "Arduino Functions"
func_name: "@arduino/readAnalogPin"
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
<dt id="index-readAnalogPin"><span class="category">: </span><span><em><var>value</var> =</em> <strong>readAnalogPin</strong> <em>(<var>ar</var>, <var>pin</var>)</em><a href='#index-readAnalogPin' class='copiable-anchor'></a></span></dt>
<dd><p>Read analog voltage of  <var>pin</var>.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object.
</p>
<p><var>pin</var> - string name of the pin to read.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>value</var> - analog value of the pin 
</p>
<span id="Example"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 ar = arduino ();
 readAnalogPin(ar, &quot;A4&quot;);
 ans = 
     87
 </code>
 </pre></div>

<p><strong>See also:</strong> arduino, readVoltage.
 </p></dd></dl>