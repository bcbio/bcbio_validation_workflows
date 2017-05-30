# bcbio validation workflows

[bcbio](http://bcb.io) validation workflows in:


- [Common Workflow Language (CWL)](http://www.commonwl.org/)
- [Workflow Description Lannguage (WDL)](https://software.broadinstitute.org/wdl/)

generated using [bcbio's CWL support](http://bcbio-nextgen.readthedocs.io/en/latest/contents/cwl.html).
These aim to be compatible with multiple CWL and WDL runners.

## Available workflows

- NA12878-chr20 -- A single chromosome subset of the
  [Genome in a Bottle NA12878 sample](http://jimb.stanford.edu/giab) from
  [Illumina's Platinum Genomes](https://www.illumina.com/platinumgenomes.html).
  Runs alignment, variant calling with multiple methods and validates against
  reference standards. It runs in ~4 hours on a 8 core machine.

- SGDP-recall-CGC -- Germline recalling on the
  [Cancer Genomics Cloud](http://www.cancergenomicscloud.org/) using the public
  [Simons Genome Diversity Project Dataset](https://www.simonsfoundation.org/life-sciences/simons-genome-diversity-project-dataset/).

## GA4GH-DREAM tool execution challenge

The NA12878 chr20 example is part of the
[GA4GH-DREAM tool execution challenge](https://www.synapse.org/#!Synapse:syn8507134/wiki/416001)
and meant to be easily run on multiple CWL runners. The
[Synapse bcbio workflow directory](https://www.synapse.org/#!Synapse:syn9725771)
mirrors the CWL in this repository and also contains the biological data to run
the workflow. Retrieve the data and CWL description with the
[Synapse python client](https://github.com/Sage-Bionetworks/synapsePythonClient#installation):

    synapse get -r syn9725771

The NA12878-chr20 directory contains example shell scripts to run this with
different CWL-enabled tools:
[cwltool](https://github.com/common-workflow-language/cwltool),
[Toil](https://github.com/BD2KGenomics/toil) or
[rabix bunny](https://github.com/rabix/bunny). It can either use a local bcbio
installation or
[bcbio Docker containers](https://github.com/bcbio/bcbio_docker).
