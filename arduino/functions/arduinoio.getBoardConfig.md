---
layout: "default"
permalink: "/functions/24_arduinoiogetBoardConfig/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - arduinoio.getBoardConfig"
category: "Arduino I/O package"
func_name: "arduinoio.getBoardConfig"
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
<dt id="index-arduinoio_002egetBoardConfig"><span class="category">: </span><span><em><var>retval</var> =</em> <strong>arduinoio.getBoardConfig</strong> <em>(<var>boardname</var>)</em><a href='#index-arduinoio_002egetBoardConfig' class='copiable-anchor'></a></span></dt>
<dd><p>Return the configuration for a known arduino board type
</p>
<p>Function is used to get the expected pin/board configuration for a named board type
 which is used to verify and identify the functionality of the board.
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>boardname</var> - name of board to get configuration of ie: &quot;uno&quot;
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p><var>retval</var> configuration struct.
 </p></dd></dl>