arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
baseCommand:
- bcbio_nextgen.py
- runfn
- qc_to_rec
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
- default: qc_rec:description;reference__fasta__base;config__algorithm__coverage_interval;genome_build;config__algorithm__tools_off;config__algorithm__qc;analysis;config__algorithm__tools_on;config__algorithm__variant_regions;align_bam;config__algorithm__variant_regions_merged;config__algorithm__coverage;config__algorithm__coverage_merged
  id: sentinel_outputs
  inputBinding:
    itemSeparator: ;;
    position: 1
    prefix: sentinel_outputs=
    separate: false
  type: string
- default: align_bam:var,analysis:var,reference__fasta__base:var,genome_build:var,config__algorithm__coverage_interval:var,config__algorithm__tools_on:var,config__algorithm__tools_off:var,config__algorithm__qc:var,config__algorithm__variant_regions:var,config__algorithm__variant_regions_merged:var,config__algorithm__coverage:var,config__algorithm__coverage_merged:var,description:var
  id: sentinel_inputs
  inputBinding:
    itemSeparator: ;;
    position: 2
    prefix: sentinel_inputs=
    separate: false
  type: string
- id: align_bam
  secondaryFiles:
  - .bai
  type:
    items: File
    type: array
- id: analysis
  type:
    items: string
    type: array
- id: reference__fasta__base
  type:
    items: File
    type: array
- id: genome_build
  type:
    items: string
    type: array
- id: config__algorithm__coverage_interval
  type:
    items: string
    type: array
- id: config__algorithm__tools_on
  type:
    items:
      items: 'null'
      type: array
    type: array
- id: config__algorithm__tools_off
  type:
    items:
      items: string
      type: array
    type: array
- id: config__algorithm__qc
  type:
    items:
      items: string
      type: array
    type: array
- id: config__algorithm__variant_regions
  type:
    items: File
    type: array
- id: config__algorithm__variant_regions_merged
  type:
    items: File
    type: array
- id: config__algorithm__coverage
  type:
    items:
    - File
    - 'null'
    type: array
- id: config__algorithm__coverage_merged
  type:
    items:
    - File
    - 'null'
    type: array
- id: description
  type:
    items: string
    type: array
outputs:
- id: qc_rec
  type:
    items:
      fields:
      - name: description
        type: string
      - name: reference__fasta__base
        type: File
      - name: config__algorithm__coverage_interval
        type: string
      - name: genome_build
        type: string
      - name: config__algorithm__tools_off
        type:
          items: string
          type: array
      - name: config__algorithm__qc
        type:
          items: string
          type: array
      - name: analysis
        type: string
      - name: config__algorithm__tools_on
        type:
          items: 'null'
          type: array
      - name: config__algorithm__variant_regions
        type: File
      - name: align_bam
        type: File
      - name: config__algorithm__variant_regions_merged
        type: File
      - name: config__algorithm__coverage
        type:
        - File
        - 'null'
      - name: config__algorithm__coverage_merged
        type:
        - File
        - 'null'
      name: qc_rec
      type: record
    type: array
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: $(JSON.stringify(inputs))
    entryname: cwl.inputs.json
