### Added

- Show the corpus size in tokens or segmentation units. This dependends on [new
  functionality](https://github.com/korpling/graphANNIS/blob/77ec947f4d457598abea89afdd376fc6dae9ad03/CHANGELOG.md#added)
  in graphANNIS 3.3.0 and you might need to re-import or re-optimize an already
  imported corpus to see the corpus size.
- Added "selected only" checkbox to show only selected corpora in the corpus
  list. This helps to get an overview of currently selected corpora without
  needing to scroll through the list and without the annoyance that the selected
  corpora are automatically at the top of the list.

### Fixed

- Upgraded to graphANNIS 3.3.0 which fixes several issues with corpus unloading
  and should improve the sitation when ANNIS is under heavy load.
- Updated issue in release script that was using the wrong graphANNIS version.