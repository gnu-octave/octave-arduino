---
layout: "default"
permalink: "/functions/@arduino/25_arduinogetResourceCount/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/getResourceCount"
category: "Arduino Functions"
func_name: "@arduino/getResourceCount"
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
<dt id="index-getResourceCount"><span class="category">: </span><span><em><var>count</var> =</em> <strong>getResourceCount</strong> <em>(<var>ar</var>, <var>resource</var>)</em><a href='#index-getResourceCount' class='copiable-anchor'></a></span></dt>
<dd><p>Get the count of uses of  a given resource.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>resource</var> - name of resource to get count for.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>count</var> = count of uses registered to resource.
</p>

<p><strong>See also:</strong> incrementResourceCount. decrementResourceCount.
 </p></dd></dl>