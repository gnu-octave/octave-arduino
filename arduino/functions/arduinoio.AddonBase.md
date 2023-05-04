---
layout: "default"
permalink: "/functions/19_arduinoioAddonBase/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - arduinoio.AddonBase"
category: "Arduino I/O package"
func_name: "arduinoio.AddonBase"
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
<dt id="index-arduinoio_002eAddonBase"><span class="category">: </span><span><em></em> <strong>arduinoio.AddonBase</strong><a href='#index-arduinoio_002eAddonBase' class='copiable-anchor'></a></span></dt>
<dd><p>Base class used for arduino library sensors
</p>

<p><strong>See also:</strong> arduinoio.LibraryBase.
 </p></dd></dl>

<span id="Properties"></span><h4 class="subheading">Properties</h4>
<p>Base properties are expected to be inherited and overwritten in inherited classes.
 and are constant in order to query through the metaobject mechanism.
</p>
<p><var>Parent</var> - parent librarybase object
</p>
<span id="Methods"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-AddonBase"><span class="category">: </span><span><em><var>ab</var> =</em> <strong>AddonBase</strong> <em>()</em><a href='#index-AddonBase' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor of base class
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p>The return value <var>ab</var> is an object of the arduinio.AddonBase class.
</p>

<p><strong>See also:</strong> arduino, addon.
 </p></dd></dl>

<dl class="def">
<dt id="index-display"><span class="category">: </span><span><em></em> <strong>display</strong> <em>()</em><a href='#index-display' class='copiable-anchor'></a></span></dt>
<dd><p>Display the addon in a verbose way.
 </p></dd></dl>