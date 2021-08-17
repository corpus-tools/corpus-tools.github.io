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

ANNIS requires the Installation of **Java OpenJDK 8**. If your operating system does already include Java. we recommend the installation of the open-source and free of charge installers provided at [https://adoptopenjdk.net/](https://adoptopenjdk.net/).

- ANNIS Desktop: [<i class="fa fa-download"></i> annis-{{site.data.annis.version}}-desktop.jar](https://github.com/korpling/ANNIS/releases/download/annis-{{site.data.annis.version}}/annis-{{site.data.annis.version}}-desktop.jar) (local installation for Windows, Linux and Mac, just double-click on the downloaded file to start the application)
- ANNIS Server: [<i class="fa fa-download"></i> annis-{{site.data.annis.version}}-server.jar](https://github.com/korpling/ANNIS/releases/download/annis-{{site.data.annis.version}}/annis-{{site.data.annis.version}}-server.jar) (an executable file which starts both the user interface and the backend service, see the [user guide](http://korpling.github.io/ANNIS/{{site.data.annis.short-version}}/user-guide/installation/) for installation and configuration instructions)


Please report any issues in the [GitHub issue tracker](https://github.com/korpling/ANNIS/issues).

This is a complete overhaul of the ANNIS service backend.
Instead of using the relational database PostgreSQL, a custom AQL implementation based on graphs called [graphANNIS](https://github.com/korpling/graphANNIS) is used.
ANNIS {{site.data.annis.short-version}} currently only supports a sub-set of the ANNIS Query language (AQL) compared to the legacy ANNIS version {{site.data.annis.legacy-short-version}}.
Full support is planned, but some backward-compatible features of AQL will only be available in a compatibility mode.
See the chapter ["Differences in Compatibility Mode"](http://korpling.github.io/ANNIS/{{site.data.annis.short-version}}/user-guide/aql-compatibility-mode.html) of the User Guide in the Tutorial for more information.
For administrators, there are [instructions](http://korpling.github.io/ANNIS/{{site.data.annis.short-version}}/user-guide/installation/migrate-annis3.html) on how to migrate from ANNIS 3 to 4 in the User Guide. 
For the server version, this release completely changes the way users are authenticated, but it should be much easier to integrate Single-Sign-On systems like Shibboleth or other institutional accounts.
See the user guide for [installation](http://korpling.github.io/ANNIS/{{site.data.annis.short-version}}/user-guide/installation/server.html) and [configuration](http://korpling.github.io/ANNIS/{{site.data.annis.short-version}}/user-guide//configuration/) instructions for the server (e.g. how to [add user accounts](http://korpling.github.io/ANNIS/{{site.data.annis.short-version}}/user-guide/configuration/user.html) or [run the graphANNIS backend on a different server](http://korpling.github.io/ANNIS/{{site.data.annis.short-version}}/user-guide/advanced/backend-frontend-separation.html)).

## Legacy version: ANNIS {{site.data.annis.legacy-version}}

This version requires a [PostgreSQL](http://www.postgresql.org/) installation to run. 
**PostgreSQL versions 9.4 to 12 are supported** but there are known issues with PostgreSQL 13. 
The ANNIS the server version (but not the desktop kickstarter) also requires a running web-server (e.g. [Apache Tomcat](http://tomcat.apache.org/) or [Jetty](https://www.eclipse.org/jetty/)).
Both versions require the Installation of **Java OpenJDK 8**. If your operating system does already include Java. we recommend the installation of the open-source and free of charge installers provided at [https://adoptopenjdk.net/](https://adoptopenjdk.net/).

For installation instructions see the [<i class="fa fa-book"></i> Installation section in the User Guide](http://korpling.github.io/ANNIS/{{site.data.annis.legacy-short-version}}/user-guide/installation.html). 
There are two editions of ANNIS, one for the local use on a standard computer (ANNIS Kickstarter) and one which is only needed when running a web-server.

- ANNIS Kickstarter: [annis-kickstarter-{{site.data.annis.legacy-version}}-distribution.zip](https://github.com/korpling/ANNIS/releases/download/annis-{{site.data.annis.legacy-version}}/annis-kickstarter-{{site.data.annis.legacy-version}}-distribution.zip) (local installation for Windows, Linux and Mac)
- ANNIS server:
  - [annis-gui-{{site.data.annis.legacy-version}}.war](https://github.com/korpling/ANNIS/releases/download/annis-{{site.data.annis.legacy-version}}/annis-gui-{{site.data.annis.legacy-version}}.war) (server GUI distribution)
  - [annis-service-{{site.data.annis.legacy-version}}-distribution.tar.gz](https://github.com/korpling/ANNIS/releases/download/annis-{{site.data.annis.legacy-version}}/annis-service-{{site.data.annis.legacy-version}}-distribution.tar.gz) (server service distribution)  


See the [change log](https://raw.githubusercontent.com/korpling/ANNIS/annis3/master/CHANGELOG) for detailled information on what was changed in this version.


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
