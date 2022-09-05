# Frogs

This repository holds the analyses of the mtDNA of a number of frog
samples from Northern Tanzania.

## Background

The frog samples were collected by ISM students Donyo Gabriel and Willem
van Zwetselaar, because they appeared to be undescribed species.  They contacted
herpetologist Michele Menegon and B. Zimkus.

The boys did morphometry and submitted this to Menegon and Zimkus.  DTU offered
to attempt genomic sequencing.  This repository has the analyses.

### Literature

#### Herpetology

 * A new species of Phrynobatrachus (Amphibia: Anura: Phrynobatrachidae) from the Northern Mountains of Tanzania
   <doi:10.1080/00222933.2020.1757171>
 * Complex patterns of continental speciation: Molecular phylogenetics and biogeography of sub-Saharan puddle frogs (Phrynobatrachus),
   _Molecular Phylogenetics and Evolution 55 (2010) 883–900_
 * Light at the end of the tunnel: insights into the molecular systematics of East African puddle frogs (Anura: Phrynobatrachidae),
   <doi:10.1080/14772000903543004>
 * Strongylopus
   * Phylogeny and taxonomy of the African frog genus Strongylopus (Anura: Pyxicephalidae), <doi:10.35929/RSZ.0074>
   * Stream Frogs in Tanzania (Ranidae: Strongylopus): the case of S. merumontanus and S. fuelleborn, 
   * Afrotemperate Amphibians in southern and eastern Africa: a critical review
   <doi:10.1080/21564574.2013.794866>

#### Methods

 * Efficient Sequencing of Anuran mtDNAs and a Mitogenomic Exploration of the Phylogeny and Evolution of Frogs,
   _Molecular Biology and Evolution_,
   <doi:10.1093/molbev/mst091>
 * Mitochondrial genome sequencing, mapping, and assembly benchmarking for Culicoides species (Diptera: Ceratopogonidae),
   Milián-García et al. 2022

### Species

#### Phrynobatrachus (puddle frog)

[Phrynobatrachus](https://en.wikipedia.org/wiki/Phrynobatrachus) (NCBI taxon 143461)
is a genus of Sub-Saharan frogs that form the monogeneric family Phrynobatrachidae in
the Ranoidea superfamily.  They are among the most common amphibians in Africa.

The probably most closely related families are Petropedetidae (torrent frog), and
Pyxicephalidae (in which Strongylopus is a genus) or Ptychadenidae (grassland frog).

The genus has 93 species and may be further divided into three major clades (see
Zimkus 2009) which could be treated as genera, but this arrangement is not yet in use.

Greenwood et al (2020) describe a new species (_P ambangulensis_) from the West Usambara,
possibly distinct from another in the North Pare, both close(st) to _P krefftii_.
"Mitochondrial 16S rRNA indicates that the new species differs from all other species
with published sequence data by a minimum distance of 4.75%".

**Questions:** Are our 2 samples new species? Do they align with Zimkus's theory
that they originate from East Africa and had reintroductions?

#### Strongylopus (stream frog)

[Strongylopus](https://en.wikipedia.org/wiki/Strongylopus) (NCBI taxon 143647) is a
genus (in subfamily Cacosterninae) in family Pyxicephalidae.

    Strongylopus bonaespei (Dubois, 1981) – Banded stream frog
    Strongylopus fasciatus (Smith, 1849) – Striped stream frog
    Strongylopus fuelleborni (Nieden, 1911) – Fuelleborn's stream frog
    Strongylopus grayii (Smith, 1849) – Gray's stream frog
    Strongylopus kilimanjaro (Clarke and Poynton, 2005)
    Strongylopus kitumbeine (Channing and Davenport, 2002)
    Strongylopus merumontanus (Lönnberg, 1910)
    Strongylopus rhodesianus (Hewitt, 1933) – Chimanimani stream frog
    Strongylopus springbokensis (Channing, 1986) – Namaqua stream frog
    Strongylopus wageri (Wager, 1961) – Wager's stream frog

The boys found the stream frogs on top of Mt Gelai, and they were different from, and
larger than any known specimen.

Poynton (2004) claims both _S merumontanus_ (single holotype exists from Lönnberg 1911)
and _S fuelleborni_ (holotype from Nieden 1911) exist on Mt Meru, counter to Barbour &
Loveridge (1928) and Channing & Davenport (2002) who proposed merging the species.  Then
Clarke & Poyton (2005) describe new species _S kilimanjaro_, after Channing (2002) found
_S kitumbeine_ (near Monduli).

Channing (2022) molecularly settles this debate: six proper species, delegating fuelleborni
(2011), kitumbeine (theirs 2002), and kilimanjaro (Poynton 2005) to junior synonyms of
_S merumontanus_:

 * _S bonaespi_: western Africa
 * _S fasciatus_: eastern SA to Zimbabwe
 * _S wageri_: KwaZulu-natal
 * _S grayii_: thoughout SA, Namibia
   * _S springbokensis_: junior synonym
 * _S rhodesianus_: eastern Zimbabwe, western Mozambique
 * _S merumontanus_: eastern Zambia, Malawi, northern Mozambique, Tanzania
   * _S fuelleborni_: junior synonym of _merumontanus_
   * _S kitumbeine_: junior synonym of _merumontanus_
   * _S kilimanjaro_: junior synonym of _merumontanus_

**Questions** how remote are our samples to the _S merumontanus_ and its 'junior synonyms'?


## Sample Data

#### Identifiers

Samples are in the RAN1 (Phrynobactrachus) and RAN2 (Strongylopus) projects;
sequencing was run QDK21:

    $ gi project-samples RAN1
    sam_id          run_id  sam_id_on_run   bio_id
    QDK21_DZ043-1   QDK21   DZ43_S71        RAN1_DZ043
    QDK21_DZ043-2   QDK21   DZ43_S80        RAN1_DZ043
    QDK21_DZ046-1   QDK21   DZ46_S72        RAN1_DZ046
    QDK21_DZ046-2   QDK21   DZ46_S81        RAN1_DZ046

    $ gi project-samples RAN2
    sam_id          run_id  sam_id_on_run   bio_id
    QDK21_DZ028-1   QDK21   DZ28_S69        RAN2_DZ028
    QDK21_DZ028-2   QDK21   DZ28_S78        RAN2_DZ028
    QDK21_DZ029-1   QDK21   DZ29_S70        RAN2_DZ029
    QDK21_DZ029-2   QDK21   DZ29_S79        RAN2_DZ029
    QDK21_DZ052-1   QDK21   DZ52_S73        RAN2_DZ052
    QDK21_DZ052-2   QDK21   DZ52_S82        RAN2_DZ052
    QDK21_DZ085-1   QDK21   DZ85_S74        RAN2_DZ085
    QDK21_DZ085-2   QDK21   DZ85_S83        RAN2_DZ085
    QDK21_DZ097-1   QDK21   DZ97_S75        RAN2_DZ097
    QDK21_DZ097-2   QDK21   DZ97_S84        RAN2_DZ097
    QDK21_DZ111-1   QDK21   DZ111_S76       RAN2_DZ111
    QDK21_DZ111-2   QDK21   DZ111_S85       RAN2_DZ111
    QDK21_DZ120-1   QDK21   DZ120_S77       RAN2_DZ120
    QDK21_DZ120-2   QDK21   DZ120_S86       RAN2_DZ120

#### Metadata

Metadata is in [00-metadata](00-metadata/README.md).

#### Sequencing

Reads were on computerome at:

    computerome:/home/projects/cge/backup/fastq/food_seqdata/NextSeq_183_1250/

Raw and trimmed reads were copied to KCRI HPC, and symlinked from standard:

    hpc.kcri.it:/hpc/data/genomics/kcri/nextseq/other/QDK21/{raw,trimmed}
    hpc.kcri.it:/hpc/data/genomics/kcri/reads/{raw,trimmed}/QDK21

#### DTU analyses

DTU analyses (by `bapavo` and `fremol`) are on computerome at:

    computerome:/home/projects/cge/data/projects/1250

Analyses output (selection) was synchronised to HPC at:

    hpc.kcri.it:/hpc/data/genomics/projects/frogs/

These analyses were done:

 * **mapping** and prevalence counting with KMA of the trimmed reads on:
   frog mitochondria, frog DNA and mitochondria, mitochondria, Silva.
   The `mapstats` files are copied here (except Silva, too diffuse).
   
 * **assembly** using `bbnorm` for normalisation and (missing) `tadpole.sh`,
   then `SPAdes`, then `Unicycler`.  The latter had good results.

 * **phylogeny** (using `mrbayes` missing?) of whole mtDNA with ranoidea,
   see the `.dnd` Newick files,  Unsure how the Nexus files were generated
   (ClustalW?)


## Analyses

### Assembly

We try multiple assemblies: with trimmed vs raw reads, and with the technical
replicates merged vs separate.

### Polishing

TODO: map raw (rather than trimmed) reads on assemblies.

### Mitochondrion

Most Animal kingdom mitochondrion is circular, 11-28kbp DNA with no introns that
is uniparentally inherited.  The H-strand is heavier than the L-strand due to
purine (AG) richness.

**Human mtDNA**

Human mtDNA is 16,569bp and codes for 13 proteins, all for the oxidative
phosphorylation system.  The H-strand codes for 12 (2 ATP synthase subunits,
3 Cytochrome c oxidase, 1 Cytochrome b, 6 NADH dehydrogenase), plus two
ribosomal RNAs (SSU 12S, LSU 16S), and 14 tRNA (RDGHIL1L2KMFS1TWV).  The
L-strand codes for 1 protein (NADH subunit 6), and 8 tRNA (ANCEQPS2Y).

Reference (rCRS = revised Cambridge Reference Sequence) for the human mt genome
is `NC_012920.1` (see in 00-reference, and <https://www.mitomap.org/MITOMAP/>):

 * 1..576 complement is start of the D-loop (control region)
 * 577..647 `TRNF`, _tRNA-Phe_
 * 648..1601 `RNR1`, _s-rRNA_ (SSU, 12S rRNA)
 * 1602..1670 `TRNV`, _tRNA-Val_
 * 1671..3229 `RNR2`, _l-rRNA_ (LSU, 16S rRNA)
   Note 3107 is historical spacer
 * 3230..3304 `TRNL1`, _rRNA-Leu 1_ (UUA/G)
 * 3307..4262 `ND1`, _NADH dehydrogenase subunit 1_
 * ...
 * 14747..15887 `CYTB`, product _cytochrome b_ (3' A added to complete TAA stop codon)
 * 15888..15953 `TRNT`, _tRNA-Thr_
 * 15956..16023 (complement) `TRNP`, _tRNA-Pro_
 * 16024..16569 (complement) is end of the control region / D-loop (starts 1..576 comp)

**Control Region / D-loop / DLP**

The D-loop and adjacent transciption promoter regions form the DLP/CR (though often
called D-loop).  In it the origin of replication of the H-strand, and origin of
transcription of both strands.

It is most polymorphic of human mt, but polymorphy concentrates in hypervariable
regions (HV I, II, III), with secondary structure retained.

TODO: check GFA
TODO: polypolish the mitochondrion as if it were a long read?
TODO: map raw reads on largest contig

### Genes / Loci

TODO: references from the phryno and strongy papers

