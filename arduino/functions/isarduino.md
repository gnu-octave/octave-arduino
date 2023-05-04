---
layout: "default"
permalink: "/functions/9_isarduino/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - isarduino"
category: "General Functions"
func_name: "isarduino"
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
<dt id="index-isarduino"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>isarduino</strong> <em>(<var>obj</var>)</em><a href='#index-isarduino' class='copiable-anchor'></a></span></dt>
<dd><p>Check if input value is an arduino object
</p>
<p>Function is essentially just a call of
 <code>
 retval = isa(obj, &quot;arduino&quot;);
 </code>
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - The object to check
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> is true, if obj is an arduino object, false otherwise.
</p>

<p><strong>See also:</strong> arduino.
 </p></dd></dl>