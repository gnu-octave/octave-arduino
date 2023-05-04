---
layout: "default"
permalink: "/functions/@arduino/34_arduinosetSharedResourceProperty/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/setSharedResourceProperty"
category: "Arduino Functions"
func_name: "@arduino/setSharedResourceProperty"
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
<dt id="index-setSharedResourceProperty"><span class="category">: </span><span><em></em> <strong>setSharedResourceProperty</strong> <em>(<var>ar</var>, <var>resource</var>, <var>propname</var>, <var>propvalue</var>)</em><a href='#index-setSharedResourceProperty' class='copiable-anchor'></a></span></dt>
<dt id="index-setSharedResourceProperty-1"><span class="category">: </span><span><em></em> <strong>setSharedResourceProperty</strong> <em>(<var>ar</var>, <var>resource</var>, <var>propname</var>, <var>propvalue</var>, ___)</em><a href='#index-setSharedResourceProperty-1' class='copiable-anchor'></a></span></dt>
<dd><p>Set property values for a given resource.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>resource</var> - name of resource to get property for.
</p>
<p><var>propname</var> - name of property from the resource.
</p>
<p><var>propvalue</var> - value of property from the resource.
</p>
<p>Multiple <var>propname</var>, <var>propvalue</var> pairs can be given.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>
<span id="Example"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 ar = arduino();
 setSharedResourceProperty(ar, &quot;myresource&quot;, &quot;myproperty&quot;, [1 2 3])
 </code>
 </pre></div>


<p><strong>See also:</strong> getSharedResourceProperty.
 </p></dd></dl>