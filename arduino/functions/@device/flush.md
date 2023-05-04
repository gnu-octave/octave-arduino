---
layout: "default"
permalink: "/functions/@device/13_deviceflush/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - @device/flush"
category: "Arduino Device Functions"
func_name: "@device/flush"
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
<dt id="index-flush"><span class="category">: </span><span><em><var>data</var> =</em> <strong>flush</strong> <em>(<var>dev</var>)</em><a href='#index-flush' class='copiable-anchor'></a></span></dt>
<dt id="index-flush-1"><span class="category">: </span><span><em><var>data</var> =</em> <strong>flush</strong> <em>(<var>dev</var>, &quot;input&quot;)</em><a href='#index-flush-1' class='copiable-anchor'></a></span></dt>
<dt id="index-flush-2"><span class="category">: </span><span><em><var>data</var> =</em> <strong>flush</strong> <em>(<var>dev</var>, &quot;output&quot;)</em><a href='#index-flush-2' class='copiable-anchor'></a></span></dt>
<dd><p>Flush the serial port buffers
</p>
<span id="Inputs"></span><h4 class="subsubheading">Inputs</h4>
<p><var>dev</var> - connected serial device opened using device
</p>
<p>If an additional parameter is provided of &quot;input&quot; or &quot;output&quot;,
 then only the input or output buffer will be flushed
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p>None
</p>

<p><strong>See also:</strong> arduino, device, read.
 </p></dd></dl>