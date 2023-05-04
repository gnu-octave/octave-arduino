---
layout: "default"
permalink: "/functions/19_arduinoioAddonBase/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - arduinoio.AddonBase"
category: "Arduino I/O package"
func_name: "arduinoio.AddonBase"
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
- id: "28_MatlabCompatabilityClasses"
  name: "&nbsp;&nbsp;Matlab Compatability Classes"
  url: "/functions/#28_MatlabCompatabilityClasses"
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
<dl class="def">
<dt id="index-arduinoio_002eAddonBase"><span class="category">: </span><span><em></em> <strong>arduinoio.AddonBase</strong><a href='#index-arduinoio_002eAddonBase' class='copiable-anchor'></a></span></dt>
<dd><p>Base class used for arduino library sensors
</p>

<p><strong>See also:</strong> arduinoio.LibraryBase.
 </p></dd></dl>

<span id="Properties"></span><h4 class="subheading">Properties</h4>
<p>Base properties are expected to be inherited and overwritten in inherited classes.
 and are constant in order to query through the metaobject mechanism.
</p>
<p><var>Parent</var> - parent librarybase object
</p>
<span id="Methods"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-AddonBase"><span class="category">: </span><span><em><var>ab</var> =</em> <strong>AddonBase</strong> <em>()</em><a href='#index-AddonBase' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor of base class
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p>The return value <var>ab</var> is an object of the arduinio.AddonBase class.
</p>

<p><strong>See also:</strong> arduino, addon.
 </p></dd></dl>

<dl class="def">
<dt id="index-display"><span class="category">: </span><span><em></em> <strong>display</strong> <em>()</em><a href='#index-display' class='copiable-anchor'></a></span></dt>
<dd><p>Display the addon in a verbose way.
 </p></dd></dl>