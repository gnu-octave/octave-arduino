---
layout: "default"
permalink: "/functions/@arduino/18_arduinogetEndian/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/getEndian"
category: "Arduino Functions"
func_name: "@arduino/getEndian"
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
<dt id="index-getEndian"><span class="category">: </span><span><em><var>mcu</var> =</em> <strong>getEndian</strong> <em>(<var>ar</var>)</em><a href='#index-getEndian' class='copiable-anchor'></a></span></dt>
<dd><p>Get the endian used by the connected arduino.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - arduino object connected to a arduino board.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>endian</var> - string representing the endian used by the arduino board.
</p>
<p>&rsquo;L&rsquo; means little endian,
 &rsquo;B&rsquo; means big endian
</p>

<p><strong>See also:</strong> arduino, getMCU.
 </p></dd></dl>