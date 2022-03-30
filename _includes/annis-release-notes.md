### Fixed

- Upgraded to graphANNIS 2.0.1. Among other things, it resolves issues when importing large
  GraphML or relANNIS corpora and issues with translating relANNIS resolver mappings.
  While this is a major graphANNIS release because of some internal API changes, no data migration
  or other upgrade steps are required. The AQL interpretation also remained the same.
- Show visible error message when 32-Bit Java is used to start ANNIS Desktop (#742)
- Mention the possibility to import GraphML in the import panel (#744)
- Fix configuration example for user configuration with Keycloak