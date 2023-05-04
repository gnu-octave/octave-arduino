---
layout: "default"
permalink: "/functions/@shiftRegister/19_shiftRegisterread/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @shiftRegister/read"
category: "Arduino Shiftregister Functions"
func_name: "@shiftRegister/read"
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
<dt id="index-read"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>read</strong> <em>(<var>register</var>)</em><a href='#index-read' class='copiable-anchor'></a></span></dt>
<dt id="index-read-1"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>read</strong> <em>(<var>register</var>, <var>precision</var>)</em><a href='#index-read-1' class='copiable-anchor'></a></span></dt>
<dd><p>read a value from the shift register.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>register</var> - shift register created from shiftRegister call.
</p>
<p><var>precision</var> - optional precision of the data, where precision can be a 
 number in a multiple of 8 (ie: 8,16,32) or can be a named integer type:     8
 of &rsquo;uint8&rsquo;, &rsquo;uint16&rsquo;, &rsquo;uint32&rsquo;.  The default  precision is 8.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> - returned data read from the register.
</p>

<p><strong>See also:</strong> shiftRegister, write.
 </p></dd></dl>