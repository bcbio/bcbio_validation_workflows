


workflow alignment {
    String description
    String config__algorithm__align_split_size
    File reference__fasta__base
    String rgnames__lb
    String rgnames__rg
    String rgnames__lane
    File reference__bwa__indexes
    Array[File] files
    String config__algorithm__aligner
    String rgnames__pl
    String config__algorithm__mark_duplicates
    String rgnames__pu
    String rgnames__sample
    
    scatter (process_alignment_rec_local in prep_align_inputs.process_alignment_rec) {
  
      call process_alignment {
          input: config__algorithm__quality_format=process_alignment_rec_local.config__algorithm__quality_format, 
            align_split=process_alignment_rec_local.align_split, 
            files=process_alignment_rec_local.files, 
            description=description, 
            config__algorithm__align_split_size=config__algorithm__align_split_size, 
            reference__fasta__base=reference__fasta__base, 
            rgnames__lb=rgnames__lb, 
            rgnames__rg=rgnames__rg, 
            rgnames__lane=rgnames__lane, 
            reference__bwa__indexes=reference__bwa__indexes, 
            config__algorithm__aligner=config__algorithm__aligner, 
            rgnames__pl=rgnames__pl, 
            config__algorithm__mark_duplicates=config__algorithm__mark_duplicates, 
            rgnames__pu=rgnames__pu, 
            rgnames__sample=rgnames__sample
      }
  
    }


    call merge_split_alignments {
        input: work_bam=process_alignment.work_bam, 
          align_bam_input=process_alignment.align_bam, 
          work_bam_plus__disc_input=process_alignment.work_bam_plus__disc, 
          work_bam_plus__sr_input=process_alignment.work_bam_plus__sr, 
          hla__fastq_input=process_alignment.hla__fastq, 
          description=description
    }


    call prep_align_inputs {
        input: description=description, 
          config__algorithm__align_split_size=config__algorithm__align_split_size, 
          reference__fasta__base=reference__fasta__base, 
          rgnames__lb=rgnames__lb, 
          rgnames__rg=rgnames__rg, 
          rgnames__lane=rgnames__lane, 
          reference__bwa__indexes=reference__bwa__indexes, 
          files=files, 
          config__algorithm__aligner=config__algorithm__aligner, 
          rgnames__pl=rgnames__pl, 
          config__algorithm__mark_duplicates=config__algorithm__mark_duplicates, 
          rgnames__pu=rgnames__pu, 
          rgnames__sample=rgnames__sample
    }

    
   output {
     File align_bam = merge_split_alignments.align_bam
     File work_bam_plus__disc = merge_split_alignments.work_bam_plus__disc
     File work_bam_plus__sr = merge_split_alignments.work_bam_plus__sr
     File hla__fastq = merge_split_alignments.hla__fastq
   }

}

task process_alignment {
    String sentinel_parallel
    String sentinel_outputs
    String config__algorithm__quality_format
    String align_split
    Array[File] files
    String description
    String config__algorithm__align_split_size
    File reference__fasta__base
    String rgnames__lb
    String rgnames__rg
    String rgnames__lane
    File reference__bwa__indexes
    String config__algorithm__aligner
    String rgnames__pl
    String config__algorithm__mark_duplicates
    String rgnames__pu
    String rgnames__sample

    command {
        bcbio_nextgen.py runfn process_alignment cwl \
        sentinel_parallel=${default='single-parallel' sentinel_parallel} \
        sentinel_outputs=${default='work_bam,align_bam,hla__fastq,work_bam_plus__disc,work_bam_plus__sr' sentinel_outputs} \
        config__algorithm__quality_format=${config__algorithm__quality_format} \
        align_split=${align_split} \
        files=${sep=';;' files} \
        description=${description} \
        config__algorithm__align_split_size=${config__algorithm__align_split_size} \
        reference__fasta__base=${reference__fasta__base} \
        rgnames__lb=${rgnames__lb} \
        rgnames__rg=${rgnames__rg} \
        rgnames__lane=${rgnames__lane} \
        reference__bwa__indexes=${reference__bwa__indexes} \
        config__algorithm__aligner=${config__algorithm__aligner} \
        rgnames__pl=${rgnames__pl} \
        config__algorithm__mark_duplicates=${config__algorithm__mark_duplicates} \
        rgnames__pu=${rgnames__pu} \
        rgnames__sample=${rgnames__sample}
    }

    output {
        File work_bam = read_string('wdl.output.work_bam.txt')
        File align_bam = read_string('wdl.output.align_bam.txt')
        File hla__fastq = read_string('wdl.output.hla__fastq.txt')
        File work_bam_plus__disc = read_string('wdl.output.work_bam_plus__disc.txt')
        File work_bam_plus__sr = read_string('wdl.output.work_bam_plus__sr.txt')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '8'
        memory: '16384 MB'
    }
}


task merge_split_alignments {
    String sentinel_parallel
    String sentinel_outputs
    Array[File] work_bam
    Array[File] align_bam_input
    Array[File] work_bam_plus__disc_input
    Array[File] work_bam_plus__sr_input
    Array[File] hla__fastq_input
    String description

    command {
        bcbio_nextgen.py runfn merge_split_alignments cwl \
        sentinel_parallel=${default='single-merge' sentinel_parallel} \
        sentinel_outputs=${default='align_bam,work_bam_plus__disc,work_bam_plus__sr,hla__fastq' sentinel_outputs} \
        work_bam=${sep=';;' work_bam} \
        align_bam=${sep=';;' align_bam_input} \
        work_bam_plus__disc=${sep=';;' work_bam_plus__disc_input} \
        work_bam_plus__sr=${sep=';;' work_bam_plus__sr_input} \
        hla__fastq=${sep=';;' hla__fastq_input} \
        description=${description}
    }

    output {
        File align_bam = read_string('wdl.output.align_bam.txt')
        File work_bam_plus__disc = read_string('wdl.output.work_bam_plus__disc.txt')
        File work_bam_plus__sr = read_string('wdl.output.work_bam_plus__sr.txt')
        File hla__fastq = read_string('wdl.output.hla__fastq.txt')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '8'
        memory: '16384 MB'
    }
}


task prep_align_inputs {
    String sentinel_parallel
    String sentinel_outputs
    String description
    String config__algorithm__align_split_size
    File reference__fasta__base
    String rgnames__lb
    String rgnames__rg
    String rgnames__lane
    File reference__bwa__indexes
    Array[File] files
    String config__algorithm__aligner
    String rgnames__pl
    String config__algorithm__mark_duplicates
    String rgnames__pu
    String rgnames__sample

    command {
        bcbio_nextgen.py runfn prep_align_inputs cwl \
        sentinel_parallel=${default='single-split' sentinel_parallel} \
        sentinel_outputs=${default='process_alignment_rec' sentinel_outputs} \
        description=${description} \
        config__algorithm__align_split_size=${config__algorithm__align_split_size} \
        reference__fasta__base=${reference__fasta__base} \
        rgnames__lb=${rgnames__lb} \
        rgnames__rg=${rgnames__rg} \
        rgnames__lane=${rgnames__lane} \
        reference__bwa__indexes=${reference__bwa__indexes} \
        files=${sep=';;' files} \
        config__algorithm__aligner=${config__algorithm__aligner} \
        rgnames__pl=${rgnames__pl} \
        config__algorithm__mark_duplicates=${config__algorithm__mark_duplicates} \
        rgnames__pu=${rgnames__pu} \
        rgnames__sample=${rgnames__sample}
    }

    output {
        Array[Object] process_alignment_rec = read_objects('wdl.output.process_alignment_rec.txt')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '8'
        memory: '16384 MB'
    }
}

