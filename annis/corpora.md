---
layout: default
title: Corpora
description: "List of demo corpora for ANNIS including download links."
category: ANNIS
redirect_from: 
- "/corpora.html"
- "/accessing.html"
--- 

<div class="page-header">
# Demo Corpora for download
</div>

All corpora are available in the ANNIS database format, which can be
imported directly into ANNIS, and PAULA XML, which is more readable and editable but
must be converted to ANNIS using the [Pepper converter framework](/pepper/index.html) for
import. Some corpora are offered in other source formats, such as TreeTagger SGML (a.k.a. CWB format) or especially for multimodal corpora, EXMARaLDA XML, which may also be converted to relANNIS or PAULA.

<div class="table-responsive">
<table class="table">
  <tbody>
    <tr>
      <th>
      Corpus (Download)
      </th>
      <th>
      Full Name
      </th>
      <th>
      Language
      </th>
      <th>
Texts / Tokens
      </th>
      <th>
      Annotations
      </th>
      <th>
Source
      </th>
    </tr>
   <tr>
      <td>
      GUM<br/>
[<a
 href="https://github.com/amir-zeldes/gum/tree/master/paula">PAULA</a>,
      <a
 href="https://github.com/amir-zeldes/gum/tree/master/annis">ANNIS</a>]
      </td>
      <td>
  Georgetown University Multilayer Corpus
      </td>
      <td>
      English
      </td>
      <td>
      25 / 22656
      </td>
      <td>
      Multiple POS, lemma,
constituent trees, dependency trees, coreference, entity types, rhetorical structure,
information status, TEI structure
      </td>
      <td>
      <a
 href="http://corpling.uis.georgetown.edu/gum/" >Georgetown Linguistics</a>
      </td>
    </tr>
   <tr>
      <td>
      pcc2<br/>
[<a
 href="../corpora/pcc2_PAULA.zip">PAULA</a>,
      <a
 href="../corpora/pcc2_relANNIS.zip" >ANNIS</a>]
      </td>
      <td>
  Potsdam
Commentary Corpus 2
      </td>
      <td>
      German
      </td>
      <td>
      2 / 399
      </td>
      <td>
      POS, lemma,
morphology, constituent trees, dependency trees, coreference, rhetorical structure,
information structure
      </td>
      <td>
      <a
 href="http://www.sfb632.uni-potsdam.de/en/cprojects/d1.html"> SFB632/D1</a>
      </td>
    </tr>
	   <tr>
      <td>
      subtok.demo<br/>
[<a
 href="../corpora/subtok.demo_PAULA.zip">PAULA</a>,
      <a
 href="../corpora/subtok.demo_relANNIS.zip">ANNIS</a>]
      </td>
      <td>
  Subtoken Demo
      </td>
      <td>
      English
      </td>
      <td>
      1 / 11
      </td>
      <td>
      Diplomatic transcription, lemma, line, page, norm, pos, rend
      </td>
      <td>
      <a
 href="http://www.sfb632.uni-potsdam.de/en/cprojects/d1.html" >SFB632/D1</a>
      </td>
    </tr>
		   <tr>
      <td>
      dialog.demo<br/>
[<a
 href="../corpora/dialog.demo_EXMARaLDA.zip">EXMARaLDA</a>,
      <a
 href="../corpora/dialog.demo_relANNIS.zip"
 >ANNIS</a>]
      </td>
      <td>
  Dialog Demo <br/>(Sample from <a href="https://www.linguistik.hu-berlin.de/institut/professuren/korpuslinguistik/forschung/bematac">BeMaTaC</a>)
      </td>
      <td>
      German
      </td>
      <td>
      1 / 102
      </td>
      <td>
      Spoken word forms, normalization and utterances for two speakers, time-aligned audio
      </td>
      <td>
      <a
 href="http://www.sfb632.uni-potsdam.de/en/cprojects/d1.html" >SFB632/D1</a>
      </td>
    </tr>
   <tr>
      <td>
parallel.sample <br>
[<a 
 href="../corpora/parallel.sample.zip">PAULA</a>,
      <a
 href="../corpora/parallel.sample_relAnnis.zip"
 >ANNIS</a>]
      </td>
      <td>
      Sample parallel corpus
      </td>
      <td>
      English, German
      </td>
      <td>
      2 / 10
      </td>
      <td>
POS, lemma, alignment,
alignment type (good/fuzzy)
      </td>
      <td>
      <a
 href="http://www.sfb632.uni-potsdam.de/en/cprojects/d1.html" >SFB632/D1</a>

      </td>
    </tr>

       <tr>
		               <td>
		                    a5.hausa.umarnin.uwa<br>
		                    [<a
		                         
		                         href="../corpora/a5.hausa.umarnin.uwa_V2_TreeTagger.zip">TreeTagger</a>,
		                         <a
		                              href="../corpora/a5.hausa.umarnin.uwa_V2_relANNIS.zip"
		                              >ANNIS</a>]
		               </td>
		               <td>
		                    Umarnin Uwa film transcript
		               </td>
		               <td>
		                    Hausa
		               </td>
		               <td>
		                    47 / 10194
		               </td>
		               <td>
		                    Automatic POS, speakers, extralinguistic info, foreign words/code-switching
		               </td>
		               <td>
		                    <a
							 href="http://www.sfb632.uni-potsdam.de/en/cprojects/b4.html"
	 >SFB632/A5</a> and <a
							 href="http://www.sfb632.uni-potsdam.de/en/cprojects/d1.html"
	 >D1</a>
		               </td>
       </tr>

   <tr>
      <td>
b4.tatian2.0
<br>
[<a
 
 href="../corpora/b4.tatian2.0.zip">PAULA</a>,
      <a
 href="../corpora/b4.tatian2.0_relAnnis.zip"
 >ANNIS</a>]
      </td>
      <td>
      Tatian
Corpus of Deviating Examples (T-CODEX) 2.0
      </td>
      <td>
      Old High German, Latin
      </td>
      <td style="white-space:nowrap">
      2031 /
11295
      </td>
      <td>
      POS,
chunks, grammatical function, information structure
      </td>
      <td>
      <a
 href="http://www.sfb632.uni-potsdam.de/en/cprojects/b4.html"
 >SFB632/B4</a>;
edition text courtesy of <a href="http://www.v-r.de/en/"
 >Vandenhoeck
&amp; Ruprecht</a>
      </td>
    </tr>
	<tr>
      <td>
b7.wolof.web.V2
<br>
[<a
 
 href="../corpora/b7.wolof.web.V2.zip">TreeTagger</a>,
      <a
 href="../corpora/b7.wolof.web.V2_relANNIS.zip"
 >ANNIS</a>]
      </td>
      <td>
     Wolof Sample Web Corpus 2.0
      </td>
      <td>
      Wolof
      </td>
      <td style="white-space:nowrap">
      4 /
14676
      </td>
      <td>
      POS,
sentence segmentation
      </td>
      <td>
      <a
 href="http://www.sfb632.uni-potsdam.de/en/cprojects/b7.html"
 >SFB632/B7</a> and <a
							 href="http://www.sfb632.uni-potsdam.de/en/cprojects/d1.html"
	 >D1</a>
      </td>
    </tr>
	<tr>
      <td>
b7.wolof.wiki.V4
<br>
[<a
 
 href="../corpora/b7.wolof.wiki.V4.zip">TreeTagger</a>,
      <a
 href="../corpora/b7.wolof.wiki.V4_relANNIS.zip"
 >ANNIS</a>]
      </td>
      <td>
     Wolof Wikipedia Corpus 4.0
      </td>
      <td>
      Wolof
      </td>
      <td style="white-space:nowrap">
      14 /
12738
      </td>
      <td>
      POS,
sentence segmentation, English translations
      </td>
      <td>
      <a
 href="http://www.sfb632.uni-potsdam.de/en/cprojects/b7.html"
 >SFB632/B7</a> and <a
							 href="http://www.sfb632.uni-potsdam.de/en/cprojects/d1.html"
	 >D1</a>
      </td>
    </tr>
   <tr>
      <td>
      d2.20samplesDEU<br>
      [<a
 
 href="../corpora/d2.20samplesDEU.zip">PAULA</a>,
      <a
 href="../corpora/d2.20samplesDEU_relAnnis.zip"
 >ANNIS</a>]
      </td>
      <td>
D2 20
Samples (QUIS data)
      </td>
      <td>
      German
      </td>
      <td>
      22 /
382
      </td>
      <td>
      POS,
aligned audio,&nbsp;accent, tones, information structure,
grammatical function, morphology
      </td>
      <td>
<a
 href="http://www.sfb632.uni-potsdam.de/en/eprojects/d2.html"
 target="new">SFB632/D2</a>
      </td>
    </tr>
   <tr>
      <td style="white-space:nowrap">
      Aeschylus.Persae.L1-18<br>
      [<a
 href="../corpora/Aeschylus.Persae.L1-18_PAULA.zip">PAULA</a>,
      <a
 href="../corpora/Aeschylus.Persae.L1-18_relAnnis.zip"
 >ANNIS</a>]
      </td>
      <td>
     Aeschylus,
Persae: lines 1-18
      </td>
      <td>
     Classical
Greek (Polytonic)
      </td>
      <td>
      1&nbsp;/
87
      </td>
      <td>
      POS,
lemma, grammatical function, labeled syntax trees
      </td>
      <td>
     Francesco
Mambrini / <a href="http://www.perseus.tufts.edu/hopper/"
 >Perseus Project</a>,
      Tufts University
      </td>
    </tr>
      <tr>
            <td>
                 fuerstinnenkorrespondenz<br>
                 [<a
                      
                      href="../corpora/fuerstinnenkorrespondenz_exb.zip">EXMARaLDA</a>,
                      <a
                           href="../corpora/fuerstinnenkorrespondenz_relANNIS.zip"
                           >ANNIS</a>]
            </td>
            <td>
                 Early modern correspondence of German princesses and nobility
            </td>
            <td>
                 Early New High German
            </td>
            <td>
                 600 / 262,468
            </td>
            <td>
                 POS, lemma, clauses, grammatical function, normalization, orthography, politeness
            </td>
            <td>
                 Courtesy
                      of the 
                                Lehrstuhl f&uuml;r Indogermanistik, Universit&auml;t Jena <a
                           href="http://www.indogermanistik.uni-jena.de/Web/Projekte/Fuerstinnenkorr.htm"
                           >[website]</a>
            </td>
       </tr>

	         <tr>
            <td>
                 Nestorchronik.sample<br>
                 [<a
                      
                      href="../corpora/Nestorchronik.sample_PAULA.zip">PAULA</a>,
                      <a
                           href="../corpora/Nestorchronik.sample_relAnnis.zip"
                           >ANNIS</a>]
            </td>
            <td>
                 Nestor
                      Chronicle - 181,18 - 182,20
            </td>
            <td>
                 Old
                      Russian
            </td>
            <td>
                 1 / 273
            </td>
            <td>
                 POS/morphology,
                      clause-level syntax trees
            </td>
            <td>
                 Courtesy
                      of <a
                           href="http://www.uni-regensburg.de/Fakultaeten/phil_Fak_IV/Korpuslinguistik/meyer/index.php"
                           >Roland Meyer /
                                Institut f&uuml;r Slavistik, Universit&auml;t Regensburg</a>
            </td>
       </tr>

      <tr>
            <td>
                 SMULTRON_Banana<br>
                 [<a
                      
                      href="../corpora/SMULTRON_Banana_PAULA.zip">PAULA</a>,
                      <a
                           href="../corpora/SMULTRON_Banana_relAnnis.zip"
                           >ANNIS</a>]
            </td>
            <td>
                 SMULTRON Parallel Treebank Sample
            </td>
            <td>
                 German &amp; English
            </td>
            <td>
                 2 / 3782
            </td>
            <td>
                 POS, syntax trees, word and phrase level alignment with alignment quality; for German: lemma, morphology, entities

            </td>
            <td>
                 Courtesy
                      of the <a
                           href="http://www.cl.uzh.ch/"
                           >Institut f&uuml;r Computerlinguistik, Universit&auml;t Z&uuml;rich</a>
            </td>
       </tr>
      <tr>
            <td>
                 ridges.herbology<br>
                 [<a
                      
                      href="http://korpling.german.hu-berlin.de/ridges/download_en.html">PAULA</a>,
                      <a
                           href="http://korpling.german.hu-berlin.de/ridges/download_en.html"
                           >ANNIS</a>]
            </td>
            <td>
                 RIDGES Herbology
            </td>
            <td>
                 (Early) Modern German
            </td>
            <td>
                 14 / 63734
            </td>
            <td>
                 see <a href="http://korpling.german.hu-berlin.de/ridges/documentation_en.html">RIDGES documentation</a>

            </td>
            <td>
                 <a href="http://korpling.german.hu-berlin.de/ridges/">RIDGES Project</a>
            </td>
       </tr>
      <tr>
            <td>
                Align1_992<br>
                 [<a
                      
                      href="../corpora/OldOccitanPaula.zip">PAULA</a>,
                      <a
                           href="../corpora/OldOccitanRelAnnis.zip"
                           >ANNIS</a>]
            </td>
            <td>
                Roman de Flamenca Parallel Corpus
            </td>
            <td>
                 Old Occitan, English
            </td>
            <td>
                 2 / 14166
            </td>
            <td>
                 see <a href="http://nlp.indiana.edu/~obscrivn/Introduction.html">Flamenca documentation</a>

            </td>
            <td>
                 <a href="http://nlp.indiana.edu/~obscrivn/">Olga Scrivner, Indiana University</a>
            </td>
       </tr>

   <tr>
            <td>
                 abraham.our.father<br>
                 [<a
                      
                      href="http://coptic.pacific.edu/download/corpora/AOF/abraham.our.father_PAULA.zip">PAULA</a>,
                      <a
                           href="http://coptic.pacific.edu/download/corpora/AOF/abraham.our.father_relANNIS.zip"
                           >ANNIS</a>]
            </td>
            <td>
                 Abraham our Father (Shenoute)
            </td>
            <td>
                 Sahidic Coptic
            </td>
            <td>
                 7 / 7705
            </td>
            <td>
                 see documentation at <a href="http://coptic.pacific.edu/">http://coptic.pacific.edu/</a>

            </td>
            <td>
                 <a href="http://coptic.pacific.edu/">Coptic SCRIPTORIUM</a>
            </td>
       </tr>
   <tr>
            <td>
                 apophthegmata.patrum.5<br>
                 [<a
                      
                      href="http://coptic.pacific.edu/download/corpora/AP/apophthegmata.patrum.5_PAULA.zip">PAULA</a>,
                      <a
                           href="http://coptic.pacific.edu/download/corpora/AP/apophthegmata.patrum.5_relANNIS.zip"
                           >ANNIS</a>]
            </td>
            <td>
                 Apophthegmata Patrum
            </td>
            <td>
                 Sahidic Coptic
            </td>
            <td>
                 5 / 700
            </td>
            <td>
                 see documentation at <a href="http://coptic.pacific.edu/">http://coptic.pacific.edu/</a>

            </td>
            <td>
                 <a href="http://coptic.pacific.edu/">Coptic SCRIPTORIUM</a>
            </td>
       </tr>

  </tbody>
</table>
</div>



