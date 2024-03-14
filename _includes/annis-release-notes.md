### Fixed

- Do not add "annis:doc" labels to sub-corpora when importing relANNIS corpora.
  This will fix queries where you just search for documents, e.g. by `annis:doc`
  but previously also got the sub-corpora as result. This bug only occurred in
  corpora with sub-corpora and for the document searches.
- Avoid null pointer exceptions when merging corpus configs for search options.
- Updated to graphANNIS 3.2.0 which contains several performance improvements
  for working with large corpora (>10 million token). You might have to
  re-import the corpora to get the full performance improvement, because a new
  graph storage implementation and statistics have been added.
- Omit the document count for results where there are no matches inside a
  document, but only the documents or sub-corpora themselves. A document count
  of 0 would otherwise be very confusing.