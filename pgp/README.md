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
  participant BAM read data.

### Identify a participant to work on

Identify participants to analyze using the [PGP untap](https://github.com/abeconnelly/untap)
SQLite database, hosted on [the Veritas public PGP
server](https://collections.su92l.arvadosapi.com/c=2210f7ee07fc1c8b926e5db28eff9635-3284/_/html/index.html?disposition=inline).
We developed queries based on [an initial analysis of PGP participants](https://github.com/swzCuroverse/PGPGraphics).

Query SQLite database to find sample of interest:

    wget https://collections.su92l.arvadosapi.com/c=su92l-4zz18-2w3rfqxc5zkhfhd/t=t6rn146cw51wzi7s66dteicjsk0k57p4mj5cpapnsc94q8bfg/_/arv-stage/untap.db
    python scripts/extract_veritas_pgp.py untap.db

We identify participant [huD57BBF](https://my.pgp-hms.org/profile/huD57BBF) as
a candidate for additional analysis:

    huD57BBF 53Gb No demographics [u'Family Tree DNA', u'Veritas Genetics', u'23andMe']

In addition to the data in the Personal Genome Project, this participant, James
Vick has contributed [microbiome data at Open Humans](https://www.openhumans.org/member/jameslvick/).

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

### Structural variant and HLA calls

This demonstrates how to run a more complex workflow analysis on a cleaned BAM
file. We'll use a [bcbio](http://bcb.io/) [Common Workflow
Language](http://www.commonwl.org/) decription to run HLA typing with 
[OptiType](https://github.com/FRED-2/OptiType) and structural variant calling with
[Manta](https://github.com/Illumina/manta), [Lumpy](https://github.com/arq5x/lumpy-sv)
and [CNVkit](http://cnvkit.readthedocs.io/en/stable/). This provides additional variant
calls and information not present in the small variant VCFs generated as part of
the Personal Genome Project analysis.

### Suggested data access improvements

- Many samples do not have associated demongraphic information in the untap
  database. That would help to select diverse participants.
