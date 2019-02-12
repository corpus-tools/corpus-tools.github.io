---
layout: default
title: Download
description: "Download links for the ANNIS software."
category: ANNIS
redirect_from:
- "/download.html"
- "/older.html"
- "/new.html"
- "/tools.html"
---

<div class="page-header">
# Download ANNIS
</div>

ANNIS is an open source project
distributed under the Apache Public License, Version 2.0. The system
requires a [PostgreSQL](http://www.postgresql.org/) installation to run, and **the server version**
also requires a running web-server (e.g. [Apache Tomcat](http://tomcat.apache.org/) or [Jetty](https://www.eclipse.org/jetty/)).
Both versions require the Installation of Java OpenJDK 8. If your operating system does already include Java. we recommend the installation of the open-source and free of charge installers provided at [https://adoptopenjdk.net/](https://adoptopenjdk.net/).

## Current stable ANNIS distribution: Version {{site.data.annis.version}}

For installation instructions see the [<i class="fa fa-book"></i> Installation section in the User Guide](http://korpling.github.io/ANNIS/{{site.data.annis.short-version}}/user-guide/installation.html). 
There are two editions of ANNIS, one for the local use on a standard computer (ANNIS Kickstarter) and one which is only needed when running a web-server.

- ANNIS Kickstarter: [annis-kickstarter-{{site.data.annis.version}}-distribution.zip](https://github.com/korpling/ANNIS/releases/download/annis-{{site.data.annis.version}}/annis-kickstarter-{{site.data.annis.version}}-distribution.zip) (local installation for Windows, Linux and Mac)
- ANNIS server:
  - [annis-gui-{{site.data.annis.version}}.war](https://github.com/korpling/ANNIS/releases/download/annis-{{site.data.annis.version}}/annis-gui-{{site.data.annis.version}}.war) (server GUI distribution)
  - [annis-service-{{site.data.annis.version}}-distribution.tar.gz](https://github.com/korpling/ANNIS/releases/download/annis-{{site.data.annis.version}}/annis-service-{{site.data.annis.version}}-distribution.tar.gz) (server service distribution)  


See the [change log]("https://raw.githubusercontent.com/korpling/ANNIS/master/CHANGELOG) for detailled information on what was changed in this version.


## Source code


Source code (including the latest experimental developments) is available 
together with our bugtracker/feature requests ('issues') at our [<i class="fa fa-github"></i> GitHub project](http://github.com/korpling/ANNIS).


## Older distributions

Older versions of ANNIS can be downloaded from [https://github.com/korpling/ANNIS/releases](https://github.com/korpling/ANNIS/releases).


<div class="page-header">
# Tools
</div>

## Converters

For corpora to be imported
into the system, they must be converted into it's
native relational database format using the [Pepper converter](../pepper/index.html). 

**Other Converters:**

- [Concatenation script](resources/catRelAnnis.pl) in Perl to merge multiple relAnnis corpora (creates one big corpus containing input relANNIS corpora as subcorpora)s
- [Excel Plugin](https://github.com/amir-zeldes/XLAddIns) (EXMARaLDA <> Excel and Excel to PAULA XML; Windows only)

Further documentation on the PAULA XML format may be found [here](http://www.sfb632.uni-potsdam.de/en/paula.html).
