---
layout: "default"
permalink: "/functions/@spidev/14_spidevspidev/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @spidev/spidev"
category: "Arduino SPI Functions"
func_name: "@spidev/spidev"
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
<dt id="index-spidev"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>spidev</strong> <em>(<var>ar</var>, <var>cspin</var>)</em><a href='#index-spidev' class='copiable-anchor'></a></span></dt>
<dt id="index-spidev-1"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>spidev</strong> <em>(<var>ar</var>, <var>cspin</var>, <var>propname</var>, <var>propvalue</var>)</em><a href='#index-spidev-1' class='copiable-anchor'></a></span></dt>
<dd>
<p><code>spidev</code> is depreciated and will be removed in a future version.
 Use <code>device</code> instead.
</p>
<p>Create an spidev object to communicate to the SPI port on a connected arduino.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>cspin</var> - chip select pin for attached spi device.
</p>
<p><var>propname</var>, <var>propvalue</var> - property name/value pair for values to pass to devices.
</p>
<p>Currently known properties:
 </p><dl compact="compact">
<dt><span>bitrate</span></dt>
<dd><p>bit rate speed in Mbs
 </p></dd>
<dt><span>bitorder</span></dt>
<dd><p>&rsquo;msbfirst&rsquo; or &rsquo;lsbfirst&rsquo;
 </p></dd>
<dt><span>mode</span></dt>
<dd><p>SPI mode 0 - 3.
 </p></dd>
</dl>

<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>dev</var> - created spidev object
</p>
<span id="Properties"></span><h4 class="subsubheading">Properties</h4>
<p>The spidev object has the following public properties:
 </p><dl compact="compact">
<dt><span>parent</span></dt>
<dd><p>The parent (arduino) for this device
 </p></dd>
<dt><span>pins</span></dt>
<dd><p>pins used by this object
 </p></dd>
<dt><span>mode</span></dt>
<dd><p>mode used for created object
 </p></dd>
<dt><span>bitrate</span></dt>
<dd><p>Bitrate set for object
 </p></dd>
<dt><span>bitorder</span></dt>
<dd><p>Bitorder set for object
 </p></dd>
<dt><span>chipselectpin</span></dt>
<dd><p>Pin used for chipselect
 </p></dd>
</dl>


<p><strong>See also:</strong> arduino, readWrite.
 </p></dd></dl>