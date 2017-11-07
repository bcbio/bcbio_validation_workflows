arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
- sentinel_parallel=multi-combined
- sentinel_outputs=variants__calls,variants__gvcf,validate__grading_summary,validate__grading_plots
- sentinel_inputs=vc_rec:record
baseCommand:
- bcbio_nextgen.py
- runfn
- summarize_vc
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: DockerRequirement
  dockerImageId: quay.io/bcbio/bcbio-vc
  dockerPull: quay.io/bcbio/bcbio-vc
- class: ResourceRequirement
  coresMin: 1
  outdirMin: 22238
  ramMin: 3072
  tmpdirMin: 21214
inputs:
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
        - name: resources
          type: string
        - name: vrn_file
          type: File
        - name: config__algorithm__validate
          type: File
        - name: reference__fasta__base
          type: File
        - name: config__algorithm__variantcaller
          type: string
        - name: reference__snpeff__GRCh38_86
          type: File
        - name: config__algorithm__coverage_interval
          type: string
        - name: metadata__batch
          type:
          - 'null'
          - string
        - name: reference__twobit
          type: File
        - name: config__algorithm__validate_regions
          type: File
        - name: genome_build
          type: string
        - name: metadata__phenotype
          type: string
        - name: genome_resources__aliases__human
          type:
          - string
          - 'null'
          - boolean
        - name: config__algorithm__tools_off
          type:
            items: string
            type: array
        - name: genome_resources__variation__dbsnp
          type: File
        - name: genome_resources__variation__cosmic
          type:
          - 'null'
          - string
        - name: reference__genome_context
          type:
            items: File
            type: array
        - name: analysis
          type: string
        - name: config__algorithm__tools_on
          type:
            items: string
            type: array
        - name: config__algorithm__variant_regions
          type: File
        - name: genome_resources__aliases__ensembl
          type: string
        - name: reference__rtg
          type: File
        - name: genome_resources__aliases__snpeff
          type: string
        - name: align_bam
          type: File
        - name: regions__sample_callable
          type: File
        - name: config__algorithm__callable_regions
          type: File
        name: vc_rec
        type: record
      type: array
    type: array
outputs:
- id: variants__calls
  type:
    items:
      items:
      - File
      - 'null'
      type: array
    type: array
- id: variants__gvcf
  type:
    items:
    - 'null'
    - items:
      - File
      - 'null'
      type: array
    type: array
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
