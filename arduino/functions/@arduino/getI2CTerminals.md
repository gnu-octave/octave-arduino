---
layout: "default"
permalink: "/functions/@arduino/24_arduinogetI2CTerminals/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/getI2CTerminals"
category: "Arduino Functions"
func_name: "@arduino/getI2CTerminals"
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
<dt id="index-getI2CTerminals"><span class="category">: </span><span><em><var>pinlist</var> =</em> <strong>getI2CTerminals</strong> <em>(<var>ar</var>)</em><a href='#index-getI2CTerminals' class='copiable-anchor'></a></span></dt>
<dt id="index-getI2CTerminals-1"><span class="category">: </span><span><em><var>pinlist</var> =</em> <strong>getI2CTerminals</strong> <em>(<var>ar</var>, <var>bus</var>)</em><a href='#index-getI2CTerminals-1' class='copiable-anchor'></a></span></dt>
<dd><p>Get a cell list of pin Ids available are used for I2C mode.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the arduino object.
</p>
<p><var>bus</var> - optional bus number 0 or 1 for boards that support more than 1 bus.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>pinlist</var> - cell list of pin numbers available for I2C use.
</p>

<p><strong>See also:</strong> arduino.
 </p></dd></dl>