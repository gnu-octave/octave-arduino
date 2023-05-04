---
layout: "default"
permalink: "/functions/@shiftRegister/20_shiftRegisterwrite/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @shiftRegister/write"
category: "Arduino Shiftregister Functions"
func_name: "@shiftRegister/write"
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
<dt id="index-_0028register_002c"><span class="category">: </span><span><em>write</em> <strong>(<var>register</var>,</strong> <em><var>dataIn</var>)</em><a href='#index-_0028register_002c' class='copiable-anchor'></a></span></dt>
<dt id="index-_0028register_002c-1"><span class="category">: </span><span><em>write</em> <strong>(<var>register</var>,</strong> <em><var>dataIn</var>, <var>precision</var>)</em><a href='#index-_0028register_002c-1' class='copiable-anchor'></a></span></dt>
<dd><p>Write a value to the shift register.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>register</var> - shift register created from shiftRegister call.
</p>
<p><var>dataIn</var> - data to clock into the shiftRegister.
</p>
<p><var>precision</var> - optional precision of the data, where precision can be a 
 number in a multiple of 8 (ie: 8,16,32) or can be a named integer type 
 of &rsquo;uint8&rsquo;, &rsquo;uint16&rsquo;, &rsquo;uint32&rsquo;.  The default  precision is 8.
</p>

<p><strong>See also:</strong> shiftRegister, read.
 </p></dd></dl>