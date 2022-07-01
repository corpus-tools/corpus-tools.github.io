### Fixed

- Documents which special characters (like %) in their name could not be opened
  in full text visualizes (like the document browser).
- The `raw_text` visualizer did not work properly and did not show the whole
  text.
- Avoid issues with possible problematic random number generation in visualizer
  result ID. Since the ID is only locally used for one match view, the impact of
  a flawed random generator are limited, but it is still bad practice to create
  a new random generator each time.
- Multiple texts in parallel corpora where treated as a single text, causing
  several problems. E.g. the KWIC view was showing a single token row with gaps
  instead of several token rows for parallel corpora.
- Fixed issue with qualified annotation names in HTML visualizer, which resulted
  in incomplete results.