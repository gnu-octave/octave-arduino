---
layout: "default"
permalink: "/functions/@device/14_devicedevice/"
pkg_name: "arduino"
pkg_version: "0.12.3"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @device/device"
category: "Test Functions"
func_name: "@device/device"
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
<dt class="deftypefn def-line" id="index-device"><span class="category-def">: </span><span><code class="def-type"><var class="var">dev</var> =</code> <strong class="def-name">device</strong> <code class="def-code-arguments">(<var class="var">ar</var>, 'I2CAddress', <var class="var">address</var>)</code><a class="copiable-link" href="#index-device"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn def-line" id="index-device-1"><span class="category-def">: </span><span><code class="def-type"><var class="var">dev</var> =</code> <strong class="def-name">device</strong> <code class="def-code-arguments">(<var class="var">ar</var>, 'SPIChipSelectPin', <var class="var">pin</var>)</code><a class="copiable-link" href="#index-device-1"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn def-line" id="index-device-2"><span class="category-def">: </span><span><code class="def-type"><var class="var">dev</var> =</code> <strong class="def-name">device</strong> <code class="def-code-arguments">(<var class="var">ar</var>, 'Serial', <var class="var">serialid</var>)</code><a class="copiable-link" href="#index-device-2"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn def-line" id="index-device-3"><span class="category-def">: </span><span><code class="def-type"><var class="var">dev</var> =</code> <strong class="def-name">device</strong> <code class="def-code-arguments">(..., <var class="var">propname</var>, <var class="var">propvalue</var>)</code><a class="copiable-link" href="#index-device-3"></a></span></dt>
<dd><p>Create an i2c, spi or serial object to communicate on a connected arduino.
</p>
<h4 class="subsubheading" id="Inputs"><span>Inputs<a class="copiable-link" href="#Inputs"></a></span></h4>
<p><var class="var">ar</var> - connected arduino object
</p>
<p><var class="var">propname</var>, <var class="var">propvalue</var> - property name/value pair for values to pass to devices.
</p>
<p>A property of &rsquo;i2caddress&rsquo;, &rsquo;spichipselectpin&rsquo; or &rsquo;serial&rsquo;  must be specified to denote the device type to create.
</p>
<p><var class="var">i2caddress</var> - address to use for device on I2C bus.
</p>
<p><var class="var">pin</var> - pin to use for device SPI chip select.
</p>
<p><var class="var">serialid</var> - Serial port id to use
</p>
<p>Additional properties can also be specified for the device object
</p>
<p>Currently known input I2C properties values:
 </p><dl class="table">
<dt>bus</dt>
<dd><p>bus number (when arduino board supports multiple I2C buses)
 with value of 0 or 1.
 </p></dd>
<dt>noprobe</dt>
<dd><p>Do not probe the existence of device on creation if set to 1 (default 0)
 </p></dd>
<dt>bitrate</dt>
<dd><p>bit rate speed in Mbs - default 100000
 </p></dd>
</dl>



<p>Currently known input SPI properties values:
 </p><dl class="table">
<dt>bitrate</dt>
<dd><p>bit rate speed in Mbs
 </p></dd>
<dt>bitorder</dt>
<dd><p>&rsquo;msbfirst&rsquo; or &rsquo;lsbfirst&rsquo;
 </p></dd>
<dt>spimode</dt>
<dd><p>SPI mode 0 - 3.
 </p></dd>
</dl>



<p>Currently known input Serial properties values:
 </p><dl class="table">
<dt>baudrate</dt>
<dd><p>baudrate value (default 9600)
 </p></dd>
<dt>databits</dt>
<dd><p>number of databits (5,6,7,8) (default 8)
 </p></dd>
<dt>stopbits</dt>
<dd><p>number of stopbits (1,2) (default 1)
 </p></dd>
<dt>parity</dt>
<dd><p>parity of device (&rsquo;odd&rsquo;,&rsquo;even&rsquo;,&rsquo;none&rsquo;) (default &rsquo;none&rsquo;)
 </p></dd>
</dl>


<h4 class="subsubheading" id="Outputs"><span>Outputs<a class="copiable-link" href="#Outputs"></a></span></h4>
<p><var class="var">dev</var> - new created device object.
</p> 
<h4 class="subsubheading" id="Properties"><span>Properties<a class="copiable-link" href="#Properties"></a></span></h4>
<p>The object has the following public properties:
 </p><dl class="table">
<dt>parent</dt>
<dd><p>The parent (arduino) for this device
 </p></dd>
<dt>interface</dt>
<dd><p>The interface type for this device (&quot;SPI&quot; or &quot;I2C&quot; or &quot;Serial&quot;)
 </p></dd>
</dl>
 
<p>In addition, depending on type, the object will have these properties:
</p>
<h4 class="subsubheading" id="I2C-Properties"><span>I2C Properties<a class="copiable-link" href="#I2C-Properties"></a></span></h4>
<p>The object has the following public properties:
 </p><dl class="table">
<dt>bus</dt>
<dd><p>bus used for created object
 </p></dd>
<dt>i2caddress</dt>
<dd><p>I2C address set for object
 </p></dd>
<dt>sclpin</dt>
<dd><p>the SCL pin of the device
 </p></dd>
<dt>sdapin</dt>
<dd><p>the SDA pin of the device
 </p></dd>
<dt>bitrate</dt>
<dd><p>bit rate for the i2c clock
 </p></dd>
</dl>

<h4 class="subsubheading" id="SPI-Properties"><span>SPI Properties<a class="copiable-link" href="#SPI-Properties"></a></span></h4>
<p>The object has the following public properties:
 </p><dl class="table">
<dt>spimode</dt>
<dd><p>mode used for created object
 </p></dd>
<dt>bitrate</dt>
<dd><p>Bitrate set for object
 </p></dd>
<dt>bitorder</dt>
<dd><p>Bitorder set for object
 </p></dd>
<dt>spichipselectpin</dt>
<dd><p>Pin used for chipselect
 </p></dd>
<dt>mosipin</dt>
<dd><p>Pin used for mosi
 </p></dd>
<dt>misopin</dt>
<dd><p>Pin used for miso
 </p></dd>
<dt>sckpin</dt>
<dd><p>Pin used for sckpin
 </p></dd>
</dl>

<h4 class="subsubheading" id="Serial-Properties"><span>Serial Properties<a class="copiable-link" href="#Serial-Properties"></a></span></h4>
<p>The object has the following public properties:
 </p><dl class="table">
<dt>id</dt>
<dd><p>serial port id
 </p></dd>
<dt>baudrate</dt>
<dd><p>baudrate
 </p></dd>
<dt>databits</dt>
<dd><p>number of databits (5,6,7,8)
 </p></dd>
<dt>stopbits</dt>
<dd><p>number of stopbits (1,2)
 </p></dd>
<dt>parity</dt>
<dd><p>parity of device (&rsquo;odd&rsquo;,&rsquo;even&rsquo;,&rsquo;none&rsquo;)
 </p></dd>
</dl>


<p><strong class="strong">See also:</strong> arduino, i2cdev, spidev.
 </p></dd></dl>