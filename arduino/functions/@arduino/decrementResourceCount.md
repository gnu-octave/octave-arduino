---
layout: "default"
permalink: "/functions/@arduino/31_arduinodecrementResourceCount/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/decrementResourceCount"
category: "Arduino Functions"
func_name: "@arduino/decrementResourceCount"
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
<dt id="index-decrementResourceCount"><span class="category">: </span><span><em><var>count</var> =</em> <strong>decrementResourceCount</strong> <em>(<var>ar</var>, <var>resource</var>)</em><a href='#index-decrementResourceCount' class='copiable-anchor'></a></span></dt>
<dd><p>Decrement the count of a named resource by 1 and return the
 new count.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>resource</var> - name of resource to decrement count.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>count</var> = count of uses registered to resource.
</p>

<p><strong>See also:</strong> getResourceCount. incrementResourceCount.
 </p></dd></dl>