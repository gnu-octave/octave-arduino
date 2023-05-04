---
layout: "default"
permalink: "/functions/@arduino/29_arduinoconfigurePinResource/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/configurePinResource"
category: "Arduino Functions"
func_name: "@arduino/configurePinResource"
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
<dt id="index-configurePinResource"><span class="category">: </span><span><em><var>currmode</var> =</em> <strong>configurePinResource</strong> <em>(<var>ar</var>, <var>pin</var>)</em><a href='#index-configurePinResource' class='copiable-anchor'></a></span></dt>
<dt id="index-configurePinResource-1"><span class="category">: </span><span><em></em> <strong>configurePinResource</strong> <em>(<var>ar</var>, <var>pin</var>, <var>owner</var>, <var>mode</var>)</em><a href='#index-configurePinResource-1' class='copiable-anchor'></a></span></dt>
<dt id="index-configurePinResource-2"><span class="category">: </span><span><em></em> <strong>configurePinResource</strong> <em>(<var>ar</var>, <var>pin</var>, <var>owner</var>, <var>mode</var>, <var>force</var>)</em><a href='#index-configurePinResource-2' class='copiable-anchor'></a></span></dt>
<dd><p>Set/Get pin mode for a specified pin on arduino connection.
</p>
<p>configurePinResource (<var>ar</var>, <var>pin</var>) will get the current mode of the specified pin.
</p>
<p>configurePinResource (<var>ar</var>, <var>pin</var>, <var>owner</var>, <var>mode</var>) will attempt set the pin to the specified
 mode and owner.
</p>
<p>If the pin is already owned by another owner, the configure will fail unless the force option is used.
 If the mode is already set, configure will fail unless force is used.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the arduino object of the connection to an arduino board.
</p>
<p><var>pin</var> - string name of the pin to set/get the mode of.
</p>
<p><var>mode</var> - string mode to set the pin to.
</p>
<p><var>owner</var> - string name to use as the pin owner.
</p>
<p><var>force</var> - boolean to force mode change. If not set, it will be false.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>currmode</var> - current string mode of the pin.
</p>
<p>Valid modes can be:
 </p><ul>
<li> AnalogInput
 - Acquire analog signals from pin
 </li><li> DigitalInput
 - Acquire digital signals from pin
 </li><li> DigitalOutput
 - Generate digital signals from pin
 </li><li> I2C
 - Specify a pin to use with I2C protocol
 </li><li> Pullup
 - Specify pin to use a pullup switch
 </li><li> PWM
 - Specify pin to use a pulse width modulator
 </li><li> Servo 
 - Specify pin to use a servo
 </li><li> SPI
 - Specify a pin to use with SPI protocol
 </li><li> Interrupt
 - Specify a pin to use with interrupts
 </li><li> Reserved
 - Pin marked reserved, but not for of any particular mode
 </li><li> Unset
 - Clears pin designation. The pin is no longer reserved and can be automatically
 set at the next operation.
 </li></ul>


<p><strong>See also:</strong> arduino, configurePin.
 </p></dd></dl>