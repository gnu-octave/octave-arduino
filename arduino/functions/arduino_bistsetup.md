---
layout: "default"
permalink: "/functions/17_arduinobistsetup/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - arduino_bistsetup"
category: "Test Functions"
func_name: "arduino_bistsetup"
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
<dt id="index-arduino_005fbistsetup"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduino_bistsetup</strong> <em>()</em><a href='#index-arduino_005fbistsetup' class='copiable-anchor'></a></span></dt>
<dt id="index-arduino_005fbistsetup-1"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduino_bistsetup</strong> <em>(<var>propertyname</var>, <var>propertyvalue</var>)</em><a href='#index-arduino_005fbistsetup-1' class='copiable-anchor'></a></span></dt>
<dd><p>Install on an arduino the required core libraries to run the BIST tests
</p>
<p>As part of the setup, the arduino IDE will be opened to allow programming
 the arduino board.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
 
<p><var>propertyname</var>, <var>propertyvalue</var> - A sequence of property name/value pairs can be given
 to set defaults while programming.
</p>
<p>Currently the following properties can be set:
 </p><dl compact="compact">
<dt><span>arduinobinary</span></dt>
<dd><p>The value should be the name/path of the arduino IDE binary for programming. If not specified,
 the function will attempt to find the binary itself.
 </p></dd>
<dt><span>debug</span></dt>
<dd><p>Set the debug flag when checking the arduino
 </p></dd>
</dl>

<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> - return 1 if everything installed ok
</p>

<p><strong>See also:</strong> arduino, arduinosetup.
 </p></dd></dl>