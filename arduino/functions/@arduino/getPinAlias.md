---
layout: "default"
permalink: "/functions/@arduino/20_arduinogetPinAlias/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/getPinAlias"
category: "Arduino Functions"
func_name: "@arduino/getPinAlias"
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
<dt id="index-getPinAlias"><span class="category">: </span><span><em><var>ouy</var> =</em> <strong>getPinAlias</strong> <em>(<var>ar</var>, <var>pin</var>)</em><a href='#index-getPinAlias' class='copiable-anchor'></a></span></dt>
<dd><p>Get the pin actual pin name from a pin alias.
</p>
<p>For example, the arduino Leonardo, pin &quot;D4&quot; is also &quot;A6&quot;.
</p> 
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the connected arduino object.
</p>
<p><var>pin</var> - a pin name.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>out</var> - alias pin name, or same as <var>pin</var> if the pin doesnt have any alias names.
</p>

<p><strong>See also:</strong> arduino, configurePinResource, getResourceOwner.
 </p></dd></dl>