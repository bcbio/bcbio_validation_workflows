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
    items: 'null'
    type: array
- id: reference__fasta__base
  type:
    items: File
    type: array
- id: genome_resources__variation__lcr
  type:
    items: File
    type: array
- id: config__algorithm__variantcaller
  type:
    items:
      items: string
      type: array
    type: array
- id: config__algorithm__svcaller
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
    items: 'null'
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
- id: config__algorithm__ensemble__numpass
  type:
    items: long
    type: array
- id: genome_build
  type:
    items: string
    type: array
- id: reference__rtg
  type:
    items: File
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
- id: vrn_file
  type:
    items: 'null'
    type: array
- id: rgnames__pl
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
      items: 'null'
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
      items: 'null'
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
- id: metadata__sex
  type:
    items: string
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
- class: StepInputExpressionRequirement
- class: SubworkflowFeatureRequirement
- class: InlineJavascriptRequirement
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
  - id: description
    source: alignment_to_rec/alignment_rec
    valueFrom: $(self['description'])
  - id: config__algorithm__align_split_size
    source: alignment_to_rec/alignment_rec
    valueFrom: $(self['config__algorithm__align_split_size'])
  - id: reference__fasta__base
    source: alignment_to_rec/alignment_rec
    valueFrom: $(self['reference__fasta__base'])
  - id: rgnames__lb
    source: alignment_to_rec/alignment_rec
    valueFrom: $(self['rgnames__lb'])
  - id: rgnames__rg
    source: alignment_to_rec/alignment_rec
    valueFrom: $(self['rgnames__rg'])
  - id: rgnames__lane
    source: alignment_to_rec/alignment_rec
    valueFrom: $(self['rgnames__lane'])
  - id: reference__bwa__indexes
    source: alignment_to_rec/alignment_rec
    valueFrom: $(self['reference__bwa__indexes'])
  - id: files
    source: alignment_to_rec/alignment_rec
    valueFrom: $(self['files'])
  - id: config__algorithm__aligner
    source: alignment_to_rec/alignment_rec
    valueFrom: $(self['config__algorithm__aligner'])
  - id: config__algorithm__mark_duplicates
    source: alignment_to_rec/alignment_rec
    valueFrom: $(self['config__algorithm__mark_duplicates'])
  - id: rgnames__pu
    source: alignment_to_rec/alignment_rec
    valueFrom: $(self['rgnames__pu'])
  - id: rgnames__pl
    source: alignment_to_rec/alignment_rec
    valueFrom: $(self['rgnames__pl'])
  - id: rgnames__sample
    source: alignment_to_rec/alignment_rec
    valueFrom: $(self['rgnames__sample'])
  out:
  - id: align_bam
  - id: work_bam_plus__disc
  - id: work_bam_plus__sr
  - id: hla__fastq
  run: wf-alignment.cwl
  scatter:
  - description
  - config__algorithm__align_split_size
  - reference__fasta__base
  - rgnames__lb
  - rgnames__rg
  - rgnames__lane
  - reference__bwa__indexes
  - files
  - config__algorithm__aligner
  - config__algorithm__mark_duplicates
  - rgnames__pu
  - rgnames__pl
  - rgnames__sample
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
  - id: description
    source: prep_samples_to_rec/prep_samples_rec
    valueFrom: $(self['description'])
  - id: reference__fasta__base
    source: prep_samples_to_rec/prep_samples_rec
    valueFrom: $(self['reference__fasta__base'])
  - id: config__algorithm__variant_regions_toolinput
    source: prep_samples_to_rec/prep_samples_rec
    valueFrom: $(self['config__algorithm__variant_regions'])
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
  - description
  - reference__fasta__base
  - config__algorithm__variant_regions_toolinput
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
  - id: description
    source: postprocess_alignment_to_rec/postprocess_alignment_rec
    valueFrom: $(self['description'])
  - id: reference__fasta__base
    source: postprocess_alignment_to_rec/postprocess_alignment_rec
    valueFrom: $(self['reference__fasta__base'])
  - id: config__algorithm__coverage_interval_toolinput
    source: postprocess_alignment_to_rec/postprocess_alignment_rec
    valueFrom: $(self['config__algorithm__coverage_interval'])
  - id: config__algorithm__recalibrate
    source: postprocess_alignment_to_rec/postprocess_alignment_rec
    valueFrom: $(self['config__algorithm__recalibrate'])
  - id: config__algorithm__variant_regions_toolinput
    source: postprocess_alignment_to_rec/postprocess_alignment_rec
    valueFrom: $(self['config__algorithm__variant_regions'])
  - id: align_bam
    source: postprocess_alignment_to_rec/postprocess_alignment_rec
    valueFrom: $(self['align_bam'])
  - id: config__algorithm__variant_regions_merged_toolinput
    source: postprocess_alignment_to_rec/postprocess_alignment_rec
    valueFrom: $(self['config__algorithm__variant_regions_merged'])
  - id: config__algorithm__variant_regions_orig_toolinput
    source: postprocess_alignment_to_rec/postprocess_alignment_rec
    valueFrom: $(self['config__algorithm__variant_regions_orig'])
  - id: config__algorithm__coverage_toolinput
    source: postprocess_alignment_to_rec/postprocess_alignment_rec
    valueFrom: $(self['config__algorithm__coverage'])
  - id: config__algorithm__coverage_merged_toolinput
    source: postprocess_alignment_to_rec/postprocess_alignment_rec
    valueFrom: $(self['config__algorithm__coverage_merged'])
  - id: config__algorithm__coverage_orig_toolinput
    source: postprocess_alignment_to_rec/postprocess_alignment_rec
    valueFrom: $(self['config__algorithm__coverage_orig'])
  - id: config__algorithm__seq2c_bed_ready_toolinput
    source: postprocess_alignment_to_rec/postprocess_alignment_rec
    valueFrom: $(self['config__algorithm__seq2c_bed_ready'])
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
  - description
  - reference__fasta__base
  - config__algorithm__coverage_interval_toolinput
  - config__algorithm__recalibrate
  - config__algorithm__variant_regions_toolinput
  - align_bam
  - config__algorithm__variant_regions_merged_toolinput
  - config__algorithm__variant_regions_orig_toolinput
  - config__algorithm__coverage_toolinput
  - config__algorithm__coverage_merged_toolinput
  - config__algorithm__coverage_orig_toolinput
  - config__algorithm__seq2c_bed_ready_toolinput
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
  - id: regions__callable
    source: postprocess_alignment/regions__callable
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
  - id: description
    source: batch_for_variantcall/batch_rec
    valueFrom: $(self['description'])
  - id: config__algorithm__validate
    source: batch_for_variantcall/batch_rec
    valueFrom: $(self['config__algorithm__validate'])
  - id: reference__fasta__base
    source: batch_for_variantcall/batch_rec
    valueFrom: $(self['reference__fasta__base'])
  - id: config__algorithm__variantcaller
    source: batch_for_variantcall/batch_rec
    valueFrom: $(self['config__algorithm__variantcaller'])
  - id: config__algorithm__coverage_interval
    source: batch_for_variantcall/batch_rec
    valueFrom: $(self['config__algorithm__coverage_interval'])
  - id: metadata__batch
    source: batch_for_variantcall/batch_rec
    valueFrom: $(self['metadata__batch'])
  - id: config__algorithm__validate_regions
    source: batch_for_variantcall/batch_rec
    valueFrom: $(self['config__algorithm__validate_regions'])
  - id: genome_build
    source: batch_for_variantcall/batch_rec
    valueFrom: $(self['genome_build'])
  - id: reference__rtg
    source: batch_for_variantcall/batch_rec
    valueFrom: $(self['reference__rtg'])
  - id: metadata__phenotype
    source: batch_for_variantcall/batch_rec
    valueFrom: $(self['metadata__phenotype'])
  - id: config__algorithm__tools_off
    source: batch_for_variantcall/batch_rec
    valueFrom: $(self['config__algorithm__tools_off'])
  - id: genome_resources__variation__dbsnp
    source: batch_for_variantcall/batch_rec
    valueFrom: $(self['genome_resources__variation__dbsnp'])
  - id: genome_resources__variation__cosmic
    source: batch_for_variantcall/batch_rec
    valueFrom: $(self['genome_resources__variation__cosmic'])
  - id: reference__genome_context
    source: batch_for_variantcall/batch_rec
    valueFrom: $(self['reference__genome_context'])
  - id: analysis
    source: batch_for_variantcall/batch_rec
    valueFrom: $(self['analysis'])
  - id: config__algorithm__tools_on
    source: batch_for_variantcall/batch_rec
    valueFrom: $(self['config__algorithm__tools_on'])
  - id: config__algorithm__variant_regions
    source: batch_for_variantcall/batch_rec
    valueFrom: $(self['config__algorithm__variant_regions'])
  - id: align_bam
    source: batch_for_variantcall/batch_rec
    valueFrom: $(self['align_bam'])
  - id: regions__callable
    source: batch_for_variantcall/batch_rec
    valueFrom: $(self['regions__callable'])
  - id: config__algorithm__callable_regions
    source: batch_for_variantcall/batch_rec
    valueFrom: $(self['config__algorithm__callable_regions'])
  out:
  - id: vc_rec
  - id: validate__tp
  - id: validate__fp
  - id: validate__fn
  run: wf-variantcall.cwl
  scatter:
  - description
  - config__algorithm__validate
  - reference__fasta__base
  - config__algorithm__variantcaller
  - config__algorithm__coverage_interval
  - metadata__batch
  - config__algorithm__validate_regions
  - genome_build
  - reference__rtg
  - metadata__phenotype
  - config__algorithm__tools_off
  - genome_resources__variation__dbsnp
  - genome_resources__variation__cosmic
  - reference__genome_context
  - analysis
  - config__algorithm__tools_on
  - config__algorithm__variant_regions
  - align_bam
  - regions__callable
  - config__algorithm__callable_regions
  scatterMethod: dotproduct
- id: summarize_grading_vc
  in:
  - id: description
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['description']; }))
  - id: vrn_file
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['vrn_file']; }))
  - id: config__algorithm__validate
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['config__algorithm__validate']; }))
  - id: reference__fasta__base
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['reference__fasta__base']; }))
  - id: config__algorithm__variantcaller
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['config__algorithm__variantcaller'];
      }))
  - id: config__algorithm__coverage_interval
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['config__algorithm__coverage_interval'];
      }))
  - id: metadata__batch
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['metadata__batch']; }))
  - id: config__algorithm__validate_regions
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['config__algorithm__validate_regions'];
      }))
  - id: genome_build
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['genome_build']; }))
  - id: reference__rtg
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['reference__rtg']; }))
  - id: metadata__phenotype
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['metadata__phenotype']; }))
  - id: config__algorithm__tools_off
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['config__algorithm__tools_off'];
      }))
  - id: genome_resources__variation__dbsnp
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['genome_resources__variation__dbsnp'];
      }))
  - id: genome_resources__variation__cosmic
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['genome_resources__variation__cosmic'];
      }))
  - id: reference__genome_context
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['reference__genome_context']; }))
  - id: analysis
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['analysis']; }))
  - id: config__algorithm__tools_on
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['config__algorithm__tools_on']; }))
  - id: config__algorithm__variant_regions
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['config__algorithm__variant_regions'];
      }))
  - id: align_bam
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['align_bam']; }))
  - id: regions__callable
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['regions__callable']; }))
  - id: config__algorithm__callable_regions
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['config__algorithm__callable_regions'];
      }))
  - id: validate__summary
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['validate__summary']; }))
  - id: validate__tp
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['validate__tp']; }))
  - id: validate__fp
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['validate__fp']; }))
  - id: validate__fn
    source: variantcall/vc_rec
    valueFrom: $(self.map(function(x) { return x['validate__fn']; }))
  out:
  - id: validate__grading_summary
  - id: validate__grading_plots
  run: steps/summarize_grading_vc.cwl
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
  - id: description
    source: qc_to_rec/qc_rec
    valueFrom: $(self['description'])
  - id: reference__fasta__base
    source: qc_to_rec/qc_rec
    valueFrom: $(self['reference__fasta__base'])
  - id: config__algorithm__coverage_interval
    source: qc_to_rec/qc_rec
    valueFrom: $(self['config__algorithm__coverage_interval'])
  - id: genome_build
    source: qc_to_rec/qc_rec
    valueFrom: $(self['genome_build'])
  - id: config__algorithm__tools_off
    source: qc_to_rec/qc_rec
    valueFrom: $(self['config__algorithm__tools_off'])
  - id: config__algorithm__qc
    source: qc_to_rec/qc_rec
    valueFrom: $(self['config__algorithm__qc'])
  - id: analysis
    source: qc_to_rec/qc_rec
    valueFrom: $(self['analysis'])
  - id: config__algorithm__tools_on
    source: qc_to_rec/qc_rec
    valueFrom: $(self['config__algorithm__tools_on'])
  - id: config__algorithm__variant_regions
    source: qc_to_rec/qc_rec
    valueFrom: $(self['config__algorithm__variant_regions'])
  - id: align_bam
    source: qc_to_rec/qc_rec
    valueFrom: $(self['align_bam'])
  - id: config__algorithm__variant_regions_merged
    source: qc_to_rec/qc_rec
    valueFrom: $(self['config__algorithm__variant_regions_merged'])
  - id: config__algorithm__coverage
    source: qc_to_rec/qc_rec
    valueFrom: $(self['config__algorithm__coverage'])
  - id: config__algorithm__coverage_merged
    source: qc_to_rec/qc_rec
    valueFrom: $(self['config__algorithm__coverage_merged'])
  out:
  - id: summary__qc
  - id: summary__metrics
  run: steps/pipeline_summary.cwl
  scatter:
  - description
  - reference__fasta__base
  - config__algorithm__coverage_interval
  - genome_build
  - config__algorithm__tools_off
  - config__algorithm__qc
  - analysis
  - config__algorithm__tools_on
  - config__algorithm__variant_regions
  - align_bam
  - config__algorithm__variant_regions_merged
  - config__algorithm__coverage
  - config__algorithm__coverage_merged
  scatterMethod: dotproduct
- id: multiqc_summary
  in:
  - id: description
    source: qc_to_rec/qc_rec
    valueFrom: $(self.map(function(x) { return x['description']; }))
  - id: reference__fasta__base
    source: qc_to_rec/qc_rec
    valueFrom: $(self.map(function(x) { return x['reference__fasta__base']; }))
  - id: config__algorithm__coverage_interval
    source: qc_to_rec/qc_rec
    valueFrom: $(self.map(function(x) { return x['config__algorithm__coverage_interval'];
      }))
  - id: genome_build
    source: qc_to_rec/qc_rec
    valueFrom: $(self.map(function(x) { return x['genome_build']; }))
  - id: config__algorithm__tools_off
    source: qc_to_rec/qc_rec
    valueFrom: $(self.map(function(x) { return x['config__algorithm__tools_off'];
      }))
  - id: config__algorithm__qc
    source: qc_to_rec/qc_rec
    valueFrom: $(self.map(function(x) { return x['config__algorithm__qc']; }))
  - id: analysis
    source: qc_to_rec/qc_rec
    valueFrom: $(self.map(function(x) { return x['analysis']; }))
  - id: config__algorithm__tools_on
    source: qc_to_rec/qc_rec
    valueFrom: $(self.map(function(x) { return x['config__algorithm__tools_on']; }))
  - id: config__algorithm__variant_regions
    source: qc_to_rec/qc_rec
    valueFrom: $(self.map(function(x) { return x['config__algorithm__variant_regions'];
      }))
  - id: align_bam
    source: qc_to_rec/qc_rec
    valueFrom: $(self.map(function(x) { return x['align_bam']; }))
  - id: config__algorithm__variant_regions_merged
    source: qc_to_rec/qc_rec
    valueFrom: $(self.map(function(x) { return x['config__algorithm__variant_regions_merged'];
      }))
  - id: config__algorithm__coverage
    source: qc_to_rec/qc_rec
    valueFrom: $(self.map(function(x) { return x['config__algorithm__coverage']; }))
  - id: config__algorithm__coverage_merged
    source: qc_to_rec/qc_rec
    valueFrom: $(self.map(function(x) { return x['config__algorithm__coverage_merged'];
      }))
  - id: summary__qc
    source: pipeline_summary/summary__qc
  - id: summary__metrics
    source: pipeline_summary/summary__metrics
  out:
  - id: summary__multiqc
  run: steps/multiqc_summary.cwl
