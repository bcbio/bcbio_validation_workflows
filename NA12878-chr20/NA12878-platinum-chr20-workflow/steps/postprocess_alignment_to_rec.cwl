arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
baseCommand:
- bcbio_nextgen.py
- runfn
- postprocess_alignment_to_rec
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
- default: postprocess_alignment_rec
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
- id: config__algorithm__coverage_interval
  type:
    inputBinding:
      itemSeparator: ;;
      position: 3
      prefix: config__algorithm__coverage_interval=
      separate: false
    items: 'null'
    type: array
- id: config__algorithm__variant_regions
  type:
    inputBinding:
      itemSeparator: ;;
      position: 4
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
      position: 5
      prefix: config__algorithm__variant_regions_merged=
      separate: false
    items:
    - File
    - 'null'
    type: array
- id: config__algorithm__variant_regions_orig
  type:
    inputBinding:
      itemSeparator: ;;
      position: 6
      prefix: config__algorithm__variant_regions_orig=
      separate: false
    items:
    - File
    - 'null'
    type: array
- id: config__algorithm__coverage
  type:
    inputBinding:
      itemSeparator: ;;
      position: 7
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
      position: 8
      prefix: config__algorithm__coverage_merged=
      separate: false
    items:
    - File
    - 'null'
    type: array
- id: config__algorithm__coverage_orig
  type:
    inputBinding:
      itemSeparator: ;;
      position: 9
      prefix: config__algorithm__coverage_orig=
      separate: false
    items:
    - File
    - 'null'
    type: array
- id: config__algorithm__seq2c_bed_ready
  type:
    inputBinding:
      itemSeparator: ;;
      position: 10
      prefix: config__algorithm__seq2c_bed_ready=
      separate: false
    items:
    - File
    - 'null'
    type: array
- id: config__algorithm__recalibrate
  type:
    inputBinding:
      itemSeparator: ;;
      position: 11
      prefix: config__algorithm__recalibrate=
      separate: false
    items: string
    type: array
- id: reference__fasta__base
  type:
    inputBinding:
      itemSeparator: ;;
      position: 12
      prefix: reference__fasta__base=
      separate: false
    items: File
    type: array
- id: description
  type:
    inputBinding:
      itemSeparator: ;;
      position: 13
      prefix: description=
      separate: false
    items: string
    type: array
outputs:
- id: postprocess_alignment_rec
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
          items: 'null'
          type: array
      - name: config__algorithm__recalibrate
        type:
          items: string
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
      - name: config__algorithm__variant_regions_orig
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
      - name: config__algorithm__coverage_orig
        type:
          items:
          - File
          - 'null'
          type: array
      - name: config__algorithm__seq2c_bed_ready
        type:
          items:
          - File
          - 'null'
          type: array
      name: postprocess_alignment_rec
      type: record
    type: array
