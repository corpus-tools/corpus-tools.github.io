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
distributed under the Apache Public License, Version 2.0. 


## Current version: ANNIS {{site.data.annis.version}}

ANNIS requires the Installation of **Java OpenJDK 11**. If your operating system does not already include Java, 
we recommend the installation of the open-source and free of charge installers provided at [https://adoptium.net/](https://adoptium.net/de/temurin/releases?version=11).
Starting from ANNIS 4.0.0, instead of using the relational database PostgreSQL, a custom AQL implementation based on graphs called [graphANNIS](https://github.com/korpling/graphANNIS) is used.
ANNIS {{site.data.annis.short-version}} currently only supports a sub-set of the ANNIS Query language (AQL) compared to the legacy ANNIS version {{site.data.annis-legacy.short-version}}.
Full support is planned, but some backward-compatible features of AQL will only be available in a compatibility mode.
See the chapter ["Differences in Compatibility Mode"](http://korpling.github.io/ANNIS/{{site.data.annis.short-version}}/user-guide/aql/compatibility-mode.html) of the User Guide for more information.

Please report any issues in the [GitHub issue tracker](https://github.com/korpling/ANNIS/issues).


### Downloads

There are two editions of ANNIS, one for the local use on a standard computer (ANNIS Desktop) and one which is only needed when running ANNIS on  a server.

- ANNIS Desktop: [<i class="fa fa-download"></i> annis-{{site.data.annis.version}}-desktop.jar](https://github.com/korpling/ANNIS/releases/download/v{{site.data.annis.version}}/annis-{{site.data.annis.version}}-desktop.jar) (local installation for Windows, Linux and Mac, see the user guide for [installation instructions](http://korpling.github.io/ANNIS/{{site.data.annis.short-version}}/user-guide/installation/desktop.html))
- ANNIS Server: [<i class="fa fa-download"></i> annis-{{site.data.annis.version}}-server.jar](https://github.com/korpling/ANNIS/releases/download/v{{site.data.annis.version}}/annis-{{site.data.annis.version}}-server.jar) (an executable file which starts both the user interface and the backend service, see the user guide for [installation](http://korpling.github.io/ANNIS/{{site.data.annis.short-version}}/user-guide/installation/server.html) and [configuration](http://korpling.github.io/ANNIS/{{site.data.annis.short-version}}/user-guide/configuration/index.html) instructions)


### What's new in version {{site.data.annis.version}}?

---

{% include annis-release-notes.md %}

See the [change log](https://raw.githubusercontent.com/korpling/ANNIS/main/CHANGELOG.md) for changes of all previous versions.

---



## Legacy version: ANNIS {{site.data.annis-legacy.version}}

This version requires a [PostgreSQL](http://www.postgresql.org/) installation to run. 
**PostgreSQL versions 9.4 to 14 are supported**.
The ANNIS the server version (but not the desktop kickstarter) also requires a running web-server (e.g. [Apache Tomcat](http://tomcat.apache.org/) or [Jetty](https://www.eclipse.org/jetty/)).
Both versions require the Installation of **Java OpenJDK 8**. If your operating system does already include Java. we recommend the installation of the open-source and free of charge installers provided at [https://adoptium.net/]([https://adoptium.net](https://adoptium.net/de/temurin/releases?version=8)).

For installation instructions see the [<i class="fa fa-book"></i> Installation section in the User Guide](http://korpling.github.io/ANNIS/{{site.data.annis-legacy.short-version}}/user-guide/installation.html). 
There are two editions of ANNIS, one for the local use on a standard computer (ANNIS Kickstarter) and one which is only needed when running a web-server.

- ANNIS Kickstarter: [annis-kickstarter-{{site.data.annis-legacy.version}}-distribution.zip](https://github.com/korpling/ANNIS/releases/download/annis-{{site.data.annis-legacy.version}}/annis-kickstarter-{{site.data.annis-legacy.version}}-distribution.zip) (local installation for Windows, Linux and Mac)
- ANNIS server:
  - [annis-gui-{{site.data.annis-legacy.version}}.war](https://github.com/korpling/ANNIS/releases/download/annis-{{site.data.annis-legacy.version}}/annis-gui-{{site.data.annis-legacy.version}}.war) (server GUI distribution)
  - [annis-service-{{site.data.annis-legacy.version}}-distribution.tar.gz](https://github.com/korpling/ANNIS/releases/download/annis-{{site.data.annis-legacy.version}}/annis-service-{{site.data.annis-legacy.version}}-distribution.tar.gz) (server service distribution)  


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
