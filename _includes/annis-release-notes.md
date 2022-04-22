### Fixed

- Upgraded to graphANNIS 2.0.4. This fixes wrong number of results when using the non-existant
  operators with node attribute searches without a value (e.g. `dipl !_=_ norm`).
- Fix error message in corpus browser window when there is a meta annotation with an invalid name
  (like e.g. a space "corpus description" in the Bematac corpus).
- HTML visualizer might output the elements several times (#755).