---
layout: "default"
permalink: "/functions/@arduino/19_arduinogetPinInfo/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/getPinInfo"
category: "Arduino Functions"
func_name: "@arduino/getPinInfo"
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
<dt id="index-getPinInfo"><span class="category">: </span><span><em><var>pininfo</var> =</em> <strong>getPinInfo</strong> <em>(<var>ar</var>, <var>pin</var>)</em><a href='#index-getPinInfo' class='copiable-anchor'></a></span></dt>
<dt id="index-getPinInfo-1"><span class="category">: </span><span><em><var>pininfoarray</var> =</em> <strong>getPinInfo</strong> <em>(<var>ar</var>, <var>pinarray</var>)</em><a href='#index-getPinInfo-1' class='copiable-anchor'></a></span></dt>
<dd><p>Get the pin information from the input pins values.
</p>
<p>getPinInfo (<var>ar</var>, <var>pin</var>) will get information for a single pin.
</p>
<p>getPinInfo (<var>ar</var>, <var>pinarray</var>) will get a cell array of pin information
</p> 
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the connected arduino object.
</p>
<p><var>pin</var> - a pin number or pin name.
</p>
<p><var>pinarray</var> - the array of pin numbers or names
</p>
<p>The pininfo struct contains the following fields:
 </p><dl compact="compact">
<dt><span>terminal</span></dt>
<dd><p>Terminal number of the pin
 </p></dd>
<dt><span>name</span></dt>
<dd><p>String name of the pin
 </p></dd>
<dt><span>owner</span></dt>
<dd><p>Current item owner of the pin
 </p></dd>
<dt><span>mode</span></dt>
<dd><p>Current configured mode for the pin
 </p></dd>
</dl>

<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>pininfo</var> - struct on pin information.
</p>
<p><var>pininfolist</var> - cell array of pin info
</p>

<p><strong>See also:</strong> arduino, configurePinResource, getResourceOwner.
 </p></dd></dl>