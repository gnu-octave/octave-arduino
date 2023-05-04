---
layout: "default"
permalink: "/functions/@i2cdev/14_i2cdevi2cdev/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @i2cdev/i2cdev"
category: "Arduino I2C Functions"
func_name: "@i2cdev/i2cdev"
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
<dt id="index-i2cdev"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>i2cdev</strong> <em>(<var>ar</var>, <var>address</var>)</em><a href='#index-i2cdev' class='copiable-anchor'></a></span></dt>
<dt id="index-i2cdev-1"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>i2cdev</strong> <em>(<var>ar</var>, <var>address</var>, <var>propname</var>, <var>propvalue</var>)</em><a href='#index-i2cdev-1' class='copiable-anchor'></a></span></dt>
<dd>
<p><code>i2cdev</code> is depreciated and will be removed in a future version.
 Use <code>device</code> instead.
</p>
<p>Create an i2cdev object to communicate to the i2c port on a connected arduino.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>address</var> - address to use for device on I2C bus.
</p>
<p><var>propname</var>, <var>propvalue</var> - property name/value pair for values to pass to devices.
</p>
<p>Currently known properties:
 </p><dl compact="compact">
<dt><span>bus</span></dt>
<dd><p>bus number (when arduino board supports multiple I2C buses)
 with value of 0 or 1.
 </p></dd>
</dl>

<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>dev</var> - new created i2cdev object.
</p> 
<span id="Properties"></span><h4 class="subsubheading">Properties</h4>
<p>The i2cdev object has the following public properties:
 </p><dl compact="compact">
<dt><span>parent</span></dt>
<dd><p>The parent (arduino) for this device
 </p></dd>
<dt><span>pins</span></dt>
<dd><p>pins used by this object
 </p></dd>
<dt><span>bus</span></dt>
<dd><p>bus used for created object
 </p></dd>
<dt><span>address</span></dt>
<dd><p>I2C address set for object
 </p></dd>
</dl>


<p><strong>See also:</strong> arduino.
 </p></dd></dl>