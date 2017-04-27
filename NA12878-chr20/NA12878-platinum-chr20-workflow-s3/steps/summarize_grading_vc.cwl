arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
baseCommand:
- bcbio_nextgen.py
- runfn
- summarize_grading_vc
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: DockerRequirement
  dockerImageId: quay.io/bcbio/bcbio-base
  dockerPull: quay.io/bcbio/bcbio-base
- class: ResourceRequirement
  coresMin: 1
  outdirMin: 1024
  ramMin: 3072
inputs:
- default: multi-combined
  id: sentinel_parallel
  inputBinding:
    itemSeparator: ;;
    position: 0
    prefix: sentinel_parallel=
    separate: false
  type: string
- default: validate__grading_summary,validate__grading_plots
  id: sentinel_outputs
  inputBinding:
    itemSeparator: ;;
    position: 1
    prefix: sentinel_outputs=
    separate: false
  type: string
- id: description
  type:
    inputBinding:
      itemSeparator: ;;
      position: 2
      prefix: description=
      separate: false
    items:
      items: string
      type: array
    type: array
- id: vrn_file
  type:
    inputBinding:
      itemSeparator: ;;
      position: 3
      prefix: vrn_file=
      separate: false
    items:
      items: File
      type: array
    type: array
- id: config__algorithm__validate
  type:
    inputBinding:
      itemSeparator: ;;
      position: 4
      prefix: config__algorithm__validate=
      separate: false
    items:
      items: File
      type: array
    type: array
- id: reference__fasta__base
  type:
    inputBinding:
      itemSeparator: ;;
      position: 5
      prefix: reference__fasta__base=
      separate: false
    items:
      items: File
      type: array
    type: array
- id: config__algorithm__variantcaller
  type:
    inputBinding:
      itemSeparator: ;;
      position: 6
      prefix: config__algorithm__variantcaller=
      separate: false
    items:
      items: string
      type: array
    type: array
- id: config__algorithm__coverage_interval
  type:
    inputBinding:
      itemSeparator: ;;
      position: 7
      prefix: config__algorithm__coverage_interval=
      separate: false
    items:
      items: string
      type: array
    type: array
- id: metadata__batch
  type:
    inputBinding:
      itemSeparator: ;;
      position: 8
      prefix: metadata__batch=
      separate: false
    items:
      items: 'null'
      type: array
    type: array
- id: config__algorithm__validate_regions
  type:
    inputBinding:
      itemSeparator: ;;
      position: 9
      prefix: config__algorithm__validate_regions=
      separate: false
    items:
      items: File
      type: array
    type: array
- id: genome_build
  type:
    inputBinding:
      itemSeparator: ;;
      position: 10
      prefix: genome_build=
      separate: false
    items:
      items: string
      type: array
    type: array
- id: metadata__phenotype
  type:
    inputBinding:
      itemSeparator: ;;
      position: 11
      prefix: metadata__phenotype=
      separate: false
    items:
      items: string
      type: array
    type: array
- id: config__algorithm__tools_off
  type:
    inputBinding:
      itemSeparator: ;;
      position: 12
      prefix: config__algorithm__tools_off=
      separate: false
    items:
      items:
        items: string
        type: array
      type: array
    type: array
- id: genome_resources__variation__dbsnp
  type:
    inputBinding:
      itemSeparator: ;;
      position: 13
      prefix: genome_resources__variation__dbsnp=
      separate: false
    items:
      items: File
      type: array
    type: array
- id: genome_resources__variation__cosmic
  type:
    inputBinding:
      itemSeparator: ;;
      position: 14
      prefix: genome_resources__variation__cosmic=
      separate: false
    items:
      items: 'null'
      type: array
    type: array
- id: reference__genome_context
  type:
    inputBinding:
      itemSeparator: ;;
      position: 15
      prefix: reference__genome_context=
      separate: false
    items:
      items:
        items: File
        type: array
      type: array
    type: array
- id: analysis
  type:
    inputBinding:
      itemSeparator: ;;
      position: 16
      prefix: analysis=
      separate: false
    items:
      items: string
      type: array
    type: array
- id: config__algorithm__tools_on
  type:
    inputBinding:
      itemSeparator: ;;
      position: 17
      prefix: config__algorithm__tools_on=
      separate: false
    items:
      items:
        items: 'null'
        type: array
      type: array
    type: array
- id: config__algorithm__variant_regions
  type:
    inputBinding:
      itemSeparator: ;;
      position: 18
      prefix: config__algorithm__variant_regions=
      separate: false
    items:
      items:
      - File
      - 'null'
      type: array
    type: array
- id: reference__rtg
  type:
    inputBinding:
      itemSeparator: ;;
      position: 19
      prefix: reference__rtg=
      separate: false
    items:
      items: File
      type: array
    type: array
- id: align_bam
  type:
    inputBinding:
      itemSeparator: ;;
      position: 20
      prefix: align_bam=
      separate: false
    items:
      items: File
      type: array
    type: array
- id: regions__callable
  type:
    inputBinding:
      itemSeparator: ;;
      position: 21
      prefix: regions__callable=
      separate: false
    items:
      items: File
      type: array
    type: array
- id: config__algorithm__callable_regions
  type:
    inputBinding:
      itemSeparator: ;;
      position: 22
      prefix: config__algorithm__callable_regions=
      separate: false
    items:
      items: File
      type: array
    type: array
- id: validate__summary
  type:
    inputBinding:
      itemSeparator: ;;
      position: 23
      prefix: validate__summary=
      separate: false
    items:
      items:
      - File
      - 'null'
      type: array
    type: array
- id: validate__tp
  type:
    inputBinding:
      itemSeparator: ;;
      position: 24
      prefix: validate__tp=
      separate: false
    items:
      items:
      - File
      - 'null'
      type: array
    type: array
- id: validate__fp
  type:
    inputBinding:
      itemSeparator: ;;
      position: 25
      prefix: validate__fp=
      separate: false
    items:
      items:
      - File
      - 'null'
      type: array
    type: array
- id: validate__fn
  type:
    inputBinding:
      itemSeparator: ;;
      position: 26
      prefix: validate__fn=
      separate: false
    items:
      items:
      - File
      - 'null'
      type: array
    type: array
outputs:
- id: validate__grading_summary
  type:
    items:
    - File
    - 'null'
    type: array
- id: validate__grading_plots
  type:
    items:
      items:
      - File
      - 'null'
      type: array
    type: array
