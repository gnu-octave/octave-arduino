---
layout: "default"
permalink: "/functions/@arduino/17_arduinoplayTone/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/playTone"
category: "Arduino Functions"
func_name: "@arduino/playTone"
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
<dt id="index-playTone"><span class="category">: </span><span><em></em> <strong>playTone</strong> <em>(<var>ar</var>, <var>pin</var>, <var>freq</var>, <var>duration</var>)</em><a href='#index-playTone' class='copiable-anchor'></a></span></dt>
<dd><p>Play a tone of a given frequency on a specified pin.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>pin</var> - digital pin to play tone on
</p>
<p><var>freq</var> - frequency in  hertz to play between 0 and 32767Hz.
</p>
<p><var>duration</var> duration in seconds to play tone between 0 and 30 seconds
</p>
<p>If duration is 0 or not specified, tone will continue to play until next tone is commanded.
 If frequency is 0, tone will stop playing
</p>
<p><strong>NOTE:</strong> use of playTone can interfere with PWM output.
 </p></dd></dl>