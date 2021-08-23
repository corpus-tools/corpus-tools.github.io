---
layout: default
title: Hexatomic
icon: icon-atomic
toppage_idx: 3
subpages:
- "Download" : "#download"
- "User Documentation" : "#documentation"
- "How to cite" : "#how-to-cite"
- "Contribution and License" : "#license"
custom_js:
- mail
keywords: linguistics, annotation, tool, software, multilevel, corpus, corpora, corpus linguistics, eclipse, eclipse rcp, saltnpepper, jena, friedrich schiller university, research, linktype, open source, java, graphical, visual, editor, console, command line
description: Hexatomic is a cross-platform multi-layer corpus annotation tool – and extensible platform – prototype for the desktop.
publisher: Friedrich Schiller University Jena, Institute of English and American Studies
author: Stephan Druskat
VAR_github: https://github.com/infraling/atomic
VAR_head: _includes/head.html
VAR_license: _includes/license.html
---

{% include_relative {{ page.VAR_head }} %}

<p/>
<p class="alert alert-info">
    <span style="font-size:2rem;"><i class="fa fa-info-circle"/> **NOTE: Atomic >> Hexatomic**</span><br/>
    <span style="font-size:2rem;">Atomic development has come to an end. The resulting prototype platform is currently used to develop
    <b>Hexatomic</b>, a fully-featured multiy-layer annotation software. For more info, go to the <a href="https://hexatomic.github.io"><strong>Hexatomic project website</strong></a>.
</p>

<div class="page-header">
# About Hexatomic
</div>

<div class="content">

Atomic originates in the research project **Towards a corpus-based typology of clause linkage - An analytical framework and case studies on non-local dependencies** ([**LinkType**](http://linktype.iaa.uni-jena.de/)) at the universities of [Zurich](http://www.linguistik.uzh.ch/index_en.html) and [Jena](http://www.anglistik.uni-jena.de/en/).

Atomic is an architectural prototype for an extensible multi-layer annotation platform for linguistic data. It will be developed into **Hexatomic**, a stable, production-ready software product, in a research project funded by the [DFG](www.dfg.de/en/) as part of the ["Research Software Sustainability"](http://www.dfg.de/en/research_funding/programmes/infrastructure/lis/funding_opportunities/call_proposal_software/) programme, running from 2018-2021.

Atomic and Hexatomic work on a concrete implementation of the generic graph-based meta model [Salt]({{site.site_salt}}), and embed its complementary conversion framework [Pepper]({{ site.site_pepper }}), allowing for n : m mapping between data formats. Hexatomic will also embed the [ANNIS]({{site.site_annis}}) search engine for linguistic data as well as an interface to its query language AQL.

<article class="anchor" id="how-to-cite">
<div class="page-header">
# How to cite
</div>

<div class="content">
<p>If you want to refer to the concepts Atomic implements, please cite it as follows.</p>
<p><span class="fa fa-book"></span> <strong>Druskat, Stephan, Lennart Bierkandt, Volker Gast, Christoph Rzymski &amp; Florian Zipser. 2014. <i>Atomic: an open-source software platform for multi-layer corpus annotation</i>.</strong> In Josef Ruppert and Gertrud Faaß (eds.): Proceedings of the 12th Konferenz zur Verarbeitung natürlicher Sprache (KONVENS 2014), Hildesheim, October 2014. 228&ndash;234. ISBN 978-3-934105-46-1. <a class="fa fa-file-pdf-o" href="http://nbn-resolving.de/urn:nbn:de:gbv:hil2-opus-2866"> PDF</a></p>
</div>
</article>


<article class="anchor" id="download">
<div class="page-header">
# Download
</div>

<div class="content">
Atomic is an architectural prototype. 

Past experimental releases have been removed.

Current development of a stable annotation software is under way in the <a href="https://hexatomic.github.io">Hexatomic research project</a>.

<!--To receive updates about releases, please subscribe to the Atomic users mailing list: <a class="fa fa-envelope-o" href="https://lserv.uni-jena.de/mailman/listinfo/atomic-user"> atomic-user</a>. Subscribers to the list will be notified of any releases.-->
</div>
</article>

<!--{% include_relative {{ page.VAR_license }} %}-->

--------------

<article>
<div class="row">
<div class="col-md-6">
## <i class="fa fa-envelope"></i> Contact

### Atomic

For Atomic-related questions, please write a message to the atomic-user mailing list:

<span class="fa fa-envelope-o"></span><a onmouseover="setEmailStatus('atomic-user', 'listserv.uni-jena', 'de'); return true;" onmouseout="status=''; return true;" onclick="sendEmail('atomic-user', 'listserv.uni-jena', 'de', ''); return false;" href="javascript:sendEmail('atomic-user',%20'listserv.uni-jena',%20'de',%20'')" target="_self"> atomic-user &#x40; listserv · uni-jena · de</a>

### LinkType

For questions related to the LinkType research project, please consult the project website:
[http://linktype.iaa.uni-jena.de/](http://linktype.iaa.uni-jena.de/)

## <i class="fa fa-fast-forward"></i> Keep up to date

Subscribe to the Atomic users mailing list: <a class="fa fa-envelope-o" href="https://lserv.uni-jena.de/mailman/listinfo/atomic-user"> atomic-user</a>.

Subscribe to the Atomic developers mailing list: <a class="fa fa-envelope-o" href="https://lserv.uni-jena.de/mailman/listinfo/atomic-dev"> atomic-dev</a>.
</div><!--/.col-md-3-->

<div class="col-md-6">
## <i class="fa fa-info-circle"></i> Impressum

<div>
The following information (Impressum) is required under German law.

Responsible for the content of this site:  
Volker Gast  
Friedrich Schiller University Jena  
Institut für Anglistik und Amerikanistik  
Ernst-Abbe-Platz 8  
07743 Jena  
Germany  
Tel: +49 (0)3641 944500  
<span class="fa fa-envelope-o"></span> <a onmouseover="setEmailStatus('atomic', 'corpus-tools', 'org'); return true;" onmouseout="status=''; return true;" onclick="sendEmail('atomic', 'corpus-tools', 'org', ''); return false;" href="javascript:sendEmail('atomic',%20'corpus-tools',%20'org',%20'')" target="_self">atomic &#x40; corpus-tools · org</a>
</div>
</div><!--/.col-md-3-->
</div>
</article>

<article id="supporters">
<div class="page-header">
<h1>Supported by</h1>
  </div>
<div class="funders">
<a href="http://www.uni-jena.de/en/start.html">
<img width="100" src=".././images/logos/fsu-trans.png" alt="Universität Jena" />
  </a>&nbsp;&nbsp;&nbsp;
<a href="http://www.dfg.de/en/">
<img width="250" src=".././images/logos/dfg_logo_schriftzug_blau.png" alt="Deutsche Forschungsgemeinschaft (DFG)" />
  </a>&nbsp;&nbsp;&nbsp;
<a href="https://www.linguistik.hu-berlin.de/institut/professuren/korpuslinguistik/standardseite-en?set_language=en&amp;cl=en">
<img width="100" src=".././images/logos/husiegel_bw_gross.png" alt="Humboldt-Universität zu Berlin, Department of corpus linguistics and morphology"/>
  </a>
</div>
</article>