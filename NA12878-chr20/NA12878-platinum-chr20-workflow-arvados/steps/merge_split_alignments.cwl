arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
baseCommand:
- bcbio_nextgen.py
- runfn
- merge_split_alignments
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: DockerRequirement
  dockerImageId: quay.io/bcbio/bcbio-align
  dockerPull: quay.io/bcbio/bcbio-align
- class: ResourceRequirement
  coresMin: 8
  outdirMin: 9465
  ramMin: 24576
  tmpdirMin: 8441
- class: SoftwareRequirement
  packages:
  - package: biobambam
    specs:
    - https://anaconda.org/bioconda/biobambam
  - package: samtools
    specs:
    - https://anaconda.org/bioconda/samtools
inputs:
- default: single-merge
  id: sentinel_parallel
  inputBinding:
    itemSeparator: ;;
    position: 0
    prefix: sentinel_parallel=
    separate: false
  type: string
- default: align_bam,work_bam_plus__disc,work_bam_plus__sr,hla__fastq
  id: sentinel_outputs
  inputBinding:
    itemSeparator: ;;
    position: 1
    prefix: sentinel_outputs=
    separate: false
  type: string
- default: alignment_rec:record,work_bam:var,align_bam:var,work_bam_plus__disc:var,work_bam_plus__sr:var,hla__fastq:var
  id: sentinel_inputs
  inputBinding:
    itemSeparator: ;;
    position: 2
    prefix: sentinel_inputs=
    separate: false
  type: string
- id: alignment_rec
  type:
    fields:
    - name: description
      type: string
    - name: config__algorithm__align_split_size
      type: 'null'
    - name: reference__fasta__base
      type: File
    - name: rgnames__lb
      type: 'null'
    - name: rgnames__rg
      type: string
    - name: rgnames__lane
      type: string
    - name: reference__bwa__indexes
      type: File
    - name: files
      type:
        items: File
        type: array
    - name: config__algorithm__aligner
      type: string
    - name: rgnames__pl
      type: string
    - name: config__algorithm__mark_duplicates
      type: string
    - name: rgnames__pu
      type: string
    - name: rgnames__sample
      type: string
    name: alignment_rec
    type: record
- id: work_bam
  type:
    items: File
    type: array
- id: align_bam_toolinput
  type:
    items: File
    type: array
- id: work_bam_plus__disc_toolinput
  secondaryFiles:
  - .bai
  type:
    items:
    - File
    - 'null'
    type: array
- id: work_bam_plus__sr_toolinput
  secondaryFiles:
  - .bai
  type:
    items:
    - File
    - 'null'
    type: array
- id: hla__fastq_toolinput
  type:
    items:
    - File
    - 'null'
    - items: File
      type: array
    type: array
outputs:
- id: align_bam
  secondaryFiles:
  - .bai
  type: File
- id: work_bam_plus__disc
  secondaryFiles:
  - .bai
  type:
  - File
  - 'null'
- id: work_bam_plus__sr
  secondaryFiles:
  - .bai
  type:
  - File
  - 'null'
- id: hla__fastq
  type:
  - File
  - 'null'
  - items: File
    type: array
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: $(JSON.stringify(inputs))
    entryname: cwl.inputs.json
