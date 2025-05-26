### Added

- `grid` visualizer has a mapping `hide_text_name` (bool) that allows to hide the text name. It defaults to false.

### Fixed

- Update to graphANNIS 3.8.1 that improves the corpus cache handling when
querying for segmentation components. This should fix issues when a lot of
corpora are selected in the UI (e.g. with the "Select All" checkbox) and the
service becomes unresponsive because it needs to load of the corpora into the
cache.
