---
title: "graphANNIS"
weight: 4
bookcase_cover_title: "Embedd corpus search in your own software with graphANNIS"
bookcase_cover_src: '/images/cover/graphannis.png'
menus:
  navbar:
    identifier: graphannis
---

# graphANNIS

This is a new backend implementation of the [ANNIS linguistic search and visualization system](../annis) that can be embedded in you own application.
There is a [tutorial in the Developer Guide](https://korpling.github.io/graphANNIS/docs/v3/embed.html) on how to embed graphANNIS in your own application.

The basic design ideas and data models are described in detail in the PhD-thesis ["ANNIS: A graph-based query system for deeply annotated text corpora"](https://doi.org/10.18452/19659). The thesis describes a prototype implementation in C++ and not Rust, but the design ideas are the same.
Notable differences/enhancements compared to the thesis are:

- Graph storages implement querying inverse edges and finding reachable nodes based on them: this allows to implement inverse operators (e.g. for precedence) and switching operands in situations where it was not possible before.
- The data model has been simplified: the inverse coverage component and inverse edges in the left-/right-most token component have been removed.
- Additional query language features are now supported.

## Documentation

- [Developer Guide](https://korpling.github.io/graphANNIS/docs/v3/) (including descriptions of the data model and tutorials for the API)
- [API documentation](https://docs.rs/graphannis/)
