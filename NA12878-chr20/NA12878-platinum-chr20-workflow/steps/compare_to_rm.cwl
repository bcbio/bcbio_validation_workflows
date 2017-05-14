arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
baseCommand:
- bcbio_nextgen.py
- runfn
- compare_to_rm
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: DockerRequirement
  dockerImageId: quay.io/bcbio/bcbio-vc
  dockerPull: quay.io/bcbio/bcbio-vc
- class: ResourceRequirement
  coresMin: 8
  outdirMin: 1024
  ramMin: 24576
- class: SoftwareRequirement
  packages:
  - package: bcftools
    specs:
    - https://anaconda.org/bioconda/bcftools
  - package: bedtools
    specs:
    - https://anaconda.org/bioconda/bedtools
  - package: pythonpy
    specs:
    - https://anaconda.org/bioconda/pythonpy
  - package: gvcf-regions
    specs:
    - https://anaconda.org/bioconda/gvcf-regions
  - package: htslib
    specs:
    - https://anaconda.org/bioconda/htslib
  - package: rtg-tools
    specs:
    - https://anaconda.org/bioconda/rtg-tools
  - package: vcfanno
    specs:
    - https://anaconda.org/bioconda/vcfanno
inputs:
- default: batch-single
  id: sentinel_parallel
  inputBinding:
    itemSeparator: ;;
    position: 0
    prefix: sentinel_parallel=
    separate: false
  type: string
- default: vc_rec:validate__summary;validate__tp;validate__fp;validate__fn;description;vrn_file;config__algorithm__validate;reference__fasta__base;config__algorithm__variantcaller;config__algorithm__coverage_interval;metadata__batch;config__algorithm__validate_regions;genome_build;metadata__phenotype;config__algorithm__tools_off;genome_resources__variation__dbsnp;genome_resources__variation__cosmic;reference__genome_context;analysis;config__algorithm__tools_on;config__algorithm__variant_regions;reference__rtg;align_bam;regions__callable;config__algorithm__callable_regions
  id: sentinel_outputs
  inputBinding:
    itemSeparator: ;;
    position: 1
    prefix: sentinel_outputs=
    separate: false
  type: string
- default: batch_rec:record,vrn_file:var
  id: sentinel_inputs
  inputBinding:
    itemSeparator: ;;
    position: 2
    prefix: sentinel_inputs=
    separate: false
  type: string
- id: batch_rec
  type:
    items:
      fields:
      - name: description
        type: string
      - name: config__algorithm__validate
        type: File
      - name: reference__fasta__base
        type: File
      - name: config__algorithm__variantcaller
        type: string
      - name: config__algorithm__coverage_interval
        type: string
      - name: metadata__batch
        type: 'null'
      - name: config__algorithm__validate_regions
        type: File
      - name: genome_build
        type: string
      - name: metadata__phenotype
        type: string
      - name: config__algorithm__tools_off
        type:
          items: string
          type: array
      - name: genome_resources__variation__dbsnp
        type: File
      - name: genome_resources__variation__cosmic
        type: 'null'
      - name: reference__genome_context
        type:
          items: File
          type: array
      - name: analysis
        type: string
      - name: config__algorithm__tools_on
        type:
          items: 'null'
          type: array
      - name: config__algorithm__variant_regions
        type: File
      - name: reference__rtg
        type: File
      - name: align_bam
        type: File
      - name: regions__callable
        type: File
      - name: config__algorithm__callable_regions
        type: File
      name: batch_rec
      type: record
    type: array
- id: vrn_file
  secondaryFiles:
  - .tbi
  type: File
outputs:
- id: vc_rec
  type:
    items:
      fields:
      - name: validate__summary
        type:
        - File
        - 'null'
      - name: validate__tp
        type:
        - File
        - 'null'
      - name: validate__fp
        type:
        - File
        - 'null'
      - name: validate__fn
        type:
        - File
        - 'null'
      - name: description
        type: string
      - name: vrn_file
        type: File
      - name: config__algorithm__validate
        type: File
      - name: reference__fasta__base
        type: File
      - name: config__algorithm__variantcaller
        type: string
      - name: config__algorithm__coverage_interval
        type: string
      - name: metadata__batch
        type: 'null'
      - name: config__algorithm__validate_regions
        type: File
      - name: genome_build
        type: string
      - name: metadata__phenotype
        type: string
      - name: config__algorithm__tools_off
        type:
          items: string
          type: array
      - name: genome_resources__variation__dbsnp
        type: File
      - name: genome_resources__variation__cosmic
        type: 'null'
      - name: reference__genome_context
        type:
          items: File
          type: array
      - name: analysis
        type: string
      - name: config__algorithm__tools_on
        type:
          items: 'null'
          type: array
      - name: config__algorithm__variant_regions
        type: File
      - name: reference__rtg
        type: File
      - name: align_bam
        type: File
      - name: regions__callable
        type: File
      - name: config__algorithm__callable_regions
        type: File
      name: vc_rec
      type: record
    type: array
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: $(JSON.stringify(inputs))
    entryname: cwl.inputs.json
