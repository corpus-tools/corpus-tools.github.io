### Fixed

- Upgrade to graphANNIS 2.1.0 to fix near operator which failed to work with
  segmentation constraint and also remove the db.lock file when ANNIS is closed
- Do not skip error messages when started service is aborted. (#761)

### Added

- Because of the update to graphANNIS 2.1.0, it is also now possible to easily
  allow read-only access to all corpora without login and configuring an
  authentication provider using the graphANNIS `anonymous_access_all_corpora`
  configuration parameter.