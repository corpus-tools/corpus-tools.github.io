### Fixed

- Grid visualizer now also display spans that do not belong to any node layer
  when the "layer" is not specified in the resolver configuration. Before this
  fix, the layer name was not checked, but the node still needed to be part of a
  layer.
- Updated to graphANNIS 3.5.1 which fixes an issue where a backup folder in the
  database might not be loaded correctly and an issue where impossible precedence 
  queries created a "File too large" error.
- Allow to show text visualizations for documents where the token are not
  connected to the textual data source.
- Resolver entries with the "element" type "node" but no layer are now always 
  shown.
- Make the audio and video visualizer a little bit more robust when they are not 
  pre-loaded.
