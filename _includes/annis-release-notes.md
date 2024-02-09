### Added

- Added the possibility to log user search interactions of the `QueryController`
  anonymously. You have to set the logging level for the component
  `org.corpus_tools.annis.gui.QueryController` to the value `DEBUG`, e.g. by
  adding the following lines to the
  [`application.properties`](http://korpling.github.io/ANNIS/4.10/user-guide/configuration/index.html)
  file:
```
# Set general log level for ANNIS
logging.level.org.corpus_tools.annis=WARN
# Log user interactions
logging.level.org.corpus_tools.annis.gui.QueryController=DEBUG
```

### Fixed

- Updated to graphANNIS bugfix version 3.1.1, which fixes issues with token
  searches when the result order is randomized or not sorted and the corpus is
  not loaded yet (<https://github.com/korpling/graphANNIS/pull/280>).