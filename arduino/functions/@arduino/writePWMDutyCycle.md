---
layout: "default"
permalink: "/functions/@arduino/26_arduinowritePWMDutyCycle/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/writePWMDutyCycle"
category: "Arduino Functions"
func_name: "@arduino/writePWMDutyCycle"
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
<dt id="index-writePWMDutyCyle"><span class="category">: </span><span><em></em> <strong>writePWMDutyCyle</strong> <em>(<var>ar</var>, <var>pin</var>, <var>value</var>)</em><a href='#index-writePWMDutyCyle' class='copiable-anchor'></a></span></dt>
<dd><p>Set pin to output a square wave with a specified duty cycle.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>pin</var> - pin to write to.
</p>
<p><var>value</var> - duty cycle value where 0 = off, 0.5 = 50% on, 1 = always on.
</p>
<span id="Example"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino();
 writePWMDutyCycle(a,'D5',0.5);
 </code>
 </pre></div>


<p><strong>See also:</strong> arduino, writePWMVoltage.
</p>
</dd></dl>