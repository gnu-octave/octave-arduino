---
layout: "default"
permalink: "/functions/@spidev/14_spidevspidev/"
pkg_name: "arduino"
pkg_version: "0.12.3"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @spidev/spidev"
category: "Test Functions"
func_name: "@spidev/spidev"
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
  subitems:
- id: "17_ArduinoFunctions"
  name: "&nbsp;&nbsp;Arduino Functions"
  url: "/functions/#17_ArduinoFunctions"
  subitems:
  - id: "37_ArduinoFunctions-ReadandWriteData"
    name: "&nbsp;&nbsp;&nbsp;&nbsp;Read and Write Data"
    url: "/functions/#37_ArduinoFunctions-ReadandWriteData"
  - id: "36_ArduinoFunctions-TerminalFunctions"
    name: "&nbsp;&nbsp;&nbsp;&nbsp;Terminal Functions"
    url: "/functions/#36_ArduinoFunctions-TerminalFunctions"
  - id: "35_ArduinoFunctions-GeneralFunctions"
    name: "&nbsp;&nbsp;&nbsp;&nbsp;General Functions"
    url: "/functions/#35_ArduinoFunctions-GeneralFunctions"
  - id: "36_ArduinoFunctions-ResourceFunctions"
    name: "&nbsp;&nbsp;&nbsp;&nbsp;Resource Functions"
    url: "/functions/#36_ArduinoFunctions-ResourceFunctions"
  - id: "34_ArduinoFunctions-Arduinocreation"
    name: "&nbsp;&nbsp;&nbsp;&nbsp;Arduino creation"
    url: "/functions/#34_ArduinoFunctions-Arduinocreation"
- id: "21_ArduinoI2CFunctions"
  name: "&nbsp;&nbsp;Arduino I2C Functions"
  url: "/functions/#21_ArduinoI2CFunctions"
  subitems:
- id: "32_ArduinoRotaryEncoderFunctions"
  name: "&nbsp;&nbsp;Arduino Rotary Encoder Functions"
  url: "/functions/#32_ArduinoRotaryEncoderFunctions"
  subitems:
- id: "23_ArduinoServoFunctions"
  name: "&nbsp;&nbsp;Arduino Servo Functions"
  url: "/functions/#23_ArduinoServoFunctions"
  subitems:
- id: "31_ArduinoShiftregisterFunctions"
  name: "&nbsp;&nbsp;Arduino Shiftregister Functions"
  url: "/functions/#31_ArduinoShiftregisterFunctions"
  subitems:
- id: "21_ArduinoSPIFunctions"
  name: "&nbsp;&nbsp;Arduino SPI Functions"
  url: "/functions/#21_ArduinoSPIFunctions"
  subitems:
- id: "24_ArduinoSerialFunctions"
  name: "&nbsp;&nbsp;Arduino Serial Functions"
  url: "/functions/#24_ArduinoSerialFunctions"
  subitems:
- id: "24_ArduinoDeviceFunctions"
  name: "&nbsp;&nbsp;Arduino Device Functions"
  url: "/functions/#24_ArduinoDeviceFunctions"
  subitems:
- id: "28_ArduinoUltrasonicFunctions"
  name: "&nbsp;&nbsp;Arduino Ultrasonic Functions"
  url: "/functions/#28_ArduinoUltrasonicFunctions"
  subitems:
- id: "14_ArduinoAddons"
  name: "&nbsp;&nbsp;Arduino Addons"
  url: "/functions/#14_ArduinoAddons"
  subitems:
- id: "15_ArduinoSensors"
  name: "&nbsp;&nbsp;Arduino Sensors"
  url: "/functions/#15_ArduinoSensors"
  subitems:
- id: "19_ArduinoIOpackage"
  name: "&nbsp;&nbsp;Arduino I/O package"
  url: "/functions/#19_ArduinoIOpackage"
  subitems:
- id: "28_MatlabCompatibilityClasses"
  name: "&nbsp;&nbsp;Matlab Compatibility Classes"
  url: "/functions/#28_MatlabCompatibilityClasses"
  subitems:
- id: "7_Sensors"
  name: "&nbsp;&nbsp;Sensors"
  url: "/functions/#7_Sensors"
  subitems:
- id: "14_TestFunctions"
  name: "&nbsp;&nbsp;Test Functions"
  url: "/functions/#14_TestFunctions"
  subitems:
- id: "news"
  name: "News"
  url: "/news"
- id: "manual"
  name: "Manual"
  url: "/manual"
---
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-spidev"><span class="category-def">: </span><span><code class="def-type"><var class="var">dev</var> =</code> <strong class="def-name">spidev</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">cspin</var>)</code><a class="copiable-link" href="#index-spidev"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn def-line" id="index-spidev-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">dev</var> =</code> <strong class="def-name">spidev</strong> <code class="def-code-arguments">(<var class="var">ar</var>, <var class="var">cspin</var>, <var class="var">propname</var>, <var class="var">propvalue</var>)</code><a class="copiable-link" href="#index-spidev-1"></a></span></dt>
<dd>
<p><code class="code">spidev</code> is depreciated and will be removed in a future version.
 Use <code class="code">device</code> instead.
</p>
<p>Create an spidev object to communicate to the SPI port on a connected arduino.
</p>
<h4 class="subsubheading" id="Inputs"><span>Inputs<a class="copiable-link" href="#Inputs"></a></span></h4>
<p><var class="var">ar</var> - connected arduino object
</p>
<p><var class="var">cspin</var> - chip select pin for attached spi device.
</p>
<p><var class="var">propname</var>, <var class="var">propvalue</var> - property name/value pair for values to pass to devices.
</p>
<p>Currently known properties:
 </p><dl class="table">
<dt>bitrate</dt>
<dd><p>bit rate speed in Mbs
 </p></dd>
<dt>bitorder</dt>
<dd><p>&rsquo;msbfirst&rsquo; or &rsquo;lsbfirst&rsquo;
 </p></dd>
<dt>mode</dt>
<dd><p>SPI mode 0 - 3.
 </p></dd>
</dl>

<h4 class="subsubheading" id="Outputs"><span>Outputs<a class="copiable-link" href="#Outputs"></a></span></h4>
<p><var class="var">dev</var> - created spidev object
</p>
<h4 class="subsubheading" id="Properties"><span>Properties<a class="copiable-link" href="#Properties"></a></span></h4>
<p>The spidev object has the following public properties:
 </p><dl class="table">
<dt>parent</dt>
<dd><p>The parent (arduino) for this device
 </p></dd>
<dt>pins</dt>
<dd><p>pins used by this object
 </p></dd>
<dt>mode</dt>
<dd><p>mode used for created object
 </p></dd>
<dt>bitrate</dt>
<dd><p>Bitrate set for object
 </p></dd>
<dt>bitorder</dt>
<dd><p>Bitorder set for object
 </p></dd>
<dt>chipselectpin</dt>
<dd><p>Pin used for chipselect
 </p></dd>
</dl>


<p><strong class="strong">See also:</strong> arduino, readWrite.
 </p></dd></dl>