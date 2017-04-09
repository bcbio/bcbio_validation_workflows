arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
baseCommand:
- bcbio_nextgen.py
- runfn
- multiqc_summary
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
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
- default: summary__multiqc
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
- id: reference__fasta__base
  type:
    inputBinding:
      itemSeparator: ;;
      position: 3
      prefix: reference__fasta__base=
      separate: false
    items:
      items: File
      type: array
    type: array
- id: config__algorithm__coverage_interval
  type:
    inputBinding:
      itemSeparator: ;;
      position: 4
      prefix: config__algorithm__coverage_interval=
      separate: false
    items:
      items: string
      type: array
    type: array
- id: genome_build
  type:
    inputBinding:
      itemSeparator: ;;
      position: 5
      prefix: genome_build=
      separate: false
    items:
      items: string
      type: array
    type: array
- id: config__algorithm__tools_off
  type:
    inputBinding:
      itemSeparator: ;;
      position: 6
      prefix: config__algorithm__tools_off=
      separate: false
    items:
      items:
        items: string
        type: array
      type: array
    type: array
- id: config__algorithm__qc
  type:
    inputBinding:
      itemSeparator: ;;
      position: 7
      prefix: config__algorithm__qc=
      separate: false
    items:
      items:
        items: string
        type: array
      type: array
    type: array
- id: analysis
  type:
    inputBinding:
      itemSeparator: ;;
      position: 8
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
      position: 9
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
      position: 10
      prefix: config__algorithm__variant_regions=
      separate: false
    items:
      items:
      - File
      - 'null'
      type: array
    type: array
- id: align_bam
  type:
    inputBinding:
      itemSeparator: ;;
      position: 11
      prefix: align_bam=
      separate: false
    items:
      items: File
      type: array
    type: array
- id: config__algorithm__variant_regions_merged
  type:
    inputBinding:
      itemSeparator: ;;
      position: 12
      prefix: config__algorithm__variant_regions_merged=
      separate: false
    items:
      items:
      - File
      - 'null'
      type: array
    type: array
- id: config__algorithm__coverage
  type:
    inputBinding:
      itemSeparator: ;;
      position: 13
      prefix: config__algorithm__coverage=
      separate: false
    items:
      items:
      - File
      - 'null'
      type: array
    type: array
- id: config__algorithm__coverage_merged
  type:
    inputBinding:
      itemSeparator: ;;
      position: 14
      prefix: config__algorithm__coverage_merged=
      separate: false
    items:
      items:
      - File
      - 'null'
      type: array
    type: array
- id: summary__qc
  type:
    inputBinding:
      itemSeparator: ;;
      position: 15
      prefix: summary__qc=
      separate: false
    items:
    - File
    - 'null'
    type: array
- id: summary__metrics
  type:
    inputBinding:
      itemSeparator: ;;
      position: 16
      prefix: summary__metrics=
      separate: false
    items: string
    type: array
outputs:
- id: summary__multiqc
  type:
    items:
    - File
    - 'null'
    type: array
