---
layout: "default"
permalink: "/functions/34_arduinoioaddonsEEPRomAddonEEPRom/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - arduinoioaddons.EEPRomAddon.EEPRom"
category: "Arduino Addons"
func_name: "arduinoioaddons.EEPRomAddon.EEPRom"
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
<dt id="index-arduinoioaddons_002eEEPRomAddon_002eEEPRom"><span class="category">: </span><span><em></em> <strong>arduinoioaddons.EEPRomAddon.EEPRom</strong><a href='#index-arduinoioaddons_002eEEPRomAddon_002eEEPRom' class='copiable-anchor'></a></span></dt>
<dd><p>EEPROM addon for arduino
</p>
<p>Allows read and write of uint8 data to the onboard arduino EEPROM.
</p>
<span id="Example"></span><h4 class="subsubheading">Example</h4>
<p>Assuming eeprom addon has been programmed into the Arduino:
 </p><div class="example">
<pre class="example"> a = arduino ();
 e = addon (a, &quot;eepromaddon/eeprom&quot;);
 write (e, 0, uint8(&quot;hello world&quot;));
 str = uint8( read(e, 0, 11) )
 </pre></div>


<p><strong>See also:</strong> addon.
 </p></dd></dl>

<span id="Properties"></span><h4 class="subsubheading">Properties</h4>
<p><var>length</var> - Size of the EEPROM.
</p>
<span id="Methods"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-EEPRom"><span class="category">: </span><span><em><var>eeprom</var> =</em> <strong>EEPRom</strong> <em>()</em><a href='#index-EEPRom' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create EEPROM device.
 </p><span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>eeprom</var> - created EEPROM device.
 </p></dd></dl>

<dl class="def">
<dt id="index-erase"><span class="category">: </span><span><em></em> <strong>erase</strong> <em>()</em><a href='#index-erase' class='copiable-anchor'></a></span></dt>
<dd><p>Erase all values in EEPROM (Effectively setting the 0xFF)
 </p></dd></dl>

<dl class="def">
<dt id="index-write"><span class="category">: </span><span><em></em> <strong>write</strong> <em>(<var>address</var>, <var>uintdata</var>)</em><a href='#index-write' class='copiable-anchor'></a></span></dt>
<dd><p>Write data to EEPROM at the provided address.
 </p><span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>address</var> - start address to write data to, should be an
 integer between 0 and the size of the EEPROM.
</p>
<p><var>uintdata</var> a value or array of uint8 data to write to EEPROM.
 </p></dd></dl>

<dl class="def">
<dt id="index-read"><span class="category">: </span><span><em><var>data</var> =</em> <strong>read</strong> <em>(<var>address</var>)</em><a href='#index-read' class='copiable-anchor'></a></span></dt>
<dt id="index-read-1"><span class="category">: </span><span><em><var>data</var> =</em> <strong>read</strong> <em>(<var>address</var>, <var>count</var>)</em><a href='#index-read-1' class='copiable-anchor'></a></span></dt>
<dd><p>Read data from starting address of EEPROM.
 </p><span id="Inputs-1"></span><h4 class="subsubheading">Inputs</h4>
<p><var>address</var> - start address to read data from, should be an
 integer between 0 and the size of the EEPROM.
</p>
<p><var>count</var> - Number of uint8 values to read from the EEPROM (default is 1)
</p>
<span id="Outputs-1"></span><h4 class="subsubheading">Outputs</h4>
<p><var>data</var> a value or array of uint8 data read from the EEPROM.
 </p></dd></dl>