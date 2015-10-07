This uses Jekyll and GitHub pages.
To compile the sources to static HTML follow the instructions from GitHub:
https://help.github.com/articles/using-jekyll-with-pages/

To run the site locally install ruby bundler and run:

```
bundle exec jekyll serve
```

##### Avoid the nav bar overlapping headers in the content (in-document links) - [#5](/../../issues/5)

This is achieved by the following CSS snippet in [theme.css](css/theme.css). It introduces an invisible pseudo element before the element in question.

```
.anchor:before { 
  display: block; 
  content: " "; 
  margin-top: -30px; 
  height: 30px;
  visibility: hidden; 
}
```

Use this by assigning class `anchor` to the target element. E.g., `<article class="anchor" id="download">`.
