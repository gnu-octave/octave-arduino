---
layout: "default"
permalink: "/functions/@arduino/29_arduinogetPinsFromTerminals/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/getPinsFromTerminals"
category: "Arduino Functions"
func_name: "@arduino/getPinsFromTerminals"
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
<dt id="index-getPinsFromTerminals"><span class="category">: </span><span><em><var>pinnames</var> =</em> <strong>getPinsFromTerminals</strong> <em>(<var>ar</var>, <var>terminals</var>)</em><a href='#index-getPinsFromTerminals' class='copiable-anchor'></a></span></dt>
<dd><p>Get the pin names from the input terminal values.
</p> 
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the connected arduino object.
</p>
<p><var>terminals</var> - the numeric pin number, or array of pin numbers to get pin names.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>pinnames</var> - the string names of each input pin. If terminals was a single value, the return
 will be a single string, otherwise it will return a cell array of each pin name.
</p>

<p><strong>See also:</strong> arduino, getTerminalsFromPins.
 </p></dd></dl>