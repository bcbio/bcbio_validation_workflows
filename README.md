# bcbio validation workflows

[bcbio](http://bcb.io) validation workflows in:

- [Common Workflow Language (CWL)](http://www.commonwl.org/)
- [Workflow Description Lannguage (WDL)](https://software.broadinstitute.org/wdl/)

generated using [bcbio's CWL support](http://bcbio-nextgen.readthedocs.io/en/latest/contents/cwl.html).
These aim to be compatible with multiple CWL and WDL runners.

## Available workflows

- NA12878-chr20 -- A [bcbio](http://bcb.io/) workflow running a single chromosome subset of the
  [Genome in a Bottle NA12878 sample](http://jimb.stanford.edu/giab) from
  [Illumina's Platinum Genomes](https://www.illumina.com/platinumgenomes.html).
  It runs alignment, variant calling with multiple methods (
  [GATK4 HaplotypeCaller](http://gatkforums.broadinstitute.org/gatk/categories/gatk-4-alpha)
  [FreeBayes](https://github.com/ekg/freebayes),
  [Platypus](https://github.com/andyrimmer/Platypus),
  [samtools](https://github.com/samtools/samtools)) and quality control,
  validating outputs against reference standards. It runs in ~4 hours on a 8
  core machine, using ~50Gb of disk space (35Gb for inputs, 15Gb for analyses).

- SGDP-recall-CGC -- Germline recalling on the
  [Cancer Genomics Cloud](http://www.cancergenomicscloud.org/) using the public
  [Simons Genome Diversity Project Dataset](https://www.simonsfoundation.org/life-sciences/simons-genome-diversity-project-dataset/).

## GA4GH-DREAM tool execution challenge

The NA12878 chr20 example is part of the
[GA4GH-DREAM tool execution challenge](https://www.synapse.org/#!Synapse:syn8507134/wiki/416001)
and meant to be easily run on multiple CWL runners. The
[Synapse bcbio workflow directory](https://www.synapse.org/#!Synapse:syn9725771)
mirrors the CWL in this repository and also contains the biological data to run
the workflow. There is also a work in progress WDL description of the workflow.

### Running

1. [Install bcbio-vm](https://github.com/chapmanb/bcbio-nextgen-vm#installation)
   which has wrapper scripts and ready to run distributions of several CWL enabled tools
   (cwltool, toil, bunny) and infrastructure (synapse):

        wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
        bash Miniconda-latest-Linux-x86_64.sh -b -p ~/install/bcbio-vm/anaconda
        ~/install/bcbio-vm/anaconda/bin/conda install --yes -c conda-forge -c bioconda bcbio-nextgen-vm
        export PATH=~/install/bcbio-vm/anaconda/bin:$PATH

2. Retrieve the data and CWL description with the
   [Synapse python client](https://github.com/Sage-Bionetworks/synapsePythonClient#installation):

        synapse get -r syn9725771

3. The [NA12878-chr20 directory on GitHub](https://github.com/bcbio/bcbio_validation_workflows/tree/master/NA12878-chr20)
   contains starter shell scripts to run this with different CWL-enabled tools:
   [cwltool](https://github.com/common-workflow-language/cwltool),
   [Toil](https://github.com/BD2KGenomics/toil) or
   [rabix bunny](https://github.com/rabix/bunny). It can either use a local
   bcbio installation or
   [bcbio Docker containers](https://github.com/bcbio/bcbio_docker).

## Joint calling validation workflow with Genome in a Bottle samples

Run a [GATK4 joint variant calling workflow](https://software.broadinstitute.org/gatk/) using
three diverse Genome in a Bottle samples from different sequencing technologies:

- NA12878: (Caucasian daughter): [65x NovaSeq TruSeq Nano](https://basespace.illumina.com/datacentral)
- NA24385 (Ashkenazi Jewish son): [50x HiSeq x10 dataset from 10x genomicss](https://support.10xgenomics.com/de-novo-assembly/datasets)
- NA24631 (Chinese son) -- [55x Illumina HiSeq 2500 2x250bp](ftp://ftp-trace.ncbi.nlm.nih.gov/giab/ftp/data/ChineseTrio/HG005_NA24631_son/HG005_NA24631_son_HiSeq_300x/README_NIST_Illumina_pairedend_HG005.txt)

This calls each independently using GATK HaplotypeCaller, generating gVCF as input
to a combined joint callset.

### Running

1. [Install bcbio-vm](https://github.com/chapmanb/bcbio-nextgen-vm#installation) as described above.

2. Retrieve the data and CWL description with the
   [Synapse python client](https://github.com/Sage-Bionetworks/synapsePythonClient#installation):

        synapse get -r syn10466755

### Resource requirements

- The default CWL using 8 cores and 4Gb of memory per core. You can adjust `bcbio_system.yaml`
  and regenerate the CWL to fit other systems for testing.
- Inputs files, including fastq files and genome reference files, are 60Gb.
- Temporary work directories duing processing can take from 200Gb to 400Gb of disk space,
  depending on the runner.
- Output files are 60Gb.
