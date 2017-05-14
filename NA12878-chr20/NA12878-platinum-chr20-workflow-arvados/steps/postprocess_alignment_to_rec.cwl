arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
baseCommand:
- bcbio_nextgen.py
- runfn
- postprocess_alignment_to_rec
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
- default: postprocess_alignment_rec:description;reference__fasta__base;config__algorithm__coverage_interval;config__algorithm__recalibrate;config__algorithm__variant_regions;align_bam;config__algorithm__variant_regions_merged;config__algorithm__variant_regions_orig;config__algorithm__coverage;config__algorithm__coverage_merged;config__algorithm__coverage_orig;config__algorithm__seq2c_bed_ready
  id: sentinel_outputs
  inputBinding:
    itemSeparator: ;;
    position: 1
    prefix: sentinel_outputs=
    separate: false
  type: string
- default: align_bam:var,config__algorithm__coverage_interval:var,config__algorithm__variant_regions:var,config__algorithm__variant_regions_merged:var,config__algorithm__variant_regions_orig:var,config__algorithm__coverage:var,config__algorithm__coverage_merged:var,config__algorithm__coverage_orig:var,config__algorithm__seq2c_bed_ready:var,config__algorithm__recalibrate:var,reference__fasta__base:var,description:var
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
- id: config__algorithm__coverage_interval
  type:
    items: 'null'
    type: array
- id: config__algorithm__variant_regions
  type:
    items:
    - File
    - 'null'
    type: array
- id: config__algorithm__variant_regions_merged
  type:
    items:
    - File
    - 'null'
    type: array
- id: config__algorithm__variant_regions_orig
  type:
    items:
    - File
    - 'null'
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
- id: config__algorithm__coverage_orig
  type:
    items:
    - File
    - 'null'
    type: array
- id: config__algorithm__seq2c_bed_ready
  type:
    items:
    - File
    - 'null'
    type: array
- id: config__algorithm__recalibrate
  type:
    items: string
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
- id: postprocess_alignment_rec
  type:
    items:
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
    type: array
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: $(JSON.stringify(inputs))
    entryname: cwl.inputs.json
