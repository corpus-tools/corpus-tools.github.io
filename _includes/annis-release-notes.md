### Fixed

- Upgrade to graphANNIS 2.0.6 to fix subgraph generation when a segmentation was
  defined as context and the match includes a token that is not covered by a
  segmentation node (there are gaps in the segmentation). Because token where
  missing from the graph, it could appear in ANNIS that there are gaps in the
  data and that the token order is incorrect.