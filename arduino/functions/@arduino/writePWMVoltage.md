---
layout: "default"
permalink: "/functions/@arduino/24_arduinowritePWMVoltage/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/writePWMVoltage"
category: "Arduino Functions"
func_name: "@arduino/writePWMVoltage"
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
<dt id="index-writePWMVoltage"><span class="category">: </span><span><em></em> <strong>writePWMVoltage</strong> <em>(<var>ar</var>, <var>pin</var>, <var>voltage</var>)</em><a href='#index-writePWMVoltage' class='copiable-anchor'></a></span></dt>
<dd><p>Emulate an approximate voltage out of a pin using PWM.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>pin</var> - pin to write to.
</p>
<p><var>voltage</var> - voltage to emulate with PWM, between 0 - 5.0
</p>
<span id="Example"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino();
 writePWMVoltage(a,'D5',1.0);
 </code>
 </pre></div>


<p><strong>See also:</strong> arduino, writePWMDutyCycle.
 </p></dd></dl>