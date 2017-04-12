arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
baseCommand:
- bcbio_nextgen.py
- runfn
- qc_to_rec
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: ResourceRequirement
  coresMin: 1
  outdirMin: 1024
  ramMin: 3072
inputs:
- default: multi-batch
  id: sentinel_parallel
  inputBinding:
    itemSeparator: ;;
    position: 0
    prefix: sentinel_parallel=
    separate: false
  type: string
- default: qc_rec
  id: sentinel_outputs
  inputBinding:
    itemSeparator: ;;
    position: 1
    prefix: sentinel_outputs=
    separate: false
  type: string
- id: align_bam
  secondaryFiles:
  - .bai
  type:
    inputBinding:
      itemSeparator: ;;
      position: 2
      prefix: align_bam=
      separate: false
    items: File
    type: array
- id: analysis
  type:
    inputBinding:
      itemSeparator: ;;
      position: 3
      prefix: analysis=
      separate: false
    items: string
    type: array
- id: reference__fasta__base
  type:
    inputBinding:
      itemSeparator: ;;
      position: 4
      prefix: reference__fasta__base=
      separate: false
    items: File
    type: array
- id: genome_build
  type:
    inputBinding:
      itemSeparator: ;;
      position: 5
      prefix: genome_build=
      separate: false
    items: string
    type: array
- id: config__algorithm__coverage_interval
  type:
    inputBinding:
      itemSeparator: ;;
      position: 6
      prefix: config__algorithm__coverage_interval=
      separate: false
    items: string
    type: array
- id: config__algorithm__tools_on
  type:
    inputBinding:
      itemSeparator: ;;
      position: 7
      prefix: config__algorithm__tools_on=
      separate: false
    items:
      items: 'null'
      type: array
    type: array
- id: config__algorithm__tools_off
  type:
    inputBinding:
      itemSeparator: ;;
      position: 8
      prefix: config__algorithm__tools_off=
      separate: false
    items:
      items: string
      type: array
    type: array
- id: config__algorithm__qc
  type:
    inputBinding:
      itemSeparator: ;;
      position: 9
      prefix: config__algorithm__qc=
      separate: false
    items:
      items: string
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
    - File
    - 'null'
    type: array
- id: config__algorithm__variant_regions_merged
  type:
    inputBinding:
      itemSeparator: ;;
      position: 11
      prefix: config__algorithm__variant_regions_merged=
      separate: false
    items:
    - File
    - 'null'
    type: array
- id: config__algorithm__coverage
  type:
    inputBinding:
      itemSeparator: ;;
      position: 12
      prefix: config__algorithm__coverage=
      separate: false
    items:
    - File
    - 'null'
    type: array
- id: config__algorithm__coverage_merged
  type:
    inputBinding:
      itemSeparator: ;;
      position: 13
      prefix: config__algorithm__coverage_merged=
      separate: false
    items:
    - File
    - 'null'
    type: array
- id: description
  type:
    inputBinding:
      itemSeparator: ;;
      position: 14
      prefix: description=
      separate: false
    items: string
    type: array
outputs:
- id: qc_rec
  type:
    items:
      fields:
      - name: description
        type:
          items: string
          type: array
      - name: reference__fasta__base
        type:
          items: File
          type: array
      - name: config__algorithm__coverage_interval
        type:
          items: string
          type: array
      - name: genome_build
        type:
          items: string
          type: array
      - name: config__algorithm__tools_off
        type:
          items:
            items: string
            type: array
          type: array
      - name: config__algorithm__qc
        type:
          items:
            items: string
            type: array
          type: array
      - name: analysis
        type:
          items: string
          type: array
      - name: config__algorithm__tools_on
        type:
          items:
            items: 'null'
            type: array
          type: array
      - name: config__algorithm__variant_regions
        type:
          items:
          - File
          - 'null'
          type: array
      - name: align_bam
        type:
          items: File
          type: array
      - name: config__algorithm__variant_regions_merged
        type:
          items:
          - File
          - 'null'
          type: array
      - name: config__algorithm__coverage
        type:
          items:
          - File
          - 'null'
          type: array
      - name: config__algorithm__coverage_merged
        type:
          items:
          - File
          - 'null'
          type: array
      name: qc_rec
      type: record
    type: array
