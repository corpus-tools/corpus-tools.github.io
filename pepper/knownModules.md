---
layout: default
title: Pepper modules
category: Pepper
description: "List and short description of known modules for the Pepper corpus conversion framework."
---

<div class="page-header">
# Pepper modules
</div>

There are many modules for Pepper out there. Here we try to list all these modules we know about. If you have further modules or know about further modules, please let us know and write an email to [{{ site.email_snp }}](mailto:{{ site.email_snp }}).


To install further modules into an existing Pepper instance open the Pepper console and use command 'is':
```
pepper>is PATH_TO_PLUGIN
```
To update a module, open the Pepper console and
            use command 'update'
```
update GROUP_ID::ARTIFACT_ID::REPOSITORY
```

If there is no existing module which fulfills your needs, you are free to
implement your own module. With Pepper's plug-in mechanism your module can
easily be integrated into the Pepper plattform. The possibility of combining
your new module with already existing ones lets you create completely new
workflows. Please read the [Module Developer's Guide]({{site.pepper_doc_moduleDev}}) to get a detailed documentation of how to implement a Pepper module.


# Importers

Importers are modules which map data from a format X to a Salt model. For more information about a Pepper's workflow please take a look into [Pepper's user guide](userGuide.html).

| Module name   | Module description | formats |
|---------------|--------------------|---------|
| [AldtImporter](https://github.com/korpling/pepperModules-PerseusModules/tree/master#usage)  | The AldtImporter importer transforms data in aldt format used in the Perseus project to a Salt model. | aldt, 1.0; aldt, 1.5 |
| [CoNLLImporter](https://github.com/korpling/pepperModules-CoNLLModules/tree/master#usage) | The CoNLLImporter importer transforms data in CoNLL format to a Salt model. | CoNLL, 1.0 |
| [CoraXMLImporter](https://github.com/korpling/CoraXMLModules/tree/master#usage) | The CoraXMLImporter importer transforms data in cora xml format to a Salt model. | coraXML, 1.0 |
| [DoNothingImporter](https://github.com/korpling/pepper) | This is a dummy importer which imports nothing. | -- |
| [EXMARaLDAImporter](https://github.com/korpling/pepperModules-EXMARaLDAModules/tree/master#usage) | The EXMARaLDAImporter transforms data in the exb format of EXMARaLDA to a Salt model. | EXMARaLDA, 1.0 |
| [ElanImporter](https://github.com/korpling/pepperModules-ELANModules/tree/master#usage) | The ElanImporter transforms data in ELAN format to a Salt model. | elan, 4.5.0 |
| [GateImporter](https://github.com/korpling/pepperModules-GATEModules/tree/master#usage) | The GateImporter transforms data in GATE's xml format to a Salt model |  GateDocument, 2.0; ateDocument, 3.0 |
| [GenericXMLImporter](https://github.com/korpling/pepperModules-GenericXMLModules/tree/master#usage) | Imports data coming from any XML file. The textual content of an element will be interpreted as a sequence of primary data. When processing the file, the importer will concatenate all these texts to an entire primary text. | xml, 1.0|
| [GrAFImporter](https://github.com/korpling/pepperModules-GrAFModules/tree/master#usage) |The GrAFImporter transforms data in the GrAF format to a Salt model.| GrAF, 1.0 |
| [MMAX2Importer](https://github.com/korpling/pepperModules-MMAX2Modules/tree/master#usage) | The MMAX2Importer maps files produced by the MMAX2 tool to a Salt model. | mmax2, 1.0 |
| [PAULAImporter](https://github.com/korpling/pepperModules-PAULAModules/tree/master#usage) | The PAULA importer imports data comming from the PAULA format to a Salt model. | paula, 1.0 |
| [PTBImporter](https://github.com/korpling/pepperModules-PTBModules/tree/master#usage) | The Penn Treebank importer transforms data in Penn Trebank bracketing format (ptb). to a Salt model. | PTB, 1.0|
| [RSTImporter](https://github.com/korpling/pepperModules-RSTModules/tree/master#usage) | This importer transforms data in rs3 format produced by the RST Tool (see: [http://www.wagsoft.com/RSTTool/](http://www.wagsoft.com/RSTTool/)) to a Salt model. | rs3, 1.0|
| [SaltXMLImporter](https://github.com/korpling/pepper) | This importer imports a Salt model from a SaltXML representation. SaltXML is the native format to persist Salt. | SaltXML, 1.0 |
| [SpreadsheetImporter](https://github.com/korpling/pepperModules-SpreadsheetModules#usage)| This importer transforms data in the Excel format to a Salt model. | xls, 97-2008; xlsx, 2007+|
| [TCFImporter](https://github.com/korpling/pepperModules-TCFModules/tree/master#tcfimporter) | This importer transforms data in TCF format produced for instance by WebLicht (see [http://weblicht.sfs.uni-tuebingen.de/](http://weblicht.sfs.uni-tuebingen.de/)) or WebAnno (see [https://www.ukp.tu-darmstadt.de/software/webanno/](https://www.ukp.tu-darmstadt.de/software/webanno/)) to a Salt model. | TCF, 0.4 |
| [TEIImporter](https://github.com/korpling/pepperModules-TEIModules/tree/master#usage) | This importer transforms data in TEI format (see [http://www.tei-c.org/index.xml](http://www.tei-c.org/index.xml)) to a Salt model. Please note that this module only supports a sbset of the TEI P5 guidelines. | TEI, P5 2.6.0|
| [TextImporter](https://github.com/korpling/pepper) | This importer imports a simple text document like .txt etc. . Even other documents can be imported as simple text. | txt, 0.0 |
| [Tiger2Importer](https://github.com/korpling/pepperModules-TigerModules/tree/master#usage) | This importer transforms data in TigerXML and tiger2 format to a Salt model. | tiger2, 2.0.5; tigerXML, 1.0 |
| [TreetaggerImporter](https://github.com/korpling/pepperModules-TreetaggerModules/tree/master#usage) | This importer transforms data in TreeTagger format produced by the TreeTagger tool (see [http://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/](http://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/) to a Salt model. |treetagger, 1.0 |
| [UAMImporter](https://github.com/korpling/pepperModules-UAMModules/tree/master#usage) | This importer transforms data in UAM format produced by the UAM corpus tool to a Salt model. | UAM, 1.0 |
{: .table}

# Manipulators 
With manipulators, the imported data can be extended for further annotations, merged together or processed in other ways. For more information about the architecture of Pepper please read [Pepper's user guide](./userGuide.html).

| Module name   | Module description |
|---------------|--------------------|
| [DOTManipulator](https://github.com/korpling/pepper) | This manipulator exports a Salt model to the dot syntax. This can be used to create a graphical representation of the Salt model.|
| [FALKOManipulator](https://github.com/korpling/pepperModules-FALKOModules/tree/master#usage) | This manipulator was developed especially for the FALKO Corpus. It creates a SSpan-objects for every SToken object in the document. All annotations for STokens will be duplicated and added to the spans. The annotations of the tokens will be renamed from 'annoName' to 'annoName.'. For example a 'pos'-annotation of SToken-object will be renamed to a 'pos.'-annotation. All spans, tokens and spanning relations will be added to an artificial layer named 'falko'. |
| [Merger](https://github.com/korpling/pepperModules-MergingModule/tree/master#usage) | The Merger allows to merge an unbound number of corpora to a single corpus. |
| [OrderRelationAdder](https://github.com/korpling/pepperModules-ModuleBox/tree/master#usage) | The OrderRelationAdder connects tokens or spans via an order relation with each other. This manipulator can be customized to connect spans having a specific annotation or to connect all tokens. |
| [SaltValidator](https://github.com/korpling/pepper) | The aim of the SaltValidator is to check a Salt model and to detect possible problems for further modules. This might be very helpful, when developing an importer or a manipulator, to check their output. This could also be used by end users, to check if a module produces a processable output. |
| [Sentencer](https://github.com/korpling/pepperModules-nlpModules/tree/master#usage) | The sentencer is a Pepper module to bundle tokens to sentences. Therefore it creates a span object for each sentence and connects that sentence with a set of tokens, belonging to the sentence. A sentence is identified as being determined by punctuations ('.', '!' and * '?'). The sentencer uses the abbreviation lists of Salt to identify abbreviations. |
| [Timeline2Token](https://github.com/korpling/pepperModules-ModuleBox/tree/master#usage) | The Timeline2Token manipulator converts all primary text tokens to spans of an newly created artifical primary text which represents the timeline. |
| [Tokenizer](https://github.com/korpling/pepperModules-nlpModules/tree/master#usage) |       The tokenizer tokenizes a document using the tokenizer provided by Salt. The tokenizer uses abbreviation lists and is implemented along the Treetaggers tokenizer by Helmut Schmid (see: [http://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/](http://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/). |
| [TueBaDZManipulator](https://github.com/korpling/pepperModules-TueBaDZModules/tree/master#usage) | This manipulator was developed especially for the TueBaDZ Corpus. It creates a SSpan-objects for every SToken object in the document. All annotations for STokens will be duplicated and added to the spans. The annotations of the tokens will be renamed from 'annoName' to 'annoName.' For example a 'pos'-annotation of SToken-object will be renamedto a 'pos.'-annotation. All spans, tokens and spanning relations will be added to an artificial layer named 'TueBaDZ'. |
{: .table}

# Exporters

Exporters are modules which map data from a Salt model to a format Y. For more information about the architecture of Pepper please read [Pepper's user guide](userGuide.html).

| Module name   | Module description | formats |
|---------------|--------------------|---------|
| [ANNISExporter](https://github.com/korpling/pepperModules-ANNISModules/tree/master#usage) | This exporter transforms a Salt model into the annis format. | relANNIS, 3.3; annis, 3.3 |
| [DOTExporter](https://github.com/korpling/pepper) | This exporter exports a Salt model to the dot syntax. This can be used to create a graphical representation of the Salt model. | dot, 1.0 |
| [DoNothingExporter](https://github.com/korpling/pepper) | This is a dummy exporter which exports nothing. This exporter can be used to check if a corpus is importable. | -- |
| [GraphAnnoExporter](https://github.com/korpling/pepperModules-GraphAnnoModules/tree/master#usage) | This exporter transforms a Salt model into a format for the GraphAnno tool ([https://github.com/LBierkandt/graph-anno](https://github.com/LBierkandt/graph-anno)). | Jason, 1.0 |
| [MMAX2Exporter](https://github.com/korpling/pepperModules-MMAX2Modules/tree/master#usage) | The MMAX2Exporter maps a Salt model to the MMAX2 format. | mmax2, 1.0 |
| [PAULAExporter](https://github.com/korpling/pepperModules-PAULAModules/tree/master#usage) | The PAULA exporter exports data comming a Salt model to the PAULA format. | paula, 1.0 |
| [PTBExporter](https://github.com/korpling/pepperModules-PTBModules/tree/master#usage) | This exporter transforms a Salt model into the Penn Trebank bracketing format (ptb). | PTB, 1.0 |
| [RelANNISExporter](https://github.com/korpling/pepperModules-RelANNISModules/tree/master#usage) | **Outdated**: This module has been replaced by the ANNISExporter. ~~This exporter transforms a Salt model into the relANNIS format.~~  | ~~relANNIS, 3.1; relANNIS, 3.2~~|
| [SaltInfoExporter](https://github.com/korpling/pepperModules-SaltInfoModules/tree/master#usage) | This module produces a corpus-site of a corpus. A corpus-site is a homepage for the corpus containing all annotation names and their values and the frequencies of annotations. The corpus site can be extended for further description, to be used as a documentation. | xml, 1.0, html 5.0 |
| [SaltXMLExporter](https://github.com/korpling/pepper/tree/master) |This exporter exports a Salt model to a SaltXML representation. SaltXML is the native format to persist Salt.|SaltXML, 1.0|
| [TCFExporter](https://github.com/korpling/pepperModules-TCFModules/tree/master#usage) |  This exporter transforms a Salt model into the TCF format produced for instance by WebLicht (see: [http://weblicht.sfs.uni-tuebingen.de/](http://weblicht.sfs.uni-tuebingen.de/)) or WebAnno (see [https://www.ukp.tu-darmstadt.de/software/webanno/](https://www.ukp.tu-darmstadt.de/software/webanno/)). | TCF, 0.4 |
| [TextExporter](https://github.com/korpling/pepper) | This is a PepperExporter which extracts and exports the primary text of a Salt model and stores it into a text file. | txt, 1.0 |
| [TreetaggerExporter](https://github.com/korpling/pepperModules-TreetaggerModules/tree/master#usage) | This exporter transforms a Salt model into the annis format. | treetagger, 1.0 |
{: .table}