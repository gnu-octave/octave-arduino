---
layout: "default"
permalink: "/functions/21_arduinoioLibraryBase/"
pkg_name: "arduino"
pkg_version: "0.10.0"
pkg_description: "Basic Octave implementation of the matlab arduino extension,  allowing communication to a programmed arduino board to control its  hardware."
title: "Arduino Toolkit - arduinoio.LibraryBase"
category: "Arduino I/O package"
func_name: "arduinoio.LibraryBase"
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
<dt id="index-arduinoio_002eLibraryBase"><span class="category">: </span><span><em></em> <strong>arduinoio.LibraryBase</strong><a href='#index-arduinoio_002eLibraryBase' class='copiable-anchor'></a></span></dt>
<dd><p>Base class used for arduino library plugins
</p>

<p><strong>See also:</strong> arduino, listArduinoLibraries, addon.
 </p></dd></dl>

<span id="Properties"></span><h4 class="subheading">Properties</h4>
<p>Base properties are expected to be inherited and overwritten in 
 inherited classes and are constant in order to query through the 
 metaobject mechanism.
</p>
<p><var>LibraryName</var> - name of the addon library
</p>
<p><var>DependentLibraries</var> - array of dependent library names that
  must be included when installing this plugin.
</p>
<p><var>CppHeaderFile</var> - name (if any) of header file that will be
 included into the arduino project when adding this library.
</p>
<p><var>CppSourceFile</var> - name (if any) of source file that will be
 included into the arduino project when adding this library.
</p>
<p><var>CppClassName</var> - name of the cpp class for the addon library.
 project when adding this library.
</p>
<p><var>Pins</var> - pins allocated to the addon
</p>
<p><var>Parent</var> - parent arduino object.
</p>
<span id="Methods"></span><h4 class="subheading">Methods</h4>
<dl class="def">
<dt id="index-LibraryBase"><span class="category">: </span><span><em><var>lb</var> =</em> <strong>LibraryBase</strong> <em>()</em><a href='#index-LibraryBase' class='copiable-anchor'></a></span></dt>
<dd><p>Constructor of base class
</p>
<p>The constructor is usually not called but called indirectly
 from the addon function.
</p>
<span id="Outputs"></span><h4 class="subsubheading">Outputs</h4>
<p>The return value <var>lb</var> is an object of the arduinio.LibraryBase class.
</p>

<p><strong>See also:</strong> arduino, listArduinoLibraries, addon.
 </p></dd></dl>

<dl class="def">
<dt id="index-display"><span class="category">: </span><span><em></em> <strong>display</strong> <em>()</em><a href='#index-display' class='copiable-anchor'></a></span></dt>
<dd><p>Display the addon in a verbose way.
 </p></dd></dl>