arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
baseCommand:
- bcbio_nextgen.py
- runfn
- pipeline_summary
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: DockerRequirement
  dockerImageId: quay.io/bcbio/bcbio-qc
  dockerPull: quay.io/bcbio/bcbio-qc
- class: ResourceRequirement
  coresMin: 8
  outdirMin: 1024
  ramMin: 24576
- class: SoftwareRequirement
  packages:
  - package: bcftools
    specs:
    - https://anaconda.org/bioconda/bcftools
  - package: bedtools
    specs:
    - https://anaconda.org/bioconda/bedtools
  - package: fastqc
    specs:
    - https://anaconda.org/bioconda/fastqc
  - package: goleft
    specs:
    - https://anaconda.org/bioconda/goleft
  - package: picard
    specs:
    - https://anaconda.org/bioconda/picard
  - package: pythonpy
    specs:
    - https://anaconda.org/bioconda/pythonpy
  - package: qsignature
    specs:
    - https://anaconda.org/bioconda/qsignature
  - package: qualimap
    specs:
    - https://anaconda.org/bioconda/qualimap
  - package: sambamba
    specs:
    - https://anaconda.org/bioconda/sambamba
  - package: samtools
    specs:
    - https://anaconda.org/bioconda/samtools
inputs:
- default: multi-parallel
  id: sentinel_parallel
  inputBinding:
    itemSeparator: ;;
    position: 0
    prefix: sentinel_parallel=
    separate: false
  type: string
- default: qcout_rec:summary__qc;summary__metrics;description;reference__fasta__base;config__algorithm__coverage_interval;genome_build;config__algorithm__tools_off;config__algorithm__qc;analysis;config__algorithm__tools_on;config__algorithm__variant_regions;align_bam;config__algorithm__variant_regions_merged;config__algorithm__coverage;config__algorithm__coverage_merged
  id: sentinel_outputs
  inputBinding:
    itemSeparator: ;;
    position: 1
    prefix: sentinel_outputs=
    separate: false
  type: string
- default: qc_rec:record
  id: sentinel_inputs
  inputBinding:
    itemSeparator: ;;
    position: 2
    prefix: sentinel_inputs=
    separate: false
  type: string
- id: qc_rec
  type:
    fields:
    - name: description
      type: string
    - name: reference__fasta__base
      type: File
    - name: config__algorithm__coverage_interval
      type: string
    - name: genome_build
      type: string
    - name: config__algorithm__tools_off
      type:
        items: string
        type: array
    - name: config__algorithm__qc
      type:
        items: string
        type: array
    - name: analysis
      type: string
    - name: config__algorithm__tools_on
      type:
        items: 'null'
        type: array
    - name: config__algorithm__variant_regions
      type: File
    - name: align_bam
      type: File
    - name: config__algorithm__variant_regions_merged
      type: File
    - name: config__algorithm__coverage
      type:
      - File
      - 'null'
    - name: config__algorithm__coverage_merged
      type:
      - File
      - 'null'
    name: qc_rec
    type: record
outputs:
- id: qcout_rec
  type:
    fields:
    - name: summary__qc
      type:
      - File
      - 'null'
    - name: summary__metrics
      type: string
    - name: description
      type: string
    - name: reference__fasta__base
      type: File
    - name: config__algorithm__coverage_interval
      type: string
    - name: genome_build
      type: string
    - name: config__algorithm__tools_off
      type:
        items: string
        type: array
    - name: config__algorithm__qc
      type:
        items: string
        type: array
    - name: analysis
      type: string
    - name: config__algorithm__tools_on
      type:
        items: 'null'
        type: array
    - name: config__algorithm__variant_regions
      type: File
    - name: align_bam
      type: File
    - name: config__algorithm__variant_regions_merged
      type: File
    - name: config__algorithm__coverage
      type:
      - File
      - 'null'
    - name: config__algorithm__coverage_merged
      type:
      - File
      - 'null'
    name: qcout_rec
    type: record
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: $(JSON.stringify(inputs))
    entryname: cwl.inputs.json
