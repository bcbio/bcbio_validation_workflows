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
- default: regions__callable:var,regions__nblock:var,config__algorithm__nomap_split_size:var,config__algorithm__nomap_split_targets:var,reference__fasta__base:var,description:var
  id: sentinel_inputs
  inputBinding:
    itemSeparator: ;;
    position: 2
    prefix: sentinel_inputs=
    separate: false
  type: string
- id: regions__callable
  type:
    items: File
    type: array
- id: regions__nblock
  type:
    items: File
    type: array
- id: config__algorithm__nomap_split_size
  type:
    items: long
    type: array
- id: config__algorithm__nomap_split_targets
  type:
    items: long
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
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: $(JSON.stringify(inputs))
    entryname: cwl.inputs.json
