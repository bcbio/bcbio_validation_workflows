#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow

requirements:
- class: SubworkflowFeatureRequirement

inputs:
- id: expected_validation
  type: File
- id: config__algorithm__align_split_size
  type:
    items:
    - 'null'
    - string
    type: array
- id: files
  secondaryFiles:
  - .bai
  type:
    items:
      items: File
      type: array
    type: array
- id: config__algorithm__trim_reads
  type:
    items: string
    type: array
- id: reference__fasta__base
  secondaryFiles:
  - .fai
  - ^.dict
  type:
    items: File
    type: array
- id: config__algorithm__vcfanno
  type:
    items:
    - 'null'
    - items: 'null'
      type: array
    type: array
- id: config__algorithm__svprioritize
  type:
    items:
    - 'null'
    - string
    type: array
- id: resources
  type:
    items: string
    type: array
- id: config__algorithm__variantcaller
  type:
    items:
      items: string
      type: array
    type: array
- id: config__algorithm__adapters
  type:
    items:
      items: string
      type: array
    type: array
- id: config__algorithm__svcaller
  type:
    items:
      items: string
      type: array
    type: array
- id: config__algorithm__coverage_interval
  type:
    items:
    - 'null'
    - string
    type: array
- id: genome_resources__rnaseq__gene_bed
  type:
    items: File
    type: array
- id: genome_resources__variation__train_hapmap
  secondaryFiles:
  - .tbi
  type:
    items: File
    type: array
- id: rgnames__lb
  type:
    items:
    - 'null'
    - string
    type: array
- id: genome_resources__variation__clinvar
  secondaryFiles:
  - .tbi
  type:
    items: File
    type: array
- id: genome_resources__variation__esp
  secondaryFiles:
  - .tbi
  type:
    items: File
    type: array
- id: rgnames__rg
  type:
    items: string
    type: array
- id: metadata__batch
  type:
    items: string
    type: array
- id: rgnames__lane
  type:
    items: string
    type: array
- id: genome_resources__variation__lcr
  secondaryFiles:
  - .tbi
  type:
    items: File
    type: array
- id: config__algorithm__min_allele_fraction
  type:
    items: double
    type: array
- id: config__algorithm__nomap_split_targets
  type:
    items: long
    type: array
- id: reference__bwa__indexes
  secondaryFiles:
  - ^.ann
  - ^.pac
  - ^.sa
  - ^.bwt
  type:
    items: File
    type: array
- id: reference__snpeff__GRCh37_75
  type:
    items: File
    type: array
- id: vrn_file
  type:
    items:
    - 'null'
    - string
    type: array
- id: reference__twobit
  type:
    items: File
    type: array
- id: reference__genome_context
  secondaryFiles:
  - .tbi
  type:
    items:
      items: File
      type: array
    type: array
- id: config__algorithm__bam_clean
  type:
    items:
    - string
    - 'null'
    - boolean
    type: array
- id: config__algorithm__nomap_split_size
  type:
    items: long
    type: array
- id: reference__rtg
  type:
    items: File
    type: array
- id: config__algorithm__validate
  secondaryFiles:
  - .tbi
  type:
    items:
    - File
    - 'null'
    type: array
- id: genome_resources__variation__1000g
  secondaryFiles:
  - .tbi
  type:
    items: File
    type: array
- id: description
  type:
    items: string
    type: array
- id: config__algorithm__validate_regions
  type:
    items:
    - File
    - 'null'
    type: array
- id: config__algorithm__aligner
  type:
    items: string
    type: array
- id: rgnames__pl
  type:
    items: string
    type: array
- id: genome_build
  type:
    items: string
    type: array
- id: genome_resources__variation__exac
  secondaryFiles:
  - .tbi
  type:
    items: File
    type: array
- id: config__algorithm__recalibrate
  type:
    items:
    - string
    - 'null'
    - boolean
    type: array
- id: metadata__phenotype
  type:
    items: string
    type: array
- id: genome_resources__aliases__human
  type:
    items:
    - string
    - 'null'
    - boolean
    type: array
- id: config__algorithm__tools_off
  type:
    items:
      items: string
      type: array
    type: array
- id: genome_resources__variation__dbsnp
  secondaryFiles:
  - .tbi
  type:
    items: File
    type: array
- id: config__algorithm__mark_duplicates
  type:
    items:
    - string
    - 'null'
    - boolean
    type: array
- id: genome_resources__variation__polyx
  secondaryFiles:
  - .tbi
  type:
    items: File
    type: array
- id: reference__versions
  type:
    items: File
    type: array
- id: genome_resources__variation__encode_blacklist
  secondaryFiles:
  - .tbi
  type:
    items: File
    type: array
- id: genome_resources__variation__cosmic
  secondaryFiles:
  - .tbi
  type:
    items: File
    type: array
- id: config__algorithm__ensemble
  type:
    items: string
    type: array
- id: config__algorithm__qc
  type:
    items:
      items: string
      type: array
    type: array
- id: analysis
  type:
    items: string
    type: array
- id: rgnames__sample
  type:
    items: string
    type: array
- id: config__algorithm__tools_on
  type:
    items:
      items: string
      type: array
    type: array
- id: config__algorithm__effects
  type:
    items: string
    type: array
- id: config__algorithm__variant_regions
  type:
    items: File
    type: array
- id: config__algorithm__svvalidate
  type:
    items:
    - 'null'
    - string
    type: array
- id: genome_resources__aliases__ensembl
  type:
    items: string
    type: array
- id: config__algorithm__exclude_regions
  type:
    items:
    - 'null'
    - items: 'null'
      type: array
    type: array
- id: genome_resources__variation__train_indels
  secondaryFiles:
  - .tbi
  type:
    items: File
    type: array
- id: genome_resources__aliases__snpeff
  type:
    items: string
    type: array
- id: rgnames__pu
  type:
    items: string
    type: array

outputs:
  workflow_output_file:
    type: File
    outputSource: checker/output

steps:
  agha:
    run: ../wes_chr21_test-workflow-gcp/main-wes_chr21_test.cwl
    in:
      config__algorithm__align_split_size: config__algorithm__align_split_size
      files: files
      config__algorithm__trim_reads: config__algorithm__trim_reads
      reference__fasta__base: reference__fasta__base
      config__algorithm__vcfanno: config__algorithm__vcfanno
      config__algorithm__svprioritize: config__algorithm__svprioritize
      resources: resources
      config__algorithm__variantcaller: config__algorithm__variantcaller
      config__algorithm__adapters: config__algorithm__adapters
      config__algorithm__svcaller: config__algorithm__svcaller
      config__algorithm__coverage_interval: config__algorithm__coverage_interval
      genome_resources__rnaseq__gene_bed: genome_resources__rnaseq__gene_bed
      genome_resources__variation__train_hapmap: genome_resources__variation__train_hapmap
      rgnames__lb: rgnames__lb
      genome_resources__variation__clinvar: genome_resources__variation__clinvar
      genome_resources__variation__esp: genome_resources__variation__esp
      rgnames__rg: rgnames__rg
      metadata__batch: metadata__batch
      rgnames__lane: rgnames__lane
      genome_resources__variation__lcr: genome_resources__variation__lcr
      config__algorithm__min_allele_fraction: config__algorithm__min_allele_fraction
      config__algorithm__nomap_split_targets: config__algorithm__nomap_split_targets
      reference__bwa__indexes: reference__bwa__indexes
      reference__snpeff__GRCh37_75: reference__snpeff__GRCh37_75
      vrn_file: vrn_file
      reference__twobit: reference__twobit
      reference__genome_context: reference__genome_context
      config__algorithm__bam_clean: config__algorithm__bam_clean
      config__algorithm__nomap_split_size: config__algorithm__nomap_split_size
      reference__rtg: reference__rtg
      config__algorithm__validate: config__algorithm__validate
      genome_resources__variation__1000g: genome_resources__variation__1000g
      description: description
      config__algorithm__validate_regions: config__algorithm__validate_regions
      config__algorithm__aligner: config__algorithm__aligner
      rgnames__pl: rgnames__pl
      genome_build: genome_build
      genome_resources__variation__exac: genome_resources__variation__exac
      config__algorithm__recalibrate: config__algorithm__recalibrate
      metadata__phenotype: metadata__phenotype
      genome_resources__aliases__human: genome_resources__aliases__human
      config__algorithm__tools_off: config__algorithm__tools_off
      genome_resources__variation__dbsnp: genome_resources__variation__dbsnp
      config__algorithm__mark_duplicates: config__algorithm__mark_duplicates
      genome_resources__variation__polyx: genome_resources__variation__polyx
      reference__versions: reference__versions
      genome_resources__variation__encode_blacklist: genome_resources__variation__encode_blacklist
      genome_resources__variation__cosmic: genome_resources__variation__cosmic
      config__algorithm__ensemble: config__algorithm__ensemble
      config__algorithm__qc: config__algorithm__qc
      analysis: analysis
      rgnames__sample: rgnames__sample
      config__algorithm__tools_on: config__algorithm__tools_on
      config__algorithm__effects: config__algorithm__effects
      config__algorithm__variant_regions: config__algorithm__variant_regions
      config__algorithm__svvalidate: config__algorithm__svvalidate
      genome_resources__aliases__ensembl: genome_resources__aliases__ensembl
      config__algorithm__exclude_regions: config__algorithm__exclude_regions
      genome_resources__variation__train_indels: genome_resources__variation__train_indels
      genome_resources__aliases__snpeff: genome_resources__aliases__snpeff
      rgnames__pu: rgnames__pu
    out: [validate__grading_summary]
  checker:
    run: ../bcbio-validation-checker/Dockstore.cwl
    in:
      baseline: agha/validate__grading_summary
      comparison: expected_validation
    out: [output, log]
