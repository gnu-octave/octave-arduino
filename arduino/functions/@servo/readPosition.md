---
layout: "default"
permalink: "/functions/@servo/19_servoreadPosition/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @servo/readPosition"
category: "Arduino Servo Functions"
func_name: "@servo/readPosition"
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
<dt id="index-readPosition"><span class="category">: </span><span><em><var>position</var> =</em> <strong>readPosition</strong> <em>(<var>servo</var>)</em><a href='#index-readPosition' class='copiable-anchor'></a></span></dt>
<dd><p>Read the position of a servo
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>servo</var> - servo object created from arduino.servo.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>position</var> - value between 0 .. 1 for the current servo position,
 where 0 is the servo min position, 1 is the servo maximum position.
</p>

<p><strong>See also:</strong> servo, writePosition.
 </p></dd></dl>