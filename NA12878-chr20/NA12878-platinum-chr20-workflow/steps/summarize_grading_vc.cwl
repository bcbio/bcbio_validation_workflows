arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
baseCommand:
- bcbio_nextgen.py
- runfn
- summarize_grading_vc
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
- default: validate__grading_summary,validate__grading_plots
  id: sentinel_outputs
  inputBinding:
    itemSeparator: ;;
    position: 1
    prefix: sentinel_outputs=
    separate: false
  type: string
- default: vc_rec:record
  id: sentinel_inputs
  inputBinding:
    itemSeparator: ;;
    position: 2
    prefix: sentinel_inputs=
    separate: false
  type: string
- id: vc_rec
  type:
    items:
      items:
        fields:
        - name: validate__summary
          type:
          - File
          - 'null'
        - name: validate__tp
          type:
          - File
          - 'null'
        - name: validate__fp
          type:
          - File
          - 'null'
        - name: validate__fn
          type:
          - File
          - 'null'
        - name: description
          type: string
        - name: vrn_file
          type: File
        - name: config__algorithm__validate
          type: File
        - name: reference__fasta__base
          type: File
        - name: config__algorithm__variantcaller
          type: string
        - name: config__algorithm__coverage_interval
          type: string
        - name: metadata__batch
          type: 'null'
        - name: config__algorithm__validate_regions
          type: File
        - name: genome_build
          type: string
        - name: metadata__phenotype
          type: string
        - name: config__algorithm__tools_off
          type:
            items: string
            type: array
        - name: genome_resources__variation__dbsnp
          type: File
        - name: genome_resources__variation__cosmic
          type: 'null'
        - name: reference__genome_context
          type:
            items: File
            type: array
        - name: analysis
          type: string
        - name: config__algorithm__tools_on
          type:
            items: 'null'
            type: array
        - name: config__algorithm__variant_regions
          type: File
        - name: reference__rtg
          type: File
        - name: align_bam
          type: File
        - name: regions__callable
          type: File
        - name: config__algorithm__callable_regions
          type: File
        name: vc_rec
        type: record
      type: array
    type: array
outputs:
- id: validate__grading_summary
  type:
    items:
    - File
    - 'null'
    type: array
- id: validate__grading_plots
  type:
    items:
      items:
      - File
      - 'null'
      type: array
    type: array
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: $(JSON.stringify(inputs))
    entryname: cwl.inputs.json
