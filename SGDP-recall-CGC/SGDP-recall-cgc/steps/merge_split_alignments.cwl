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
  outdirMin: 349221597700
  ramMin: 24576
  tmpdirMin: 349221596676
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
- id: work_bam
  inputBinding:
    itemSeparator: ;;
    position: 2
    prefix: work_bam=
    separate: false
  type:
    items: File
    type: array
- id: align_bam_toolinput
  inputBinding:
    itemSeparator: ;;
    position: 3
    prefix: align_bam=
    separate: false
  type:
    items: File
    type: array
- id: work_bam_plus__disc_toolinput
  inputBinding:
    itemSeparator: ;;
    position: 4
    prefix: work_bam_plus__disc=
    separate: false
  secondaryFiles:
  - .bai
  type:
    items:
    - File
    - 'null'
    type: array
- id: work_bam_plus__sr_toolinput
  inputBinding:
    itemSeparator: ;;
    position: 5
    prefix: work_bam_plus__sr=
    separate: false
  secondaryFiles:
  - .bai
  type:
    items:
    - File
    - 'null'
    type: array
- id: hla__fastq_toolinput
  inputBinding:
    itemSeparator: ;;
    position: 6
    prefix: hla__fastq=
    separate: false
  type:
    items:
    - File
    - 'null'
    - items: File
      type: array
    type: array
- id: description
  inputBinding:
    itemSeparator: ;;
    position: 7
    prefix: description=
    separate: false
  type: string
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
