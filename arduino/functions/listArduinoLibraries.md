---
layout: "default"
permalink: "/functions/20_listArduinoLibraries/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - listArduinoLibraries"
category: "General Functions"
func_name: "listArduinoLibraries"
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
<dt id="index-listArduinoLibraries"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>listArduinoLibraries</strong> <em>()</em><a href='#index-listArduinoLibraries' class='copiable-anchor'></a></span></dt>
<dt id="index-listArduinoLibraries-1"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>listArduinoLibraries</strong> <em>(<var>libtypes</var>)</em><a href='#index-listArduinoLibraries-1' class='copiable-anchor'></a></span></dt>
<dd><p>Retrieve list of all known arduino library modules that are available.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>libtypes</var> - optional specifier for type of libraries to list.
</p>
<p>Options are:
 </p><dl compact="compact">
<dt><span>all</span></dt>
<dd><p>List core and addons
 </p></dd>
<dt><span>core</span></dt>
<dd><p>List core only libraries
 </p></dd>
<dt><span>addons</span></dt>
<dd><p>List addons only
 </p></dd>
</dl>
<p>When no libtypes is specified, all libraries are shown.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> is an cell array of string library names that are
 available for programming to the arduino.
</p>

<p><strong>See also:</strong> arduino, arduinosetup.
 </p></dd></dl>