---
layout: "default"
permalink: "/functions/@arduino/15_arduinouptime/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/uptime"
category: "Arduino Functions"
func_name: "@arduino/uptime"
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
<dt id="index-uptime"><span class="category">: </span><span><em><var>sec</var> =</em> <strong>uptime</strong> <em>(<var>ar</var>)</em><a href='#index-uptime' class='copiable-anchor'></a></span></dt>
<dd><p>Get the number of seconds the arduino board has been running concurrently.
</p>

<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the arduino object of the connection to an arduino board.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>sec</var> - the number seconds the board has been running. Note that the count will wrap around after
 approximately 50 days.
</p>

<p><strong>See also:</strong> arduino.
</p>
</dd></dl>