---
layout: "default"
permalink: "/functions/@rotaryEncoder/24_rotaryEncoderreadCount/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @rotaryEncoder/readCount"
category: "Arduino Rotary Encoder Functions"
func_name: "@rotaryEncoder/readCount"
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
<dt id="index-readCount"><span class="category">: </span><span><em>[<var>count</var>, <var>time</var>] =</em> <strong>readCount</strong> <em>(<var>obj</var>)</em><a href='#index-readCount' class='copiable-anchor'></a></span></dt>
<dt id="index-readCount-1"><span class="category">: </span><span><em>[<var>count</var>, <var>time</var>] =</em> <strong>readCount</strong> <em>(<var>obj</var>, <var>name</var>, <var>value</var>)</em><a href='#index-readCount-1' class='copiable-anchor'></a></span></dt>
<dd><p>read count value from the rotary encoder.
</p>
<p>subsubheading Inputs
 <var>obj</var> - rotary encoder object created with rotaryEncoder call.
</p>
<p><var>name</var>, <var>value</var> - optional name,value pairs
</p>
<p>Valid option name pairs currently are:
 </p><dl compact="compact">
<dt><span>reset</span></dt>
<dd><p>Reset the count after reading (if true)
 </p></dd>
</dl>

<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>count</var> - returned count read from the encoder.
</p>
<p><var>time</var> - seconds since arduino started
</p>

<p><strong>See also:</strong> rotaryEncoder, resetCount.
 </p></dd></dl>