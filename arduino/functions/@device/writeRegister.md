---
layout: "default"
permalink: "/functions/@device/21_devicewriteRegister/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @device/writeRegister"
category: "Arduino Device Functions"
func_name: "@device/writeRegister"
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
<dt id="index-writeRegister"><span class="category">: </span><span><em></em> <strong>writeRegister</strong> <em>(<var>dev</var>, <var>reg</var>, <var>datain</var>)</em><a href='#index-writeRegister' class='copiable-anchor'></a></span></dt>
<dt id="index-writeRegister-1"><span class="category">: </span><span><em></em> <strong>writeRegister</strong> <em>(<var>dev</var>, <var>dev</var>, <var>datain</var>, <var>precision</var>)</em><a href='#index-writeRegister-1' class='copiable-anchor'></a></span></dt>
<dd><p>Write data to i2c device object at a given registry position
 using optional precision for the data byte used for the data.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - connected i2c device opened using device
</p>
<p><var>reg</var> - registry position to write to.
</p>
<p><var>datain</var> - data to write to device. Datasize should not exceed the constraints 
 of the data type specified for the precision.
</p>
<p><var>precision</var> - Optional precision for the input write data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>

<p><strong>See also:</strong> arduino, device, read.
 </p></dd></dl>