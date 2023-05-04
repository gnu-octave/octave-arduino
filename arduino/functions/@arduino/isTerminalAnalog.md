---
layout: "default"
permalink: "/functions/@arduino/25_arduinoisTerminalAnalog/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/isTerminalAnalog"
category: "Arduino Functions"
func_name: "@arduino/isTerminalAnalog"
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
<dt id="index-isTerminalAnalog"><span class="category">: </span><span><em><var>ret</var> =</em> <strong>isTerminalAnalog</strong> <em>(<var>obj</var>, <var>terminal</var>)</em><a href='#index-isTerminalAnalog' class='copiable-anchor'></a></span></dt>
<dd><p>Return true if pin is capable of analog input
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the connected arduino object
</p>
<p><var>terminal</var> is a terminal number to check
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>ret</var> return 1 if terminal is a analog pin, 0 otherwise
</p>
</dd></dl>