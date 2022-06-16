###  Added

- Allow to change the displayed order of corpus metadata annotations using the
  `corpus_annotation_order` configuration in the `corpus-config.toml`
  file. (#500)
- Automatically restart the bundled web service when it crashed.

### Fixed

- Only show warning on MacOS with M1 processor instead if exiting.
- Use several lines for showing the MacOS M1 warning, because there is no
  automatic line brake.