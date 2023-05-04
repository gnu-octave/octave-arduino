---
layout: "default"
permalink: "/functions/@arduino/26_arduinoisTerminalDigital/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/isTerminalDigital"
category: "Arduino Functions"
func_name: "@arduino/isTerminalDigital"
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
<dt id="index-isTerminalDigital_0028obj_002c"><span class="category">: </span><span><em><var>ret</var> =</em> <strong>isTerminalDigital(<var>obj</var>,</strong> <em><var>terminal</var>)</em><a href='#index-isTerminalDigital_0028obj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Return true if pin is capable of digital functions
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the connected arduino object
</p>
<p><var>terminal</var> is a terminal number to check
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>ret</var> return 1 if terminal is a digital pin, 0 otherwise
 </p></dd></dl>