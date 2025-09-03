---
title: "Download"
weight: 1
menus:
  navbar:
    parent: annatto
---

# Download Annatto

Annatto is a command line program, which is available pre-compiled for Linux, Windows and macOS.
Download and extract the latest release file from GitHub for your plaform: https://github.com/korpling/annatto/releases/latest


After extracting the binary to a directory of your choice, you can run the binary by opening a terminal and execute
```bash
<path-to-directory>/annatto
```
on Linux and macOS and
```cmd
<path-to-directory>\annatto.exe
```
on Windows.
If the annatto binary is located in the current working directory, you can also just execute `./annatto` on Linux and macOS and `annatto.exe` on Windows.

The main usage of annatto is through the command line interface. Run
```bash
annatto --help
```
to get more help on the sub-commands.
The most important command is `annatto run <workflow-file>`, which runs all the modules as defined in the given workflow file.
