---
title: "Artemisia"
bookcase_cover_title: 'Annotation editor Artemisia (work in progress)'
weight: 3
bookcase_cover_src: '/images/cover/artemisia.png'
menu:
  navbar:
    identifier: artemisia
---

{{< header_with_icon src=images/icon-32.png title="Artemisia annotation editor (work in progress)" >}}

The Artemisia annotation editor is intended to be used for the [RIDGES corpus](https://www.linguistik.hu-berlin.de/en/institut-en/professuren-en/korpuslinguistik/research/ridges-projekt).
It is based on [graphANNIS](../graphannis) and thus is internal data model is in principle suitable for a wide range of annotation concepts.

It is very much **work in progress**.
We support Linux, Windows and (with delayed manual relases) macOS, but only activly test on Linux.
See the [Releases](https://codeberg.org/korpling/artemisia/releases) page to download the files for your operating system.

## Features

- Import and export corpora in the most formats supported by [annatto](../annatto)
- Supports editing several token layers (RIDGES has diplomatic transcription and two normalization layers)
- Supports span annotations
- Edit the corpus structure and change meta data

## Screenshots

![Screenshot of adding spans with shortcuts](images/adding-spans.png)

![Screenshot of editing the meta data of a corpus.](images/adding-metadata.png)

![Sreenshot of the UI for importing a corpus from XLSX files](images/import-xlsx.png)
