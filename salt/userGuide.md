---
layout: default
title: Quick User Guide
category: Salt
---
# Quick User Guide

This article gives a brief overview over the Java API of Salt.
For giving a short but concise feeling of what Salt is made for, we give examples in Java code, followed by explanations. 
The description exemplifies the creation of a new corpus, starting from modeling its structure, the primary data, the tokenization, adding annotations, hierarchies and so on. At the end of this article, we show how such a corpus model can be stored as SaltXML and loaded into main memory again. 
You can download the demonstrated code via GitHub under [https://github.com/korpling/saltDemo](https://github.com/korpling/saltDemo). 
The code samples are written for version 3 of the Salt API which is the current development version.
More code samples can be found in Salt's [sample package](https://github.com/korpling/salt/tree/develop/salt-api/src/main/java/org/corpus_tools/salt/samples). 

Salt is a graph-based meta model, and therefore each model element in Salt is either a node, a relation, a graph, a label, or a layer. This means nodes can be connected via relations. Nodes and relations are contained in a graph. They also can be contained in layers, which define kinds of sub-graphs. A layer itself is also contained in a graph. Each element can be labeled, even labels can have labels.

### <a name="sample">The Sample</a>

In this article, we present only a very simple example to show the main components of Salt in a very brief way. The example is given to clarify the mechanisms of Salt and therefore does not claim to advocate a specific linguistic school. In general, Salt is able to contain very complex corpus structures (which means the inner organization of a corpus), having a recursive sub-corpus - super-corpus structure with a lot of primary data. For simplifying the example, we decided to use just a single corpus object (which is also the root corpus) containing one document. The document contains the primary text "<i>Is this example more complicated than it appears to be?</i>".  After showing how to create a corpus structure in section [Corpus Structure](#corpusStructure), we show a tokenization of the primary text by adding one token for each word of that sentence in [Tokenization](#tokenization). We also illustrate how to annotate these words with part-of-speech and lemma annotations. In [Hierarchies](#hierarchies), we show the modeling of higher hierarchies having a part-of relationship in Salt, modeling a syntax analysis above the given sentence.  In Salt, there is also a second way of creating aggregations of tokens called 'spans'. The semantics of spans is slightly different compared to that of hierarchies. In contrast to hierarchies, spans aggregate tokens to a set to be annotated once. You might, for instance, not want to annotate a single token only, but a whole structure containing a set of possibly discontinuous tokens. The use of spans is shown in [Spans](#spans) and demonstrated with the use case of an information structure analysis. The last type of model element we show here is a loose relation, or relation, between tokens and/or other structures called pointing relation. To show the use of pointing relations in [Pointing Relations](#pointingRelations), we use an anaphoric annotation to connect the word "<i>it</i>" with the words "<i>this example</i>". 

### <a name="corpusStructure">Corpus Structure</a>

Due to its graph-based structure, even sub- and super-corpora are modeled as nodes having relations connecting them and creating a containment relationship. The only element not following the graph approach is the element _SaltProject_. This element serves as container for a set of corpus structures represented via the model element _SCorpusGraph_. Such a corpus structure is organized as a graph and contains corpora and documents. Salt distinguishes between a corpus (which can contain other corpora and documents) and documents (which only contain the document structure). The document structure itself is organized as a graph called _SDocumentGraph_. The _SDocumentGraph_ is the element containing the primary data and the linguistic analysis. The corpus structure is just for organizing a complex linguistic project. A corpus in Salt is represented by the element _SCorpus_ and a document is represented by the element _SDocument_. 
In this section, we create a simple corpus structure having one corpus and one document. Since corpora and documents are nodes, they can be labeled. To show this mechanism, we create a meta annotation, defining the annotator of that corpus. A meta annotation is represented via the element _SMetaAnnotation_. The corpus structure created here is shown in the figure below.

![](./images/userGuide/corpusStructure.png)

The following snippet shows the creation of the container object _SaltProject_, which shall contain our corpus model.

{% highlight java %}
SaltProject saltProject= SaltFactory.createSaltProject();
{% endhighlight %}

The next snippet illustrates the creation of the corpus structure by creating a corpus graph, a corpus named 'sampleCorpus' and a document named 'sampleDocument'. Afterwards, the creation of the corpus is shown, followed by a meta annotation declaring its annotator.

{% highlight java %}
//creates a new corpus structure
SCorpusGraph corpGraph= saltProject.createCorpusGraph();
//adds a corpus with name sampleCorpus to the corpus structure
SCorpus sampleCorpus= corpGraph.createCorpus(URI.createURI("/sampleCorpus")).get(0);
{% endhighlight %}

The meta annotation is created via the method _createMetaAnnotation()_. This method takes three arguments: a namespace which is optional and can be used to take up further information, the name of the annotation and the value of the annotation.

{% highlight java %}
//creates a meta annotation on the corpus sampleCorpus
sampleCorpus.createMetaAnnotation(null, "annotator", "A. Nyone");
{% endhighlight %}

We now create the document that will later contain a primary text and all of its annotations. We present two ways of creating a document. First an easier way, where we use helpful methods provided by Salt and second an alternative, where we do it manually.

{% highlight java %}
//creates a new document named sampleDocument, and adds it as part of sampleCorpus
SDocument sampleDocument=  corpGraph.createDocument(URI.createURI("/sampleCorpus/sampleDocument"));
{% endhighlight %}

#### Alternative

Alternatively you can add an already existing document to the corpus structure and use the <i>addDocument</i> method.
{% highlight java %}
SDocument sampleDocument= SaltFactory.createSDocument();
sampleDocument.setName("sampleDocument");
//adds the document to the graph and automatically creates an relations between the corpus and the document
corpGraph.addDocument(sampleCorpus, sampleDocument);
{% endhighlight %}

### <a name="documentStructure">Document Structure</a>

Now we are leaving the corpus structure and go to the document structure. The difference between both is that the corpus structure groups corpora and documents to super- and sub-corpora and documents, and the document structure contains primary data and their annotations. Therefore we need to add an _SDocumentGraph_ object to the _SDocument_, which acts as container for the primary data and linguistic annotations.

{% highlight java %}
sampleDocument.setDocumentGraph(SaltFactory.createSDocumentGraph());
{% endhighlight %}

### Primary Data

We now show how to add a primary text like "Is this example more complicated than it appears to?" to the document graph. We first show the easy way of creating primary data and than we show the more explicit way.

{% highlight java %}
STextualDS primaryText = sampleDocument.getDocumentGraph().createTextualDS("Is this example more complicated than it appears to be?");
{% endhighlight %}

Even the primary text and in general the primary data in Salt are modeled as nodes with labels. The specific node, which is the container for the primary text is the node _STextualDS_, which is a subclass of _SSequentialDS_. The _String_ representing the text is stored in a label of that node, which can be accessed via _STextualDS.getSText()_ or _STextualDS.setSText(text)_.

#### Alternative

{% highlight java %}
STextualDS primaryText = SaltFactory.createSTextualDS();
// set the primary text to the sentence
// "Is this example more complicated than it appears to be?"
primaryText.setText("Is this example more complicated than it appears to?");
// add the text to the document-graph
sampleDocument.getDocumentGraph().addNode(primaryText);
{% endhighlight %}

### <a name="tokenization">Tokenization</a>

Sometimes it might be necessary to manually tokenize a text yourself. For instance if you don't want to have a word tokenization, or for historical text, where separators are missing.

A token in Salt is not bound to a linguistic unit - in this example we show how to tokenize words, although tokenizations by characters, syllables or sentences and so on are possible, too. The following figure shows an excerpt of the document graph we want to model in Salt. The figure only shows the tokens overlapping the words 'Is', 'this', 'example' and '.'.

![](./images/userGuide/sample_tokenization.png)

For tokenizing a primary text, we need the character offset of the start and the end position for each token in the text. The word "Is" in the sample text, for instance, has the start position 0 and the end position 1. Note that the positions are counted **between** two characters.

<table>
<tr>
<td></td><td>Is</td><td></td><td>BLANK</td><td></td><td>this</td><td></td><td>BLANK</td><td></td><td>example</td><td></td><td>BLANK</td><td></td><td>more</td><td></td><td>BLANK</td><td></td><td>complicated</td><td></td><td>BLANK</td><td></td><td>than</td><td></td><td>BLANK</td><td></td><td>it</td><td></td><td>BLANK</td><td></td><td>appears</td><td></td><td>BLANK</td><td></td><td>to</td><td></td><td>BLANK</td><td></td><td>be</td><td></td><td>?</td><td></td>
</tr>
<tr>
<td>
0</td><td></td><td>2</td><td></td><td>3</td><td></td><td>7</td><td></td><td>8</td><td></td><td>15</td><td></td><td>16</td><td></td><td>20</td><td></td><td>21</td><td></td><td>32</td><td></td><td>33</td><td></td><td>37</td><td></td><td>38</td><td></td><td>40</td><td></td><td>41</td><td></td><td>48</td><td></td><td>49</td><td></td><td>51</td><td></td><td>52</td><td></td><td>54</td><td>55</td>
</tr>
</table>

In the given table, BLANK is an alias for the whitespace character (' ').

Salt provides a tokenizer to tokenize a primary text. This tokenizer is an adaptation of the TreeTagger tokenizer (see: http://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/). The tokenizer uses blanks and punctuation (taking  abbreviations into account), and so on, to separate words. The usage of the tokenizer is quite simple as the following snippet shows: 

{% highlight java %}
sampleDocument.getDocumentGraph().tokenize();
{% endhighlight %}
To access the created tokens you can iterate over the token's list:

{% highlight java %}
sampleDocument.getSDocumentGraph().getTokens();
{% endhighlight %}

or token by token:

{% highlight java %}
sampleDocument.getDocumentGraph().getTokens().get(0);
{% endhighlight %}

In the following snippet we show an example of creating a tokenization manually by creating just one token. The creation of all other tokens is done in the same manner. 

{% highlight java %}
//create tokens manually 
SToken tok_is= sampleDocument.getDocumentGraph().createToken(primaryText, 0, 2);
SToken tok_this= sampleDocument.getDocumentGraph().createToken(primaryText, 3, 7);
SToken tok_example= sampleDocument.getDocumentGraph().createToken(primaryText, 8, 15);
SToken tok_more= sampleDocument.getDocumentGraph().createToken(primaryText, 16, 20);
SToken tok_complicated= sampleDocument.getDocumentGraph().createToken(primaryText, 21, 32);
SToken tok_than= sampleDocument.getDocumentGraph().createToken(primaryText, 33, 37);
SToken tok_it= sampleDocument.getDocumentGraph().createToken(primaryText, 38, 41);
SToken tok_appears= sampleDocument.getDocumentGraph().createToken(primaryText, 42, 48);
SToken tok_to= sampleDocument.getDocumentGraph().createToken(primaryText, 49, 51);
SToken tok_be= sampleDocument.getDocumentGraph().createToken(primaryText, 52, 54);
SToken tok_PUNC= sampleDocument.getDocumentGraph().createToken(primaryText, 54, 55);
{% endhighlight %}
Now the token will be added to the morphology layer. A layer in Salt is represented by the element _SLayer_ and defines a kind of a sub-graph, for instance for clustering nodes in a specific linguistic analysis. The snippet also shows the annotation of tokens with part-of-speech and lemma annotations using the element _SAnnotation_.

{% highlight java %}
//creating a layer named morphology
SLayer morphLayer = SaltFactory.createSLayer();
morphLayer.setName("morphology");
sampleDocument.addLayer(morphLayer);

//adding the new token to the morphology layer
morphLayer.addNode(tok_is);
//adding a part-of-speech annotation to the new token
tok_is.createAnnotation(null, "pos", "VBZ");
//adding a lemma annotation to the new token
tok_is.createAnnotation(null, "lemma", "be");
//...
{% endhighlight %}

Again, we did not explicitly create the relations: their creation is hidden in the method _createSToken()_. But in the background Salt creates a node of type _SToken_ for the token and a relation called _STextualRelation_ which connects the token and the primary data node. Since Salt does not know any further elements other than the graph elements mentioned, the character positions, to which the tokens refer, are stored as labels of the relations. For such a kind of label we use a special type named _SFeature_. When just working with Salt and not creating an own derived meta model, the mechanism is not important. It is just important, that the positions can be set and retrieved via the methods _STextualRelation.getSStart()_ or _STextualRelation.setSStart(value)_. The same goes for the end position _SEnd_.

### <a name="hierarchies">Hierarchies</a>

In Salt you can create hierarchies, e.g., in order to model syntactic annotations such as constituents. These hierarchies are realized via the node _SStructure_ and can be connected to each other via relations of type _SDominanceRelation_. A relation of that type has the semantics of a part-of relation, which means that the target of that relation is a part of the source of that relation. In this example, we want to create a syntactic analysis as part of a syntactic layer. The following figure shows the structure we will create in this step of the example.

<pre>
                      ROOT-----------------                  
                       |                   \
                -------SQ ---               \
               /    /        \               \
              /    /          ---ADJP--       \
             /    /          /         \       \
            /    /          /           SBar    \
           /    /          /           /    \    \
          /    /          /           /      S    \
         /    /          /           /      / \    \
        /    /          /           /      /   VP   \
       /    /          /           /      /  /   \   \
      /    /          /           /      /   |    S   \
     /    /           |           |     /    |     \   \
    /    /            |           |    /     |      VP  \
   /    NP           ADJA         |    NP    |     /  \  \
  /    /   \       /      \       |    |     |     |  VP |
  |    |   |       |      |       |    |     |     |  |  |
 Is this example more complicated than it appears to be  ?
</pre>

The following snippet gives an impression of how to create that hierarchy. We just show the creation of the left NP node and the SQ node.

{% highlight java %}
//create a list of nodes, which shall be overlapped by the NP-node
List&lt;SStructuredNode> overlappingNodes= new ArrayList&lt;>();
overlappingNodes.add(tok_this);
overlappingNodes.add(tok_example);
//adding NP-Node to graph and automatically creating relations to overlapping nodes
SStructure np_1= sampleDocument.getDocumentGraph().createStructure(overlappingNodes);
np_1.createAnnotation(null, "cat", "NP");
//...

//create a list of nodes, which shall be overlapping by SQ-node
overlappingNodes= new ArrayList&lt;>();
overlappingNodes.add(tok_is);
overlappingNodes.add(np_1);
SStructure sq= sampleDocument.getDocumentGraph().createStructure(overlappingNodes);
sq.createAnnotation(null, "cat", "SQ");

//create a syntax layer
SLayer syntaxLayer = SaltFactory.createSLayer();
syntaxLayer.setName("syntax");
sampleDocument.getDocumentGraph().addLayer(syntaxLayer);

//add syntactic nodes to syntax layer
syntaxLayer.addNode(np_1);
syntaxLayer.addNode(sq);
//...
{% endhighlight %}


For annotating a dominance relation or any other relation, you can access it by querying all relations between two nodes:

{% highlight java %}
sampleDocument.getDocumentGraph().getRelations(np_1.getId(), tok_is.getId()).get(0).createAnnotation("myNamespace", "myName", "myValue");
{% endhighlight %}

#### Alternative

Alternatively, you can create a hierarchy one step after another. The following snippet exemplifies this process for the same sample (the token for 'is' and the SQ node):

{% highlight java %}
SStructure sq = SaltFactory.createSStructure();
sampleDocument.getDocumentGraph().addNode(sq);
sq.createAnnotation(null, "cat", "SQ");

SDominanceRelation domRel = SaltFactory.createSDominanceRelation();
domRel.setSource(sq);
domRel.setTarget(tok_is);
sampleDocument.getDocumentGraph().addRelation(domRel);
{% endhighlight %}

### <a name="spans">Spans</a>

If a whole (possibly discontinuous) set of nodes has to be annotated with the very same annotation, a span can be used to aggregate the nodes. Instead of an annotation for each node, a single annotation for the span can be created then. This annotation belongs to the set of nodes (the span), but not to any of the single nodes. In our example we show the use of spans building an information structure analysis. Spans in Salt are realized by nodes of the type _SSpan_, they are connected to _SToken_ nodes via relations of type _SSpanningRelation_. The following figure shows the information structure analysis to be modeled.

![](./images/userGuide/sample_span.png)

The following snippet shows the code used to create the analysis shown in the figure.


{% highlight java %}
//create span overlaping only one token
SSpan contrast_focus= sampleDocument.getDocumentGraph().createSpan(tok_is);
contrast_focus.createAnnotation(null, "inf-struct", "contrast-focus");
		
//create a list of tokens taking part in the set to be annotated as a bundle
List&lt;SToken> overlappingTokens= new ArrayList&lt;>();
overlappingTokens.add(tok_this);
overlappingTokens.add(tok_example);
overlappingTokens.add(tok_more);
overlappingTokens.add(tok_complicated);
overlappingTokens.add(tok_than);
overlappingTokens.add(tok_it);
overlappingTokens.add(tok_appears);
overlappingTokens.add(tok_to);
overlappingTokens.add(tok_be);
overlappingTokens.add(tok_PUNC);
	
//create span overlaping a set of tokens	
SSpan topic= sampleDocument.getDocumentGraph().createSpan(overlappingTokens);
topic.createAnnotation(null, "inf-struct", "topic");
{% endhighlight %}

#### Alternative
Alternatively to using the method createSSpan(...) you can create the span and the corresponding _SSpanningRelations_ on your own. The following snippet gives an impression of how to create the same span as in the last example, step by step:

{% highlight java %}
SSpan contrast_focus= SaltFactory.createSSpan();
sampleDocument.getDocumentGraph().addNode(contrast_focus);
SSpanningRelation spanRel= SaltFactory.createSSpanningRelation();
spanRel.setSource(contrast_focus);
spanRel.setTarget(tok_is);
{% endhighlight %}


### <a name="pointingRelations">Pointing Relations</a>

Now we will show another type of relation, which renders a more loose relation between nodes. In contrast to _SSpanningRelations_ and _SDominanceRelations_, which can only connect specific kinds of nodes, the type _SPointingRelation_ can connect _SToken_, _SSpan_ and _SStructure_ nodes with each other and vice versa. These relations for instance can be used to model anaphoric relations between words, phrases, sentences and so on. Relations in general can be typed with a linguistic meaning by setting their attribute _SType_. We illustrate that by connecting the token covering the word "it" to the set of tokens "the" and "example". To bundle the words "the" and "example", we first have to create a span covering both tokens "the" and "example" following the same mechanism as shown in section [Spans](#spans).

<img src="./images/userGuide/salt_pointRel.svg" style="width:30%" alt="Salt graph pointing relations">

The following snippet shows the creation of the model shown in the figure.

{% highlight java %}
//create a span covering the words "the" and "example"
overlappingTokens= new ArrayList&lt;>();
overlappingTokens.add(tok_this);
overlappingTokens.add(tok_example);
SSpan span= sampleDocument.getDocumentGraph().createSpan(overlappingTokens);

//creating a pointing relations
SPointingRelation pointingRelation= SaltFactory.createSPointingRelation();
//setting token "it" as source of this relation
pointingRelation.setSource(tok_it);
//setting span "this example" as target of this relation
pointingRelation.setTarget(span);
//adding the created relation to the document-graph
sampleDocument.getDocumentGraph().addRelation(pointingRelation);
//adding the type to the relation
pointingRelation.setType("anaphoric");
{% endhighlight %}

### <a name="accessing">Accessing a Salt Model</a>

After we have shown how to create a Salt model, we now show some methods to access its data.
If you start reading from here, and did not already have a Salt model, you can use the class SampleGenerator, to generate predefined sample models.
{% highlight java %}
SDocument sampleDocument = SaltFactory.createSDocument();
SampleGenerator.createSDocumentStructure(sampleDocument);
SDocumentGraph docGraph = sampleDocument.getDocumentGraph();
{% endhighlight %}
The following snippet exemplifies accessing a Salt model. If you copy the following lines and run the code you won't see anything. There are no outputs in the code below.

{% highlight java %}
//access all primary text nodes (getting a list)
docGraph.getTextualDSs();
//access the primary text of the first primary text node
docGraph.getTextualDSs().get(0).getText();
	
//access all token nodes (getting a list)
docGraph.getTokens();
//access the primary text, which is overlapped by the first token (note: changing the returned text has no effects)
docGraph.getText(docGraph.getTokens().get(0));
//access all annotations of the first token
docGraph.getTokens().get(0).getAnnotations();
		
//access the relations between all tokens and their primary text nodes
docGraph.getTextualRelations();
//access the interval determining the overlapped text of the first relation (which probably is related to the first token)
docGraph.getTextualRelations().get(0).getStart();
docGraph.getTextualRelations().get(0).getEnd();
		
//access all span nodes  (getting a list)
docGraph.getSpans();
//access the primary text, which is overlapped by the first span (note: changing the returned text has no effects)
docGraph.getText(docGraph.getSpans().get(0));
//access all relations between all spans and their tokens 
docGraph.getSpanningRelations();
		
//access all hierarchical nodes (structures)
docGraph.getStructures();
//access the primary text, which is overlapped by the first structure (note: changing the returned text has no effects)
docGraph.getText(docGraph.getStructures().get(0));
//access all dominance relations (relations between all structures and their other nodes)
docGraph.getDominanceRelations();
//access all annotations of the first dominance relation
docGraph.getDominanceRelations().get(0).getAnnotations();
		
//access all pointing relations 
docGraph.getPointingRelations();
//access all annotations of the first pointing relation
docGraph.getDominanceRelations().get(0).getAnnotations();
		
//access all roots of the document graph
docGraph.getRoots();
		
//access all nodes and relations contained in the document graph
docGraph.getNodes();
docGraph.getRelations();
		
//access all outgoing relations of a node (the first structure node)
List&lt;SRelation&lt;SNode, SNode>> out= docGraph.getOutRelations(docGraph.getStructures().get(0).getId());
//access all incoming relations of a node (the first structure node)
List&lt;SRelation&lt;SNode, SNode>> in= docGraph.getInRelations(docGraph.getStructures().get(0).getId());
{% endhighlight %}
So far we havn't talked about how to traverse the document graph. This is done in section [Traversing graphs](#traversing). 


### <a name="persistAndLoad">Persist and Load a Model</a>

Persisting a model is very easy: Only a nonempty _SaltProject_ object and a valid local URI are needed. The following snippet shows how to persist an entire model.

{% highlight java %}
saltProject.saveSaltProject(URI);
{% endhighlight %}

Please note, that the URI used as parameter is **not** a URI of type _java.net.URI_ - it is of type _org.eclipse.emf.common.util.URI_.

To load a valid SaltXML document, create an empty _SaltProject_ object and call the load method as shown in the following snippet.

{% highlight java %}
saltProject = SaltFactory.createSaltProject();
saltProject.loadSaltProject(URI);
{% endhighlight %}

Salt document structrues can get very large, and maintaining a bunch od them in main memory can get problematical. Therefore Salt contains a mechanism to persist single document structures.
The following snippet shows how to store a single document.
{% highlight java %}
// storing
sampleDocument.saveDocumentGraph(URI);
// loading
sampleDocument.loadDocumentGraph(URI);
{% endhighlight %}

### Identifiers in Salt

Each node, relation, graph and layer in Salt gets a unique identifier called _Identifier_. Such an identifier is organized like an URI. The inner structure of a URI is shown here:

<pre>
[scheme:][//authority][path][?query][#fragment]
</pre>

The scheme of these identifiers is 'salt', in the current version, the Salt ids also does not support an authority or a query. The path is organized following the tree structure of the corpus structure, starting with the name (_Name_ value) of the root corpus, via an unbound number of sub-corpora, and ends with the document. The identifier for each element is computed automatically by extending the identifier of its parent element. For instance the identifier of a sub corpus named 'corp2' is computed by extending the identifier of its parent corpus 'corp1'. For instance the identifier for a document named 'doc1', being contained in corpus 'corp2', which is contained in corpus 'corp1' (which is the root) would look like this:

<pre>
salt:/corp1/corp2/doc1
</pre>

The same mechanism of creating identifiers of the corpus structure is used for elements of the document structure. But the name of these elements is given in the fragment part. Since the content of the document structure is not necessarily a tree-like structure, it is not possible to have a unique path from an element to its root. For instance a token named 'tok1' added to the document having the identifier 'salt/corp1/corp2/doc1' receives the identifier:

<pre>
salt:/corp1/corp2/doc1#tok1
</pre>

The same holds for relations. These URIs or _Identifier_s can be used to identify and search for elements in the corresponding graphs. You can access the id by calling:

{% highlight java %}
tok1.getIdentifier();
{% endhighlight %}

or its String representation by 

{% highlight java %}
tok1.getId();
{% endhighlight %}

### <a name="traversing">Traversing graphs</a>

When working with Salt, it is often necessary 

* to discover the entire graph, or 
* to discover a sub graph covered by a given node, or 
* to discover a sub graph connected by specific types of relations. 

For all of these purposes, we offer the generic possibility to traverse a graph object (e.g. a _SCorpusGraph_ or a _SDocumentGraph_ object). 

A traversal can be done in two directions: __top-down__ and __bottom-up__. When using the top-down method, the traversal will follow the relation direction (e.g. _a_ -> _b>_: node _a_ will be visited first, followed by node _b_). When using the bottom-up method, the traversal will follow the inverse of the relation direction (e.g. _a_ -> _b_: node _b_ will be visited before node _a_).

Additionally, you can choose the order in which nodes will be traversed. For this, we provide two modes: __depth-first__ and __breadth-first__. In depth-first mode, the sub-graph of node _b_ will be traversed, before its siblings will be visited. Imagine the following tree structure: 
<pre>
   a
 /   \
 b   d
 |
 c
</pre>

In this case, node _d_ will be visited after _a,b,c_ have been visited. In  breadth-first mode, the order of the traversal is the other way around, i.e.  the nodes _a,b,d_ will be visited before node _c_.

To define the behavior of a traversal, we provide these types, which are combinations of the direction and the order of a traversal:

* org.corpus_tools.salt.core.GRAPH_TRAVERSE_TYPE.TOP_DOWN_DEPTH_FIRST
* org.corpus_tools.salt.core.GRAPH_TRAVERSE_TYPE.TOP_DOWN_BREADTH_FIRST
* org.corpus_tools.salt.core.GRAPH_TRAVERSE_TYPE.BOTTOM_UP_DEPTH_FIRST
* org.corpus_tools.salt.core.GRAPH_TRAVERSE_TYPE.BOTTOM_UP_BREADTH_FIRST


The traversal mechanism uses a callback, therefore you need a class implementing the interface _org.corpus_tools.salt.core.GraphTraverseHandler_. This interface declares the following three methods, which need to be implemented:

{% highlight java %}
public boolean checkConstraint( GRAPH_TRAVERSE_TYPE traversalType, 
                                String traversalId,
                                SRelation relation, 
                                SNode currNode, 
                                long order);

public void nodeReached(        GRAPH_TRAVERSE_TYPE traversalType, 
                                String traversalId,
                                SNode currNode, 
                                SRelation relation, 
                                SNode fromNode, 
                                long order);

public void nodeLeft(           GRAPH_TRAVERSE_TYPE traversalType, 
                                String traversalId,
                                SNode currNode, 
                                SRelation relation, 
                                SNode fromNode, 
                                long order);
{% endhighlight %}

When the traversal reaches a new node, the method _checkConstraint(...)_ is called. It checks whether the following nodes and their sub-graphs should be processed any further. When this method returns true, the method _nodeReached(...)_ is called next. Before a node is left, the method _nodeLeft(...)_ is called. Note that the order of the method invocations depends on the traversal type used.

The following example shows the order of calls for the sample graph given in the following figure.

![](./images/userGuide/traversingExample.jpg)

Here, we list the callbacks in correct order in case of a depth-first traversal. We assume that the called object returns true for the method _checkConstraint(...)_ on all nodes except node _span1_. In the case of node _span1_, the _checkConstraint(...)_ method returns  false. Therefore, no _nodeReached(...)_ and _nodeLeft(...)_ method will be called for this node. Note, that the list of parameters of the functions presented here is bigger than shown, e.g. the traversing policy and the relation via which the node has been reached is given, too.

* checkConstraint(struct1)
* nodeReached(struct1)
* checkConstraint(struct2)
* nodeReached(struct2)
* checkConstraint(tok1)
* nodeReached(tok1)
* nodeLeft(tok1)
* checkConstraint(span1)
* nodeLeft(struct2)
* nodeLeft(struct1)


To start the traversal, use the following method, available in any object derived from _SGraph_ (e.g. _SCorpusGraph_ or _SDocumentGraph_):

{% highlight java %}
void traverse(     List&lt;? extends SNode> startNodes, 
                   GRAPH_TRAVERSE_TYPE traverseType, 
                   String traverseId, 
                   GraphTraverseHandler traverseHandler);
{% endhighlight %}
or

{% highlight java %}
void traverse(     List&lt;? extends SNode> startNodes, 
                   GRAPH_TRAVERSE_TYPE traverseType, 
                   String traverseId, 
                   SGraphTraverseHandler traverseHandler, 
                   boolean isCycleSafe);
{% endhighlight %}


* __startNodes__ represents a list of nodes, which shall be the entry point for traversal, 
* __traverseType__ is the combination of traversal direction and order explained above, 
* __traverseid__ is an identifier which can be used to identify the specific traversal job (this can be helpful if more than one is running at the same time) and 
* __traverseHandler__, is the object which will be used for callback. 

Additionally, you can set a flag to protect the traversal engine from running in cycles. Per default, this flag is set to __false__ and your _traverseHandler_ has to deal with cyclic graphs itself.

To traverse our sample, you can use the following snippet:

{% highlight java %}
//traversing the graph in depth first top down mode beginning with its roots
docGraph.traverse(docGraph.getRoots(), GRAPH_TRAVERSE_TYPE.TOP_DOWN_DEPTH_FIRST, "td", new GraphTraverseHandler() {
			
	@Override
	public void nodeReached(GRAPH_TRAVERSE_TYPE traversalType, String traversalId, SNode currNode, SRelation relation,
			SNode fromNode, long order) {
		// TODO Auto-generated method stub
	}
	
	@Override
	public boolean checkConstraint(GRAPH_TRAVERSE_TYPE traversalType, String traversalId, SRelation relation,
			SNode currNode, long order) {
		return true;
	}

	@Override
	public void nodeLeft(GRAPH_TRAVERSE_TYPE traversalType, String traversalId, SNode currNode, SRelation<SNode, SNode> relation, SNode fromNode, long order) {
		// TODO Auto-generated method stub
		
	}
});

//traversing the graph form the tokens to the top
docGraph.traverse(docGraph.getSTokens(), GRAPH_TRAVERSE_TYPE.BOTTOM_UP_BREADTH_FIRST, "bu", new GraphTraverseHandler() {
	
	@Override
	public void nodeReached(GRAPH_TRAVERSE_TYPE traversalType, String traversalId, SNode currNode, SRelation relation,
			SNode fromNode, long order) {
		// TODO Auto-generated method stub
	}
	
	@Override
	public void nodeLeft(GRAPH_TRAVERSE_TYPE traversalType, String traversalId, SNode currNode, SRelation relation,
			SNode fromNode, long order) {
		// TODO Auto-generated method stub
	}
	
	@Override
	public boolean checkConstraint(GRAPH_TRAVERSE_TYPE traversalType, String traversalId, SRelation relation,
			SNode currNode, long order) {
		return true;
	}
}, false);
	
}
{% endhighlight %}
