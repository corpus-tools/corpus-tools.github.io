### Fixed

- Ignore pointing relations when traversing the graph in the RST visualizer. If
we include pointing relations and they create cycles, this would result in an
error.
- Delete temporary files when exporting/fetching results.