## Personal Genome Project analysis

This analysis demonstrates query, data retrieval and analysis of samples from
the [Personal Genome Project (PGP)](http://www.personalgenomes.org/us). The goal
is to:

- Identify an interesting participant to work on with high coverage Illumina
  sequencing data. Get their participant ID.
- Find the participants variant calls from a set of portable, ready to analyze
  VCFs.
- Download and extract interesting variant information from the VCF.
- Setup and run an HLA and structural variant calling analysis on the
  participant BAM read data and interpret the results.

See the [associated slides](https://github.com/chapmanb/bcbb/blob/master/talks/pgp_analysis/pgp_analysis.pdf)
for additional background and materials.

### Identify a participant to work on

We identify participants to analyze using the [PGP untap](https://github.com/abeconnelly/untap)
SQLite database, hosted on [the Curoverse Research public PGP
server](https://collections.su92l.arvadosapi.com/c=2210f7ee07fc1c8b926e5db28eff9635-3284/_/html/index.html?disposition=inline).
We developed queries based on [an initial analysis of PGP participants](https://github.com/swzCuroverse/PGPGraphics).
The Personal Genome Project has a number of [heterogeneous datasets for participants](https://github.com/PGPHarvard/data-summary), all organized and freely available.

We identify a participant by querying a pre-built SQLite database of sample information. 
We're ideally looking for a participant with recent high depth Illumina sequencing from
[Veritas Genetics](https://www.veritasgenetics.com/) and with contributed
health and ancestry data:

    wget https://collections.su92l.arvadosapi.com/c=su92l-4zz18-2w3rfqxc5zkhfhd/t=t6rn146cw51wzi7s66dteicjsk0k57p4mj5cpapnsc94q8bfg/_/arv-stage/untap.db
    python scripts/extract_veritas_pgp.py untap.db

We identify participant [huD57BBF](https://my.pgp-hms.org/profile/huD57BBF)
for additional analysis:

    huD57BBF 53Gb No demographics [u'Family Tree DNA', u'Veritas Genetics', u'23andMe']

In addition to the data in the Personal Genome Project, this participant
has contributed [microbiome data at Open Humans](https://www.openhumans.org/member/jameslvick/).

### Find BAM and VCF files in Arvados collections

BAM, VCF and 23andMe data identified on PGP participant IDs are available
as [Arvados data
collections](https://workbench.su92l.arvadosapi.com/projects/su92l-j7d0g-nsjiqjm7jne7zgr?#Data_collections):

- Per participant [portable ready to use VCFs](https://workbench.su92l.arvadosapi.com/collections/su92l-4zz18-2rwb81xy8f1eh42)
- Per participant [raw BAM files of reads](https://workbench.su92l.arvadosapi.com/collections/su92l-4zz18-1rqqi0kpkfmfite)

### Download and check interesting variants

Demonstrate how to download VCFs from the collection and query for
[ApoE status](https://www.snpedia.com/index.php/APOE) at
[rs429358](https://www.snpedia.com/index.php/Rs429358)
and [rs7412](https://www.snpedia.com/index.php/Rs7412).
In human build 37, you find [rs429358 at chr19:45411941](http://gnomad.broadinstitute.org/variant/19-45411941-T-C)
and [rs7412 is at chr19:45412079](http://gnomad.broadinstitute.org/variant/19-45412079-C-T).
The genotypes at these two positions determine ApoE
status which impacts risk of Alzheimer's disease and cholesterol metabolism.

First, download the variant files for our participant of interest:

    wget https://collections.su92l.arvadosapi.com/c=su92l-4zz18-2rwb81xy8f1eh42/t=5kmw0b5mm7kjwaru01mqydkz3nstxmnl2gxcovyh3u2s07q9hg/_/huD57BBF_KXAWAX7-portable.vcf.gz
    wget https://collections.su92l.arvadosapi.com/c=su92l-4zz18-2rwb81xy8f1eh42/t=5kmw0b5mm7kjwaru01mqydkz3nstxmnl2gxcovyh3u2s07q9hg/_/huD57BBF_KXAWAX7-portable.vcf.gz.tbi

Then query for variants at the positions listed above. This VCF only reports
variant changes from the reference at each position. We use
[tabix](http://www.htslib.org/doc/tabix.html) for querying and don't have to
convert between [1-based to 0-based coordinates for
query](https://www.biostars.org/p/6373/); ExAC, tabix query, and the VCF
representation all use 1-based indexes:

    $ tabix huD57BBF_KXAWAX7-portable.vcf.gz chr19:45411941-45411941
    chr19   45411941        .       T       C       1406.61 PASS    AB=0;ABP=0;AC=4;ADP=39;AF=1;AN=4;AO=41;CIGAR=1X;DP=41;DPB=41;DPRA=0;EPP=4.33437;EPPR=0;GTI=0;HET=0;HOM=1;LEN=1;MEANALT=1;MQM=60;MQMR=0;NC=0;NS=1;NUMALT=1;ODDS=61.4432;PAIRED=1;PAIREDR=0;PAO=0;PQA=0;PQR=0;PRO=0;QA=1595;QR=0;RO=0;RPP=3.06326;RPPR=0;RUN=1;SAF=25;SAP=7.30028;SAR=16;SF=0,1;SRF=0;SRP=0;SRR=0;TYPE=snp;WT=0        GT:RDF:SDP:RBQ:PVAL:QA:RDR:RD:DP:GL:AD:ABQ:FREQ:GQ:ADR:RO:QR:AO:ADF     1/1:.:.:.:.:1595:.:.:41:-10,-10,0:.:.:.:.:.:0:0:41
     $ tabix huD57BBF_KXAWAX7-portable.vcf.gz chr19:45412079-45412079

Once you learn how to read VCF output by looking at [an overview of
the VCF fields](http://vcftools.sourceforge.net/VCF-poster.pdf) or reading a [more
detailed
description](https://software.broadinstitute.org/gatk/documentation/article.php?id=1268)
you can interpret these as a genotypes of C/C at rs429358 and C/C (the
reference) at rs7412.

Using the [APOE](https://www.snpedia.com/index.php/APOE) allele lookup table,
this corresponds to double [APOE-4/APOE-4
alleles](https://www.snpedia.com/index.php/Gs216). This genotype contributes to increased
risk for Alzheimer's and heart disease. The results match the output from
the [Personal Genome Projects GET-Evidence report on 23andMe variants](https://collections.su92l.arvadosapi.com/collections/ae064afa8f4c83d9386da907d741b385+2096/get-evidence-report.html).
While this is an exploratory genetic analysis, it provides an interesting link with the
[participant's self reported high cholestorol](https://my.pgp-hms.org/profile/huD57BBF).

### Structural variant and HLA calls

This demonstrates how to run a more complex workflow analysis on a cleaned BAM
file. We'll use a [bcbio](http://bcb.io/) [Common Workflow
Language (CWL)](http://www.commonwl.org/) decription to run HLA typing with
[OptiType](https://github.com/FRED-2/OptiType) and structural variant calling with
[Manta](https://github.com/Illumina/manta), [Lumpy](https://github.com/arq5x/lumpy-sv)
and [CNVkit](http://cnvkit.readthedocs.io/en/stable/). This provides additional variant
calls and information not present in the small variant VCFs generated as part of
the Personal Genome Project analysis.

The [Arvados](https://arvados.org/) platform that hosts the PGP data is a full
analysis environment running on top of
[Amazon Web Services](https://aws.amazon.com/).
bcbio [integrates with Arvados](http://bcbio-nextgen.readthedocs.io/en/latest/contents/cwl.html#running-bcbio-cwl-on-arvados)
providing the ability to run additional analyses on any participant example.

To run, we first define a configuration file that points to the
[PGP portable input BAMs](https://workbench.su92l.arvadosapi.com/collections/su92l-4zz18-ihm3wrgyuwcmsx1)
and [reference genomes and associated indices and supporting files](https://workbench.su92l.arvadosapi.com/collections/su92l-4zz18-3p00f79y4p535ia).
This enables bcbio to do direct lookups of files present in these Arvados Keep
collections:
```
arvados:
  reference: su92l-4zz18-3p00f79y4p535ia
  input: [su92l-4zz18-ihm3wrgyuwcmsx1]
resources:
  default: {cores: 16, memory: 3500M, jvm_opts: [-Xms1g, -Xmx3500m]}
```
Next we define a second YAML file with the analyses we want to run. This
references the input participant BAM file with raw sequence reads. It
specifies we want to align with bwa; call variants with GATK4 HaplotypeCaller;
call structural variants with Manta, Lumpy and CNVkit; and call HLAs with
OptiType. Finally it provides some tweaks to improve performance on higher depth
whole genome data for alignment and variant calling:
```
  - files: huD57BBF.bam
    description: huD57BBF
    analysis: variant
    genome_build: hg38
    algorithm:
      aligner: bwa
      variantcaller: gatk-haplotype
      svcaller: [manta, lumpy, cnvkit]
      hlacaller: optitype
      align_split_size: false
      nomap_split_targets: 20
      exclude_regions: [altcontigs, polyx]
```
With these two files in place we can launch this full whole genome workflow on
the Arvados PGP platform. First you reference your
[API token](https://workbench.su92l.arvadosapi.com/current_token)
which allows you to login and launch analyses remotely:
```
export ARVADOS_API_TOKEN=your_api_token
export ARVADOS_API_HOST=su92l.arvadosapi.com
```
We submit the analysis job with two
[bcbio-vm](https://github.com/bcbio/bcbio-nextgen-vm) commands.
First generate a portable Common Workflow Language (CWL) description of the
analysis we want to run, retrieving identifiers of needed input files on
the Arvados platform:

    bcbio_vm.py cwl --systemconfig bcbio_system-arvados.yaml pgp_sv_hla.yaml

Finally, submit the prepared CWL job into the
[PGP_example_analyses](https://workbench.su92l.arvadosapi.com/projects/su92l-j7d0g-eoibug3nrwg8ysj)
project:

    bcbio_vm.py cwlrun arvados pgp_sv_hla-workflow -- --project-uuid su92l-j7d0g-eoibug3nrwg8ysj

This launches a distributed analysis job running over multiple cloud AWS
machines, retrieving input data from Keep and analysis programs from pre-built
[Docker containers](https://github.com/bcbio/bcbio_docker). The job itself takes
over 24 hours to run.

### Structural variant and HLA calls

The outputs of this process are HLA and structural variant calls for the
participant, providing insight into additional variation not present in the
automated PGP variant calls. The [output from the workflow run](https://workbench.su92l.arvadosapi.com/container_requests/su92l-xvhdp-sxye9jeaadta8e0) contains the calls, and we'll highlight
some interesting outputs with a light post-analysis.

The HLA calling did not extract a lot of HLA specific reads from the original
sequencing output, but was able to output initial calls for
the predicted [HLA class 1 (A, B, C)](https://en.wikipedia.org/wiki/Human_leukocyte_antigen) types:
```
HLA-A*11:01;HLA-A*24:02
HLA-B*27:05;HLA-B*55:01
HLA-C*07:02;HLA-C*07:02
```
If you have interest in your HLAs for ancestry, immunity, donor matching or
other purposes, we recommend exploring more through
[Root](http://rootdeep.com/).

Larger structural variants in this participant principally lie in non-gene
regions, but we identified an interesting example to look at in depth. A
~3000bp deletion on chromosome 19 was called consistently by all three variant
callers: Manta, Lumpy and CNVkit:
```
chr19   50827242        MantaDEL:67020:0:1:0:0:0        T       <DEL>   658.0
PASS
END=50830636;SVTYPE=DEL;SVLEN=-3394;CIPOS=0,2;CIEND=0,2;HOMLEN=2;HOMSEQ=GG;ANN=<DEL>|bidirectional_gene_fusion|HIGH|AC011523.2&KLK15|ENSG00000267968&ENSG00000174562|gene_variant|ENSG00000174562|||n.50830636_50827243del||||||
GT:FT:GQ:PL:PR:SR       0/1:PASS:504:708,0,501:18,16:23,12

chr19   50827243        2487    N       <DEL>   584.5   PASS
SVTYPE=DEL;SVLEN=-3393;END=50830636;STRANDS=+-:15;IMPRECISE;CIPOS=-21,282;CIEND=-294,14;CIPOS95=-1,80;CIEND95=-83,1;SU=15;PE=15;SR=0;AC=1;AN=2;ANN=<DEL>|bidirectional_gene_fusion|HIGH|AC011523.2&KLK15|ENSG00000267968&ENSG00000174562|gene_variant|ENSG00000174562|||n.50830636_50827244del||||||
GT:GQ:SQ:GL:DP:RO:AO:QR:QA:RS:AS:ASC:RP:AP:AB
0/1:200:584.5:-60,-2,-22:68:40:27:39:26:21:7:3:18:15:0.4

chr19   50827156        .       N       <DEL>   .       .
IMPRECISE;SVTYPE=DEL;END=50830654;SVLEN=-3498;FOLD_CHA
NGE=0.489652;FOLD_CHANGE_LOG=-1.030170;PROBES=14;ANN=<DEL>|bidirectional_gene_fusion|HIGH|AC011523.2&KLK15|ENSG00000267968&ENSG00000174562|gene_variant|ENSG00000174562|||n.50830654_50827157del||||||
GT:GQ   0/1:14
```
The methods aren't able to identify the precise endpoints of the event, but
the predicted deletion effect is a disruption in the exonic coding regions of
the gene [KLK15](https://en.wikipedia.org/wiki/KLK15) ([more detailed gene report](http://genome.ucsc.edu/cgi-bin/hgGene?hgg_gene=uc061bta.1&hgg_prot=ENST00000326856.8&hgg_chrom=chr19&hgg_start=50825304&hgg_end=50837213&hgg_type=knownGene&db=hg38&hgsid=666328145_Pll7eUGz7aOzaVInu8XRbhaCoubl)), with potential
fusion with an overlapping small RNA, [AC011523.2](http://useast.ensembl.org/Homo_sapiens/Gene/Summary?db=core;g=ENSG00000267968;r=19:50830530-50851089;t=ENST00000598079). [Viewing the region in the UCSC genome browser](http://genome.ucsc.edu/cgi-bin/hgTracks?db=hg38&lastVirtModeType=default&lastVirtModeExtraState=&virtModeType=default&virtMode=0&nonVirtPosition=&position=chr19%3A50826281%2D50831529&hgsid=666328145_Pll7eUGz7aOzaVInu8XRbhaCoubl)
is a good way to visualize the potential change caused by deletion.

While this is a fully exploratory analysis, KLK15 has an interesting link with
the participant's report of a thyroid nodule and biopsy. KLK15 has been proposed
as a marker for prostate cancer, and the [tissue specific expression profile
from GTEx](https://www.gtexportal.org/home/gene/ENSG00000174562.9) indicates
it is as prevalent in Thyroid tissue as Prostate. This correlation provides no
evidence of mechanism but is a useful connection for future analysis.

### Suggested data access improvements

- Many samples do not have associated demographic information in the untap
  database. That would help to select diverse participants.
