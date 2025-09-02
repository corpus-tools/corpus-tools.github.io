---
title: "Download"
weight: 1
menus:
  navbar:
    parent: annis
---

# Download ANNIS

## Latest release


There are two editions of ANNIS:
- one for the local use on a standard computer (ANNIS Desktop) with the file name ` annis-<version>-desktop.jar`,
- and one which is only needed when running ANNIS on a server having the file name `annis-<version>-server.jar`.

The files can be downloaded from GitHub: \
<https://github.com/korpling/ANNIS/releases/latest>

## Requirements

ANNIS requires the Installation of Java OpenJDK 11. If your operating system does not already include Java, we recommend the installation of the open-source and free of charge installers provided at [https://adoptium.net/](https://adoptium.net/de/temurin/releases?version=11).

## Differences to ANNIS 3

Starting from ANNIS 4.0.0, instead of using the relational database PostgreSQL, a custom AQL implementation based on graphs called [graphANNIS](/graphannis) is used. ANNIS 4 currently only supports a sub-set of the ANNIS Query language (AQL) compared to the legacy ANNIS version 3.7.
Full support is planned, but some backward-compatible features of AQL will only be available in a compatibility mode. See the chapter ["Differences in Compatibility Mode"](http://korpling.github.io/ANNIS/4/user-guide/aql/compatibility-mode.html) of the User Guide for more information.
