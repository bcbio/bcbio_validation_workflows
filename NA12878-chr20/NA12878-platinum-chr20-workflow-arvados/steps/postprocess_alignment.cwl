arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
- sentinel_parallel=multi-parallel
- sentinel_outputs=config__algorithm__coverage_interval,config__algorithm__variant_regions,config__algorithm__variant_regions_merged,config__algorithm__variant_regions_orig,config__algorithm__coverage,config__algorithm__coverage_merged,config__algorithm__coverage_orig,config__algorithm__seq2c_bed_ready,regions__callable,regions__sample_callable,regions__nblock,regions__highdepth
- sentinel_inputs=postprocess_alignment_rec:record
baseCommand:
- bcbio_nextgen.py
- runfn
- postprocess_alignment
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: DockerRequirement
  dockerImageId: quay.io/bcbio/bcbio-align
  dockerPull: quay.io/bcbio/bcbio-align
- class: ResourceRequirement
  coresMin: 8
  outdirMin: 1024
  ramMin: 24576
- class: SoftwareRequirement
  packages:
  - package: sambamba
    specs:
    - https://anaconda.org/bioconda/sambamba
  - package: goleft
    specs:
    - https://anaconda.org/bioconda/goleft
  - package: bedtools
    specs:
    - https://anaconda.org/bioconda/bedtools
  - package: htslib
    specs:
    - https://anaconda.org/bioconda/htslib
inputs:
- id: postprocess_alignment_rec
  type:
    fields:
    - name: description
      type: string
    - name: reference__fasta__base
      type: File
    - name: config__algorithm__coverage_interval
      type: 'null'
    - name: config__algorithm__recalibrate
      type: string
    - name: config__algorithm__variant_regions
      type:
      - File
      - 'null'
    - name: align_bam
      type: File
    - name: config__algorithm__variant_regions_merged
      type:
      - File
      - 'null'
    - name: config__algorithm__variant_regions_orig
      type:
      - File
      - 'null'
    - name: config__algorithm__coverage
      type:
      - File
      - 'null'
    - name: config__algorithm__coverage_merged
      type:
      - File
      - 'null'
    - name: config__algorithm__coverage_orig
      type:
      - File
      - 'null'
    - name: config__algorithm__seq2c_bed_ready
      type:
      - File
      - 'null'
    name: postprocess_alignment_rec
    type: record
outputs:
- id: config__algorithm__coverage_interval
  type: string
- id: config__algorithm__variant_regions
  type: File
- id: config__algorithm__variant_regions_merged
  type: File
- id: config__algorithm__variant_regions_orig
  type: File
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
- id: regions__callable
  type: File
- id: regions__sample_callable
  type: File
- id: regions__nblock
  type: File
- id: regions__highdepth
  type:
  - File
  - 'null'
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: $(JSON.stringify(inputs))
    entryname: cwl.inputs.json
