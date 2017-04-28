arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
baseCommand:
- bcbio_nextgen.py
- runfn
- alignment_to_rec
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
- default: alignment_rec
  id: sentinel_outputs
  inputBinding:
    itemSeparator: ;;
    position: 1
    prefix: sentinel_outputs=
    separate: false
  type: string
- id: files
  type:
    inputBinding:
      itemSeparator: ;;
      position: 2
      prefix: files=
      separate: false
    items:
      items: File
      type: array
    type: array
- id: config__algorithm__align_split_size
  type:
    inputBinding:
      itemSeparator: ;;
      position: 3
      prefix: config__algorithm__align_split_size=
      separate: false
    items: 'null'
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
- id: rgnames__pl
  type:
    inputBinding:
      itemSeparator: ;;
      position: 5
      prefix: rgnames__pl=
      separate: false
    items: string
    type: array
- id: rgnames__sample
  type:
    inputBinding:
      itemSeparator: ;;
      position: 6
      prefix: rgnames__sample=
      separate: false
    items: string
    type: array
- id: rgnames__pu
  type:
    inputBinding:
      itemSeparator: ;;
      position: 7
      prefix: rgnames__pu=
      separate: false
    items: string
    type: array
- id: rgnames__lane
  type:
    inputBinding:
      itemSeparator: ;;
      position: 8
      prefix: rgnames__lane=
      separate: false
    items: string
    type: array
- id: rgnames__rg
  type:
    inputBinding:
      itemSeparator: ;;
      position: 9
      prefix: rgnames__rg=
      separate: false
    items: string
    type: array
- id: rgnames__lb
  type:
    inputBinding:
      itemSeparator: ;;
      position: 10
      prefix: rgnames__lb=
      separate: false
    items: 'null'
    type: array
- id: reference__bwa__indexes
  type:
    inputBinding:
      itemSeparator: ;;
      position: 11
      prefix: reference__bwa__indexes=
      separate: false
    items: File
    type: array
- id: config__algorithm__aligner
  type:
    inputBinding:
      itemSeparator: ;;
      position: 12
      prefix: config__algorithm__aligner=
      separate: false
    items: string
    type: array
- id: config__algorithm__mark_duplicates
  type:
    inputBinding:
      itemSeparator: ;;
      position: 13
      prefix: config__algorithm__mark_duplicates=
      separate: false
    items: string
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
- id: alignment_rec
  type:
    items:
      fields:
      - name: description
        type: string
      - name: config__algorithm__align_split_size
        type: 'null'
      - name: reference__fasta__base
        type: File
      - name: rgnames__lb
        type: 'null'
      - name: rgnames__rg
        type: string
      - name: rgnames__lane
        type: string
      - name: reference__bwa__indexes
        type: File
      - name: files
        type:
          items: File
          type: array
      - name: config__algorithm__aligner
        type: string
      - name: config__algorithm__mark_duplicates
        type: string
      - name: rgnames__pu
        type: string
      - name: rgnames__pl
        type: string
      - name: rgnames__sample
        type: string
      name: alignment_rec
      type: record
    type: array
