---
layout: "default"
permalink: "/functions/34_arduinoioaddonsadafruitdcmotorv2/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - arduinoioaddons.adafruit.dcmotorv2"
category: "Arduino Addons"
func_name: "arduinoioaddons.adafruit.dcmotorv2"
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
<dt id="index-arduinoioaddons_002eadafruit_002edcmotorv2"><span class="category">: </span><span><em></em> <strong>arduinoioaddons.adafruit.dcmotorv2</strong><a href='#index-arduinoioaddons_002eadafruit_002edcmotorv2' class='copiable-anchor'></a></span></dt>
<dd><p>DC Motor class for dc motor control on the adafruit motor shield
</p>

<p><strong>See also:</strong> arduinoioaddons.adafruit.motorshieldv2.
 </p></dd></dl>

<span id="Properties"></span><h4 class="subsubheading">Properties</h4>
<p><var>Speed</var> - The speed value set for the motor
</p>
<p><var>Parent</var> - The parent shield for object (read only)
</p>
<p><var>MotorNumber</var> - The motor number (read only) values 1-4
</p>
<p><var>IsRunning</var> - boolean for if the motor is started (read only)
</p>
<span id="Methods"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-dcmotorv2_0028mObj_002c"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>dcmotorv2(<var>mObj</var>,</strong> <em><var>mnum</var>)</em><a href='#index-dcmotorv2_0028mObj_002c' class='copiable-anchor'></a></span></dt>
<dt id="index-dcmotorv2_0028mObj_002c-1"><span class="category">: </span><span><em><var>obj</var> =</em> <strong>dcmotorv2(<var>mObj</var>,</strong> <em><var>mnum</var>, <var>propertyname, propertyvalue</var> ....)</em><a href='#index-dcmotorv2_0028mObj_002c-1' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create dcmotor object
 </p><span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>mObj</var> - the motor shield object
</p>
<p><var>mnum</var> - The motor number (1 - 4)
</p>
<p><var>propertyname, propertyvalue</var> - Optional property name/value 
 pairs to pass to motor object.
</p>
<p>Current known properties are:
 </p><dl compact="compact">
<dt><span>Speed</span></dt>
<dd><p>Initial speed (default 0). Should be a value between -1 and 1.
 </p></dd>
</dl>

<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>s</var> - a dcmotorv2 object
</p>
<span id="Example"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 a = arduino()
 ms = addon(a, &quot;adafruit/motorshieldv2&quot;)
 mtr = dcmotor(ms, 1)
 </code>
 </pre></div>
</dd></dl>

<dl class="def">
<dt id="index-start_0028dcObj_0029"><span class="category">: </span><span><em></em> <strong>start(<var>dcObj</var>)</strong><a href='#index-start_0028dcObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Start the motor moving in previously set speed/direction
</p>
<span id="Inputs-1"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dcObj</var> - the dcmotor object
</p>
<span id="Outputs-1"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>

<p><strong>See also:</strong> adafruit.motorshieldv2.
 </p></dd></dl>

<dl class="def">
<dt id="index-stop_0028dcObj_0029"><span class="category">: </span><span><em></em> <strong>stop(<var>dcObj</var>)</strong><a href='#index-stop_0028dcObj_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Stop the motor moving
</p>
<span id="Inputs-2"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dcObj</var> - the dcmotor object
</p>
<span id="Outputs-2"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>

<p><strong>See also:</strong> adafruit.motorshieldv2.
 </p></dd></dl>