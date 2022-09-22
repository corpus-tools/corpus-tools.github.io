### Fixed

- Fixed handling of virtual tokenization in exporters when relANNIS corpora had
  an explicit mapping defined. ANNIS3 had the `virtual_tokenization_mapping` and
  `virtual_tokenization_from_namespace` fields in the
  `ExtData/corpus.properties` file which allowed to configure which span
  annotation belonged to which segmentation. In the exporters, this was used to
  reconstruct a Salt graph where the virtual token are replace with timeline
  items and the segmentation spans become actual SToken. There are several
  corpora that depend on this functionality and where the exporters failed to
  generated proper text spans because of this.
- The context defined in the exporter panel was not taken into account.