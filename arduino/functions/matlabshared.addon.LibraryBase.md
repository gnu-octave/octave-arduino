---
layout: "default"
permalink: "/functions/30_matlabsharedaddonLibraryBase/"
pkg_name: "arduino"
pkg_version: "0.12.2"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - matlabshared.addon.LibraryBase"
category: "Matlab Compatibility Classes"
func_name: "matlabshared.addon.LibraryBase"
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
<dt class="deftypefn" id="index-matlabshared_002eaddon_002eLibraryBase"><span class="category-def">: </span><span><strong class="def-name">matlabshared.addon.LibraryBase</strong><a class="copiable-link" href="#index-matlabshared_002eaddon_002eLibraryBase"></a></span></dt>
<dd><p>Compatability class used for arduino library plugins using
 matlabshared.addons.LibraryBase
</p>

<p><strong class="strong">See also:</strong> arduinoio.LibraryBase, arduino, listArduinoLibraries, addon.
 </p></dd></dl>

<h4 class="subheading" id="Properties"><span>Properties<a class="copiable-link" href="#Properties"></a></span></h4>
<p>Base properties are expected to be inherited and overwritten in 
 inherited classes and are constant in order to query through the 
 metaobject mechanism.
</p>
<p><var class="var">LibraryName</var> - name of the addon library
</p>
<p><var class="var">DependentLibraries</var> - array of dependent library names that
  must be included when installing this plugin.
</p>
<p><var class="var">CppHeaderFile</var> - name (if any) of header file that will be
 included into the arduino project when adding this library.
</p>
<p><var class="var">CppSourceFile</var> - name (if any) of source file that will be
 included into the arduino project when adding this library.
</p>
<p><var class="var">CppClassName</var> - name of the cpp class for the addon library.
 project when adding this library.
</p>
<p><var class="var">Pins</var> - pins allocated to the addon
</p>
<p><var class="var">Parent</var> - parent arduino object.
</p>
<h4 class="subheading" id="Methods"><span>Methods<a class="copiable-link" href="#Methods"></a></span></h4>
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-LibraryBase"><span class="category-def">: </span><span><code class="def-type"><var class="var">lb</var> =</code> <strong class="def-name">LibraryBase</strong> <code class="def-code-arguments">()</code><a class="copiable-link" href="#index-LibraryBase"></a></span></dt>
<dd><p>Constructor of base class
</p>
<p>The constructor is usually not called but called indirectly
 from the addon function.
</p>
<h4 class="subsubheading" id="Outputs"><span>Outputs<a class="copiable-link" href="#Outputs"></a></span></h4>
<p>The return value <var class="var">lb</var> is an object of the
 matlabshare.addons.LibraryBase class.
</p>

<p><strong class="strong">See also:</strong> arduino, listArduinoLibraries, addon.
 </p></dd></dl>

<dl class="first-deftypefn">
<dt class="deftypefn" id="index-disp"><span class="category-def">: </span><span><strong class="def-name">disp</strong> <code class="def-code-arguments">()</code><a class="copiable-link" href="#index-disp"></a></span></dt>
<dd><p>Display the addon in a verbose way.
 </p></dd></dl>