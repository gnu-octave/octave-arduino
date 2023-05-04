---
layout: "default"
permalink: "/functions/@device/14_devicedevice/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @device/device"
category: "Arduino Device Functions"
func_name: "@device/device"
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
<dt id="index-device"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>device</strong> <em>(<var>ar</var>, 'I2CAddress', <var>address</var>)</em><a href='#index-device' class='copiable-anchor'></a></span></dt>
<dt id="index-device-1"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>device</strong> <em>(<var>ar</var>, 'SPIChipSelectPin', <var>pin</var>)</em><a href='#index-device-1' class='copiable-anchor'></a></span></dt>
<dt id="index-device-2"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>device</strong> <em>(<var>ar</var>, 'Serial', <var>serialid</var>)</em><a href='#index-device-2' class='copiable-anchor'></a></span></dt>
<dt id="index-device-3"><span class="category">: </span><span><em><var>dev</var> =</em> <strong>device</strong> <em>(..., <var>propname</var>, <var>propvalue</var>)</em><a href='#index-device-3' class='copiable-anchor'></a></span></dt>
<dd><p>Create an i2c, spi or serial object to communicate on a connected arduino.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object
</p>
<p><var>propname</var>, <var>propvalue</var> - property name/value pair for values to pass to devices.
</p>
<p>A property of &rsquo;i2caddress&rsquo;, &rsquo;spichipselectpin&rsquo; or &rsquo;serial&rsquo;  must be specified to denote the device type to create.
</p>
<p><var>i2caddress</var> - address to use for device on I2C bus.
</p>
<p><var>pin</var> - pin to use for device SPI chip select.
</p>
<p><var>serialid</var> - Serial port id to use
</p>
<p>Additional properties can also be specified for the device object
</p>
<p>Currently known input I2C properties values:
 </p><dl compact="compact">
<dt><span>bus</span></dt>
<dd><p>bus number (when arduino board supports multiple I2C buses)
 with value of 0 or 1.
 </p></dd>
<dt><span>noprobe</span></dt>
<dd><p>Do not probe the existence of device on creation if set to 1 (default 0)
 </p></dd>
<dt><span>bitrate</span></dt>
<dd><p>bit rate speed in Mbs - default 100000
 </p></dd>
</dl>



<p>Currently known input SPI properties values:
 </p><dl compact="compact">
<dt><span>bitrate</span></dt>
<dd><p>bit rate speed in Mbs
 </p></dd>
<dt><span>bitorder</span></dt>
<dd><p>&rsquo;msbfirst&rsquo; or &rsquo;lsbfirst&rsquo;
 </p></dd>
<dt><span>spimode</span></dt>
<dd><p>SPI mode 0 - 3.
 </p></dd>
</dl>



<p>Currently known input Serial properties values:
 </p><dl compact="compact">
<dt><span>baudrate</span></dt>
<dd><p>baudrate value (default 9600)
 </p></dd>
<dt><span>databits</span></dt>
<dd><p>number of databits (5,6,7,8) (default 8)
 </p></dd>
<dt><span>stopbits</span></dt>
<dd><p>number of stopbits (1,2) (default 1)
 </p></dd>
<dt><span>parity</span></dt>
<dd><p>parity of device (&rsquo;odd&rsquo;,&rsquo;even&rsquo;,&rsquo;none&rsquo;) (default &rsquo;none&rsquo;)
 </p></dd>
</dl>


<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>dev</var> - new created device object.
</p> 
<span id="Properties"></span><h4 class="subsubheading">Properties</h4>
<p>The object has the following public properties:
 </p><dl compact="compact">
<dt><span>parent</span></dt>
<dd><p>The parent (arduino) for this device
 </p></dd>
<dt><span>interface</span></dt>
<dd><p>The interface type for this device (&quot;SPI&quot; or &quot;I2C&quot; or &quot;Serial&quot;)
 </p></dd>
</dl>
 
<p>In addition, depending on type, the object will have these properties:
</p>
<span id="I2C-Properties"></span><h4 class="subsubheading">I2C Properties</h4>
<p>The object has the following public properties:
 </p><dl compact="compact">
<dt><span>bus</span></dt>
<dd><p>bus used for created object
 </p></dd>
<dt><span>i2caddress</span></dt>
<dd><p>I2C address set for object
 </p></dd>
<dt><span>sclpin</span></dt>
<dd><p>the SCL pin of the device
 </p></dd>
<dt><span>sdapin</span></dt>
<dd><p>the SDA pin of the device
 </p></dd>
<dt><span>bitrate</span></dt>
<dd><p>bit rate for the i2c clock
 </p></dd>
</dl>

<span id="SPI-Properties"></span><h4 class="subsubheading">SPI Properties</h4>
<p>The object has the following public properties:
 </p><dl compact="compact">
<dt><span>spimode</span></dt>
<dd><p>mode used for created object
 </p></dd>
<dt><span>bitrate</span></dt>
<dd><p>Bitrate set for object
 </p></dd>
<dt><span>bitorder</span></dt>
<dd><p>Bitorder set for object
 </p></dd>
<dt><span>spichipselectpin</span></dt>
<dd><p>Pin used for chipselect
 </p></dd>
<dt><span>mosipin</span></dt>
<dd><p>Pin used for mosi
 </p></dd>
<dt><span>misopin</span></dt>
<dd><p>Pin used for miso
 </p></dd>
<dt><span>sckpin</span></dt>
<dd><p>Pin used for sckpin
 </p></dd>
</dl>

<span id="Serial-Properties"></span><h4 class="subsubheading">Serial Properties</h4>
<p>The object has the following public properties:
 </p><dl compact="compact">
<dt><span>id</span></dt>
<dd><p>serial port id
 </p></dd>
<dt><span>baudrate</span></dt>
<dd><p>baudrate
 </p></dd>
<dt><span>databits</span></dt>
<dd><p>number of databits (5,6,7,8)
 </p></dd>
<dt><span>stopbits</span></dt>
<dd><p>number of stopbits (1,2)
 </p></dd>
<dt><span>parity</span></dt>
<dd><p>parity of device (&rsquo;odd&rsquo;,&rsquo;even&rsquo;,&rsquo;none&rsquo;)
 </p></dd>
</dl>


<p><strong>See also:</strong> arduino, i2cdev, spidev.
 </p></dd></dl>