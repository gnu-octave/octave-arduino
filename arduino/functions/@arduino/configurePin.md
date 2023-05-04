---
layout: "default"
permalink: "/functions/@arduino/21_arduinoconfigurePin/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/configurePin"
category: "Arduino Functions"
func_name: "@arduino/configurePin"
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
<dt id="index-configurePin"><span class="category">: </span><span><em><var>currmode</var> =</em> <strong>configurePin</strong> <em>(<var>ar</var>, <var>pin</var>)</em><a href='#index-configurePin' class='copiable-anchor'></a></span></dt>
<dt id="index-configurePin-1"><span class="category">: </span><span><em></em> <strong>configurePin</strong> <em>(<var>ar</var>, <var>pin</var>, <var>mode</var>)</em><a href='#index-configurePin-1' class='copiable-anchor'></a></span></dt>
<dd><p>Set/Get pin mode for a specified pin on arduino connection.
</p>
<p>configurePin (<var>ar</var>, <var>pin</var>) will get the current mode of the specified pin.
</p>
<p>configurePin (<var>ar</var>, <var>pin</var>, <var>mode</var>) will attempt set the pin to the specified
 mode if the mode is unset.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - the arduino object of the connection to an arduino board.
</p>
<p><var>pin</var> - string name of the pin to set/get the mode of.
</p>
<p><var>mode</var> - string mode to set the pin to.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>mode</var> - string current mode of the pin.
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
 - Specify a pin to use for with interrupts
 </li><li> Reserved
 - Specify a pin to be reserved
 </li><li> Unset
 - Clears pin designation. The pin is no longer reserved and can be automatically
 set at the next operation.
 </li></ul>


<p><strong>See also:</strong> arduino.
</p>
</dd></dl>