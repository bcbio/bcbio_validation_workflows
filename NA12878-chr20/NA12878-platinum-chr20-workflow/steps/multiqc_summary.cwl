arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
baseCommand:
- bcbio_nextgen.py
- runfn
- multiqc_summary
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: DockerRequirement
  dockerImageId: quay.io/bcbio/bcbio-qc
  dockerPull: quay.io/bcbio/bcbio-qc
- class: ResourceRequirement
  coresMin: 1
  outdirMin: 1024
  ramMin: 3072
- class: SoftwareRequirement
  packages:
  - package: multiqc
    specs:
    - https://anaconda.org/bioconda/multiqc
  - package: multiqc-bcbio
    specs:
    - https://anaconda.org/bioconda/multiqc-bcbio
inputs:
- default: multi-combined
  id: sentinel_parallel
  inputBinding:
    itemSeparator: ;;
    position: 0
    prefix: sentinel_parallel=
    separate: false
  type: string
- default: summary__multiqc
  id: sentinel_outputs
  inputBinding:
    itemSeparator: ;;
    position: 1
    prefix: sentinel_outputs=
    separate: false
  type: string
- default: qcout_rec:record
  id: sentinel_inputs
  inputBinding:
    itemSeparator: ;;
    position: 2
    prefix: sentinel_inputs=
    separate: false
  type: string
- id: qcout_rec
  type:
    items:
      fields:
      - name: summary__qc
        type:
        - File
        - 'null'
      - name: summary__metrics
        type: string
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
      name: qcout_rec
      type: record
    type: array
outputs:
- id: summary__multiqc
  type:
    items:
    - File
    - 'null'
    type: array
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: $(JSON.stringify(inputs))
    entryname: cwl.inputs.json
