



workflow alignment {
    AlignmentRec alignment_rec
    
    call merge_split_alignments {
        input: alignment_rec=alignment_rec, 
          work_bam=process_alignment.work_bam, 
          align_bam_toolinput=process_alignment.align_bam, 
          work_bam_plus__disc_toolinput=process_alignment.work_bam_plus__disc, 
          work_bam_plus__sr_toolinput=process_alignment.work_bam_plus__sr, 
          hla__fastq_toolinput=process_alignment.hla__fastq
    }


    scatter (process_alignment_rec_local in prep_align_inputs.process_alignment_rec) {
  
      call process_alignment {
          input: alignment_rec=alignment_rec, 
            process_alignment_rec=process_alignment_rec_local
      }
  
    }


    call prep_align_inputs {
        input: alignment_rec=alignment_rec
    }

    
   output {
     File align_bam = merge_split_alignments.align_bam
     File work_bam_plus__disc = merge_split_alignments.work_bam_plus__disc
     File work_bam_plus__sr = merge_split_alignments.work_bam_plus__sr
     File hla__fastq = merge_split_alignments.hla__fastq
   }

}

task merge_split_alignments {
    AlignmentRec alignment_rec
    Array[File] work_bam
    Array[File] align_bam_toolinput
    Array[File] work_bam_plus__disc_toolinput
    Array[File] work_bam_plus__sr_toolinput
    Array[File] hla__fastq_toolinput

    command {
        bcbio_nextgen.py runfn merge_split_alignments cwl \
        sentinel_runtime=cores,8,ram,24576MB \
        sentinel_parallel=single-merge \
        sentinel_outputs=align_bam,work_bam_plus__disc,work_bam_plus__sr,hla__fastq \
        sentinel_inputs=alignment_rec:record,work_bam:var,align_bam:var,work_bam_plus__disc:var,work_bam_plus__sr:var,hla__fastq:var \
        ${alignment_rec} \
        ${sep=';;' work_bam} \
        ${sep=';;' align_bam_toolinput} \
        ${sep=';;' work_bam_plus__disc_toolinput} \
        ${sep=';;' work_bam_plus__sr_toolinput} \
        ${sep=';;' hla__fastq_toolinput}
    }

    output {
        File align_bam = read_string('wdl.output.align_bam.txt')
        File work_bam_plus__disc = read_string('wdl.output.work_bam_plus__disc.txt')
        File work_bam_plus__sr = read_string('wdl.output.work_bam_plus__sr.txt')
        File hla__fastq = read_string('wdl.output.hla__fastq.txt')
    }

    runtime {
        docker: 'quay.io/bcbio/bcbio-align'
        cpu: '8'
        memory: '24576 MB'
        disks: 'local-disk 8441 HDD'
    }
}


task process_alignment {
    AlignmentRec alignment_rec
    ProcessAlignmentRec process_alignment_rec

    command {
        bcbio_nextgen.py runfn process_alignment cwl \
        sentinel_runtime=cores,8,ram,24576MB \
        sentinel_parallel=single-parallel \
        sentinel_outputs=work_bam,align_bam,hla__fastq,work_bam_plus__disc,work_bam_plus__sr \
        sentinel_inputs=alignment_rec:record,process_alignment_rec:record \
        ${alignment_rec} \
        ${process_alignment_rec}
    }

    output {
        File work_bam = read_string('wdl.output.work_bam.txt')
        File align_bam = read_string('wdl.output.align_bam.txt')
        File hla__fastq = read_string('wdl.output.hla__fastq.txt')
        File work_bam_plus__disc = read_string('wdl.output.work_bam_plus__disc.txt')
        File work_bam_plus__sr = read_string('wdl.output.work_bam_plus__sr.txt')
    }

    runtime {
        docker: 'quay.io/bcbio/bcbio-align'
        cpu: '8'
        memory: '24576 MB'
        disks: 'local-disk 4220 HDD'
    }
}


task prep_align_inputs {
    AlignmentRec alignment_rec

    command {
        bcbio_nextgen.py runfn prep_align_inputs cwl \
        sentinel_runtime=cores,1,ram,3072MB \
        sentinel_parallel=single-split \
        sentinel_outputs=process_alignment_rec:files;config__algorithm__quality_format;align_split \
        sentinel_inputs=alignment_rec:record \
        ${alignment_rec}
    }

    output {
        Array[ProcessAlignmentRec] process_alignment_rec = read_struct('wdl.output.process_alignment_rec.txt')
    }

    runtime {
        docker: 'quay.io/bcbio/bcbio-align'
        cpu: '1'
        memory: '3072 MB'
        disks: 'local-disk 4220 HDD'
    }
}

