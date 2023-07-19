---
layout: "default"
permalink: "/functions/34_arduinoioaddonsEEPRomAddonEEPRom/"
pkg_name: "arduino"
pkg_version: "0.11.0"
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
- id: "17_GeneralFunctions"
  name: "&nbsp;&nbsp;General Functions"
  url: "/functions/#17_GeneralFunctions"
- id: "17_ArduinoFunctions"
  name: "&nbsp;&nbsp;Arduino Functions"
  url: "/functions/#17_ArduinoFunctions"
- id: "21_ArduinoI2CFunctions"
  name: "&nbsp;&nbsp;Arduino I2C Functions"
  url: "/functions/#21_ArduinoI2CFunctions"
- id: "32_ArduinoRotaryEncoderFunctions"
  name: "&nbsp;&nbsp;Arduino Rotary Encoder Functions"
  url: "/functions/#32_ArduinoRotaryEncoderFunctions"
- id: "23_ArduinoServoFunctions"
  name: "&nbsp;&nbsp;Arduino Servo Functions"
  url: "/functions/#23_ArduinoServoFunctions"
- id: "31_ArduinoShiftregisterFunctions"
  name: "&nbsp;&nbsp;Arduino Shiftregister Functions"
  url: "/functions/#31_ArduinoShiftregisterFunctions"
- id: "21_ArduinoSPIFunctions"
  name: "&nbsp;&nbsp;Arduino SPI Functions"
  url: "/functions/#21_ArduinoSPIFunctions"
- id: "24_ArduinoSerialFunctions"
  name: "&nbsp;&nbsp;Arduino Serial Functions"
  url: "/functions/#24_ArduinoSerialFunctions"
- id: "24_ArduinoDeviceFunctions"
  name: "&nbsp;&nbsp;Arduino Device Functions"
  url: "/functions/#24_ArduinoDeviceFunctions"
- id: "28_ArduinoUltrasonicFunctions"
  name: "&nbsp;&nbsp;Arduino Ultrasonic Functions"
  url: "/functions/#28_ArduinoUltrasonicFunctions"
- id: "14_ArduinoAddons"
  name: "&nbsp;&nbsp;Arduino Addons"
  url: "/functions/#14_ArduinoAddons"
- id: "15_ArduinoSensors"
  name: "&nbsp;&nbsp;Arduino Sensors"
  url: "/functions/#15_ArduinoSensors"
- id: "19_ArduinoIOpackage"
  name: "&nbsp;&nbsp;Arduino I/O package"
  url: "/functions/#19_ArduinoIOpackage"
- id: "28_MatlabCompatibilityClasses"
  name: "&nbsp;&nbsp;Matlab Compatibility Classes"
  url: "/functions/#28_MatlabCompatibilityClasses"
- id: "7_Sensors"
  name: "&nbsp;&nbsp;Sensors"
  url: "/functions/#7_Sensors"
- id: "14_TestFunctions"
  name: "&nbsp;&nbsp;Test Functions"
  url: "/functions/#14_TestFunctions"
- id: "news"
  name: "News"
  url: "/news"
- id: "manual"
  name: "Manual"
  url: "/manual"
---
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-arduinoioaddons_002eEEPRomAddon_002eEEPRom"><span class="category-def">: </span><span><strong class="def-name">arduinoioaddons.EEPRomAddon.EEPRom</strong><a class="copiable-link" href='#index-arduinoioaddons_002eEEPRomAddon_002eEEPRom'></a></span></dt>
<dd><p>EEPROM addon for arduino
</p>
<p>Allows read and write of uint8 data to the onboard arduino EEPROM.
</p>
<h4 class="subsubheading" id="Example">Example</h4>
<p>Assuming eeprom addon has been programmed into the Arduino:
 </p><div class="example">
<pre class="example-preformatted"> a = arduino ();
 e = addon (a, &quot;eepromaddon/eeprom&quot;);
 write (e, 0, uint8(&quot;hello world&quot;));
 str = uint8( read(e, 0, 11) )
 </pre></div>


<p><strong class="strong">See also:</strong> addon.
 </p></dd></dl>

<h4 class="subsubheading" id="Properties">Properties</h4>
<p><var class="var">length</var> - Size of the EEPROM.
</p>
<h4 class="subheading" id="Methods">Methods</h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-EEPRom"><span class="category-def">: </span><span><code class="def-type"><var class="var">eeprom</var> =</code> <strong class="def-name">EEPRom</strong> <code class="def-code-arguments">()</code><a class="copiable-link" href='#index-EEPRom'></a></span></dt>
<dd><p>Constructor to create EEPROM device.
 </p><h4 class="subsubheading" id="Outputs">Outputs</h4>
<p><var class="var">eeprom</var> - created EEPROM device.
 </p></dd></dl>

<dl class="first-deftypefn">
<dt class="deftypefn" id="index-erase"><span class="category-def">: </span><span><strong class="def-name">erase</strong> <code class="def-code-arguments">()</code><a class="copiable-link" href='#index-erase'></a></span></dt>
<dd><p>Erase all values in EEPROM (Effectively setting the 0xFF)
 </p></dd></dl>

<dl class="first-deftypefn">
<dt class="deftypefn" id="index-write"><span class="category-def">: </span><span><strong class="def-name">write</strong> <code class="def-code-arguments">(<var class="var">address</var>, <var class="var">uintdata</var>)</code><a class="copiable-link" href='#index-write'></a></span></dt>
<dd><p>Write data to EEPROM at the provided address.
 </p><h4 class="subsubheading" id="Inputs">Inputs</h4>
<p><var class="var">address</var> - start address to write data to, should be an
 integer between 0 and the size of the EEPROM.
</p>
<p><var class="var">uintdata</var> a value or array of uint8 data to write to EEPROM.
 </p></dd></dl>

<dl class="first-deftypefn">
<dt class="deftypefn" id="index-read"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">read</strong> <code class="def-code-arguments">(<var class="var">address</var>)</code><a class="copiable-link" href='#index-read'></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-read-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">data</var> =</code> <strong class="def-name">read</strong> <code class="def-code-arguments">(<var class="var">address</var>, <var class="var">count</var>)</code><a class="copiable-link" href='#index-read-1'></a></span></dt>
<dd><p>Read data from starting address of EEPROM.
 </p><h4 class="subsubheading" id="Inputs-1">Inputs</h4>
<p><var class="var">address</var> - start address to read data from, should be an
 integer between 0 and the size of the EEPROM.
</p>
<p><var class="var">count</var> - Number of uint8 values to read from the EEPROM (default is 1)
</p>
<h4 class="subsubheading" id="Outputs-1">Outputs</h4>
<p><var class="var">data</var> a value or array of uint8 data read from the EEPROM.
 </p></dd></dl>