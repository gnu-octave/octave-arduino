---
layout: "default"
permalink: "/functions/@servo/12_servoservo/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @servo/servo"
category: "Arduino Servo Functions"
func_name: "@servo/servo"
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
<dt id="index-servo"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>servo</strong> <em>(<var>arduinoobj</var>, <var>pin</var>)</em><a href='#index-servo' class='copiable-anchor'></a></span></dt>
<dt id="index-servo-1"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>servo</strong> <em>(<var>arduinoobj</var>, <var>pin</var>, <var>propertyname</var>, <var>propertyvalue</var>)</em><a href='#index-servo-1' class='copiable-anchor'></a></span></dt>
<dd><p>Create a servo object using a specified pin on a arduino board.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>obj</var> - servo object
</p>
<p><var>arduinoobj</var> - connected arduino object
</p>
<p><var>propertyname</var>,  <var>propertyvalue</var> - name value pairs for properties to pass
 to the created servo object.
</p>
<p>Current properties are:
 </p><dl compact="compact">
<dt><span>minpulseduration</span></dt>
<dd><p>min PWM pulse value in seconds.
 </p></dd>
<dt><span>maxpulseduration</span></dt>
<dd><p>max PWM pulse value in seconds.
 </p></dd>
</dl>

<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>obj</var> - created servo object.
</p>
<span id="Example"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> # create arduino connection
 ar = arduino();
 # create hobby servo (1 - 2 ms pulse range)
 servo = servo(ar, &quot;d9&quot;, &quot;minpulseduration&quot;, 1.0e-3, &quot;maxpulseduration&quot;, 2e-3);
 # center the servo
 writePosition(servo, 0.5);
 </pre></div>

<span id="Properties"></span><h4 class="subsubheading">Properties</h4>
<p>The servo object has the following public properties:
 </p><dl compact="compact">
<dt><span>parent</span></dt>
<dd><p>The parent (arduino) for this device
 </p></dd>
<dt><span>pins</span></dt>
<dd><p>pins used by this object
 </p></dd>
<dt><span>minpulseduration</span></dt>
<dd><p>minpulseduration set for object
 </p></dd>
<dt><span>maxpulseduration</span></dt>
<dd><p>maxpulseduration set for object
 </p></dd>
</dl>


<p><strong>See also:</strong> arduino, readPosition, writePosition.
 </p></dd></dl>