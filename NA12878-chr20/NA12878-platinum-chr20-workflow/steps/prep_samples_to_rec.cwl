arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
baseCommand:
- bcbio_nextgen.py
- runfn
- prep_samples_to_rec
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
- default: prep_samples_rec
  id: sentinel_outputs
  inputBinding:
    itemSeparator: ;;
    position: 1
    prefix: sentinel_outputs=
    separate: false
  type: string
- id: config__algorithm__variant_regions
  type:
    inputBinding:
      itemSeparator: ;;
      position: 2
      prefix: config__algorithm__variant_regions=
      separate: false
    items: 'null'
    type: array
- id: reference__fasta__base
  type:
    inputBinding:
      itemSeparator: ;;
      position: 3
      prefix: reference__fasta__base=
      separate: false
    items: File
    type: array
- id: description
  type:
    inputBinding:
      itemSeparator: ;;
      position: 4
      prefix: description=
      separate: false
    items: string
    type: array
outputs:
- id: prep_samples_rec
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
      - name: config__algorithm__variant_regions
        type:
          items: 'null'
          type: array
      name: prep_samples_rec
      type: record
    type: array
