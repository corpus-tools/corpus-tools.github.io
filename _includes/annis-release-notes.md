### Fixed

- No `Row outside dataProvider size` error message when the corpus list is
  empty.
- The segmentation context was automatically reset to its default value from
  configuration when changed manually.
- Update to graphANNIS 2.3.0 which has various bug fixes, including fixing
  broken result ordering for certain queries.
- Fixed order of subgraphs when there are gaps in the result
- Update jsoup dependency to 1.15.3