### Changed

- Always show the selected corpora at the beginning of the grid, even when not included in the 
  current filter. This should make it much easier to spot corpora that where selected by mistake. 
  (also fixes issue #563).

### Fixed

- Exception thrown when URL with corpus fragment (`#c=...`) was openend
- Fix width of the corpus list columns when scrolling to long corpus names
- Info and browse document buttons were not always visible without scrolling
- Removed internal usage of the `clone()` function which has been reported
  as "blocker" code smell by the sonarcloud static code analysis.