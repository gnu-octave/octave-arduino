---
layout: "default"
permalink: "/functions/@arduino/20_arduinovalidatePin/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/validatePin"
category: "Arduino Functions"
func_name: "@arduino/validatePin"
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
<dt id="index-validatePin"><span class="category">: </span><span><em></em> <strong>validatePin</strong> <em>(<var>ar</var>, <var>pin</var>, <var>type</var>)</em><a href='#index-validatePin' class='copiable-anchor'></a></span></dt>
<dd><p>Validate that the mode is allowed for specified pin
</p>
<p>If the mode is not valid, and error will be thrown.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>pin</var> -  name of pin to query mode validity of
</p>
<p><var>mode</var> - mode to query
</p> 
<p>Known modes are:
 </p><ul>
<li> &rsquo;I2C&rsquo;
 </li><li> &rsquo;SPI&rsquo;
 </li><li> &rsquo;PWM&rsquo;
 </li><li> &rsquo;Servo&rsquo;
 </li><li> &rsquo;analog&rsquo;
 </li><li> &rsquo;digital&rsquo;

</li></ul>


<p><strong>See also:</strong> arduino, configurePin.
 </p></dd></dl>