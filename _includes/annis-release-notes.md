### Fixed

- Ignore terminal namespace when null in tree visualizers. The tree visualizer
  used to fail, when the terminal namespace mapping is not configured, thus
  null. Null was then matched against the terminal node's actual namespace in
  ANNIS4. In ANNIS3, though, the namespace for terminals was ignored when the
  mapping was not configured (i.e. null). This behavior is now restored.