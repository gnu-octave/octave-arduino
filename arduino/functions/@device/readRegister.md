---
layout: "default"
permalink: "/functions/@device/20_devicereadRegister/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @device/readRegister"
category: "Arduino Device Functions"
func_name: "@device/readRegister"
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
<dt id="index-readRegister"><span class="category">: </span><span><em><var>data</var> =</em> <strong>readRegister</strong> <em>(<var>dev</var>, <var>reg</var>, <var>numbytes</var>)</em><a href='#index-readRegister' class='copiable-anchor'></a></span></dt>
<dt id="index-readRegister-1"><span class="category">: </span><span><em><var>data</var> =</em> <strong>readRegister</strong> <em>(<var>dev</var>, <var>reg</var>, <var>numbytes</var>, <var>precision</var>)</em><a href='#index-readRegister-1' class='copiable-anchor'></a></span></dt>
<dd><p>Read a specified number of bytes from a register of an i2cdev object 
 using optional precision for bytesize.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - connected i2c device opened using device
</p>
<p><var>reg</var> - registry value number
</p>
<p><var>numbytes</var> - number of bytes to read.
</p>
<p><var>precision</var> - Optional precision for the output data read data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<span id="Output"></span><h4 class="subsubheading">Output</h4>
<p><var>data</var> - data read from device.
</p>

<p><strong>See also:</strong> arduino, device.
 </p></dd></dl>