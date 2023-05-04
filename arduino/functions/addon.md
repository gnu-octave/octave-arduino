---
layout: "default"
permalink: "/functions/5_addon/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - addon"
category: "Arduino Addons"
func_name: "addon"
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
<dt id="index-addon"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>addon</strong> <em>(<var>ar</var>, <var>addonname</var>)</em><a href='#index-addon' class='copiable-anchor'></a></span></dt>
<dt id="index-addon-1"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>addon</strong> <em>(<var>ar</var>, <var>addonname</var>, varargs)</em><a href='#index-addon-1' class='copiable-anchor'></a></span></dt>
<dd><p>Create an addon object using the addon named class.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>addonname</var> - the name of the addon to create. The addon name can be a user 
 addon or an inbuilt addon, however must appear in the listArduinoLibraries 
 output and have been programmed onto the arduino.
</p>
<p><var>varargs</var> - optional values that will be provided verbatim to the
 the addon class constructor.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> - cell array of string library names. 
</p>

<p><strong>See also:</strong> arduino, arduinosetup, listArduinoLibraries.
 </p></dd></dl>