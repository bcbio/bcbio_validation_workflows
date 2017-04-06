
import "variantcall.wdl" as variantcall
import "alignment.wdl" as alignment

workflow main_NA12878_platinum_chr20 {
    Array[String] config__algorithm__align_split_size
    Array[File] config__algorithm__validate
    Array[File] reference__fasta__base
    Array[File] genome_resources__variation__lcr
    Array[File] reference__snpeff
    Array[Array[String]] config__algorithm__variantcaller
    Array[File] genome_resources__rnaseq__transcripts_mask
    Array[File] genome_resources__variation__train_1000g
    Array[String] config__algorithm__coverage_interval
    Array[File] genome_resources__variation__qsignature
    Array[File] genome_resources__variation__train_hapmap
    Array[String] rgnames__lb
    Array[String] rgnames__rg
    Array[String] config__algorithm__realign
    Array[String] metadata__batch
    Array[String] rgnames__lane
    Array[Float] config__algorithm__nomap_split_targets
    Array[File] genome_resources__variation__sv_repeat
    Array[File] reference__bwa__indexes
    Array[Float] config__algorithm__nomap_split_size
    Array[Array[File]] files
    Array[File] genome_resources__rnaseq__dexseq
    Array[String] description
    Array[File] config__algorithm__validate_regions
    Array[String] genome_resources__rnaseq__transcriptome_index__tophat
    Array[String] config__algorithm__aligner
    Array[File] genome_resources__variation__train_omni
    Array[String] rgnames__pl
    Array[String] genome_build
    Array[String] vrn_file
    Array[String] config__algorithm__recalibrate
    Array[String] metadata__phenotype
    Array[File] genome_resources__rnaseq__transcripts
    Array[String] genome_resources__aliases__human
    Array[Array[String]] config__algorithm__tools_off
    Array[File] genome_resources__variation__dbsnp
    Array[String] config__algorithm__mark_duplicates
    Array[String] rgnames__pu
    Array[Array[String]] reference__viral
    Array[Float] genome_resources__version
    Array[String] genome_resources__variation__cosmic
    Array[File] genome_resources__rnaseq__refflat
    Array[Array[File]] reference__genome_context
    Array[Array[String]] config__algorithm__qc
    Array[String] analysis
    Array[String] rgnames__sample
    Array[Array[String]] config__algorithm__tools_on
    Array[String] config__algorithm__effects
    Array[String] config__algorithm__variant_regions
    Array[String] genome_resources__aliases__ensembl
    Array[File] reference__rtg
    Array[File] genome_resources__variation__train_indels
    Array[String] genome_resources__aliases__snpeff
    Array[Array[String]] config__algorithm__archive
    
    call batch_for_variantcall {
        input: analysis=analysis, 
          genome_build=genome_build, 
          align_bam=alignment.align_bam, 
          config__algorithm__callable_regions=combine_sample_regions.config__algorithm__callable_regions, 
          metadata__batch=metadata__batch, 
          metadata__phenotype=metadata__phenotype, 
          regions__callable=postprocess_alignment.regions__callable, 
          config__algorithm__variantcaller=config__algorithm__variantcaller, 
          config__algorithm__coverage_interval=postprocess_alignment.config__algorithm__coverage_interval, 
          config__algorithm__variant_regions=postprocess_alignment.config__algorithm__variant_regions, 
          config__algorithm__validate=config__algorithm__validate, 
          config__algorithm__validate_regions=config__algorithm__validate_regions, 
          config__algorithm__tools_on=config__algorithm__tools_on, 
          config__algorithm__tools_off=config__algorithm__tools_off, 
          reference__fasta__base=reference__fasta__base, 
          reference__rtg=reference__rtg, 
          reference__genome_context=reference__genome_context, 
          genome_resources__variation__cosmic=genome_resources__variation__cosmic, 
          genome_resources__variation__dbsnp=genome_resources__variation__dbsnp, 
          description=description
    }


    call postprocess_alignment_to_rec {
        input: align_bam=alignment.align_bam, 
          config__algorithm__coverage_interval=config__algorithm__coverage_interval, 
          config__algorithm__variant_regions=prep_samples.config__algorithm__variant_regions, 
          config__algorithm__variant_regions_merged=prep_samples.config__algorithm__variant_regions_merged, 
          config__algorithm__variant_regions_orig=prep_samples.config__algorithm__variant_regions_orig, 
          config__algorithm__coverage=prep_samples.config__algorithm__coverage, 
          config__algorithm__coverage_merged=prep_samples.config__algorithm__coverage_merged, 
          config__algorithm__coverage_orig=prep_samples.config__algorithm__coverage_orig, 
          config__algorithm__seq2c_bed_ready=prep_samples.config__algorithm__seq2c_bed_ready, 
          config__algorithm__recalibrate=config__algorithm__recalibrate, 
          reference__fasta__base=reference__fasta__base, 
          description=description
    }


    call prep_samples_to_rec {
        input: config__algorithm__variant_regions=config__algorithm__variant_regions, 
          reference__fasta__base=reference__fasta__base, 
          description=description
    }


scatter (qc_to_rec_qc_rec_item in qc_to_rec.qc_rec) {
  Array[String] description_qc_to_rec_qc_rec_unpack = qc_to_rec_qc_rec_item.description
  Array[File] reference__fasta__base_qc_to_rec_qc_rec_unpack = qc_to_rec_qc_rec_item.reference__fasta__base
  Array[String] config__algorithm__coverage_interval_qc_to_rec_qc_rec_unpack = qc_to_rec_qc_rec_item.config__algorithm__coverage_interval
  Array[String] genome_build_qc_to_rec_qc_rec_unpack = qc_to_rec_qc_rec_item.genome_build
  Array[Array[String]] config__algorithm__tools_off_qc_to_rec_qc_rec_unpack = qc_to_rec_qc_rec_item.config__algorithm__tools_off
  Array[Array[String]] config__algorithm__qc_qc_to_rec_qc_rec_unpack = qc_to_rec_qc_rec_item.config__algorithm__qc
  Array[String] analysis_qc_to_rec_qc_rec_unpack = qc_to_rec_qc_rec_item.analysis
  Array[Array[String]] config__algorithm__tools_on_qc_to_rec_qc_rec_unpack = qc_to_rec_qc_rec_item.config__algorithm__tools_on
  Array[File] config__algorithm__variant_regions_qc_to_rec_qc_rec_unpack = qc_to_rec_qc_rec_item.config__algorithm__variant_regions
  Array[File] align_bam_qc_to_rec_qc_rec_unpack = qc_to_rec_qc_rec_item.align_bam
  Array[File] config__algorithm__variant_regions_merged_qc_to_rec_qc_rec_unpack = qc_to_rec_qc_rec_item.config__algorithm__variant_regions_merged
  Array[File] config__algorithm__coverage_qc_to_rec_qc_rec_unpack = qc_to_rec_qc_rec_item.config__algorithm__coverage
  Array[File] config__algorithm__coverage_merged_qc_to_rec_qc_rec_unpack = qc_to_rec_qc_rec_item.config__algorithm__coverage_merged
}

    call multiqc_summary {
        input: description=description_qc_to_rec_qc_rec_unpack, 
          reference__fasta__base=reference__fasta__base_qc_to_rec_qc_rec_unpack, 
          config__algorithm__coverage_interval=config__algorithm__coverage_interval_qc_to_rec_qc_rec_unpack, 
          genome_build=genome_build_qc_to_rec_qc_rec_unpack, 
          config__algorithm__tools_off=config__algorithm__tools_off_qc_to_rec_qc_rec_unpack, 
          config__algorithm__qc=config__algorithm__qc_qc_to_rec_qc_rec_unpack, 
          analysis=analysis_qc_to_rec_qc_rec_unpack, 
          config__algorithm__tools_on=config__algorithm__tools_on_qc_to_rec_qc_rec_unpack, 
          config__algorithm__variant_regions=config__algorithm__variant_regions_qc_to_rec_qc_rec_unpack, 
          align_bam=align_bam_qc_to_rec_qc_rec_unpack, 
          config__algorithm__variant_regions_merged=config__algorithm__variant_regions_merged_qc_to_rec_qc_rec_unpack, 
          config__algorithm__coverage=config__algorithm__coverage_qc_to_rec_qc_rec_unpack, 
          config__algorithm__coverage_merged=config__algorithm__coverage_merged_qc_to_rec_qc_rec_unpack, 
          summary__qc=pipeline_summary.summary__qc, 
          summary__metrics=pipeline_summary.summary__metrics
    }


    scatter (qc_rec_local in qc_to_rec.qc_rec) {
  
      call pipeline_summary {
          input: description=qc_rec_local.description, 
            reference__fasta__base=qc_rec_local.reference__fasta__base, 
            config__algorithm__coverage_interval=qc_rec_local.config__algorithm__coverage_interval, 
            genome_build=qc_rec_local.genome_build, 
            config__algorithm__tools_off=qc_rec_local.config__algorithm__tools_off, 
            config__algorithm__qc=qc_rec_local.config__algorithm__qc, 
            analysis=qc_rec_local.analysis, 
            config__algorithm__tools_on=qc_rec_local.config__algorithm__tools_on, 
            config__algorithm__variant_regions=qc_rec_local.config__algorithm__variant_regions, 
            align_bam=qc_rec_local.align_bam, 
            config__algorithm__variant_regions_merged=qc_rec_local.config__algorithm__variant_regions_merged, 
            config__algorithm__coverage=qc_rec_local.config__algorithm__coverage, 
            config__algorithm__coverage_merged=qc_rec_local.config__algorithm__coverage_merged
      }
  
    }


    scatter (postprocess_alignment_rec_local in postprocess_alignment_to_rec.postprocess_alignment_rec) {
  
      call postprocess_alignment {
          input: description=postprocess_alignment_rec_local.description, 
            reference__fasta__base=postprocess_alignment_rec_local.reference__fasta__base, 
            config__algorithm__coverage_interval_input=postprocess_alignment_rec_local.config__algorithm__coverage_interval, 
            config__algorithm__recalibrate=postprocess_alignment_rec_local.config__algorithm__recalibrate, 
            config__algorithm__variant_regions_input=postprocess_alignment_rec_local.config__algorithm__variant_regions, 
            align_bam=postprocess_alignment_rec_local.align_bam, 
            config__algorithm__variant_regions_merged_input=postprocess_alignment_rec_local.config__algorithm__variant_regions_merged, 
            config__algorithm__variant_regions_orig_input=postprocess_alignment_rec_local.config__algorithm__variant_regions_orig, 
            config__algorithm__coverage_input=postprocess_alignment_rec_local.config__algorithm__coverage, 
            config__algorithm__coverage_merged_input=postprocess_alignment_rec_local.config__algorithm__coverage_merged, 
            config__algorithm__coverage_orig_input=postprocess_alignment_rec_local.config__algorithm__coverage_orig, 
            config__algorithm__seq2c_bed_ready_input=postprocess_alignment_rec_local.config__algorithm__seq2c_bed_ready
      }
  
    }


    call combine_sample_regions {
        input: regions__callable=postprocess_alignment.regions__callable, 
          regions__nblock=postprocess_alignment.regions__nblock, 
          config__algorithm__nomap_split_size=config__algorithm__nomap_split_size, 
          config__algorithm__nomap_split_targets=config__algorithm__nomap_split_targets, 
          reference__fasta__base=reference__fasta__base, 
          description=description
    }


    scatter (prep_samples_rec_local in prep_samples_to_rec.prep_samples_rec) {
  
      call prep_samples {
          input: description=prep_samples_rec_local.description, 
            reference__fasta__base=prep_samples_rec_local.reference__fasta__base, 
            config__algorithm__variant_regions_input=prep_samples_rec_local.config__algorithm__variant_regions
      }
  
    }


scatter (variantcall_vc_rec_item in variantcall.vc_rec) {
  Array[String] description_variantcall_vc_rec_unpack = variantcall_vc_rec_item.description
  Array[File] vrn_file_variantcall_vc_rec_unpack = variantcall_vc_rec_item.vrn_file
  Array[File] config__algorithm__validate_variantcall_vc_rec_unpack = variantcall_vc_rec_item.config__algorithm__validate
  Array[File] reference__fasta__base_variantcall_vc_rec_unpack = variantcall_vc_rec_item.reference__fasta__base
  Array[String] config__algorithm__variantcaller_variantcall_vc_rec_unpack = variantcall_vc_rec_item.config__algorithm__variantcaller
  Array[String] config__algorithm__coverage_interval_variantcall_vc_rec_unpack = variantcall_vc_rec_item.config__algorithm__coverage_interval
  Array[String] metadata__batch_variantcall_vc_rec_unpack = variantcall_vc_rec_item.metadata__batch
  Array[File] config__algorithm__validate_regions_variantcall_vc_rec_unpack = variantcall_vc_rec_item.config__algorithm__validate_regions
  Array[String] genome_build_variantcall_vc_rec_unpack = variantcall_vc_rec_item.genome_build
  Array[String] metadata__phenotype_variantcall_vc_rec_unpack = variantcall_vc_rec_item.metadata__phenotype
  Array[Array[String]] config__algorithm__tools_off_variantcall_vc_rec_unpack = variantcall_vc_rec_item.config__algorithm__tools_off
  Array[File] genome_resources__variation__dbsnp_variantcall_vc_rec_unpack = variantcall_vc_rec_item.genome_resources__variation__dbsnp
  Array[String] genome_resources__variation__cosmic_variantcall_vc_rec_unpack = variantcall_vc_rec_item.genome_resources__variation__cosmic
  Array[Array[File]] reference__genome_context_variantcall_vc_rec_unpack = variantcall_vc_rec_item.reference__genome_context
  Array[String] analysis_variantcall_vc_rec_unpack = variantcall_vc_rec_item.analysis
  Array[Array[String]] config__algorithm__tools_on_variantcall_vc_rec_unpack = variantcall_vc_rec_item.config__algorithm__tools_on
  Array[File] config__algorithm__variant_regions_variantcall_vc_rec_unpack = variantcall_vc_rec_item.config__algorithm__variant_regions
  Array[File] reference__rtg_variantcall_vc_rec_unpack = variantcall_vc_rec_item.reference__rtg
  Array[File] align_bam_variantcall_vc_rec_unpack = variantcall_vc_rec_item.align_bam
  Array[File] regions__callable_variantcall_vc_rec_unpack = variantcall_vc_rec_item.regions__callable
  Array[File] config__algorithm__callable_regions_variantcall_vc_rec_unpack = variantcall_vc_rec_item.config__algorithm__callable_regions
  Array[File] validate__summary_variantcall_vc_rec_unpack = variantcall_vc_rec_item.validate__summary
  Array[File] validate__tp_variantcall_vc_rec_unpack = variantcall_vc_rec_item.validate__tp
  Array[File] validate__fp_variantcall_vc_rec_unpack = variantcall_vc_rec_item.validate__fp
  Array[File] validate__fn_variantcall_vc_rec_unpack = variantcall_vc_rec_item.validate__fn
}

    call summarize_grading_vc {
        input: description=description_variantcall_vc_rec_unpack, 
          vrn_file=vrn_file_variantcall_vc_rec_unpack, 
          config__algorithm__validate=config__algorithm__validate_variantcall_vc_rec_unpack, 
          reference__fasta__base=reference__fasta__base_variantcall_vc_rec_unpack, 
          config__algorithm__variantcaller=config__algorithm__variantcaller_variantcall_vc_rec_unpack, 
          config__algorithm__coverage_interval=config__algorithm__coverage_interval_variantcall_vc_rec_unpack, 
          metadata__batch=metadata__batch_variantcall_vc_rec_unpack, 
          config__algorithm__validate_regions=config__algorithm__validate_regions_variantcall_vc_rec_unpack, 
          genome_build=genome_build_variantcall_vc_rec_unpack, 
          metadata__phenotype=metadata__phenotype_variantcall_vc_rec_unpack, 
          config__algorithm__tools_off=config__algorithm__tools_off_variantcall_vc_rec_unpack, 
          genome_resources__variation__dbsnp=genome_resources__variation__dbsnp_variantcall_vc_rec_unpack, 
          genome_resources__variation__cosmic=genome_resources__variation__cosmic_variantcall_vc_rec_unpack, 
          reference__genome_context=reference__genome_context_variantcall_vc_rec_unpack, 
          analysis=analysis_variantcall_vc_rec_unpack, 
          config__algorithm__tools_on=config__algorithm__tools_on_variantcall_vc_rec_unpack, 
          config__algorithm__variant_regions=config__algorithm__variant_regions_variantcall_vc_rec_unpack, 
          reference__rtg=reference__rtg_variantcall_vc_rec_unpack, 
          align_bam=align_bam_variantcall_vc_rec_unpack, 
          regions__callable=regions__callable_variantcall_vc_rec_unpack, 
          config__algorithm__callable_regions=config__algorithm__callable_regions_variantcall_vc_rec_unpack, 
          validate__summary=validate__summary_variantcall_vc_rec_unpack, 
          validate__tp=validate__tp_variantcall_vc_rec_unpack, 
          validate__fp=validate__fp_variantcall_vc_rec_unpack, 
          validate__fn=validate__fn_variantcall_vc_rec_unpack
    }


    call alignment_to_rec {
        input: files=files, 
          config__algorithm__align_split_size=config__algorithm__align_split_size, 
          reference__fasta__base=reference__fasta__base, 
          rgnames__pl=rgnames__pl, 
          rgnames__sample=rgnames__sample, 
          rgnames__pu=rgnames__pu, 
          rgnames__lane=rgnames__lane, 
          rgnames__rg=rgnames__rg, 
          rgnames__lb=rgnames__lb, 
          reference__bwa__indexes=reference__bwa__indexes, 
          config__algorithm__aligner=config__algorithm__aligner, 
          config__algorithm__mark_duplicates=config__algorithm__mark_duplicates, 
          description=description
    }


    call qc_to_rec {
        input: align_bam=alignment.align_bam, 
          analysis=analysis, 
          reference__fasta__base=reference__fasta__base, 
          genome_build=genome_build, 
          config__algorithm__coverage_interval=postprocess_alignment.config__algorithm__coverage_interval, 
          config__algorithm__tools_on=config__algorithm__tools_on, 
          config__algorithm__tools_off=config__algorithm__tools_off, 
          config__algorithm__qc=config__algorithm__qc, 
          config__algorithm__variant_regions=postprocess_alignment.config__algorithm__variant_regions, 
          config__algorithm__variant_regions_merged=postprocess_alignment.config__algorithm__variant_regions_merged, 
          config__algorithm__coverage=postprocess_alignment.config__algorithm__coverage, 
          config__algorithm__coverage_merged=postprocess_alignment.config__algorithm__coverage_merged, 
          description=description
    }


    scatter (batch_rec_local in batch_for_variantcall.batch_rec) {
  
      call variantcall.variantcall {
          input: description=batch_rec_local.description, 
            config__algorithm__validate=batch_rec_local.config__algorithm__validate, 
            reference__fasta__base=batch_rec_local.reference__fasta__base, 
            config__algorithm__variantcaller=batch_rec_local.config__algorithm__variantcaller, 
            config__algorithm__coverage_interval=batch_rec_local.config__algorithm__coverage_interval, 
            metadata__batch=batch_rec_local.metadata__batch, 
            config__algorithm__validate_regions=batch_rec_local.config__algorithm__validate_regions, 
            genome_build=batch_rec_local.genome_build, 
            metadata__phenotype=batch_rec_local.metadata__phenotype, 
            config__algorithm__tools_off=batch_rec_local.config__algorithm__tools_off, 
            genome_resources__variation__dbsnp=batch_rec_local.genome_resources__variation__dbsnp, 
            genome_resources__variation__cosmic=batch_rec_local.genome_resources__variation__cosmic, 
            reference__genome_context=batch_rec_local.reference__genome_context, 
            analysis=batch_rec_local.analysis, 
            config__algorithm__tools_on=batch_rec_local.config__algorithm__tools_on, 
            config__algorithm__variant_regions=batch_rec_local.config__algorithm__variant_regions, 
            reference__rtg=batch_rec_local.reference__rtg, 
            align_bam=batch_rec_local.align_bam, 
            regions__callable=batch_rec_local.regions__callable, 
            config__algorithm__callable_regions=batch_rec_local.config__algorithm__callable_regions
      }
  
    }


    scatter (alignment_rec_local in alignment_to_rec.alignment_rec) {
  
      call alignment.alignment {
          input: description=alignment_rec_local.description, 
            config__algorithm__align_split_size=alignment_rec_local.config__algorithm__align_split_size, 
            reference__fasta__base=alignment_rec_local.reference__fasta__base, 
            rgnames__lb=alignment_rec_local.rgnames__lb, 
            rgnames__rg=alignment_rec_local.rgnames__rg, 
            rgnames__lane=alignment_rec_local.rgnames__lane, 
            reference__bwa__indexes=alignment_rec_local.reference__bwa__indexes, 
            files=alignment_rec_local.files, 
            config__algorithm__aligner=alignment_rec_local.config__algorithm__aligner, 
            rgnames__pl=alignment_rec_local.rgnames__pl, 
            config__algorithm__mark_duplicates=alignment_rec_local.config__algorithm__mark_duplicates, 
            rgnames__pu=alignment_rec_local.rgnames__pu, 
            rgnames__sample=alignment_rec_local.rgnames__sample
      }
  
    }

    
   output {
     Array[File] align_bam = alignment.align_bam
     Array[File] summary__multiqc = multiqc_summary.summary__multiqc
   }

}

task batch_for_variantcall {
    String sentinel_parallel
    String sentinel_outputs
    Array[String] analysis
    Array[String] genome_build
    Array[File] align_bam
    Array[File] config__algorithm__callable_regions
    Array[String] metadata__batch
    Array[String] metadata__phenotype
    Array[File] regions__callable
    Array[Array[String]] config__algorithm__variantcaller
    Array[String] config__algorithm__coverage_interval
    Array[File] config__algorithm__variant_regions
    Array[File] config__algorithm__validate
    Array[File] config__algorithm__validate_regions
    Array[Array[String]] config__algorithm__tools_on
    Array[Array[String]] config__algorithm__tools_off
    Array[File] reference__fasta__base
    Array[File] reference__rtg
    Array[Array[File]] reference__genome_context
    Array[String] genome_resources__variation__cosmic
    Array[File] genome_resources__variation__dbsnp
    Array[String] description

    command {
        bcbio_nextgen.py runfn batch_for_variantcall cwl \
        sentinel_parallel=${default='multi-batch' sentinel_parallel} \
        sentinel_outputs=${default='batch_rec' sentinel_outputs} \
        analysis=${sep=';;' analysis} \
        genome_build=${sep=';;' genome_build} \
        align_bam=${sep=';;' align_bam} \
        config__algorithm__callable_regions=${sep=';;' config__algorithm__callable_regions} \
        metadata__batch=${sep=';;' metadata__batch} \
        metadata__phenotype=${sep=';;' metadata__phenotype} \
        regions__callable=${sep=';;' regions__callable} \
        config__algorithm__variantcaller=${sep=';;' config__algorithm__variantcaller} \
        config__algorithm__coverage_interval=${sep=';;' config__algorithm__coverage_interval} \
        config__algorithm__variant_regions=${sep=';;' config__algorithm__variant_regions} \
        config__algorithm__validate=${sep=';;' config__algorithm__validate} \
        config__algorithm__validate_regions=${sep=';;' config__algorithm__validate_regions} \
        config__algorithm__tools_on=${sep=';;' config__algorithm__tools_on} \
        config__algorithm__tools_off=${sep=';;' config__algorithm__tools_off} \
        reference__fasta__base=${sep=';;' reference__fasta__base} \
        reference__rtg=${sep=';;' reference__rtg} \
        reference__genome_context=${sep=';;' reference__genome_context} \
        genome_resources__variation__cosmic=${sep=';;' genome_resources__variation__cosmic} \
        genome_resources__variation__dbsnp=${sep=';;' genome_resources__variation__dbsnp} \
        description=${sep=';;' description}
    }

    output {
        Array[Object] batch_rec = read_objects('wdl.output.batch_rec.txt')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '8'
        memory: '16384 MB'
    }
}


task postprocess_alignment_to_rec {
    String sentinel_parallel
    String sentinel_outputs
    Array[File] align_bam
    Array[String] config__algorithm__coverage_interval
    Array[File] config__algorithm__variant_regions
    Array[File] config__algorithm__variant_regions_merged
    Array[File] config__algorithm__variant_regions_orig
    Array[File] config__algorithm__coverage
    Array[File] config__algorithm__coverage_merged
    Array[File] config__algorithm__coverage_orig
    Array[File] config__algorithm__seq2c_bed_ready
    Array[String] config__algorithm__recalibrate
    Array[File] reference__fasta__base
    Array[String] description

    command {
        bcbio_nextgen.py runfn postprocess_alignment_to_rec cwl \
        sentinel_parallel=${default='multi-batch' sentinel_parallel} \
        sentinel_outputs=${default='postprocess_alignment_rec' sentinel_outputs} \
        align_bam=${sep=';;' align_bam} \
        config__algorithm__coverage_interval=${sep=';;' config__algorithm__coverage_interval} \
        config__algorithm__variant_regions=${sep=';;' config__algorithm__variant_regions} \
        config__algorithm__variant_regions_merged=${sep=';;' config__algorithm__variant_regions_merged} \
        config__algorithm__variant_regions_orig=${sep=';;' config__algorithm__variant_regions_orig} \
        config__algorithm__coverage=${sep=';;' config__algorithm__coverage} \
        config__algorithm__coverage_merged=${sep=';;' config__algorithm__coverage_merged} \
        config__algorithm__coverage_orig=${sep=';;' config__algorithm__coverage_orig} \
        config__algorithm__seq2c_bed_ready=${sep=';;' config__algorithm__seq2c_bed_ready} \
        config__algorithm__recalibrate=${sep=';;' config__algorithm__recalibrate} \
        reference__fasta__base=${sep=';;' reference__fasta__base} \
        description=${sep=';;' description}
    }

    output {
        Array[Object] postprocess_alignment_rec = read_objects('wdl.output.postprocess_alignment_rec.txt')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '8'
        memory: '16384 MB'
    }
}


task prep_samples_to_rec {
    String sentinel_parallel
    String sentinel_outputs
    Array[String] config__algorithm__variant_regions
    Array[File] reference__fasta__base
    Array[String] description

    command {
        bcbio_nextgen.py runfn prep_samples_to_rec cwl \
        sentinel_parallel=${default='multi-batch' sentinel_parallel} \
        sentinel_outputs=${default='prep_samples_rec' sentinel_outputs} \
        config__algorithm__variant_regions=${sep=';;' config__algorithm__variant_regions} \
        reference__fasta__base=${sep=';;' reference__fasta__base} \
        description=${sep=';;' description}
    }

    output {
        Array[Object] prep_samples_rec = read_objects('wdl.output.prep_samples_rec.txt')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '8'
        memory: '16384 MB'
    }
}


task multiqc_summary {
    String sentinel_parallel
    String sentinel_outputs
    Array[Array[String]] description
    Array[Array[File]] reference__fasta__base
    Array[Array[String]] config__algorithm__coverage_interval
    Array[Array[String]] genome_build
    Array[Array[Array[String]]] config__algorithm__tools_off
    Array[Array[Array[String]]] config__algorithm__qc
    Array[Array[String]] analysis
    Array[Array[Array[String]]] config__algorithm__tools_on
    Array[Array[File]] config__algorithm__variant_regions
    Array[Array[File]] align_bam
    Array[Array[File]] config__algorithm__variant_regions_merged
    Array[Array[File]] config__algorithm__coverage
    Array[Array[File]] config__algorithm__coverage_merged
    Array[File] summary__qc
    Array[String] summary__metrics

    command {
        bcbio_nextgen.py runfn multiqc_summary cwl \
        sentinel_parallel=${default='multi-combined' sentinel_parallel} \
        sentinel_outputs=${default='summary__multiqc' sentinel_outputs} \
        description=${sep=';;' description} \
        reference__fasta__base=${sep=';;' reference__fasta__base} \
        config__algorithm__coverage_interval=${sep=';;' config__algorithm__coverage_interval} \
        genome_build=${sep=';;' genome_build} \
        config__algorithm__tools_off=${sep=';;' config__algorithm__tools_off} \
        config__algorithm__qc=${sep=';;' config__algorithm__qc} \
        analysis=${sep=';;' analysis} \
        config__algorithm__tools_on=${sep=';;' config__algorithm__tools_on} \
        config__algorithm__variant_regions=${sep=';;' config__algorithm__variant_regions} \
        align_bam=${sep=';;' align_bam} \
        config__algorithm__variant_regions_merged=${sep=';;' config__algorithm__variant_regions_merged} \
        config__algorithm__coverage=${sep=';;' config__algorithm__coverage} \
        config__algorithm__coverage_merged=${sep=';;' config__algorithm__coverage_merged} \
        summary__qc=${sep=';;' summary__qc} \
        summary__metrics=${sep=';;' summary__metrics}
    }

    output {
        Array[File] summary__multiqc = read_lines('wdl.output.summary__multiqc.txt')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '8'
        memory: '16384 MB'
    }
}


task pipeline_summary {
    String sentinel_parallel
    String sentinel_outputs
    Array[String] description
    Array[File] reference__fasta__base
    Array[String] config__algorithm__coverage_interval
    Array[String] genome_build
    Array[Array[String]] config__algorithm__tools_off
    Array[Array[String]] config__algorithm__qc
    Array[String] analysis
    Array[Array[String]] config__algorithm__tools_on
    Array[File] config__algorithm__variant_regions
    Array[File] align_bam
    Array[File] config__algorithm__variant_regions_merged
    Array[File] config__algorithm__coverage
    Array[File] config__algorithm__coverage_merged

    command {
        bcbio_nextgen.py runfn pipeline_summary cwl \
        sentinel_parallel=${default='multi-parallel' sentinel_parallel} \
        sentinel_outputs=${default='summary__qc,summary__metrics' sentinel_outputs} \
        description=${sep=';;' description} \
        reference__fasta__base=${sep=';;' reference__fasta__base} \
        config__algorithm__coverage_interval=${sep=';;' config__algorithm__coverage_interval} \
        genome_build=${sep=';;' genome_build} \
        config__algorithm__tools_off=${sep=';;' config__algorithm__tools_off} \
        config__algorithm__qc=${sep=';;' config__algorithm__qc} \
        analysis=${sep=';;' analysis} \
        config__algorithm__tools_on=${sep=';;' config__algorithm__tools_on} \
        config__algorithm__variant_regions=${sep=';;' config__algorithm__variant_regions} \
        align_bam=${sep=';;' align_bam} \
        config__algorithm__variant_regions_merged=${sep=';;' config__algorithm__variant_regions_merged} \
        config__algorithm__coverage=${sep=';;' config__algorithm__coverage} \
        config__algorithm__coverage_merged=${sep=';;' config__algorithm__coverage_merged}
    }

    output {
        File summary__qc = read_string('wdl.output.summary__qc.txt')
        String summary__metrics = read_string('wdl.output.summary__metrics.txt')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '8'
        memory: '16384 MB'
    }
}


task postprocess_alignment {
    String sentinel_parallel
    String sentinel_outputs
    Array[String] description
    Array[File] reference__fasta__base
    Array[String] config__algorithm__coverage_interval_input
    Array[String] config__algorithm__recalibrate
    Array[File] config__algorithm__variant_regions_input
    Array[File] align_bam
    Array[File] config__algorithm__variant_regions_merged_input
    Array[File] config__algorithm__variant_regions_orig_input
    Array[File] config__algorithm__coverage_input
    Array[File] config__algorithm__coverage_merged_input
    Array[File] config__algorithm__coverage_orig_input
    Array[File] config__algorithm__seq2c_bed_ready_input

    command {
        bcbio_nextgen.py runfn postprocess_alignment cwl \
        sentinel_parallel=${default='multi-parallel' sentinel_parallel} \
        sentinel_outputs=${default='config__algorithm__coverage_interval,config__algorithm__variant_regions,config__algorithm__variant_regions_merged,config__algorithm__variant_regions_orig,config__algorithm__coverage,config__algorithm__coverage_merged,config__algorithm__coverage_orig,config__algorithm__seq2c_bed_ready,regions__callable,regions__sample_callable,regions__nblock,regions__highdepth' sentinel_outputs} \
        description=${sep=';;' description} \
        reference__fasta__base=${sep=';;' reference__fasta__base} \
        config__algorithm__coverage_interval=${sep=';;' config__algorithm__coverage_interval_input} \
        config__algorithm__recalibrate=${sep=';;' config__algorithm__recalibrate} \
        config__algorithm__variant_regions=${sep=';;' config__algorithm__variant_regions_input} \
        align_bam=${sep=';;' align_bam} \
        config__algorithm__variant_regions_merged=${sep=';;' config__algorithm__variant_regions_merged_input} \
        config__algorithm__variant_regions_orig=${sep=';;' config__algorithm__variant_regions_orig_input} \
        config__algorithm__coverage=${sep=';;' config__algorithm__coverage_input} \
        config__algorithm__coverage_merged=${sep=';;' config__algorithm__coverage_merged_input} \
        config__algorithm__coverage_orig=${sep=';;' config__algorithm__coverage_orig_input} \
        config__algorithm__seq2c_bed_ready=${sep=';;' config__algorithm__seq2c_bed_ready_input}
    }

    output {
        String config__algorithm__coverage_interval = read_string('wdl.output.config__algorithm__coverage_interval.txt')
        File config__algorithm__variant_regions = read_string('wdl.output.config__algorithm__variant_regions.txt')
        File config__algorithm__variant_regions_merged = read_string('wdl.output.config__algorithm__variant_regions_merged.txt')
        File config__algorithm__variant_regions_orig = read_string('wdl.output.config__algorithm__variant_regions_orig.txt')
        File config__algorithm__coverage = read_string('wdl.output.config__algorithm__coverage.txt')
        File config__algorithm__coverage_merged = read_string('wdl.output.config__algorithm__coverage_merged.txt')
        File config__algorithm__coverage_orig = read_string('wdl.output.config__algorithm__coverage_orig.txt')
        File config__algorithm__seq2c_bed_ready = read_string('wdl.output.config__algorithm__seq2c_bed_ready.txt')
        File regions__callable = read_string('wdl.output.regions__callable.txt')
        File regions__sample_callable = read_string('wdl.output.regions__sample_callable.txt')
        File regions__nblock = read_string('wdl.output.regions__nblock.txt')
        File regions__highdepth = read_string('wdl.output.regions__highdepth.txt')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '8'
        memory: '16384 MB'
    }
}


task combine_sample_regions {
    String sentinel_parallel
    String sentinel_outputs
    Array[File] regions__callable
    Array[File] regions__nblock
    Array[Float] config__algorithm__nomap_split_size
    Array[Float] config__algorithm__nomap_split_targets
    Array[File] reference__fasta__base
    Array[String] description

    command {
        bcbio_nextgen.py runfn combine_sample_regions cwl \
        sentinel_parallel=${default='multi-combined' sentinel_parallel} \
        sentinel_outputs=${default='config__algorithm__callable_regions,config__algorithm__non_callable_regions,config__algorithm__callable_count' sentinel_outputs} \
        regions__callable=${sep=';;' regions__callable} \
        regions__nblock=${sep=';;' regions__nblock} \
        config__algorithm__nomap_split_size=${sep=';;' config__algorithm__nomap_split_size} \
        config__algorithm__nomap_split_targets=${sep=';;' config__algorithm__nomap_split_targets} \
        reference__fasta__base=${sep=';;' reference__fasta__base} \
        description=${sep=';;' description}
    }

    output {
        Array[File] config__algorithm__callable_regions = read_lines('wdl.output.config__algorithm__callable_regions.txt')
        Array[File] config__algorithm__non_callable_regions = read_lines('wdl.output.config__algorithm__non_callable_regions.txt')
        Array[Int] config__algorithm__callable_count = read_lines('wdl.output.config__algorithm__callable_count.txt')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '8'
        memory: '16384 MB'
    }
}


task prep_samples {
    String sentinel_parallel
    String sentinel_outputs
    Array[String] description
    Array[File] reference__fasta__base
    Array[String] config__algorithm__variant_regions_input

    command {
        bcbio_nextgen.py runfn prep_samples cwl \
        sentinel_parallel=${default='multi-parallel' sentinel_parallel} \
        sentinel_outputs=${default='config__algorithm__variant_regions,config__algorithm__variant_regions_merged,config__algorithm__variant_regions_orig,config__algorithm__coverage,config__algorithm__coverage_merged,config__algorithm__coverage_orig,config__algorithm__seq2c_bed_ready' sentinel_outputs} \
        description=${sep=';;' description} \
        reference__fasta__base=${sep=';;' reference__fasta__base} \
        config__algorithm__variant_regions=${sep=';;' config__algorithm__variant_regions_input}
    }

    output {
        File config__algorithm__variant_regions = read_string('wdl.output.config__algorithm__variant_regions.txt')
        File config__algorithm__variant_regions_merged = read_string('wdl.output.config__algorithm__variant_regions_merged.txt')
        File config__algorithm__variant_regions_orig = read_string('wdl.output.config__algorithm__variant_regions_orig.txt')
        File config__algorithm__coverage = read_string('wdl.output.config__algorithm__coverage.txt')
        File config__algorithm__coverage_merged = read_string('wdl.output.config__algorithm__coverage_merged.txt')
        File config__algorithm__coverage_orig = read_string('wdl.output.config__algorithm__coverage_orig.txt')
        File config__algorithm__seq2c_bed_ready = read_string('wdl.output.config__algorithm__seq2c_bed_ready.txt')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '8'
        memory: '16384 MB'
    }
}


task summarize_grading_vc {
    String sentinel_parallel
    String sentinel_outputs
    Array[Array[String]] description
    Array[Array[File]] vrn_file
    Array[Array[File]] config__algorithm__validate
    Array[Array[File]] reference__fasta__base
    Array[Array[String]] config__algorithm__variantcaller
    Array[Array[String]] config__algorithm__coverage_interval
    Array[Array[String]] metadata__batch
    Array[Array[File]] config__algorithm__validate_regions
    Array[Array[String]] genome_build
    Array[Array[String]] metadata__phenotype
    Array[Array[Array[String]]] config__algorithm__tools_off
    Array[Array[File]] genome_resources__variation__dbsnp
    Array[Array[String]] genome_resources__variation__cosmic
    Array[Array[Array[File]]] reference__genome_context
    Array[Array[String]] analysis
    Array[Array[Array[String]]] config__algorithm__tools_on
    Array[Array[File]] config__algorithm__variant_regions
    Array[Array[File]] reference__rtg
    Array[Array[File]] align_bam
    Array[Array[File]] regions__callable
    Array[Array[File]] config__algorithm__callable_regions
    Array[Array[File]] validate__summary
    Array[Array[File]] validate__tp
    Array[Array[File]] validate__fp
    Array[Array[File]] validate__fn

    command {
        bcbio_nextgen.py runfn summarize_grading_vc cwl \
        sentinel_parallel=${default='multi-combined' sentinel_parallel} \
        sentinel_outputs=${default='validate__grading_summary,validate__grading_plots' sentinel_outputs} \
        description=${sep=';;' description} \
        vrn_file=${sep=';;' vrn_file} \
        config__algorithm__validate=${sep=';;' config__algorithm__validate} \
        reference__fasta__base=${sep=';;' reference__fasta__base} \
        config__algorithm__variantcaller=${sep=';;' config__algorithm__variantcaller} \
        config__algorithm__coverage_interval=${sep=';;' config__algorithm__coverage_interval} \
        metadata__batch=${sep=';;' metadata__batch} \
        config__algorithm__validate_regions=${sep=';;' config__algorithm__validate_regions} \
        genome_build=${sep=';;' genome_build} \
        metadata__phenotype=${sep=';;' metadata__phenotype} \
        config__algorithm__tools_off=${sep=';;' config__algorithm__tools_off} \
        genome_resources__variation__dbsnp=${sep=';;' genome_resources__variation__dbsnp} \
        genome_resources__variation__cosmic=${sep=';;' genome_resources__variation__cosmic} \
        reference__genome_context=${sep=';;' reference__genome_context} \
        analysis=${sep=';;' analysis} \
        config__algorithm__tools_on=${sep=';;' config__algorithm__tools_on} \
        config__algorithm__variant_regions=${sep=';;' config__algorithm__variant_regions} \
        reference__rtg=${sep=';;' reference__rtg} \
        align_bam=${sep=';;' align_bam} \
        regions__callable=${sep=';;' regions__callable} \
        config__algorithm__callable_regions=${sep=';;' config__algorithm__callable_regions} \
        validate__summary=${sep=';;' validate__summary} \
        validate__tp=${sep=';;' validate__tp} \
        validate__fp=${sep=';;' validate__fp} \
        validate__fn=${sep=';;' validate__fn}
    }

    output {
        Array[File] validate__grading_summary = read_lines('wdl.output.validate__grading_summary.txt')
        Array[Array[File]] validate__grading_plots = read_tsv('wdl.output.validate__grading_plots.txt')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '8'
        memory: '16384 MB'
    }
}


task alignment_to_rec {
    String sentinel_parallel
    String sentinel_outputs
    Array[Array[File]] files
    Array[String] config__algorithm__align_split_size
    Array[File] reference__fasta__base
    Array[String] rgnames__pl
    Array[String] rgnames__sample
    Array[String] rgnames__pu
    Array[String] rgnames__lane
    Array[String] rgnames__rg
    Array[String] rgnames__lb
    Array[File] reference__bwa__indexes
    Array[String] config__algorithm__aligner
    Array[String] config__algorithm__mark_duplicates
    Array[String] description

    command {
        bcbio_nextgen.py runfn alignment_to_rec cwl \
        sentinel_parallel=${default='multi-combined' sentinel_parallel} \
        sentinel_outputs=${default='alignment_rec' sentinel_outputs} \
        files=${sep=';;' files} \
        config__algorithm__align_split_size=${sep=';;' config__algorithm__align_split_size} \
        reference__fasta__base=${sep=';;' reference__fasta__base} \
        rgnames__pl=${sep=';;' rgnames__pl} \
        rgnames__sample=${sep=';;' rgnames__sample} \
        rgnames__pu=${sep=';;' rgnames__pu} \
        rgnames__lane=${sep=';;' rgnames__lane} \
        rgnames__rg=${sep=';;' rgnames__rg} \
        rgnames__lb=${sep=';;' rgnames__lb} \
        reference__bwa__indexes=${sep=';;' reference__bwa__indexes} \
        config__algorithm__aligner=${sep=';;' config__algorithm__aligner} \
        config__algorithm__mark_duplicates=${sep=';;' config__algorithm__mark_duplicates} \
        description=${sep=';;' description}
    }

    output {
        Array[Object] alignment_rec = read_objects('wdl.output.alignment_rec.txt')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '8'
        memory: '16384 MB'
    }
}


task qc_to_rec {
    String sentinel_parallel
    String sentinel_outputs
    Array[File] align_bam
    Array[String] analysis
    Array[File] reference__fasta__base
    Array[String] genome_build
    Array[String] config__algorithm__coverage_interval
    Array[Array[String]] config__algorithm__tools_on
    Array[Array[String]] config__algorithm__tools_off
    Array[Array[String]] config__algorithm__qc
    Array[File] config__algorithm__variant_regions
    Array[File] config__algorithm__variant_regions_merged
    Array[File] config__algorithm__coverage
    Array[File] config__algorithm__coverage_merged
    Array[String] description

    command {
        bcbio_nextgen.py runfn qc_to_rec cwl \
        sentinel_parallel=${default='multi-batch' sentinel_parallel} \
        sentinel_outputs=${default='qc_rec' sentinel_outputs} \
        align_bam=${sep=';;' align_bam} \
        analysis=${sep=';;' analysis} \
        reference__fasta__base=${sep=';;' reference__fasta__base} \
        genome_build=${sep=';;' genome_build} \
        config__algorithm__coverage_interval=${sep=';;' config__algorithm__coverage_interval} \
        config__algorithm__tools_on=${sep=';;' config__algorithm__tools_on} \
        config__algorithm__tools_off=${sep=';;' config__algorithm__tools_off} \
        config__algorithm__qc=${sep=';;' config__algorithm__qc} \
        config__algorithm__variant_regions=${sep=';;' config__algorithm__variant_regions} \
        config__algorithm__variant_regions_merged=${sep=';;' config__algorithm__variant_regions_merged} \
        config__algorithm__coverage=${sep=';;' config__algorithm__coverage} \
        config__algorithm__coverage_merged=${sep=';;' config__algorithm__coverage_merged} \
        description=${sep=';;' description}
    }

    output {
        Array[Object] qc_rec = read_objects('wdl.output.qc_rec.txt')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '8'
        memory: '16384 MB'
    }
}

