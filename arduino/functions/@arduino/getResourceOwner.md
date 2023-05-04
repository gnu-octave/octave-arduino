---
layout: "default"
permalink: "/functions/@arduino/25_arduinogetResourceOwner/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/getResourceOwner"
category: "Arduino Functions"
func_name: "@arduino/getResourceOwner"
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
<dt id="index-getResourceOwner"><span class="category">: </span><span><em><var>owner</var> =</em> <strong>getResourceOwner</strong> <em>(<var>ar</var>, <var>terminal</var>)</em><a href='#index-getResourceOwner' class='copiable-anchor'></a></span></dt>
<dd><p>Get the owner of pin allocated previously by configurePinResource.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>terminal</var> - terminal number to get owner of.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>owner</var> = owner of the terminal pin, or &quot;&quot; if not owned.
</p>

<p><strong>See also:</strong> configurePinResource.
 </p></dd></dl>