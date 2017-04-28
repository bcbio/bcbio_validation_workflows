class: Workflow
cwlVersion: v1.0
hints: []
inputs:
- id: description
  type:
    items: string
    type: array
- id: config__algorithm__validate
  type:
    items: 'null'
    type: array
- id: reference__fasta__base
  type:
    items: File
    type: array
- id: config__algorithm__variantcaller
  type:
    items: string
    type: array
- id: config__algorithm__coverage_interval
  type:
    items: string
    type: array
- id: metadata__batch
  type:
    items: 'null'
    type: array
- id: config__algorithm__validate_regions
  type:
    items: 'null'
    type: array
- id: genome_build
  type:
    items: string
    type: array
- id: reference__rtg
  type:
    items: File
    type: array
- id: metadata__phenotype
  type:
    items: string
    type: array
- id: config__algorithm__tools_off
  type:
    items:
      items: string
      type: array
    type: array
- id: genome_resources__variation__dbsnp
  type:
    items: File
    type: array
- id: genome_resources__variation__cosmic
  type:
    items: 'null'
    type: array
- id: reference__genome_context
  type:
    items:
      items: 'null'
      type: array
    type: array
- id: analysis
  type:
    items: string
    type: array
- id: config__algorithm__tools_on
  type:
    items:
      items: 'null'
      type: array
    type: array
- id: config__algorithm__variant_regions
  type:
    items:
    - File
    - 'null'
    type: array
- id: align_bam
  type:
    items: File
    type: array
- id: regions__callable
  type:
    items: File
    type: array
- id: config__algorithm__callable_regions
  type:
    items: File
    type: array
outputs:
- id: vc_rec
  outputSource: vc_output_record/vc_rec
  type:
    fields:
    - name: description
      type:
        items: string
        type: array
    - name: vrn_file
      type:
        items: File
        type: array
    - name: config__algorithm__validate
      type:
        items: 'null'
        type: array
    - name: reference__fasta__base
      type:
        items: File
        type: array
    - name: config__algorithm__variantcaller
      type:
        items: string
        type: array
    - name: config__algorithm__coverage_interval
      type:
        items: string
        type: array
    - name: metadata__batch
      type:
        items: 'null'
        type: array
    - name: config__algorithm__validate_regions
      type:
        items: 'null'
        type: array
    - name: genome_build
      type:
        items: string
        type: array
    - name: reference__rtg
      type:
        items: File
        type: array
    - name: metadata__phenotype
      type:
        items: string
        type: array
    - name: config__algorithm__tools_off
      type:
        items:
          items: string
          type: array
        type: array
    - name: genome_resources__variation__dbsnp
      type:
        items: File
        type: array
    - name: genome_resources__variation__cosmic
      type:
        items: 'null'
        type: array
    - name: reference__genome_context
      type:
        items:
          items: 'null'
          type: array
        type: array
    - name: analysis
      type:
        items: string
        type: array
    - name: config__algorithm__tools_on
      type:
        items:
          items: 'null'
          type: array
        type: array
    - name: config__algorithm__variant_regions
      type:
        items:
        - File
        - 'null'
        type: array
    - name: align_bam
      type:
        items: File
        type: array
    - name: regions__callable
      type:
        items: File
        type: array
    - name: config__algorithm__callable_regions
      type:
        items: File
        type: array
    - name: validate__summary
      type:
        items:
        - File
        - 'null'
        type: array
    - name: validate__tp
      type:
        items:
        - File
        - 'null'
        type: array
    - name: validate__fp
      type:
        items:
        - File
        - 'null'
        type: array
    - name: validate__fn
      type:
        items:
        - File
        - 'null'
        type: array
    name: vc_rec
    type: record
- id: validate__tp
  outputSource: compare_to_rm/validate__tp
  secondaryFiles:
  - .tbi
  type:
  - File
  - 'null'
- id: validate__fp
  outputSource: compare_to_rm/validate__fp
  secondaryFiles:
  - .tbi
  type:
  - File
  - 'null'
- id: validate__fn
  outputSource: compare_to_rm/validate__fn
  secondaryFiles:
  - .tbi
  type:
  - File
  - 'null'
requirements:
- class: EnvVarRequirement
  envDef:
  - envName: MPLCONFIGDIR
    envValue: .
- class: ScatterFeatureRequirement
- class: StepInputExpressionRequirement
- class: SubworkflowFeatureRequirement
- class: InlineJavascriptRequirement
steps:
- id: get_parallel_regions
  in:
  - id: description
    source: description
  - id: config__algorithm__validate
    source: config__algorithm__validate
  - id: reference__fasta__base
    source: reference__fasta__base
  - id: config__algorithm__variantcaller
    source: config__algorithm__variantcaller
  - id: config__algorithm__coverage_interval
    source: config__algorithm__coverage_interval
  - id: metadata__batch
    source: metadata__batch
  - id: config__algorithm__validate_regions
    source: config__algorithm__validate_regions
  - id: genome_build
    source: genome_build
  - id: reference__rtg
    source: reference__rtg
  - id: metadata__phenotype
    source: metadata__phenotype
  - id: config__algorithm__tools_off
    source: config__algorithm__tools_off
  - id: genome_resources__variation__dbsnp
    source: genome_resources__variation__dbsnp
  - id: genome_resources__variation__cosmic
    source: genome_resources__variation__cosmic
  - id: reference__genome_context
    source: reference__genome_context
  - id: analysis
    source: analysis
  - id: config__algorithm__tools_on
    source: config__algorithm__tools_on
  - id: config__algorithm__variant_regions
    source: config__algorithm__variant_regions
  - id: align_bam
    source: align_bam
  - id: regions__callable
    source: regions__callable
  - id: config__algorithm__callable_regions
    source: config__algorithm__callable_regions
  out:
  - id: region
  run: steps/get_parallel_regions.cwl
- id: variantcall_batch_region
  in:
  - id: description
    source: description
  - id: config__algorithm__validate
    source: config__algorithm__validate
  - id: reference__fasta__base
    source: reference__fasta__base
  - id: config__algorithm__variantcaller
    source: config__algorithm__variantcaller
  - id: config__algorithm__coverage_interval
    source: config__algorithm__coverage_interval
  - id: metadata__batch
    source: metadata__batch
  - id: config__algorithm__validate_regions
    source: config__algorithm__validate_regions
  - id: genome_build
    source: genome_build
  - id: reference__rtg
    source: reference__rtg
  - id: metadata__phenotype
    source: metadata__phenotype
  - id: config__algorithm__tools_off
    source: config__algorithm__tools_off
  - id: genome_resources__variation__dbsnp
    source: genome_resources__variation__dbsnp
  - id: genome_resources__variation__cosmic
    source: genome_resources__variation__cosmic
  - id: reference__genome_context
    source: reference__genome_context
  - id: analysis
    source: analysis
  - id: config__algorithm__tools_on
    source: config__algorithm__tools_on
  - id: config__algorithm__variant_regions
    source: config__algorithm__variant_regions
  - id: align_bam
    source: align_bam
  - id: regions__callable
    source: regions__callable
  - id: config__algorithm__callable_regions
    source: config__algorithm__callable_regions
  - id: region_toolinput
    source: get_parallel_regions/region
  out:
  - id: vrn_file_region
  - id: region
  run: steps/variantcall_batch_region.cwl
  scatter:
  - region_toolinput
  scatterMethod: dotproduct
- id: concat_batch_variantcalls
  in:
  - id: description
    source: description
  - id: config__algorithm__validate
    source: config__algorithm__validate
  - id: reference__fasta__base
    source: reference__fasta__base
  - id: config__algorithm__variantcaller
    source: config__algorithm__variantcaller
  - id: config__algorithm__coverage_interval
    source: config__algorithm__coverage_interval
  - id: metadata__batch
    source: metadata__batch
  - id: config__algorithm__validate_regions
    source: config__algorithm__validate_regions
  - id: genome_build
    source: genome_build
  - id: reference__rtg
    source: reference__rtg
  - id: metadata__phenotype
    source: metadata__phenotype
  - id: config__algorithm__tools_off
    source: config__algorithm__tools_off
  - id: genome_resources__variation__dbsnp
    source: genome_resources__variation__dbsnp
  - id: genome_resources__variation__cosmic
    source: genome_resources__variation__cosmic
  - id: reference__genome_context
    source: reference__genome_context
  - id: analysis
    source: analysis
  - id: config__algorithm__tools_on
    source: config__algorithm__tools_on
  - id: config__algorithm__variant_regions
    source: config__algorithm__variant_regions
  - id: align_bam
    source: align_bam
  - id: regions__callable
    source: regions__callable
  - id: config__algorithm__callable_regions
    source: config__algorithm__callable_regions
  - id: region
    source: variantcall_batch_region/region
  - id: vrn_file_region
    source: variantcall_batch_region/vrn_file_region
  out:
  - id: vrn_file
  run: steps/concat_batch_variantcalls.cwl
- id: postprocess_variants
  in:
  - id: description
    source: description
  - id: config__algorithm__validate
    source: config__algorithm__validate
  - id: reference__fasta__base
    source: reference__fasta__base
  - id: config__algorithm__variantcaller
    source: config__algorithm__variantcaller
  - id: config__algorithm__coverage_interval
    source: config__algorithm__coverage_interval
  - id: metadata__batch
    source: metadata__batch
  - id: config__algorithm__validate_regions
    source: config__algorithm__validate_regions
  - id: genome_build
    source: genome_build
  - id: reference__rtg
    source: reference__rtg
  - id: metadata__phenotype
    source: metadata__phenotype
  - id: config__algorithm__tools_off
    source: config__algorithm__tools_off
  - id: genome_resources__variation__dbsnp
    source: genome_resources__variation__dbsnp
  - id: genome_resources__variation__cosmic
    source: genome_resources__variation__cosmic
  - id: reference__genome_context
    source: reference__genome_context
  - id: analysis
    source: analysis
  - id: config__algorithm__tools_on
    source: config__algorithm__tools_on
  - id: config__algorithm__variant_regions
    source: config__algorithm__variant_regions
  - id: align_bam
    source: align_bam
  - id: regions__callable
    source: regions__callable
  - id: config__algorithm__callable_regions
    source: config__algorithm__callable_regions
  - id: vrn_file_toolinput
    source: concat_batch_variantcalls/vrn_file
  out:
  - id: vrn_file
  run: steps/postprocess_variants.cwl
- id: compare_to_rm
  in:
  - id: description
    source: description
  - id: config__algorithm__validate
    source: config__algorithm__validate
  - id: reference__fasta__base
    source: reference__fasta__base
  - id: config__algorithm__variantcaller
    source: config__algorithm__variantcaller
  - id: config__algorithm__coverage_interval
    source: config__algorithm__coverage_interval
  - id: metadata__batch
    source: metadata__batch
  - id: config__algorithm__validate_regions
    source: config__algorithm__validate_regions
  - id: genome_build
    source: genome_build
  - id: reference__rtg
    source: reference__rtg
  - id: metadata__phenotype
    source: metadata__phenotype
  - id: config__algorithm__tools_off
    source: config__algorithm__tools_off
  - id: genome_resources__variation__dbsnp
    source: genome_resources__variation__dbsnp
  - id: genome_resources__variation__cosmic
    source: genome_resources__variation__cosmic
  - id: reference__genome_context
    source: reference__genome_context
  - id: analysis
    source: analysis
  - id: config__algorithm__tools_on
    source: config__algorithm__tools_on
  - id: config__algorithm__variant_regions
    source: config__algorithm__variant_regions
  - id: align_bam
    source: align_bam
  - id: regions__callable
    source: regions__callable
  - id: config__algorithm__callable_regions
    source: config__algorithm__callable_regions
  - id: vrn_file
    source: postprocess_variants/vrn_file
  out:
  - id: validate__summary
  - id: validate__tp
  - id: validate__fp
  - id: validate__fn
  run: steps/compare_to_rm.cwl
- id: vc_output_record
  in:
  - id: description
    source: description
  - id: config__algorithm__validate
    source: config__algorithm__validate
  - id: reference__fasta__base
    source: reference__fasta__base
  - id: config__algorithm__variantcaller
    source: config__algorithm__variantcaller
  - id: config__algorithm__coverage_interval
    source: config__algorithm__coverage_interval
  - id: metadata__batch
    source: metadata__batch
  - id: config__algorithm__validate_regions
    source: config__algorithm__validate_regions
  - id: genome_build
    source: genome_build
  - id: reference__rtg
    source: reference__rtg
  - id: metadata__phenotype
    source: metadata__phenotype
  - id: config__algorithm__tools_off
    source: config__algorithm__tools_off
  - id: genome_resources__variation__dbsnp
    source: genome_resources__variation__dbsnp
  - id: genome_resources__variation__cosmic
    source: genome_resources__variation__cosmic
  - id: reference__genome_context
    source: reference__genome_context
  - id: analysis
    source: analysis
  - id: config__algorithm__tools_on
    source: config__algorithm__tools_on
  - id: config__algorithm__variant_regions
    source: config__algorithm__variant_regions
  - id: align_bam
    source: align_bam
  - id: regions__callable
    source: regions__callable
  - id: config__algorithm__callable_regions
    source: config__algorithm__callable_regions
  - id: vrn_file
    source: postprocess_variants/vrn_file
  - id: validate__summary
    source: compare_to_rm/validate__summary
  - id: validate__tp
    source: compare_to_rm/validate__tp
  - id: validate__fp
    source: compare_to_rm/validate__fp
  - id: validate__fn
    source: compare_to_rm/validate__fn
  out:
  - id: vc_rec
  run: steps/vc_output_record.cwl
