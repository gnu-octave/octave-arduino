---
layout: "default"
permalink: "/functions/@ultrasonic/24_ultrasonicreadEchoTime/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @ultrasonic/readEchoTime"
category: "Arduino Ultrasonic Functions"
func_name: "@ultrasonic/readEchoTime"
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
<dt id="index-readEchoTime"><span class="category">: </span><span><em><var>time</var> =</em> <strong>readEchoTime</strong> <em>(<var>dev</var>)</em><a href='#index-readEchoTime' class='copiable-anchor'></a></span></dt>
<dd><p>Measure the time for waves to reflect back to the ultrasonic device
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - connected ultrasonic device opened using ultrasonic()
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>time</var> - time in seconds, or Inf if out of sensor range
</p>

<p><strong>See also:</strong> arduino, ultrasonic.
 </p></dd></dl>