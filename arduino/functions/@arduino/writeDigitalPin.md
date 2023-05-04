---
layout: "default"
permalink: "/functions/@arduino/24_arduinowriteDigitalPin/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/writeDigitalPin"
category: "Arduino Functions"
func_name: "@arduino/writeDigitalPin"
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
<dt id="index-writeDigitalPin"><span class="category">: </span><span><em></em> <strong>writeDigitalPin</strong> <em>(<var>ar</var>, <var>pin</var>, <var>value</var>)</em><a href='#index-writeDigitalPin' class='copiable-anchor'></a></span></dt>
<dd><p>Write digital value to a digital I/O pin.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object.
</p>
<p><var>pin</var> - string name of the pin to write to.
</p>
<p><var>value</var> - the logical value (0, 1, true false) to write to the pin.
</p>
<p>If pin was unconfigured before using, pin is set into digital mode.
</p>
<span id="Example"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino();
 writeDigitalPin(a,'D5',1);
 </code>
 </pre></div>


<p><strong>See also:</strong> arduino, readDigitalPin.
</p>
</dd></dl>