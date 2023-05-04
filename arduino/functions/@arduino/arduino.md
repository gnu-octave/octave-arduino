---
layout: "default"
permalink: "/functions/@arduino/16_arduinoarduino/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @arduino/arduino"
category: "Arduino Functions"
func_name: "@arduino/arduino"
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
<dt id="index-arduino"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduino</strong> <em>()</em><a href='#index-arduino' class='copiable-anchor'></a></span></dt>
<dt id="index-arduino-1"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduino</strong> <em>(<var>port</var>)</em><a href='#index-arduino-1' class='copiable-anchor'></a></span></dt>
<dt id="index-arduino-2"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduino</strong> <em>(<var>port</var>, <var>board</var>)</em><a href='#index-arduino-2' class='copiable-anchor'></a></span></dt>
<dt id="index-arduino-3"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduino</strong> <em>(<var>port</var>, <var>board</var>[, [<var>propname</var>, <var>propvalue</var>]*)</em><a href='#index-arduino-3' class='copiable-anchor'></a></span></dt>
<dt id="index-arduino-4"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduino</strong> <em>(<var>iaddress</var>)</em><a href='#index-arduino-4' class='copiable-anchor'></a></span></dt>
<dt id="index-arduino-5"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduino</strong> <em>(<var>ipaddress</var>, <var>board</var>)</em><a href='#index-arduino-5' class='copiable-anchor'></a></span></dt>
<dd><p>Create a arduino object with a connection to an arduino board.
</p> 
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>port</var> - full path of serial port to connect to. For Linux,
 usually /dev/ttySXXX, for windows COMXX.
</p>
<p><var>board</var> - name of board to connect (default is &rsquo;uno&rsquo;).
</p>
<p><var>propname</var>, <var>propvalue</var> - property name and value pair
 for additional properties to pass to the creation of the 
 arduino object.
</p>
<p>Currently properties are ignored.
</p>
<p>if the arduino function is called without parameters, it will scan
 for the first available arduino it can find and connect to it.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> - a successfully connected arduino object.
</p>
<span id="Properties"></span><h4 class="subsubheading">Properties</h4>
<p>The arduino object has the following public properties:
 </p><dl compact="compact">
<dt><span>name</span></dt>
<dd><p>name assigned to the arduino object
 </p></dd>
<dt><span>debug</span></dt>
<dd><p>true / false flag for whether debug in turned on
 </p></dd>
<dt><span>forcebuildon</span></dt>
<dd><p>true / false flag for whether to force show of the arduino IDE to
 reprogram the arduino
 </p></dd>
<dt><span>port (read only)</span></dt>
<dd><p>the communications port the board is connected to.
 </p></dd>
<dt><span>board  (read only)</span></dt>
<dd><p>The name of the board type that the arduino connected to
 </p></dd>
<dt><span>libraries (read only)</span></dt>
<dd><p>The libraries currently programmed onto the board
 </p></dd>
<dt><span>availablepins</span></dt>
<dd><p>The pins available for use on the board
 </p></dd>
<dt><span>analogreference</span></dt>
<dd><p>The analog voltage reference
 </p></dd>
</dl>

<p><strong>See also:</strong> scanForArduinos, arduinosetup.
 </p></dd></dl>