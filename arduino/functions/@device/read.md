---
layout: "default"
permalink: "/functions/@device/12_deviceread/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @device/read"
category: "Arduino Device Functions"
func_name: "@device/read"
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
<dt id="index-read"><span class="category">: </span><span><em><var>data</var> =</em> <strong>read</strong> <em>(<var>dev</var>, <var>numbytes</var>)</em><a href='#index-read' class='copiable-anchor'></a></span></dt>
<dt id="index-read-1"><span class="category">: </span><span><em><var>data</var> =</em> <strong>read</strong> <em>(<var>dev</var>, <var>numbytes</var>, <var>precision</var>)</em><a href='#index-read-1' class='copiable-anchor'></a></span></dt>
<dd><p>Read a specified number of bytes from a i2c or serial device object
 using optional precision for bytesize.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - connected i2c or serial device opened using device
</p>
<p><var>numbytes</var> - number of bytes to read.
</p>
<p><var>precision</var> - Optional precision for the output data read data.
 Currently known precision values are uint8 (default), int8, uint16, int16
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>data</var> - data read from the device
</p>

<p><strong>See also:</strong> arduino, device.
 </p></dd></dl>