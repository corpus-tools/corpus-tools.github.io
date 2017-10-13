---
layout: default
title: FAQ
category: Pepper
description: "Answers to frequently asked questions about the Pepper conversion framework."
---

<div class="page-header">
# FAQ
</div>


#### Q: How can i speed up Pepper?
You can speed up Pepper by processing multiple documents in parallel. The property 'pepper.maxAmountOfProcessedSDocuments' in the [Pepper configuration](./userGuide.html#configurtion) determines the number of parallel processed documents. When you increase the number of documents, take care, that enough memory is available on your mashine. The more documents are processed in parallel the more memory is consumed (see [other FAQ entry](#memory)).
{: .faqanswer}


#### Q: How can I prevent Pepper from consuming to much memory?
{:#memory .anchor}
With the property 'pepper.maxAmountOfProcessedSDocuments' in the <a href="./userGuide.html#configurtion">Pepper configuration</a> you can de- or increase the number of parallel processed documents. The more documents are processed in parallel the more memory is consumed. Setting the number of documents to 1 means no parallel processing. But take care a few modules like the Merger need at least 2 documents being processed in parallel.
{: .faqanswer}

#### Q: Can I add meta data, when my source format does not support meta data?
<div class="faqanswer">
Yes, each importer provides a mechanism to read meta data from a meta data file. To enable this mechanism set the Pepper module's property 'pepper.before.readMeta' to the ending of the meta data file. This file has to foolw the following form (sample.meta):
```
meta1=value1
meta3=value2
meta3=value2
...
```
To import this meta data file set the property as follows:
```
pepper.before.readMeta=meta
```
</div>


#### Q: How do I know which customizations are provided by a module?
<div class="faqanswer">
A module can provide a huge set of properties to customize its mapping behavior. In most cases a detailed description of the property can be found on the module's homepage. A short description is directly available in Pepper, just type:
```
pepper>list MY_MODULE
```
</div>

#### Q: Which formats does Pepper support?
<div class="faqanswer">
Pepper itself only supports SaltXML, the huge set of supported formats comes from the modules included in Pepper. Therefore it is not possible to give a static list of supported formats. But to know which formats are supported by your Pepper instance ask Pepper:
```
pepper>list
```
A list of known modules can be found [here](knownModules.html).
</div>

#### Q: How can I extend Pepper for further formats/tasks?

Since Pepper is a pluggable plattform, you can create your own module and plug it into a Pepper instance. A guide how to write a Pepper module can be found in [Module Developer's Guide]({{site.pepper_doc_moduleDev}}). When you devide to implement your own module, please think about making it accessible for others. Open source software lives from its community. When you agree, please inform us about it and we are happy to include your module in our list of [Pepper modules](knownModules.html).
{: .faqanswer}

#### Q: How can I preserve customized files when exporting a corpus?
<div class="faqanswer">
In general files can not be preserved, but you can create an instance of those files and put them to a place which won't be touched by an exporter. After the export they can be automatically copied to a location of your choice for instance to the export folder. To enable this mechanism use the property 'pepper.after.copyRes'. The following gives an example of how to copy two files from an untouched location to the export folder.
```
<property key="pepper.after.copyRes">./SOURCE_FILE1->./TARGET_FOLDER;./SOURCE_FILE2->./TARGET_FOLDER</property>
```
</div>


#### Q: How can I exchange my Pepper workflow with others or between different computers?
<div class="faqanswer">
We recommand to store the Pepper workflow file at the same location as the corpus. This allows you to use relative pathes in your workflow file and you can exchange the entire corpus folder. Imagine the folling file structure:
```
|-myCorpus
|-sourceFormat
|  |-file
|  |-file
|  ...
|-workflow.pepper  
```
Than the Pepper workflow file can look similar to the following:
```
...
<importer formatName="FORMAT_NAME" formatVersion="FORMAT_VERSION" path="./sourceFormat">
...
</importer>
...
<exporter name="EXPORTER_NAME" path="targetFormat">
...
</exporter>
```
</div>
