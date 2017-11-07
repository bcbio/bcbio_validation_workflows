arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
- sentinel_parallel=multi-combined
- sentinel_outputs=alignment_rec:description;resources;config__algorithm__align_split_size;reference__fasta__base;rgnames__lb;rgnames__rg;rgnames__lane;reference__bwa__indexes;files;config__algorithm__aligner;rgnames__pl;config__algorithm__mark_duplicates;rgnames__pu;rgnames__sample
- sentinel_inputs=files:var,config__algorithm__align_split_size:var,reference__fasta__base:var,rgnames__pl:var,rgnames__sample:var,rgnames__pu:var,rgnames__lane:var,rgnames__rg:var,rgnames__lb:var,reference__bwa__indexes:var,config__algorithm__aligner:var,config__algorithm__mark_duplicates:var,description:var,resources:var
baseCommand:
- bcbio_nextgen.py
- runfn
- alignment_to_rec
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: DockerRequirement
  dockerImageId: quay.io/bcbio/bcbio-vc
  dockerPull: quay.io/bcbio/bcbio-vc
- class: ResourceRequirement
  coresMin: 1
  outdirMin: 15012
  ramMin: 3072
  tmpdirMin: 13988
inputs:
- id: files
  secondaryFiles:
  - .bai
  type:
    items:
      items: File
      type: array
    type: array
- id: config__algorithm__align_split_size
  type:
    items:
    - 'null'
    - string
    type: array
- id: reference__fasta__base
  secondaryFiles:
  - .fai
  - ^.dict
  type:
    items: File
    type: array
- id: rgnames__pl
  type:
    items: string
    type: array
- id: rgnames__sample
  type:
    items: string
    type: array
- id: rgnames__pu
  type:
    items: string
    type: array
- id: rgnames__lane
  type:
    items: string
    type: array
- id: rgnames__rg
  type:
    items: string
    type: array
- id: rgnames__lb
  type:
    items:
    - 'null'
    - string
    type: array
- id: reference__bwa__indexes
  type:
    items: File
    type: array
- id: config__algorithm__aligner
  type:
    items: string
    type: array
- id: config__algorithm__mark_duplicates
  type:
    items:
    - string
    - 'null'
    - boolean
    type: array
- id: description
  type:
    items: string
    type: array
- id: resources
  type:
    items: string
    type: array
outputs:
- id: alignment_rec
  type:
    items:
      fields:
      - name: description
        type: string
      - name: resources
        type: string
      - name: config__algorithm__align_split_size
        type:
        - 'null'
        - string
      - name: reference__fasta__base
        type: File
      - name: rgnames__lb
        type:
        - 'null'
        - string
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
      - name: rgnames__pl
        type: string
      - name: config__algorithm__mark_duplicates
        type:
        - string
        - 'null'
        - boolean
      - name: rgnames__pu
        type: string
      - name: rgnames__sample
        type: string
      name: alignment_rec
      type: record
    type: array
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: $(JSON.stringify(inputs))
    entryname: cwl.inputs.json
