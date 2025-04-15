
### Fixed

- Update to graphANNIS 3.7.1

### Added

- `sentstructurejs` visualizer also works for multiple segmentations. 
  Via an optional mapping `edge_type` the alignment edges can be specified,
  which must match the internally derived STYPE. No value for `edge_name`
  incorporates all poiting relations. To work with multiple segmentations,
  the aligned segmentations need to have an ordering with a unique name.
  Furthermore, the ordered nodes provide the segment values for the visualizer
  through annotations with a name that is equal to the ordering name.
  The namespace is optional, i. e. can be empty, equal to the layer name
  or ordering name, or `default_ns`.
