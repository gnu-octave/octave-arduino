---
layout: "default"
permalink: "/functions/33_arduinoioaddonsExampleAddonEcho/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - arduinoioaddons.ExampleAddon.Echo"
category: "Arduino Addons"
func_name: "arduinoioaddons.ExampleAddon.Echo"
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
<dt id="index-arduinoioaddons_002eExampleAddon_002eEcho"><span class="category">: </span><span><em></em> <strong>arduinoioaddons.ExampleAddon.Echo</strong><a href='#index-arduinoioaddons_002eExampleAddon_002eEcho' class='copiable-anchor'></a></span></dt>
<dd><p>Basic Example matlab/octave code to illustrate creating
 a user addon. 
</p>

<p><strong>See also:</strong> addon.
 </p></dd></dl>

<span id="Properties"></span><h4 class="subsubheading">Properties</h4>
<p><var>Parent</var> - the parent arduino object.
</p>
<p><var>Pins</var> - the pins allocated the addon.
</p>
<span id="Methods"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-Echo_0028arObj_0029"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>Echo(arObj)</strong><a href='#index-Echo_0028arObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create Echo addon
 </p><span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>arObj</var> - the arduino parent object
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created Echo object
 </p></dd></dl>

<dl class="def">
<dt id="index-shout_0028text_0029"><span class="category">: </span><span><em><var>response</var> =</em> <strong>shout(<var>text</var>)</strong><a href='#index-shout_0028text_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Send text to arduino and receive back the echoed reply
</p>
<span id="Inputs-1"></span><h4 class="subsubheading">Inputs</h4>
<p><var>text</var> - text to send to arduino
</p>
<span id="Outputs-1"></span><h4 class="subsubheading">Outputs</h4>
<p><var>response</var> - response from the arduino, which should be the same as 
 the input text.
 </p></dd></dl>