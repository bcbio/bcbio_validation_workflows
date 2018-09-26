# GA4GH WES workflow

A [bcbio](https://bcbio-nextgen.readthedocs.io/) somatic variant calling analysis
as a GA4GH test example for demonstrating Workflow Execution Service (WES) interoperability.
This is contributed by the 
[Australian Genomics Health Alliance (AGHA)](https://www.australiangenomics.org.au/)
and contains Common Workflow Language descriptions for running on:

- [Veritas Genetics'](https://www.veritasgenetics.com/) [Arvados](https://arvados.org/) platform.
  The data is externally hosted on the [Arvados public playground](https://playground.arvados.org/).

- The [Cromwell Workflow Management System](https://cromwell.readthedocs.io/en/stable/) developed
  by the Broad Institute and tested on Google Cloud Platform by Illumina. The data is hosted
  in a publicly accessible Google Storage bucket and referenced by http URLs.
