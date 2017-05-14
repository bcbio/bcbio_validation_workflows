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
- default: prep_samples_rec:description;reference__fasta__base;config__algorithm__variant_regions
  id: sentinel_outputs
  inputBinding:
    itemSeparator: ;;
    position: 1
    prefix: sentinel_outputs=
    separate: false
  type: string
- default: config__algorithm__variant_regions:var,reference__fasta__base:var,description:var
  id: sentinel_inputs
  inputBinding:
    itemSeparator: ;;
    position: 2
    prefix: sentinel_inputs=
    separate: false
  type: string
- id: config__algorithm__variant_regions
  type:
    items: 'null'
    type: array
- id: reference__fasta__base
  type:
    items: File
    type: array
- id: description
  type:
    items: string
    type: array
outputs:
- id: prep_samples_rec
  type:
    items:
      fields:
      - name: description
        type: string
      - name: reference__fasta__base
        type: File
      - name: config__algorithm__variant_regions
        type: 'null'
      name: prep_samples_rec
      type: record
    type: array
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: $(JSON.stringify(inputs))
    entryname: cwl.inputs.json
