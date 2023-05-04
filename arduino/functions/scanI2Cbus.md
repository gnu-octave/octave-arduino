---
layout: "default"
permalink: "/functions/10_scanI2Cbus/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - scanI2Cbus"
category: "Arduino I2C Functions"
func_name: "scanI2Cbus"
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
<dt id="index-scanI2Cbus"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>scanI2Cbus</strong> <em>(<var>ar</var>)</em><a href='#index-scanI2Cbus' class='copiable-anchor'></a></span></dt>
<dt id="index-scanI2Cbus-1"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>scanI2Cbus</strong> <em>(<var>ar</var>, <var>bus</var>)</em><a href='#index-scanI2Cbus-1' class='copiable-anchor'></a></span></dt>
<dd><p>Scan arduino for devices on the I2C bus.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - arduino object connected to a arduino board.
</p>
<p><var>bus</var> - bus number to scan I2C devices, when multiple buses are available.
 If the bus is not specified, it will default to 0.
</p> 
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> - cell array of addresses as strings in format of &quot;0xXX&quot;.
</p>
<span id="Example"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 # create arduino connection.
 ar = arduino();
 # scan for devices on the I2C bus
 scanI2Cbus (ar)
 # output is each detected i2c address as a string
 ans =
 {
  [1,1] = 0x50
 }
 </code>
 </pre></div>


<p><strong>See also:</strong> arduino, i2cdev, checkI2CAddress.
 </p></dd></dl>