---
layout: "default"
permalink: "/functions/@arduino/29_arduinogetTerminalsFromPins/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/getTerminalsFromPins"
category: "Arduino Functions"
func_name: "@arduino/getTerminalsFromPins"
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
<dt id="index-getTerminalsFromPins"><span class="category">: </span><span><em><var>pinnums</var> =</em> <strong>getTerminalsFromPins</strong> <em>(<var>ar</var>, <var>pins</var>)</em><a href='#index-getTerminalsFromPins' class='copiable-anchor'></a></span></dt>
<dd><p>Get the terminal number for each pin.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>pins</var> - single pin name or cell or vector array of pin names.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>pinnums</var> - pin number of each named pin. If the input was a single string, returns a number.
 if the input pins was a vector or cell array, return a cell array of pin numbers corresponding
 to each input pin name.
</p>

<p><strong>See also:</strong> arduino, getPinsFromTerminals.
 </p></dd></dl>