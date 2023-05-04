---
layout: "default"
permalink: "/functions/@arduino/20_arduinosendCommand/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/sendCommand"
category: "Arduino Functions"
func_name: "@arduino/sendCommand"
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
<dt id="index-sendCommand"><span class="category">: </span><span><em><var>outdata, outsize</var> =</em> <strong>sendCommand</strong> <em>(<var>ar</var>, <var>libname</var>, <var>commandid</var>)</em><a href='#index-sendCommand' class='copiable-anchor'></a></span></dt>
<dt id="index-sendCommand-1"><span class="category">: </span><span><em><var>outdata, outsize</var> =</em> <strong>sendCommand</strong> <em>(<var>ar</var>, <var>libname</var>, <var>commandid</var>, <var>data</var>)</em><a href='#index-sendCommand-1' class='copiable-anchor'></a></span></dt>
<dt id="index-sendCommand-2"><span class="category">: </span><span><em><var>outdata, outsize</var> =</em> <strong>sendCommand</strong> <em>(<var>ar</var>, <var>libname</var>, <var>commandid</var>, <var>data</var>, <var>timeout</var>)</em><a href='#index-sendCommand-2' class='copiable-anchor'></a></span></dt>
<dd><p>Send a command with option data to the connected arduino, waiting up to a specified number of seconds
 for a response.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>ar</var> - connected arduino object.
</p>
<p><var>libname</var> - library sending the command. The name should match a programmed 
 library of the arduino, or an error will be displayed.
</p>
<p><var>commandid</var> - integer value for the command being sent to the arduino.
</p>
<p><var>data</var> - optional data sent with the command.
</p>
<p><var>timeout</var> - optional timeout to wait for data
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>outdata</var> - data returned back from the arduino in response to command
</p>
<p><var>outsize</var> - size of data received
</p>
<p>If the arduino fails to respond with a valid reply, sendCommand will error.
</p>

<p><strong>See also:</strong> arduino.
 </p></dd></dl>