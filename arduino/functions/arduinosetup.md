---
layout: "default"
permalink: "/functions/12_arduinosetup/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - arduinosetup"
category: "General Functions"
func_name: "arduinosetup"
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
<dt id="index-arduinosetup"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduinosetup</strong> <em>()</em><a href='#index-arduinosetup' class='copiable-anchor'></a></span></dt>
<dt id="index-arduinosetup-1"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduinosetup</strong> <em>(<var>propertyname</var>, <var>propertyvalue</var>)</em><a href='#index-arduinosetup-1' class='copiable-anchor'></a></span></dt>
<dd><p>Open the arduino config / programming tool to program the arduino hardware for usage with
 the Octave arduino functions.
</p>
<p>arduinosetup will create a temporary project  using the arduino IDE and allow 
 compiling and programming of the code to an arduino. 
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
 
<p><var>propertyname</var>, <var>propertyvalue</var> - A sequence of property name/value pairs can be given
 to set defaults while programming.
</p>
<p>Currently the following properties can be set:
 </p><dl compact="compact">
<dt><span>libraries</span></dt>
<dd><p>The value should be the name of a library, or string array of libraries to program on the
 arduino board.
 </p></dd>
<dt><span>arduinobinary</span></dt>
<dd><p>The value should be the name/path of the arduino IDE binary for programming. If not specified,
 the function will use getpref preferences of arduino.arduino_binary, and if not found, the
 function will attempt to find the binary itself.
</p>
<p>If provided, the value will be saved to preferences for future calls.
 </p></dd>
</dl>

<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> - return 1 if arduino IDE returned without an error
</p>

<p><strong>See also:</strong> arduino, __arduino_binary__.
 </p></dd></dl>