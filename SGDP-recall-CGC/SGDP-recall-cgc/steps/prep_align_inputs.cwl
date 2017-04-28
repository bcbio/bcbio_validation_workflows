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
- default: process_alignment_rec
  id: sentinel_outputs
  inputBinding:
    itemSeparator: ;;
    position: 1
    prefix: sentinel_outputs=
    separate: false
  type: string
- id: description
  inputBinding:
    itemSeparator: ;;
    position: 2
    prefix: description=
    separate: false
  type: string
- id: config__algorithm__align_split_size
  inputBinding:
    itemSeparator: ;;
    position: 3
    prefix: config__algorithm__align_split_size=
    separate: false
  type: 'null'
- id: reference__fasta__base
  inputBinding:
    itemSeparator: ;;
    position: 4
    prefix: reference__fasta__base=
    separate: false
  type: File
- id: rgnames__lb
  inputBinding:
    itemSeparator: ;;
    position: 5
    prefix: rgnames__lb=
    separate: false
  type: 'null'
- id: rgnames__rg
  inputBinding:
    itemSeparator: ;;
    position: 6
    prefix: rgnames__rg=
    separate: false
  type: string
- id: rgnames__lane
  inputBinding:
    itemSeparator: ;;
    position: 7
    prefix: rgnames__lane=
    separate: false
  type: string
- id: reference__bwa__indexes
  inputBinding:
    itemSeparator: ;;
    position: 8
    prefix: reference__bwa__indexes=
    separate: false
  type: File
- id: files
  inputBinding:
    itemSeparator: ;;
    position: 9
    prefix: files=
    separate: false
  type:
    items: File
    type: array
- id: config__algorithm__aligner
  inputBinding:
    itemSeparator: ;;
    position: 10
    prefix: config__algorithm__aligner=
    separate: false
  type: string
- id: config__algorithm__mark_duplicates
  inputBinding:
    itemSeparator: ;;
    position: 11
    prefix: config__algorithm__mark_duplicates=
    separate: false
  type: string
- id: rgnames__pu
  inputBinding:
    itemSeparator: ;;
    position: 12
    prefix: rgnames__pu=
    separate: false
  type: string
- id: rgnames__pl
  inputBinding:
    itemSeparator: ;;
    position: 13
    prefix: rgnames__pl=
    separate: false
  type: string
- id: rgnames__sample
  inputBinding:
    itemSeparator: ;;
    position: 14
    prefix: rgnames__sample=
    separate: false
  type: string
outputs:
- id: process_alignment_rec
  type:
    items:
      fields:
      - name: config__algorithm__quality_format
        type: string
      - name: align_split
        type:
        - string
        - 'null'
      - name: files
        type:
          items: File
          type: array
      name: process_alignment_rec
      type: record
    type: array
