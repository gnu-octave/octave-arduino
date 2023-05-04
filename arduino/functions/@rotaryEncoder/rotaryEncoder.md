---
layout: "default"
permalink: "/functions/@rotaryEncoder/28_rotaryEncoderrotaryEncoder/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @rotaryEncoder/rotaryEncoder"
category: "Arduino Rotary Encoder Functions"
func_name: "@rotaryEncoder/rotaryEncoder"
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
<dt id="index-rotaryEncoder"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>rotaryEncoder</strong> <em>(<var>ar</var>, <var>chanApin</var>, <var>chanBpin</var>)</em><a href='#index-rotaryEncoder' class='copiable-anchor'></a></span></dt>
<dt id="index-rotaryEncoder-1"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>rotaryEncoder</strong> <em>(<var>ar</var>, <var>chanApin</var>, <var>chanBpin</var>, <var>ppr</var>)</em><a href='#index-rotaryEncoder-1' class='copiable-anchor'></a></span></dt>
<dd><p>Create a rotaryEncoder object controlled by the input pins.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object.
</p>
<p><var>chanApin</var> - pin used for channel A
</p>
<p><var>chanBpin</var> - pin used for channel B
</p>
<p><var>ppr</var> - count of encoder pulsed required for a full revolution of the encoder.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created rotary encoder object
</p>
<span id="Example"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> a = arduino ();
 enc = rotaryEncoder(a, &quot;d2&quot;, &quot;d3&quot;, 180);
 </pre></div>

<span id="Properties"></span><h4 class="subsubheading">Properties</h4>
<p>The rotaryEncoder object has the following public properties:
 </p><dl compact="compact">
<dt><span>parent</span></dt>
<dd><p>The parent (arduino) for this device
 </p></dd>
<dt><span>pins</span></dt>
<dd><p>pins used by this object
 </p></dd>
<dt><span>ppr</span></dt>
<dd><p>Number of pulses used per rotation
 </p></dd>
</dl>


<p><strong>See also:</strong> arduino.
 </p></dd></dl>