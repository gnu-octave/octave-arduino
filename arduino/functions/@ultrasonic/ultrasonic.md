---
layout: "default"
permalink: "/functions/@ultrasonic/22_ultrasonicultrasonic/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @ultrasonic/ultrasonic"
category: "Arduino Ultrasonic Functions"
func_name: "@ultrasonic/ultrasonic"
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
<dt id="index-ultrasonic"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>ultrasonic</strong> <em>(<var>ar</var>, <var>triggerpin</var>)</em><a href='#index-ultrasonic' class='copiable-anchor'></a></span></dt>
<dt id="index-ultrasonic-1"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>ultrasonic</strong> <em>(<var>ar</var>, <var>triggerpin</var>, <var>echopin</var>)</em><a href='#index-ultrasonic-1' class='copiable-anchor'></a></span></dt>
<dt id="index-ultrasonic-2"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>ultrasonic</strong> <em>(<var>ar</var>, <var>triggerpin</var>, <var>echopin</var>, <var>propname</var>, <var>propvalue</var>)</em><a href='#index-ultrasonic-2' class='copiable-anchor'></a></span></dt>
<dd><p>Create an ultrasonic object to communicate to a connected ultrasonic device
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>triggerpin</var> - trigger pin for attached device.
</p>
<p><var>echopin</var> - trigger pin for attached device.
</p>
<p><var>propname</var>, <var>propvalue</var> - property name/value pair for values to pass to devices.
</p>
<p>Currently known properties:
 </p><dl compact="compact">
<dt><span>outputformat</span></dt>
<dd><p>string designating number format for output (&rsquo;double&rsquo;)
 </p></dd>
</dl>

<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>dev</var> - created ultrasonic object
</p>
<span id="Properties"></span><h4 class="subsubheading">Properties</h4>
<p>The ultrasonic object has the following public properties:
 </p><dl compact="compact">
<dt><span>parent</span></dt>
<dd><p>The parent (arduino) for this device
 </p></dd>
<dt><span>pins</span></dt>
<dd><p>pins used by this object
 </p></dd>
<dt><span>triggerpin</span></dt>
<dd><p>trigger used for created object
 </p></dd>
<dt><span>echopin</span></dt>
<dd><p>Echo pin set for object
 </p></dd>
<dt><span>outputformat</span></dt>
<dd><p>Output format for the created object
 </p></dd>
</dl>


<p><strong>See also:</strong> arduino, readDistance, readEchoTime.
 </p></dd></dl>