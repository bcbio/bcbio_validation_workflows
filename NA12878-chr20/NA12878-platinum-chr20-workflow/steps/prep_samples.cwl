arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
baseCommand:
- bcbio_nextgen.py
- runfn
- prep_samples
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: ResourceRequirement
  coresMin: 8
  outdirMin: 1024
  ramMin: 16384
- class: SoftwareRequirement
  packages:
  - package: htslib
    specs:
    - https://anaconda.org/bioconda/htslib
  - package: pbgzip
    specs:
    - https://anaconda.org/bioconda/pbgzip
  - package: bedtools
    specs:
    - https://anaconda.org/bioconda/bedtools
inputs:
- default: multi-parallel
  id: sentinel_parallel
  inputBinding:
    itemSeparator: ;;
    position: 0
    prefix: sentinel_parallel=
    separate: false
  type: string
- default: config__algorithm__variant_regions,config__algorithm__variant_regions_merged,config__algorithm__variant_regions_orig,config__algorithm__coverage,config__algorithm__coverage_merged,config__algorithm__coverage_orig,config__algorithm__seq2c_bed_ready
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
  type:
    items: string
    type: array
- id: reference__fasta__base
  inputBinding:
    itemSeparator: ;;
    position: 3
    prefix: reference__fasta__base=
    separate: false
  type:
    items: File
    type: array
- id: config__algorithm__variant_regions
  inputBinding:
    itemSeparator: ;;
    position: 4
    prefix: config__algorithm__variant_regions=
    separate: false
  type:
    items: 'null'
    type: array
outputs:
- id: config__algorithm__variant_regions
  type:
  - File
  - 'null'
- id: config__algorithm__variant_regions_merged
  type:
  - File
  - 'null'
- id: config__algorithm__variant_regions_orig
  type:
  - File
  - 'null'
- id: config__algorithm__coverage
  type:
  - File
  - 'null'
- id: config__algorithm__coverage_merged
  type:
  - File
  - 'null'
- id: config__algorithm__coverage_orig
  type:
  - File
  - 'null'
- id: config__algorithm__seq2c_bed_ready
  type:
  - File
  - 'null'
