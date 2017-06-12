class: Workflow
cwlVersion: v1.0
hints: []
inputs:
- id: config__algorithm__align_split_size
  type:
    items: 'null'
    type: array
- id: config__algorithm__validate
  type:
    items: File
    type: array
- id: reference__fasta__base
  type:
    items: File
    type: array
- id: genome_resources__variation__lcr
  type:
    items: File
    type: array
- id: reference__snpeff
  type:
    items: File
    type: array
- id: config__algorithm__variantcaller
  type:
    items:
      items: string
      type: array
    type: array
- id: genome_resources__rnaseq__transcripts_mask
  type:
    items: File
    type: array
- id: genome_resources__variation__train_1000g
  type:
    items: File
    type: array
- id: config__algorithm__coverage_interval
  type:
    items: 'null'
    type: array
- id: genome_resources__variation__qsignature
  type:
    items: File
    type: array
- id: genome_resources__variation__train_hapmap
  type:
    items: File
    type: array
- id: rgnames__lb
  type:
    items: 'null'
    type: array
- id: rgnames__rg
  type:
    items: string
    type: array
- id: config__algorithm__realign
  type:
    items: string
    type: array
- id: metadata__batch
  type:
    items: 'null'
    type: array
- id: rgnames__lane
  type:
    items: string
    type: array
- id: config__algorithm__nomap_split_targets
  type:
    items: long
    type: array
- id: genome_resources__variation__sv_repeat
  type:
    items: File
    type: array
- id: reference__bwa__indexes
  type:
    items: File
    type: array
- id: config__algorithm__nomap_split_size
  type:
    items: long
    type: array
- id: files
  type:
    items:
      items: File
      type: array
    type: array
- id: genome_resources__rnaseq__dexseq
  type:
    items: File
    type: array
- id: description
  type:
    items: string
    type: array
- id: config__algorithm__validate_regions
  type:
    items: File
    type: array
- id: genome_resources__rnaseq__transcriptome_index__tophat
  type:
    items: string
    type: array
- id: config__algorithm__aligner
  type:
    items: string
    type: array
- id: genome_resources__variation__train_omni
  type:
    items: File
    type: array
- id: rgnames__pl
  type:
    items: string
    type: array
- id: genome_build
  type:
    items: string
    type: array
- id: vrn_file
  type:
    items: 'null'
    type: array
- id: config__algorithm__recalibrate
  type:
    items: string
    type: array
- id: metadata__phenotype
  type:
    items: string
    type: array
- id: genome_resources__rnaseq__transcripts
  type:
    items: File
    type: array
- id: genome_resources__aliases__human
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
- id: config__algorithm__mark_duplicates
  type:
    items: string
    type: array
- id: rgnames__pu
  type:
    items: string
    type: array
- id: reference__viral
  type:
    items:
      items: 'null'
      type: array
    type: array
- id: genome_resources__version
  type:
    items: long
    type: array
- id: genome_resources__variation__cosmic
  type:
    items: 'null'
    type: array
- id: genome_resources__rnaseq__refflat
  type:
    items: File
    type: array
- id: reference__genome_context
  type:
    items:
      items: File
      type: array
    type: array
- id: config__algorithm__qc
  type:
    items:
      items: string
      type: array
    type: array
- id: analysis
  type:
    items: string
    type: array
- id: rgnames__sample
  type:
    items: string
    type: array
- id: config__algorithm__tools_on
  type:
    items:
      items: string
      type: array
    type: array
- id: config__algorithm__effects
  type:
    items: string
    type: array
- id: config__algorithm__variant_regions
  type:
    items: 'null'
    type: array
- id: genome_resources__aliases__ensembl
  type:
    items: string
    type: array
- id: reference__rtg
  type:
    items: File
    type: array
- id: genome_resources__variation__train_indels
  type:
    items: File
    type: array
- id: genome_resources__aliases__snpeff
  type:
    items: string
    type: array
- id: config__algorithm__archive
  type:
    items:
      items: 'null'
      type: array
    type: array
outputs:
- id: align_bam
  outputSource: alignment/align_bam
  type:
    items: File
    type: array
- id: summary__multiqc
  outputSource: multiqc_summary/summary__multiqc
  type:
    items:
    - File
    - 'null'
    type: array
- id: validate__grading_summary
  outputSource: summarize_grading_vc/validate__grading_summary
  type:
    items:
    - File
    - 'null'
    type: array
requirements:
- class: EnvVarRequirement
  envDef:
  - envName: MPLCONFIGDIR
    envValue: .
- class: ScatterFeatureRequirement
- class: SubworkflowFeatureRequirement
steps:
- id: alignment_to_rec
  in:
  - id: files
    source: files
  - id: config__algorithm__align_split_size
    source: config__algorithm__align_split_size
  - id: reference__fasta__base
    source: reference__fasta__base
  - id: rgnames__pl
    source: rgnames__pl
  - id: rgnames__sample
    source: rgnames__sample
  - id: rgnames__pu
    source: rgnames__pu
  - id: rgnames__lane
    source: rgnames__lane
  - id: rgnames__rg
    source: rgnames__rg
  - id: rgnames__lb
    source: rgnames__lb
  - id: reference__bwa__indexes
    source: reference__bwa__indexes
  - id: config__algorithm__aligner
    source: config__algorithm__aligner
  - id: config__algorithm__mark_duplicates
    source: config__algorithm__mark_duplicates
  - id: description
    source: description
  out:
  - id: alignment_rec
  run: steps/alignment_to_rec.cwl
- id: alignment
  in:
  - id: alignment_rec
    source: alignment_to_rec/alignment_rec
  out:
  - id: align_bam
  - id: work_bam_plus__disc
  - id: work_bam_plus__sr
  - id: hla__fastq
  run: wf-alignment.cwl
  scatter:
  - alignment_rec
  scatterMethod: dotproduct
- id: prep_samples_to_rec
  in:
  - id: config__algorithm__variant_regions
    source: config__algorithm__variant_regions
  - id: reference__fasta__base
    source: reference__fasta__base
  - id: description
    source: description
  out:
  - id: prep_samples_rec
  run: steps/prep_samples_to_rec.cwl
- id: prep_samples
  in:
  - id: prep_samples_rec
    source: prep_samples_to_rec/prep_samples_rec
  out:
  - id: config__algorithm__variant_regions
  - id: config__algorithm__variant_regions_merged
  - id: config__algorithm__variant_regions_orig
  - id: config__algorithm__coverage
  - id: config__algorithm__coverage_merged
  - id: config__algorithm__coverage_orig
  - id: config__algorithm__seq2c_bed_ready
  run: steps/prep_samples.cwl
  scatter:
  - prep_samples_rec
  scatterMethod: dotproduct
- id: postprocess_alignment_to_rec
  in:
  - id: align_bam
    source: alignment/align_bam
  - id: config__algorithm__coverage_interval
    source: config__algorithm__coverage_interval
  - id: config__algorithm__variant_regions
    source: prep_samples/config__algorithm__variant_regions
  - id: config__algorithm__variant_regions_merged
    source: prep_samples/config__algorithm__variant_regions_merged
  - id: config__algorithm__variant_regions_orig
    source: prep_samples/config__algorithm__variant_regions_orig
  - id: config__algorithm__coverage
    source: prep_samples/config__algorithm__coverage
  - id: config__algorithm__coverage_merged
    source: prep_samples/config__algorithm__coverage_merged
  - id: config__algorithm__coverage_orig
    source: prep_samples/config__algorithm__coverage_orig
  - id: config__algorithm__seq2c_bed_ready
    source: prep_samples/config__algorithm__seq2c_bed_ready
  - id: config__algorithm__recalibrate
    source: config__algorithm__recalibrate
  - id: reference__fasta__base
    source: reference__fasta__base
  - id: description
    source: description
  out:
  - id: postprocess_alignment_rec
  run: steps/postprocess_alignment_to_rec.cwl
- id: postprocess_alignment
  in:
  - id: postprocess_alignment_rec
    source: postprocess_alignment_to_rec/postprocess_alignment_rec
  out:
  - id: config__algorithm__coverage_interval
  - id: config__algorithm__variant_regions
  - id: config__algorithm__variant_regions_merged
  - id: config__algorithm__variant_regions_orig
  - id: config__algorithm__coverage
  - id: config__algorithm__coverage_merged
  - id: config__algorithm__coverage_orig
  - id: config__algorithm__seq2c_bed_ready
  - id: regions__callable
  - id: regions__sample_callable
  - id: regions__nblock
  - id: regions__highdepth
  run: steps/postprocess_alignment.cwl
  scatter:
  - postprocess_alignment_rec
  scatterMethod: dotproduct
- id: combine_sample_regions
  in:
  - id: regions__callable
    source: postprocess_alignment/regions__callable
  - id: regions__nblock
    source: postprocess_alignment/regions__nblock
  - id: config__algorithm__nomap_split_size
    source: config__algorithm__nomap_split_size
  - id: config__algorithm__nomap_split_targets
    source: config__algorithm__nomap_split_targets
  - id: reference__fasta__base
    source: reference__fasta__base
  - id: description
    source: description
  out:
  - id: config__algorithm__callable_regions
  - id: config__algorithm__non_callable_regions
  - id: config__algorithm__callable_count
  run: steps/combine_sample_regions.cwl
- id: qc_to_rec
  in:
  - id: align_bam
    source: alignment/align_bam
  - id: analysis
    source: analysis
  - id: reference__fasta__base
    source: reference__fasta__base
  - id: genome_build
    source: genome_build
  - id: config__algorithm__coverage_interval
    source: postprocess_alignment/config__algorithm__coverage_interval
  - id: config__algorithm__tools_on
    source: config__algorithm__tools_on
  - id: config__algorithm__tools_off
    source: config__algorithm__tools_off
  - id: config__algorithm__qc
    source: config__algorithm__qc
  - id: config__algorithm__variant_regions
    source: postprocess_alignment/config__algorithm__variant_regions
  - id: config__algorithm__variant_regions_merged
    source: postprocess_alignment/config__algorithm__variant_regions_merged
  - id: config__algorithm__coverage
    source: postprocess_alignment/config__algorithm__coverage
  - id: config__algorithm__coverage_merged
    source: postprocess_alignment/config__algorithm__coverage_merged
  - id: description
    source: description
  out:
  - id: qc_rec
  run: steps/qc_to_rec.cwl
- id: pipeline_summary
  in:
  - id: qc_rec
    source: qc_to_rec/qc_rec
  out:
  - id: qcout_rec
  run: steps/pipeline_summary.cwl
  scatter:
  - qc_rec
  scatterMethod: dotproduct
- id: multiqc_summary
  in:
  - id: qcout_rec
    source: pipeline_summary/qcout_rec
  out:
  - id: summary__multiqc
  run: steps/multiqc_summary.cwl
- id: batch_for_variantcall
  in:
  - id: analysis
    source: analysis
  - id: genome_build
    source: genome_build
  - id: align_bam
    source: alignment/align_bam
  - id: config__algorithm__callable_regions
    source: combine_sample_regions/config__algorithm__callable_regions
  - id: metadata__batch
    source: metadata__batch
  - id: metadata__phenotype
    source: metadata__phenotype
  - id: regions__sample_callable
    source: postprocess_alignment/regions__sample_callable
  - id: config__algorithm__variantcaller
    source: config__algorithm__variantcaller
  - id: config__algorithm__coverage_interval
    source: postprocess_alignment/config__algorithm__coverage_interval
  - id: config__algorithm__variant_regions
    source: postprocess_alignment/config__algorithm__variant_regions
  - id: config__algorithm__validate
    source: config__algorithm__validate
  - id: config__algorithm__validate_regions
    source: config__algorithm__validate_regions
  - id: config__algorithm__tools_on
    source: config__algorithm__tools_on
  - id: config__algorithm__tools_off
    source: config__algorithm__tools_off
  - id: reference__fasta__base
    source: reference__fasta__base
  - id: reference__rtg
    source: reference__rtg
  - id: reference__genome_context
    source: reference__genome_context
  - id: genome_resources__variation__cosmic
    source: genome_resources__variation__cosmic
  - id: genome_resources__variation__dbsnp
    source: genome_resources__variation__dbsnp
  - id: description
    source: description
  out:
  - id: batch_rec
  run: steps/batch_for_variantcall.cwl
- id: variantcall
  in:
  - id: batch_rec
    source: batch_for_variantcall/batch_rec
  out:
  - id: vc_rec
  run: wf-variantcall.cwl
  scatter:
  - batch_rec
  scatterMethod: dotproduct
- id: summarize_grading_vc
  in:
  - id: vc_rec
    source: variantcall/vc_rec
  out:
  - id: validate__grading_summary
  - id: validate__grading_plots
  run: steps/summarize_grading_vc.cwl
