


workflow variantcall {
    Array[String] description
    Array[File] config__algorithm__validate
    Array[File] reference__fasta__base
    Array[String] config__algorithm__variantcaller
    Array[String] config__algorithm__coverage_interval
    Array[String] metadata__batch
    Array[File] config__algorithm__validate_regions
    Array[String] genome_build
    Array[String] metadata__phenotype
    Array[Array[String]] config__algorithm__tools_off
    Array[File] genome_resources__variation__dbsnp
    Array[String] genome_resources__variation__cosmic
    Array[Array[File]] reference__genome_context
    Array[String] analysis
    Array[Array[String]] config__algorithm__tools_on
    Array[File] config__algorithm__variant_regions
    Array[File] reference__rtg
    Array[File] align_bam
    Array[File] regions__callable
    Array[File] config__algorithm__callable_regions
    
    call compare_to_rm {
        input: description=description, 
          config__algorithm__validate=config__algorithm__validate, 
          reference__fasta__base=reference__fasta__base, 
          config__algorithm__variantcaller=config__algorithm__variantcaller, 
          config__algorithm__coverage_interval=config__algorithm__coverage_interval, 
          metadata__batch=metadata__batch, 
          config__algorithm__validate_regions=config__algorithm__validate_regions, 
          genome_build=genome_build, 
          metadata__phenotype=metadata__phenotype, 
          config__algorithm__tools_off=config__algorithm__tools_off, 
          genome_resources__variation__dbsnp=genome_resources__variation__dbsnp, 
          genome_resources__variation__cosmic=genome_resources__variation__cosmic, 
          reference__genome_context=reference__genome_context, 
          analysis=analysis, 
          config__algorithm__tools_on=config__algorithm__tools_on, 
          config__algorithm__variant_regions=config__algorithm__variant_regions, 
          reference__rtg=reference__rtg, 
          align_bam=align_bam, 
          regions__callable=regions__callable, 
          config__algorithm__callable_regions=config__algorithm__callable_regions, 
          vrn_file=postprocess_variants.vrn_file
    }


    call vc_output_record {
        input: description=description, 
          config__algorithm__validate=config__algorithm__validate, 
          reference__fasta__base=reference__fasta__base, 
          config__algorithm__variantcaller=config__algorithm__variantcaller, 
          config__algorithm__coverage_interval=config__algorithm__coverage_interval, 
          metadata__batch=metadata__batch, 
          config__algorithm__validate_regions=config__algorithm__validate_regions, 
          genome_build=genome_build, 
          metadata__phenotype=metadata__phenotype, 
          config__algorithm__tools_off=config__algorithm__tools_off, 
          genome_resources__variation__dbsnp=genome_resources__variation__dbsnp, 
          genome_resources__variation__cosmic=genome_resources__variation__cosmic, 
          reference__genome_context=reference__genome_context, 
          analysis=analysis, 
          config__algorithm__tools_on=config__algorithm__tools_on, 
          config__algorithm__variant_regions=config__algorithm__variant_regions, 
          reference__rtg=reference__rtg, 
          align_bam=align_bam, 
          regions__callable=regions__callable, 
          config__algorithm__callable_regions=config__algorithm__callable_regions, 
          vrn_file=postprocess_variants.vrn_file, 
          validate__summary=compare_to_rm.validate__summary, 
          validate__tp=compare_to_rm.validate__tp, 
          validate__fp=compare_to_rm.validate__fp, 
          validate__fn=compare_to_rm.validate__fn
    }


    scatter (region_local in get_parallel_regions.region) {
  
      call variantcall_batch_region {
          input: description=description, 
            config__algorithm__validate=config__algorithm__validate, 
            reference__fasta__base=reference__fasta__base, 
            config__algorithm__variantcaller=config__algorithm__variantcaller, 
            config__algorithm__coverage_interval=config__algorithm__coverage_interval, 
            metadata__batch=metadata__batch, 
            config__algorithm__validate_regions=config__algorithm__validate_regions, 
            genome_build=genome_build, 
            metadata__phenotype=metadata__phenotype, 
            config__algorithm__tools_off=config__algorithm__tools_off, 
            genome_resources__variation__dbsnp=genome_resources__variation__dbsnp, 
            genome_resources__variation__cosmic=genome_resources__variation__cosmic, 
            reference__genome_context=reference__genome_context, 
            analysis=analysis, 
            config__algorithm__tools_on=config__algorithm__tools_on, 
            config__algorithm__variant_regions=config__algorithm__variant_regions, 
            reference__rtg=reference__rtg, 
            align_bam=align_bam, 
            regions__callable=regions__callable, 
            config__algorithm__callable_regions=config__algorithm__callable_regions, 
            region_input=region_local
      }
  
    }


    call postprocess_variants {
        input: description=description, 
          config__algorithm__validate=config__algorithm__validate, 
          reference__fasta__base=reference__fasta__base, 
          config__algorithm__variantcaller=config__algorithm__variantcaller, 
          config__algorithm__coverage_interval=config__algorithm__coverage_interval, 
          metadata__batch=metadata__batch, 
          config__algorithm__validate_regions=config__algorithm__validate_regions, 
          genome_build=genome_build, 
          metadata__phenotype=metadata__phenotype, 
          config__algorithm__tools_off=config__algorithm__tools_off, 
          genome_resources__variation__dbsnp=genome_resources__variation__dbsnp, 
          genome_resources__variation__cosmic=genome_resources__variation__cosmic, 
          reference__genome_context=reference__genome_context, 
          analysis=analysis, 
          config__algorithm__tools_on=config__algorithm__tools_on, 
          config__algorithm__variant_regions=config__algorithm__variant_regions, 
          reference__rtg=reference__rtg, 
          align_bam=align_bam, 
          regions__callable=regions__callable, 
          config__algorithm__callable_regions=config__algorithm__callable_regions, 
          vrn_file_input=concat_batch_variantcalls.vrn_file
    }


    call get_parallel_regions {
        input: description=description, 
          config__algorithm__validate=config__algorithm__validate, 
          reference__fasta__base=reference__fasta__base, 
          config__algorithm__variantcaller=config__algorithm__variantcaller, 
          config__algorithm__coverage_interval=config__algorithm__coverage_interval, 
          metadata__batch=metadata__batch, 
          config__algorithm__validate_regions=config__algorithm__validate_regions, 
          genome_build=genome_build, 
          metadata__phenotype=metadata__phenotype, 
          config__algorithm__tools_off=config__algorithm__tools_off, 
          genome_resources__variation__dbsnp=genome_resources__variation__dbsnp, 
          genome_resources__variation__cosmic=genome_resources__variation__cosmic, 
          reference__genome_context=reference__genome_context, 
          analysis=analysis, 
          config__algorithm__tools_on=config__algorithm__tools_on, 
          config__algorithm__variant_regions=config__algorithm__variant_regions, 
          reference__rtg=reference__rtg, 
          align_bam=align_bam, 
          regions__callable=regions__callable, 
          config__algorithm__callable_regions=config__algorithm__callable_regions
    }


    call concat_batch_variantcalls {
        input: description=description, 
          config__algorithm__validate=config__algorithm__validate, 
          reference__fasta__base=reference__fasta__base, 
          config__algorithm__variantcaller=config__algorithm__variantcaller, 
          config__algorithm__coverage_interval=config__algorithm__coverage_interval, 
          metadata__batch=metadata__batch, 
          config__algorithm__validate_regions=config__algorithm__validate_regions, 
          genome_build=genome_build, 
          metadata__phenotype=metadata__phenotype, 
          config__algorithm__tools_off=config__algorithm__tools_off, 
          genome_resources__variation__dbsnp=genome_resources__variation__dbsnp, 
          genome_resources__variation__cosmic=genome_resources__variation__cosmic, 
          reference__genome_context=reference__genome_context, 
          analysis=analysis, 
          config__algorithm__tools_on=config__algorithm__tools_on, 
          config__algorithm__variant_regions=config__algorithm__variant_regions, 
          reference__rtg=reference__rtg, 
          align_bam=align_bam, 
          regions__callable=regions__callable, 
          config__algorithm__callable_regions=config__algorithm__callable_regions, 
          region=variantcall_batch_region.region, 
          vrn_file_region=variantcall_batch_region.vrn_file_region
    }

    
   output {
     Object vc_rec = vc_output_record.vc_rec
     File validate__tp = compare_to_rm.validate__tp
     File validate__fp = compare_to_rm.validate__fp
     File validate__fn = compare_to_rm.validate__fn
   }

}

task compare_to_rm {
    String sentinel_parallel
    String sentinel_outputs
    Array[String] description
    Array[File] config__algorithm__validate
    Array[File] reference__fasta__base
    Array[String] config__algorithm__variantcaller
    Array[String] config__algorithm__coverage_interval
    Array[String] metadata__batch
    Array[File] config__algorithm__validate_regions
    Array[String] genome_build
    Array[String] metadata__phenotype
    Array[Array[String]] config__algorithm__tools_off
    Array[File] genome_resources__variation__dbsnp
    Array[String] genome_resources__variation__cosmic
    Array[Array[File]] reference__genome_context
    Array[String] analysis
    Array[Array[String]] config__algorithm__tools_on
    Array[File] config__algorithm__variant_regions
    Array[File] reference__rtg
    Array[File] align_bam
    Array[File] regions__callable
    Array[File] config__algorithm__callable_regions
    File vrn_file

    command {
        bcbio_nextgen.py runfn compare_to_rm cwl \
        sentinel_parallel=${default='batch-single' sentinel_parallel} \
        sentinel_outputs=${default='validate__summary,validate__tp,validate__fp,validate__fn' sentinel_outputs} \
        description=${sep=';;' description} \
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
        vrn_file=${vrn_file}
    }

    output {
        File validate__summary = read_string('wdl.output.validate__summary.txt')
        File validate__tp = read_string('wdl.output.validate__tp.txt')
        File validate__fp = read_string('wdl.output.validate__fp.txt')
        File validate__fn = read_string('wdl.output.validate__fn.txt')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '8'
        memory: '16384 MB'
    }
}


task vc_output_record {
    String sentinel_parallel
    String sentinel_outputs
    Array[String] description
    Array[File] config__algorithm__validate
    Array[File] reference__fasta__base
    Array[String] config__algorithm__variantcaller
    Array[String] config__algorithm__coverage_interval
    Array[String] metadata__batch
    Array[File] config__algorithm__validate_regions
    Array[String] genome_build
    Array[String] metadata__phenotype
    Array[Array[String]] config__algorithm__tools_off
    Array[File] genome_resources__variation__dbsnp
    Array[String] genome_resources__variation__cosmic
    Array[Array[File]] reference__genome_context
    Array[String] analysis
    Array[Array[String]] config__algorithm__tools_on
    Array[File] config__algorithm__variant_regions
    Array[File] reference__rtg
    Array[File] align_bam
    Array[File] regions__callable
    Array[File] config__algorithm__callable_regions
    File vrn_file
    File validate__summary
    File validate__tp
    File validate__fp
    File validate__fn

    command {
        bcbio_nextgen.py runfn vc_output_record cwl \
        sentinel_parallel=${default='batch-single' sentinel_parallel} \
        sentinel_outputs=${default='vc_rec' sentinel_outputs} \
        description=${sep=';;' description} \
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
        vrn_file=${vrn_file} \
        validate__summary=${validate__summary} \
        validate__tp=${validate__tp} \
        validate__fp=${validate__fp} \
        validate__fn=${validate__fn}
    }

    output {
        Object vc_rec = read_object('wdl.output.vc_rec.txt')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '8'
        memory: '16384 MB'
    }
}


task variantcall_batch_region {
    String sentinel_parallel
    String sentinel_outputs
    Array[String] description
    Array[File] config__algorithm__validate
    Array[File] reference__fasta__base
    Array[String] config__algorithm__variantcaller
    Array[String] config__algorithm__coverage_interval
    Array[String] metadata__batch
    Array[File] config__algorithm__validate_regions
    Array[String] genome_build
    Array[String] metadata__phenotype
    Array[Array[String]] config__algorithm__tools_off
    Array[File] genome_resources__variation__dbsnp
    Array[String] genome_resources__variation__cosmic
    Array[Array[File]] reference__genome_context
    Array[String] analysis
    Array[Array[String]] config__algorithm__tools_on
    Array[File] config__algorithm__variant_regions
    Array[File] reference__rtg
    Array[File] align_bam
    Array[File] regions__callable
    Array[File] config__algorithm__callable_regions
    String region_input

    command {
        bcbio_nextgen.py runfn variantcall_batch_region cwl \
        sentinel_parallel=${default='batch-parallel' sentinel_parallel} \
        sentinel_outputs=${default='vrn_file_region,region' sentinel_outputs} \
        description=${sep=';;' description} \
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
        region=${region_input}
    }

    output {
        File vrn_file_region = read_string('wdl.output.vrn_file_region.txt')
        String region = read_string('wdl.output.region.txt')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '8'
        memory: '16384 MB'
    }
}


task postprocess_variants {
    String sentinel_parallel
    String sentinel_outputs
    Array[String] description
    Array[File] config__algorithm__validate
    Array[File] reference__fasta__base
    Array[String] config__algorithm__variantcaller
    Array[String] config__algorithm__coverage_interval
    Array[String] metadata__batch
    Array[File] config__algorithm__validate_regions
    Array[String] genome_build
    Array[String] metadata__phenotype
    Array[Array[String]] config__algorithm__tools_off
    Array[File] genome_resources__variation__dbsnp
    Array[String] genome_resources__variation__cosmic
    Array[Array[File]] reference__genome_context
    Array[String] analysis
    Array[Array[String]] config__algorithm__tools_on
    Array[File] config__algorithm__variant_regions
    Array[File] reference__rtg
    Array[File] align_bam
    Array[File] regions__callable
    Array[File] config__algorithm__callable_regions
    File vrn_file_input

    command {
        bcbio_nextgen.py runfn postprocess_variants cwl \
        sentinel_parallel=${default='batch-single' sentinel_parallel} \
        sentinel_outputs=${default='vrn_file' sentinel_outputs} \
        description=${sep=';;' description} \
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
        vrn_file=${vrn_file_input}
    }

    output {
        File vrn_file = read_string('wdl.output.vrn_file.txt')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '8'
        memory: '16384 MB'
    }
}


task get_parallel_regions {
    String sentinel_parallel
    String sentinel_outputs
    Array[String] description
    Array[File] config__algorithm__validate
    Array[File] reference__fasta__base
    Array[String] config__algorithm__variantcaller
    Array[String] config__algorithm__coverage_interval
    Array[String] metadata__batch
    Array[File] config__algorithm__validate_regions
    Array[String] genome_build
    Array[String] metadata__phenotype
    Array[Array[String]] config__algorithm__tools_off
    Array[File] genome_resources__variation__dbsnp
    Array[String] genome_resources__variation__cosmic
    Array[Array[File]] reference__genome_context
    Array[String] analysis
    Array[Array[String]] config__algorithm__tools_on
    Array[File] config__algorithm__variant_regions
    Array[File] reference__rtg
    Array[File] align_bam
    Array[File] regions__callable
    Array[File] config__algorithm__callable_regions

    command {
        bcbio_nextgen.py runfn get_parallel_regions cwl \
        sentinel_parallel=${default='batch-split' sentinel_parallel} \
        sentinel_outputs=${default='region' sentinel_outputs} \
        description=${sep=';;' description} \
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
        config__algorithm__callable_regions=${sep=';;' config__algorithm__callable_regions}
    }

    output {
        Array[String] region = read_lines('wdl.output.region.txt')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '8'
        memory: '16384 MB'
    }
}


task concat_batch_variantcalls {
    String sentinel_parallel
    String sentinel_outputs
    Array[String] description
    Array[File] config__algorithm__validate
    Array[File] reference__fasta__base
    Array[String] config__algorithm__variantcaller
    Array[String] config__algorithm__coverage_interval
    Array[String] metadata__batch
    Array[File] config__algorithm__validate_regions
    Array[String] genome_build
    Array[String] metadata__phenotype
    Array[Array[String]] config__algorithm__tools_off
    Array[File] genome_resources__variation__dbsnp
    Array[String] genome_resources__variation__cosmic
    Array[Array[File]] reference__genome_context
    Array[String] analysis
    Array[Array[String]] config__algorithm__tools_on
    Array[File] config__algorithm__variant_regions
    Array[File] reference__rtg
    Array[File] align_bam
    Array[File] regions__callable
    Array[File] config__algorithm__callable_regions
    Array[String] region
    Array[File] vrn_file_region

    command {
        bcbio_nextgen.py runfn concat_batch_variantcalls cwl \
        sentinel_parallel=${default='batch-merge' sentinel_parallel} \
        sentinel_outputs=${default='vrn_file' sentinel_outputs} \
        description=${sep=';;' description} \
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
        region=${sep=';;' region} \
        vrn_file_region=${sep=';;' vrn_file_region}
    }

    output {
        File vrn_file = read_string('wdl.output.vrn_file.txt')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '8'
        memory: '16384 MB'
    }
}

