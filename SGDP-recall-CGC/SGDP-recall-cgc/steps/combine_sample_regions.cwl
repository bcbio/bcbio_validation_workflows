arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
baseCommand:
- bcbio_nextgen.py
- runfn
- combine_sample_regions
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: DockerRequirement
  dockerImageId: quay.io/bcbio/bcbio-align
  dockerPull: quay.io/bcbio/bcbio-align
- class: ResourceRequirement
  coresMin: 1
  outdirMin: 1024
  ramMin: 3072
- class: SoftwareRequirement
  packages:
  - package: bedtools
    specs:
    - https://anaconda.org/bioconda/bedtools
  - package: htslib
    specs:
    - https://anaconda.org/bioconda/htslib
inputs:
- default: multi-combined
  id: sentinel_parallel
  inputBinding:
    itemSeparator: ;;
    position: 0
    prefix: sentinel_parallel=
    separate: false
  type: string
- default: config__algorithm__callable_regions,config__algorithm__non_callable_regions,config__algorithm__callable_count
  id: sentinel_outputs
  inputBinding:
    itemSeparator: ;;
    position: 1
    prefix: sentinel_outputs=
    separate: false
  type: string
- id: regions__callable
  type:
    inputBinding:
      itemSeparator: ;;
      position: 2
      prefix: regions__callable=
      separate: false
    items: File
    type: array
- id: regions__nblock
  type:
    inputBinding:
      itemSeparator: ;;
      position: 3
      prefix: regions__nblock=
      separate: false
    items: File
    type: array
- id: config__algorithm__nomap_split_size
  type:
    inputBinding:
      itemSeparator: ;;
      position: 4
      prefix: config__algorithm__nomap_split_size=
      separate: false
    items: long
    type: array
- id: config__algorithm__nomap_split_targets
  type:
    inputBinding:
      itemSeparator: ;;
      position: 5
      prefix: config__algorithm__nomap_split_targets=
      separate: false
    items: long
    type: array
- id: reference__fasta__base
  type:
    inputBinding:
      itemSeparator: ;;
      position: 6
      prefix: reference__fasta__base=
      separate: false
    items: File
    type: array
- id: description
  type:
    inputBinding:
      itemSeparator: ;;
      position: 7
      prefix: description=
      separate: false
    items: string
    type: array
outputs:
- id: config__algorithm__callable_regions
  type:
    items: File
    type: array
- id: config__algorithm__non_callable_regions
  type:
    items: File
    type: array
- id: config__algorithm__callable_count
  type:
    items: int
    type: array
