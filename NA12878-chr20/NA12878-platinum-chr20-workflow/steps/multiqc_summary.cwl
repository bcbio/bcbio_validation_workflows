arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
- sentinel_parallel=multi-combined
- sentinel_outputs=summary__multiqc
- sentinel_inputs=qcout_rec:record
baseCommand:
- bcbio_nextgen.py
- runfn
- multiqc_summary
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: DockerRequirement
  dockerImageId: quay.io/bcbio/bcbio-vc
  dockerPull: quay.io/bcbio/bcbio-vc
- class: ResourceRequirement
  coresMin: 1
  outdirMin: 12023
  ramMin: 3072
  tmpdirMin: 10999
- class: SoftwareRequirement
  packages:
  - package: multiqc
    specs:
    - https://anaconda.org/bioconda/multiqc
  - package: multiqc-bcbio
    specs:
    - https://anaconda.org/bioconda/multiqc-bcbio
inputs:
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
      - name: resources
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
          items: string
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
      - name: depth__variant_regions__regions
        type: File
      - name: depth__variant_regions__dist
        type: File
      - name: depth__sv_regions__regions
        type:
        - File
        - 'null'
      - name: depth__sv_regions__dist
        type:
        - File
        - 'null'
      - name: depth__coverage__regions
        type:
        - File
        - 'null'
      - name: depth__coverage__dist
        type:
        - File
        - 'null'
      - name: depth__coverage__thresholds
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
