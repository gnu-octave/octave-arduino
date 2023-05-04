---
layout: "default"
permalink: "/functions/@arduino/24_arduinocheckI2CAddress/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/checkI2CAddress"
category: "Arduino Functions"
func_name: "@arduino/checkI2CAddress"
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
<dt id="index-checkI2CAddress"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>checkI2CAddress</strong> <em>(<var>ar</var>, <var>address</var>)</em><a href='#index-checkI2CAddress' class='copiable-anchor'></a></span></dt>
<dt id="index-checkI2CAddress-1"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>checkI2CAddress</strong> <em>(<var>ar</var>, <var>address</var>, <var>bus</var>)</em><a href='#index-checkI2CAddress-1' class='copiable-anchor'></a></span></dt>
<dd><p>Check that an address of given address responds on the I2C bus
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - arduino object connected to a arduino board.
</p>
<p><var>address</var> - I2C address number to check
</p>
<p><var>bus</var> - bus number to check for I2C device, when multiple buses are available.
 If the bus is not specified, it will default to 0.
</p> 
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> - boolean value of true if address responds on the I2C bus
</p>
<span id="Example"></span><h4 class="subsubheading">Example</h4>
<div class="example">
<pre class="example"> <code>
 # create arduino connection.
 ar = arduino();
 # scan for devices on the I2C bus
 checkI2CAddress (ar)
 # output if a device using that address is attached
 ans =
   1
 </code>
 </pre></div>


<p><strong>See also:</strong> arduino, scanI2Cbus.
 </p></dd></dl>