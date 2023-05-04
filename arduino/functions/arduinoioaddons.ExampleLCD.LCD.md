---
layout: "default"
permalink: "/functions/30_arduinoioaddonsExampleLCDLCD/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - arduinoioaddons.ExampleLCD.LCD"
category: "Arduino Addons"
func_name: "arduinoioaddons.ExampleLCD.LCD"
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
<dt id="index-arduinoioaddons_002eLCDAddon_002eLCD"><span class="category">: </span><span><em></em> <strong>arduinoioaddons.LCDAddon.LCD</strong><a href='#index-arduinoioaddons_002eLCDAddon_002eLCD' class='copiable-anchor'></a></span></dt>
<dd><p>Basic Example octave addon for LCD
</p>
<p>Allows basic manipulation of an LCD as a illustration of using
 the addon functionality.
 </p><span id="Example"></span><h4 class="subsubheading">Example</h4>
<p>Assuming the arduino has been programmed with the lcd addon:
 </p><div class="example">
<pre class="example"> a = arduino();
 lcd = addon(a, &quot;examplelcd/lcd&quot;, &quot;d8&quot;, &quot;d9&quot;, &quot;d4&quot;, &quot;d5&quot;, &quot;d6&quot;, &quot;d7&quot;)
 clearLCD(lcd);
 printLCD(lcd, &quot;Hello&quot;);
 # go to next line
 gotoLCD(lcd, 0, 1);
 printLCD(lcd, &quot;World&quot;);
 </pre></div>

<p><strong>See also:</strong> addon.
 </p></dd></dl>

<span id="Properties"></span><h4 class="subsubheading">Properties</h4>
<p><var>Pins</var> - the pins allocated the LCD display.
</p>
<span id="Methods"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-LCD_0028arObj_002c"><span class="category">: </span><span><em><var>lcd</var> =</em> <strong>LCD(arObj,</strong> <em>rs, enable, d0, d1, d2, d3)</em><a href='#index-LCD_0028arObj_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor to create LCD device
 </p><span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>arObj</var> - the arduino parent object
</p>
<p><var>rs</var> - the pin to use for the rs line.
</p>
<p><var>enable</var> - the pin to use for the enable line.
</p>
<p><var>d0</var> - the pin to use for the d0 line.
</p>
<p><var>d1</var> - the pin to use for the d1 line.
</p>
<p><var>d2</var> - the pin to use for the d2 line.
</p>
<p><var>d3</var> - the pin to use for the d3 line.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>lcd</var> - created LCD object
 </p></dd></dl>

<dl class="def">
<dt id="index-freeLCD_0028_0029"><span class="category">: </span><span><em></em> <strong>freeLCD()</strong><a href='#index-freeLCD_0028_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Free the LCD
</p>
<p>Should be called before discarding the LCD
 </p><span id="Inputs-1"></span><h4 class="subsubheading">Inputs</h4>
<p>None.
</p>
<span id="Outputs-1"></span><h4 class="subsubheading">Outputs</h4>
<p>None.
 </p></dd></dl>

<dl class="def">
<dt id="index-clearLCD_0028_0029"><span class="category">: </span><span><em></em> <strong>clearLCD()</strong><a href='#index-clearLCD_0028_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Clear the LCD display and set the cursor position to the home position.
</p>
<span id="Inputs-2"></span><h4 class="subsubheading">Inputs</h4>
<p>None.
</p>
<span id="Outputs-2"></span><h4 class="subsubheading">Outputs</h4>
<p>None.
 </p></dd></dl>

<dl class="def">
<dt id="index-printLCD_0028text_0029"><span class="category">: </span><span><em></em> <strong>printLCD(<var>text</var>)</strong><a href='#index-printLCD_0028text_0029' class='copiable-anchor'></a></span></dt>
<dd><p>Display text on LCD starting at the current cursor position.
</p>
<span id="Inputs-3"></span><h4 class="subsubheading">Inputs</h4>
<p><var>text</var> - text to display on LCD
</p>
<span id="Outputs-3"></span><h4 class="subsubheading">Outputs</h4>
<p>None.
 </p></dd></dl>

<dl class="def">
<dt id="index-gotoLCD_0028col_002c"><span class="category">: </span><span><em></em> <strong>gotoLCD(<var>col</var>,</strong> <em><var>row</var>)</em><a href='#index-gotoLCD_0028col_002c' class='copiable-anchor'></a></span></dt>
<dd><p>Set the cursor position to row, col
</p>
<span id="Inputs-4"></span><h4 class="subsubheading">Inputs</h4>
<p><var>col</var> - 0 indexed LCD column to position to.
</p>
<p><var>row</var> - 0 indexed LCD row to position to.
</p>
<span id="Outputs-4"></span><h4 class="subsubheading">Outputs</h4>
<p>None.
 </p></dd></dl>