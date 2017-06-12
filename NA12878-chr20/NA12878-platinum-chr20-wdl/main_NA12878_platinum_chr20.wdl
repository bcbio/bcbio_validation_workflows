
import "variantcall.wdl" as variantcall
import "alignment.wdl" as alignment


struct ProcessAlignmentRec {
 files: Array[File],
 config__algorithm__quality_format: String,
 align_split: String
}

struct VcRec {
 validate__summary: File,
 validate__tp: File,
 validate__fp: File,
 validate__fn: File,
 description: String,
 vrn_file: File,
 config__algorithm__validate: File,
 reference__fasta__base: File,
 config__algorithm__variantcaller: String,
 config__algorithm__coverage_interval: String,
 metadata__batch: String,
 config__algorithm__validate_regions: File,
 genome_build: String,
 metadata__phenotype: String,
 config__algorithm__tools_off: Array[String],
 genome_resources__variation__dbsnp: File,
 genome_resources__variation__cosmic: String,
 reference__genome_context: Array[File],
 analysis: String,
 config__algorithm__tools_on: Array[String],
 config__algorithm__variant_regions: File,
 reference__rtg: File,
 align_bam: File,
 regions__sample_callable: File,
 config__algorithm__callable_regions: File
}

struct PostprocessAlignmentRec {
 description: String,
 reference__fasta__base: File,
 config__algorithm__coverage_interval: String,
 config__algorithm__recalibrate: String,
 config__algorithm__variant_regions: File,
 align_bam: File,
 config__algorithm__variant_regions_merged: File,
 config__algorithm__variant_regions_orig: File,
 config__algorithm__coverage: File,
 config__algorithm__coverage_merged: File,
 config__algorithm__coverage_orig: File,
 config__algorithm__seq2c_bed_ready: File
}

struct AlignmentRec {
 description: String,
 config__algorithm__align_split_size: String,
 reference__fasta__base: File,
 rgnames__lb: String,
 rgnames__rg: String,
 rgnames__lane: String,
 reference__bwa__indexes: File,
 files: Array[File],
 config__algorithm__aligner: String,
 rgnames__pl: String,
 config__algorithm__mark_duplicates: String,
 rgnames__pu: String,
 rgnames__sample: String
}

struct PrepSamplesRec {
 description: String,
 reference__fasta__base: File,
 config__algorithm__variant_regions: String
}

struct BatchRec {
 description: String,
 config__algorithm__validate: File,
 reference__fasta__base: File,
 config__algorithm__variantcaller: String,
 config__algorithm__coverage_interval: String,
 metadata__batch: String,
 config__algorithm__validate_regions: File,
 genome_build: String,
 metadata__phenotype: String,
 config__algorithm__tools_off: Array[String],
 genome_resources__variation__dbsnp: File,
 genome_resources__variation__cosmic: String,
 reference__genome_context: Array[File],
 analysis: String,
 config__algorithm__tools_on: Array[String],
 config__algorithm__variant_regions: File,
 reference__rtg: File,
 align_bam: File,
 regions__sample_callable: File,
 config__algorithm__callable_regions: File
}

struct QcRec {
 description: String,
 reference__fasta__base: File,
 config__algorithm__coverage_interval: String,
 genome_build: String,
 config__algorithm__tools_off: Array[String],
 config__algorithm__qc: Array[String],
 analysis: String,
 config__algorithm__tools_on: Array[String],
 config__algorithm__variant_regions: File,
 align_bam: File,
 config__algorithm__variant_regions_merged: File,
 config__algorithm__coverage: File,
 config__algorithm__coverage_merged: File
}

struct QcoutRec {
 summary__qc: File,
 summary__metrics: String,
 description: String,
 reference__fasta__base: File,
 config__algorithm__coverage_interval: String,
 genome_build: String,
 config__algorithm__tools_off: Array[String],
 config__algorithm__qc: Array[String],
 analysis: String,
 config__algorithm__tools_on: Array[String],
 config__algorithm__variant_regions: File,
 align_bam: File,
 config__algorithm__variant_regions_merged: File,
 config__algorithm__coverage: File,
 config__algorithm__coverage_merged: File
}


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


    call combine_sample_regions {
        input: regions__callable=postprocess_alignment.regions__callable, 
          regions__nblock=postprocess_alignment.regions__nblock, 
          config__algorithm__nomap_split_size=config__algorithm__nomap_split_size, 
          config__algorithm__nomap_split_targets=config__algorithm__nomap_split_targets, 
          reference__fasta__base=reference__fasta__base, 
          description=description
    }


    scatter (qc_rec_local in qc_to_rec.qc_rec) {
  
      call pipeline_summary {
          input: qc_rec=qc_rec_local
      }
  
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


    call prep_samples_to_rec {
        input: config__algorithm__variant_regions=config__algorithm__variant_regions, 
          reference__fasta__base=reference__fasta__base, 
          description=description
    }


    call batch_for_variantcall {
        input: analysis=analysis, 
          genome_build=genome_build, 
          align_bam=alignment.align_bam, 
          config__algorithm__callable_regions=combine_sample_regions.config__algorithm__callable_regions, 
          metadata__batch=metadata__batch, 
          metadata__phenotype=metadata__phenotype, 
          regions__sample_callable=postprocess_alignment.regions__sample_callable, 
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


    call multiqc_summary {
        input: qcout_rec=pipeline_summary.qcout_rec
    }


    call summarize_grading_vc {
        input: vc_rec=variantcall.vc_rec
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


    scatter (postprocess_alignment_rec_local in postprocess_alignment_to_rec.postprocess_alignment_rec) {
  
      call postprocess_alignment {
          input: postprocess_alignment_rec=postprocess_alignment_rec_local
      }
  
    }


    scatter (prep_samples_rec_local in prep_samples_to_rec.prep_samples_rec) {
  
      call prep_samples {
          input: prep_samples_rec=prep_samples_rec_local
      }
  
    }


    scatter (batch_rec_local in batch_for_variantcall.batch_rec) {
  
      call variantcall.variantcall {
          input: batch_rec=batch_rec_local
      }
  
    }


    scatter (alignment_rec_local in alignment_to_rec.alignment_rec) {
  
      call alignment.alignment {
          input: alignment_rec=alignment_rec_local
      }
  
    }

    
   output {
     Array[File] align_bam = alignment.align_bam
     Array[File] summary__multiqc = multiqc_summary.summary__multiqc
     Array[File] validate__grading_summary = summarize_grading_vc.validate__grading_summary
   }

}

task postprocess_alignment_to_rec {
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
        sentienl_runtime=cores,1,ram,3072MB \
        sentinel_parallel=multi-combined \
        sentinel_outputs=postprocess_alignment_rec:description;reference__fasta__base;config__algorithm__coverage_interval;config__algorithm__recalibrate;config__algorithm__variant_regions;align_bam;config__algorithm__variant_regions_merged;config__algorithm__variant_regions_orig;config__algorithm__coverage;config__algorithm__coverage_merged;config__algorithm__coverage_orig;config__algorithm__seq2c_bed_ready \
        sentinel_inputs=align_bam:var,config__algorithm__coverage_interval:var,config__algorithm__variant_regions:var,config__algorithm__variant_regions_merged:var,config__algorithm__variant_regions_orig:var,config__algorithm__coverage:var,config__algorithm__coverage_merged:var,config__algorithm__coverage_orig:var,config__algorithm__seq2c_bed_ready:var,config__algorithm__recalibrate:var,reference__fasta__base:var,description:var \
        ${sep=';;' align_bam} \
        ${sep=';;' config__algorithm__coverage_interval} \
        ${sep=';;' config__algorithm__variant_regions} \
        ${sep=';;' config__algorithm__variant_regions_merged} \
        ${sep=';;' config__algorithm__variant_regions_orig} \
        ${sep=';;' config__algorithm__coverage} \
        ${sep=';;' config__algorithm__coverage_merged} \
        ${sep=';;' config__algorithm__coverage_orig} \
        ${sep=';;' config__algorithm__seq2c_bed_ready} \
        ${sep=';;' config__algorithm__recalibrate} \
        ${sep=';;' reference__fasta__base} \
        ${sep=';;' description}
    }

    output {
        Array[PostprocessAlignmentRec] postprocess_alignment_rec = read_struct('wdl.output.postprocess_alignment_rec.txt')
    }

    runtime {
        docker: 'quay.io/bcbio/bcbio-base'
        cpu: '1'
        memory: '3072 MB'
    }
}


task combine_sample_regions {
    Array[File] regions__callable
    Array[File] regions__nblock
    Array[Float] config__algorithm__nomap_split_size
    Array[Float] config__algorithm__nomap_split_targets
    Array[File] reference__fasta__base
    Array[String] description

    command {
        bcbio_nextgen.py runfn combine_sample_regions cwl \
        sentienl_runtime=cores,1,ram,3072MB \
        sentinel_parallel=multi-combined \
        sentinel_outputs=config__algorithm__callable_regions,config__algorithm__non_callable_regions,config__algorithm__callable_count \
        sentinel_inputs=regions__callable:var,regions__nblock:var,config__algorithm__nomap_split_size:var,config__algorithm__nomap_split_targets:var,reference__fasta__base:var,description:var \
        ${sep=';;' regions__callable} \
        ${sep=';;' regions__nblock} \
        ${sep=';;' config__algorithm__nomap_split_size} \
        ${sep=';;' config__algorithm__nomap_split_targets} \
        ${sep=';;' reference__fasta__base} \
        ${sep=';;' description}
    }

    output {
        Array[File] config__algorithm__callable_regions = read_lines('wdl.output.config__algorithm__callable_regions.txt')
        Array[File] config__algorithm__non_callable_regions = read_lines('wdl.output.config__algorithm__non_callable_regions.txt')
        Array[Int] config__algorithm__callable_count = read_lines('wdl.output.config__algorithm__callable_count.txt')
    }

    runtime {
        docker: 'quay.io/bcbio/bcbio-align'
        cpu: '1'
        memory: '3072 MB'
    }
}


task pipeline_summary {
    QcRec qc_rec

    command {
        bcbio_nextgen.py runfn pipeline_summary cwl \
        sentienl_runtime=cores,8,ram,24576MB \
        sentinel_parallel=multi-parallel \
        sentinel_outputs=qcout_rec:summary__qc;summary__metrics;description;reference__fasta__base;config__algorithm__coverage_interval;genome_build;config__algorithm__tools_off;config__algorithm__qc;analysis;config__algorithm__tools_on;config__algorithm__variant_regions;align_bam;config__algorithm__variant_regions_merged;config__algorithm__coverage;config__algorithm__coverage_merged \
        sentinel_inputs=qc_rec:record \
        ${write_struct(qc_rec)}
    }

    output {
        QcoutRec qcout_rec = read_struct('wdl.output.qcout_rec.txt')
    }

    runtime {
        docker: 'quay.io/bcbio/bcbio-qc'
        cpu: '8'
        memory: '24576 MB'
    }
}


task alignment_to_rec {
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
        sentienl_runtime=cores,1,ram,3072MB \
        sentinel_parallel=multi-combined \
        sentinel_outputs=alignment_rec:description;config__algorithm__align_split_size;reference__fasta__base;rgnames__lb;rgnames__rg;rgnames__lane;reference__bwa__indexes;files;config__algorithm__aligner;rgnames__pl;config__algorithm__mark_duplicates;rgnames__pu;rgnames__sample \
        sentinel_inputs=files:var,config__algorithm__align_split_size:var,reference__fasta__base:var,rgnames__pl:var,rgnames__sample:var,rgnames__pu:var,rgnames__lane:var,rgnames__rg:var,rgnames__lb:var,reference__bwa__indexes:var,config__algorithm__aligner:var,config__algorithm__mark_duplicates:var,description:var \
        ${sep=';;' files} \
        ${sep=';;' config__algorithm__align_split_size} \
        ${sep=';;' reference__fasta__base} \
        ${sep=';;' rgnames__pl} \
        ${sep=';;' rgnames__sample} \
        ${sep=';;' rgnames__pu} \
        ${sep=';;' rgnames__lane} \
        ${sep=';;' rgnames__rg} \
        ${sep=';;' rgnames__lb} \
        ${sep=';;' reference__bwa__indexes} \
        ${sep=';;' config__algorithm__aligner} \
        ${sep=';;' config__algorithm__mark_duplicates} \
        ${sep=';;' description}
    }

    output {
        Array[AlignmentRec] alignment_rec = read_struct('wdl.output.alignment_rec.txt')
    }

    runtime {
        docker: 'quay.io/bcbio/bcbio-base'
        cpu: '1'
        memory: '3072 MB'
    }
}


task prep_samples_to_rec {
    Array[String] config__algorithm__variant_regions
    Array[File] reference__fasta__base
    Array[String] description

    command {
        bcbio_nextgen.py runfn prep_samples_to_rec cwl \
        sentienl_runtime=cores,1,ram,3072MB \
        sentinel_parallel=multi-combined \
        sentinel_outputs=prep_samples_rec:description;reference__fasta__base;config__algorithm__variant_regions \
        sentinel_inputs=config__algorithm__variant_regions:var,reference__fasta__base:var,description:var \
        ${sep=';;' config__algorithm__variant_regions} \
        ${sep=';;' reference__fasta__base} \
        ${sep=';;' description}
    }

    output {
        Array[PrepSamplesRec] prep_samples_rec = read_struct('wdl.output.prep_samples_rec.txt')
    }

    runtime {
        docker: 'quay.io/bcbio/bcbio-base'
        cpu: '1'
        memory: '3072 MB'
    }
}


task batch_for_variantcall {
    Array[String] analysis
    Array[String] genome_build
    Array[File] align_bam
    Array[File] config__algorithm__callable_regions
    Array[String] metadata__batch
    Array[String] metadata__phenotype
    Array[File] regions__sample_callable
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
        sentienl_runtime=cores,1,ram,3072MB \
        sentinel_parallel=multi-batch \
        sentinel_outputs=batch_rec:description;config__algorithm__validate;reference__fasta__base;config__algorithm__variantcaller;config__algorithm__coverage_interval;metadata__batch;config__algorithm__validate_regions;genome_build;metadata__phenotype;config__algorithm__tools_off;genome_resources__variation__dbsnp;genome_resources__variation__cosmic;reference__genome_context;analysis;config__algorithm__tools_on;config__algorithm__variant_regions;reference__rtg;align_bam;regions__sample_callable;config__algorithm__callable_regions \
        sentinel_inputs=analysis:var,genome_build:var,align_bam:var,config__algorithm__callable_regions:var,metadata__batch:var,metadata__phenotype:var,regions__sample_callable:var,config__algorithm__variantcaller:var,config__algorithm__coverage_interval:var,config__algorithm__variant_regions:var,config__algorithm__validate:var,config__algorithm__validate_regions:var,config__algorithm__tools_on:var,config__algorithm__tools_off:var,reference__fasta__base:var,reference__rtg:var,reference__genome_context:var,genome_resources__variation__cosmic:var,genome_resources__variation__dbsnp:var,description:var \
        ${sep=';;' analysis} \
        ${sep=';;' genome_build} \
        ${sep=';;' align_bam} \
        ${sep=';;' config__algorithm__callable_regions} \
        ${sep=';;' metadata__batch} \
        ${sep=';;' metadata__phenotype} \
        ${sep=';;' regions__sample_callable} \
        ${sep=';;' config__algorithm__variantcaller} \
        ${sep=';;' config__algorithm__coverage_interval} \
        ${sep=';;' config__algorithm__variant_regions} \
        ${sep=';;' config__algorithm__validate} \
        ${sep=';;' config__algorithm__validate_regions} \
        ${sep=';;' config__algorithm__tools_on} \
        ${sep=';;' config__algorithm__tools_off} \
        ${sep=';;' reference__fasta__base} \
        ${sep=';;' reference__rtg} \
        ${sep=';;' reference__genome_context} \
        ${sep=';;' genome_resources__variation__cosmic} \
        ${sep=';;' genome_resources__variation__dbsnp} \
        ${sep=';;' description}
    }

    output {
        Array[Array[BatchRec]] batch_rec = read_struct('wdl.output.batch_rec.txt')
    }

    runtime {
        docker: 'quay.io/bcbio/bcbio-base'
        cpu: '1'
        memory: '3072 MB'
    }
}


task multiqc_summary {
    Array[QcoutRec] qcout_rec

    command {
        bcbio_nextgen.py runfn multiqc_summary cwl \
        sentienl_runtime=cores,1,ram,3072MB \
        sentinel_parallel=multi-combined \
        sentinel_outputs=summary__multiqc \
        sentinel_inputs=qcout_rec:record \
        ${write_struct(qcout_rec)}
    }

    output {
        Array[File] summary__multiqc = read_lines('wdl.output.summary__multiqc.txt')
    }

    runtime {
        docker: 'quay.io/bcbio/bcbio-qc'
        cpu: '1'
        memory: '3072 MB'
    }
}


task summarize_grading_vc {
    Array[Array[VcRec]] vc_rec

    command {
        bcbio_nextgen.py runfn summarize_grading_vc cwl \
        sentienl_runtime=cores,1,ram,3072MB \
        sentinel_parallel=multi-combined \
        sentinel_outputs=validate__grading_summary,validate__grading_plots \
        sentinel_inputs=vc_rec:record \
        ${write_struct(vc_rec)}
    }

    output {
        Array[File] validate__grading_summary = read_lines('wdl.output.validate__grading_summary.txt')
        Array[Array[File]] validate__grading_plots = read_tsv('wdl.output.validate__grading_plots.txt')
    }

    runtime {
        docker: 'quay.io/bcbio/bcbio-base'
        cpu: '1'
        memory: '3072 MB'
    }
}


task qc_to_rec {
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
        sentienl_runtime=cores,1,ram,3072MB \
        sentinel_parallel=multi-combined \
        sentinel_outputs=qc_rec:description;reference__fasta__base;config__algorithm__coverage_interval;genome_build;config__algorithm__tools_off;config__algorithm__qc;analysis;config__algorithm__tools_on;config__algorithm__variant_regions;align_bam;config__algorithm__variant_regions_merged;config__algorithm__coverage;config__algorithm__coverage_merged \
        sentinel_inputs=align_bam:var,analysis:var,reference__fasta__base:var,genome_build:var,config__algorithm__coverage_interval:var,config__algorithm__tools_on:var,config__algorithm__tools_off:var,config__algorithm__qc:var,config__algorithm__variant_regions:var,config__algorithm__variant_regions_merged:var,config__algorithm__coverage:var,config__algorithm__coverage_merged:var,description:var \
        ${sep=';;' align_bam} \
        ${sep=';;' analysis} \
        ${sep=';;' reference__fasta__base} \
        ${sep=';;' genome_build} \
        ${sep=';;' config__algorithm__coverage_interval} \
        ${sep=';;' config__algorithm__tools_on} \
        ${sep=';;' config__algorithm__tools_off} \
        ${sep=';;' config__algorithm__qc} \
        ${sep=';;' config__algorithm__variant_regions} \
        ${sep=';;' config__algorithm__variant_regions_merged} \
        ${sep=';;' config__algorithm__coverage} \
        ${sep=';;' config__algorithm__coverage_merged} \
        ${sep=';;' description}
    }

    output {
        Array[QcRec] qc_rec = read_struct('wdl.output.qc_rec.txt')
    }

    runtime {
        docker: 'quay.io/bcbio/bcbio-base'
        cpu: '1'
        memory: '3072 MB'
    }
}


task postprocess_alignment {
    PostprocessAlignmentRec postprocess_alignment_rec

    command {
        bcbio_nextgen.py runfn postprocess_alignment cwl \
        sentienl_runtime=cores,8,ram,24576MB \
        sentinel_parallel=multi-parallel \
        sentinel_outputs=config__algorithm__coverage_interval,config__algorithm__variant_regions,config__algorithm__variant_regions_merged,config__algorithm__variant_regions_orig,config__algorithm__coverage,config__algorithm__coverage_merged,config__algorithm__coverage_orig,config__algorithm__seq2c_bed_ready,regions__callable,regions__sample_callable,regions__nblock,regions__highdepth \
        sentinel_inputs=postprocess_alignment_rec:record \
        ${write_struct(postprocess_alignment_rec)}
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
        docker: 'quay.io/bcbio/bcbio-align'
        cpu: '8'
        memory: '24576 MB'
    }
}


task prep_samples {
    PrepSamplesRec prep_samples_rec

    command {
        bcbio_nextgen.py runfn prep_samples cwl \
        sentienl_runtime=cores,1,ram,3072MB \
        sentinel_parallel=multi-parallel \
        sentinel_outputs=config__algorithm__variant_regions,config__algorithm__variant_regions_merged,config__algorithm__variant_regions_orig,config__algorithm__coverage,config__algorithm__coverage_merged,config__algorithm__coverage_orig,config__algorithm__seq2c_bed_ready \
        sentinel_inputs=prep_samples_rec:record \
        ${write_struct(prep_samples_rec)}
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
        docker: 'quay.io/bcbio/bcbio-align'
        cpu: '1'
        memory: '3072 MB'
    }
}

