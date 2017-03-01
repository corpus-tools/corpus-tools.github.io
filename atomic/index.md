---
layout: default
title: Atomic
icon: icon-atomic
toppage_idx: 3
subpages:
- "Download" : "#download"
- "User Documentation" : "#documentation"
- "How to cite" : "#how-to-cite"
- "FAQ" : "#faq"
- "Contribution and License" : "#license"
custom_js:
- mail
keywords: linguistics, annotation, tool, software, multilevel, corpus, corpora, corpus linguistics, eclipse, eclipse rcp, saltnpepper, jena, friedrich schiller university, research, linktype, open source, java, graphical, visual, editor, console, command line
description: Atomic is a cross-platform multi-layer corpus annotation tool – and extensible platform – for the desktop.
publisher: Friedrich Schiller University Jena, Institute of English and American Studies
author: Stephan Druskat
VAR_github: https://github.com/infraling/atomic
VAR_head: _includes/head.html
VAR_license: _includes/license.html
---

{% include_relative {{ page.VAR_head }} %}

<div class="page-header">
# About Atomic
</div>

<div class="content">
Atomic has been originally developed in the context of **Towards a corpus-based typology of clause linkage - An analytical framework and case studies on non-local dependencies** ([**LinkType**](http://linktype.iaa.uni-jena.de/)), a [DFG](http://www.dfg.de/)-funded linguistic research project that is jointly carried out by the universities of [Zurich](http://www.linguistik.uzh.ch/index_en.html) and [Jena](http://www.anglistik.uni-jena.de/en/). The project aims at statistically modeling linguistic variation in the area of complex sentences. It is based on the investigation of corpora from genealogically and geographically diverse languages that have been richly annotated.

Atomic is built as an open source annotation software for multi-layer deep linguistic annotation of text corpora. It is based on the Eclipse RCP, a modular rich client platform implemented in Java, and hence extensible via plugins.

Atomic works on a concrete implementation of the generic graph-based meta-model [Salt]({{site.site_salt}}), and embeds its complementary conversion framework [Pepper]({{ site.site_pepper }}), allowing for n : m mapping between data formats.

### Development status

In the context of the LinkType project, Atomic has been developed as an architectural prototype, i.e., as a test bed for an extensible, sustainable annotation *platform*. Hence, all current functionality must be considered **experimental**, i.e., unstable and due to change.

**Currently, Atomic is being developed towards an initial <i>stable release</i>.**

To track progress, have a look at the *development* branch on [GitHub]({{ page.VAR_github }}). We aim for a transparent development process via issues and the *Features* project on the GitHub site. Feel free to file an issue if you want to contribute.
</div>

<article class="anchor" id="how-to-cite">
<div class="page-header">
# How to cite
</div>

<div class="content">
<p>If you use <strong>Atomic</strong> in your scientific work, please cite it as follows.</p>
<p><span class="fa fa-book"></span> <strong>Druskat, Stephan, Lennart Bierkandt, Volker Gast, Christoph Rzymski &amp; Florian Zipser. 2014. <i>Atomic: an open-source software platform for multi-layer corpus annotation</i>.</strong> In Josef Ruppert and Gertrud Faaß (eds.): Proceedings of the 12th Konferenz zur Verarbeitung natürlicher Sprache (KONVENS 2014), Hildesheim, October 2014. 228&ndash;234. ISBN 978-3-934105-46-1. <a class="fa fa-file-pdf-o" href="http://nbn-resolving.de/urn:nbn:de:gbv:hil2-opus-2866"> PDF</a></p>
</div>
</article>


<article class="anchor" id="download">
<div class="page-header">
# Download
</div>

<div class="content">
Atomic is currently being developed towards an initial stable release.

Past experimental releases have been removed.

To receive updates about releases, please subscribe to the Atomic users mailing list: <a class="fa fa-envelope-o" href="https://lserv.uni-jena.de/mailman/listinfo/atomic-user"> atomic-user</a>. Subscribers to the list will be notified of any releases.
</div>
</article>

{% include_relative {{ page.VAR_license }} %}