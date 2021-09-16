### Added

- Add operator negation without existence assumption to AQL by upgrading to graphANNIS 1.2.1. 
  Optional and possible non-existing nodes are marked with the suffix `?` and can be combined 
  with negated operators like `!>*`. This means you can e.g. search for all sentences without a 
  noun with the query like `cat="S" !>* pos="NN"?`. More information can be found
  in the User Guide in the section "Operator Negation".