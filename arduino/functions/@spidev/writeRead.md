---
layout: "default"
permalink: "/functions/@spidev/17_spidevwriteRead/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @spidev/writeRead"
category: "Arduino SPI Functions"
func_name: "@spidev/writeRead"
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
<dt id="index-readWrite"><span class="category">: </span><span><em><var>dataOut</var> =</em> <strong>readWrite</strong> <em>(<var>spi</var>, <var>dataIn</var>)</em><a href='#index-readWrite' class='copiable-anchor'></a></span></dt>
<dd><p>Write uint8 data to spi device and return 
 back clocked out response data of same size.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>spi</var> - connected spi device on arduino
</p>
<p><var>dataIn</var> - uint8 sized data to send to spi device framed between SS frame.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>dataOut</var> - uint8 data clocked out during send to dataIn.
</p>

<p><strong>See also:</strong> arduino, spidev.
 </p></dd></dl>