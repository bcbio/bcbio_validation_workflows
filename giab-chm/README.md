# Cross platform germline validations with multiple truth sets

This validation provides cross platform small variant germline validations using
multiple truth sets. It assesses variant calling methods using two orthogonal
validation materials:

- An NA12878 (Caucasian) sample, carefully characterized by the [Genome in a
  Bottle Community](http://jimb.stanford.edu/giab/) using multiple Illumina
  sequencing datasets and variant calling algorithms.
- [A synthetic diploid
input](https://gatkforums.broadinstitute.org/gatk/discussion/10912/what-is-truth-or-how-an-accident-of-nature-can-illuminate-our-path) derived from two haploid cell lines from Complete Hydatidiform Moles (CHM),
sequenced and analyzed with PacBio data.

Multiple samples, sequencing technologies and truth set preparation methods
ameliorate the potential of producing biased validations. In this example, it
allows comparison of 4 germline calling methods: GATK 4 HaplotypeCaller,
Strelka2, FreeBayes and DeepVariant.

## Running the analysis

[bcbio](http://bcb.io/) provides the infrastructure for running the variant
calling tools, validating them against the reference materials and summarizing
the outputs. A portable pipeline description written in the
[Common Workflow Language (CWL)](https://www.commonwl.org/) enables
[building workflows that run across multiple platforms](https://bcbio-nextgen.readthedocs.io/en/latest/contents/cwl.html).

### Setting up bcbio

bcbio manages a unified interface to generate CWL and input files and run them
across multiple platforms. Platform integration includes looking up files and
running analyses on remote cloud hardware. Start by [installing, using
conda](http://bcbio-nextgen.readthedocs.io/en/latest/contents/cwl.html#getting-started),
the `bcbio_vm.py` script and associate runners that manage this integration.

### Sample input files

Two input files define the samples and analyses to run. The first is a template
file that defines what analyses to do: the aligner, variant caller, regions to analyze
and genome build:
```
details:
 - algorithm:
     aligner: minimap2
     variantcaller: [gatk-haplotype, strelka2, freebayes, deepvariant]
     variant_regions: Exome-AZ_V2_pluschr20-hg38.bed
     coverage: Exome-AZ_V2_pluschr20-hg38.bed
   analysis: variant2
   genome_build: hg38
```
The second input file defines what samples to run with these analysis methods,
including references to validation reference files:
```
samplename,description,validate,validate_regions
NA12878_R1.fq.gz;NA12878_R2.fq.gz,NA12878,hg38/validation/giab-NA12878/truth_small_variants.vcf.gz,hg38/validation/giab-NA12878/truth_regions.bed
CHM1_CHM13_R1.fq.gz;CHM1_CHM13_R2.fq.gz,CHM1_CHM13,chm-hg38.vcf.gz,chm-hg38-regions.bed.gz
```
These two files are general and avoid specifying direct paths or any other
platform specific information since this gets handled when building the CWL
files and associated sample input data.

### Locally on an HPC cluster

We can run on local HPC clusters with shared filesystems and schedulers using
the [Cromwell Workflow Management system](http://cromwell.readthedocs.io). We
first generate a CWL description with local file references and core and memory
usage matched to the system machines:
```
local:
  ref: biodata/collections
  inputs:
    - biodata/chm
    - biodata/regions
    - biodata/giab/na12878
resources:
  default: {cores: 16, memory: 3750M, jvm_opts: [-Xms750m, -Xmx3750m]}
```
with this in place we generate the CWL with local file references:
```
bcbio_vm.py template --systemconfig bcbio_system-local.yaml template.yaml giab-chm.csv
bcbio_vm.py cwl --systemconfig bcbio_system-local.yaml giab-chm/config/giab-chm.yaml
```
then run using Cromwell on a SLURM cluster:

```
bcbio_vm.py cwlrun cromwell giab-chm-workflow --no-container -q your_queue -s slurm -r timelimit=0-12:00
```

### Arvados

To port this analysis to an [Arvados cluster](https://arvados.org/) running on
Microsoft Azure, we follow the same procedure, with a system file now pointing
at remote reference data and inputs present on Arvados:
```
arvados:
  reference: su92l-xxx
  input: [su92l-xxx]
resources:
  default: {cores: 16, memory: 3500M, jvm_opts: [-Xms1g, -Xmx3500m]}
```
then generate a Common Workflow Language representation in the same way as for
the local run, but now we'll lookup and reference the remote files:
```
bcbio_vm.py template --systemconfig bcbio_system-arvados.yaml template.yaml giab-chm.csv
bcbio_vm.py cwl --systemconfig bcbio_system-arvados.yaml giab-chm/config/giab-chm.yaml
```
Finally run the analysis on the platform in almost an identical way to how we
ran locally:
```
bcbio_vm.py cwlrun arvados giab-chm-workflow -- --project-uuid su92l-your-projectid
```

### DNAnexus

To port the same analysis to a third environment,
[DNAnexus](https://www.dnanexus.com/) running on Amazon Web Services, we again
create a small system file defining the location of inputs and reference data:
```
dnanexus:
  project: giab-chm
  ref:
    project: bcbio_resources
    folder: /reference_genomes
  inputs:
    - /inputs
resources:
  default: {cores: 16, memory: 3000M, jvm_opts: [-Xms1g, -Xmx3000m]}
```
CWL generation is again identical to the previous steps:
```
bcbio_vm.py template --systemconfig bcbio_system-dnanexus.yaml template.yaml giab-chm.csv
bcbio_vm.py cwl --systemconfig bcbio_system-dnanexus.yaml giab-chm/config/giab-chm.yaml
```
and we run on the DNAnexus platform. TODO: wrape this in an identical syntax to
Cromwell and Arvados:
```
       dx-cwl compile-workflow $PNAME-workflow/main-$PNAME.cwl --project PROJECT_ID --token $DX_AUTH_TOKEN
       dx mkdir -p $DX_PROJECT_ID:/$PNAME-workflow
       dx upload -p --path $DX_PROJECT_ID:/$PNAME-workflow $PNAME-workflow/main-$PNAME-samples.json
       dx-cwl run-workflow /dx-cwl-run/main-$PNAME/main-$PNAME \
              /$PNAME-workflow/main-$PNAME-samples.json \
              --project PROJECT_ID --token $DX_AUTH_TOKEN
```

### Analysis overview

We've demonstrated running our diverse validation across three independent
platforms, with full management of all of the files and integrations.

## Validation outputs

Summarize interesting validation results from:

https://github.com/bcbio/bcbio_validations/tree/master/deepvariant#deepvariant-v06-release-strelka2-stratification-and-initial-gatk-cnn
