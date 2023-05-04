---
layout: "default"
permalink: "/functions/@arduino/34_arduinogetSharedResourceProperty/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/getSharedResourceProperty"
category: "Arduino Functions"
func_name: "@arduino/getSharedResourceProperty"
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
<dt id="index-getSharedResourceProperty"><span class="category">: </span><span><em><var>count</var> =</em> <strong>getSharedResourceProperty</strong> <em>(<var>ar</var>, <var>resource</var>, <var>property</var>)</em><a href='#index-getSharedResourceProperty' class='copiable-anchor'></a></span></dt>
<dd><p>Get the value of a property from a given resource.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>resource</var> - name of resource to get property for.
</p>
<p><var>property</var> - name of property from the resource.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>propvalue</var> - value of the property
</p>

<p><strong>See also:</strong> getResourceCount, setSharedResourceProperty.
 </p></dd></dl>