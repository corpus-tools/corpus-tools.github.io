### Fixed

- Fix display of match path in results that match a document or corpus (metadata
  search) and the corpus has a special character like an umlaut.
- Do not overwrite existing `service.toml` file (which might get the file
  corrupted in certain cases) but always write the updated configuration to a
  temporary TOML-file.
- Update Apache `commons-text` dependency to >= 1.0 because of of CVE-2022-42889