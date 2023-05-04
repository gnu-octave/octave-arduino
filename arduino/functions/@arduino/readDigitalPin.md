---
layout: "default"
permalink: "/functions/@arduino/23_arduinoreadDigitalPin/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/readDigitalPin"
category: "Arduino Functions"
func_name: "@arduino/readDigitalPin"
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
<dt id="index-readDigitalPin"><span class="category">: </span><span><em><var>value</var> =</em> <strong>readDigitalPin</strong> <em>(<var>obj</var>, <var>pin</var>)</em><a href='#index-readDigitalPin' class='copiable-anchor'></a></span></dt>
<dd><p>Read digital value from a digital I/O pin.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object.
</p>
<p><var>pin</var> - string name of the pin to read.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>value</var> - the logical value (0, 1, true false) of the current pin state.
</p>
<span id="Example"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino ();
 pinvalue = readDigitalPin (a, 'D5');
 </code>
 </pre></div>


<p><strong>See also:</strong> arduino, writeDigitalPin.
 </p></dd></dl>