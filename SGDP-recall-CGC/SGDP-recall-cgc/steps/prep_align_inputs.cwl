arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
baseCommand:
- bcbio_nextgen.py
- runfn
- prep_align_inputs
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: DockerRequirement
  dockerImageId: quay.io/bcbio/bcbio-align
  dockerPull: quay.io/bcbio/bcbio-align
- class: ResourceRequirement
  coresMin: 1
  outdirMin: 174610799362
  ramMin: 3072
  tmpdirMin: 174610798338
- class: SoftwareRequirement
  packages:
  - package: grabix
    specs:
    - https://anaconda.org/bioconda/grabix
  - package: htslib
    specs:
    - https://anaconda.org/bioconda/htslib
  - package: biobambam
    specs:
    - https://anaconda.org/bioconda/biobambam
inputs:
- default: single-split
  id: sentinel_parallel
  inputBinding:
    itemSeparator: ;;
    position: 0
    prefix: sentinel_parallel=
    separate: false
  type: string
- default: process_alignment_rec:files;config__algorithm__quality_format;align_split
  id: sentinel_outputs
  inputBinding:
    itemSeparator: ;;
    position: 1
    prefix: sentinel_outputs=
    separate: false
  type: string
- default: alignment_rec:record
  id: sentinel_inputs
  inputBinding:
    itemSeparator: ;;
    position: 2
    prefix: sentinel_inputs=
    separate: false
  type: string
- id: alignment_rec
  type:
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
outputs:
- id: process_alignment_rec
  type:
    items:
      fields:
      - name: files
        type:
          items: File
          type: array
      - name: config__algorithm__quality_format
        type: string
      - name: align_split
        type:
        - string
        - 'null'
      name: process_alignment_rec
      type: record
    type: array
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: $(JSON.stringify(inputs))
    entryname: cwl.inputs.json
