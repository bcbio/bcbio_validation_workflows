arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
- sentinel_parallel=multi-parallel
- sentinel_outputs=qcout_rec:summary__qc;summary__metrics;description;resources;reference__fasta__base;config__algorithm__coverage_interval;genome_build;config__algorithm__tools_off;config__algorithm__qc;analysis;config__algorithm__tools_on;config__algorithm__variant_regions;align_bam;config__algorithm__variant_regions_merged;config__algorithm__coverage;config__algorithm__coverage_merged;depth__variant_regions__regions;depth__variant_regions__dist;depth__sv_regions__regions;depth__sv_regions__dist;depth__coverage__regions;depth__coverage__dist;depth__coverage__thresholds
- sentinel_inputs=qc_rec:record
baseCommand:
- bcbio_nextgen.py
- runfn
- pipeline_summary
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: DockerRequirement
  dockerImageId: quay.io/bcbio/bcbio-vc
  dockerPull: quay.io/bcbio/bcbio-vc
- class: ResourceRequirement
  coresMin: 8
  outdirMin: 12023
  ramMin: 24576
  tmpdirMin: 10999
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
  - package: mosdepth
    specs:
    - https://anaconda.org/bioconda/mosdepth
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
  - package: preseq
    specs:
    - https://anaconda.org/bioconda/preseq
inputs:
- id: qc_rec
  type:
    fields:
    - name: description
      type: string
    - name: resources
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
        items: string
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
    - name: depth__variant_regions__regions
      type: File
    - name: depth__variant_regions__dist
      type: File
    - name: depth__sv_regions__regions
      type:
      - File
      - 'null'
    - name: depth__sv_regions__dist
      type:
      - File
      - 'null'
    - name: depth__coverage__regions
      type:
      - File
      - 'null'
    - name: depth__coverage__dist
      type:
      - File
      - 'null'
    - name: depth__coverage__thresholds
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
    - name: resources
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
        items: string
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
    - name: depth__variant_regions__regions
      type: File
    - name: depth__variant_regions__dist
      type: File
    - name: depth__sv_regions__regions
      type:
      - File
      - 'null'
    - name: depth__sv_regions__dist
      type:
      - File
      - 'null'
    - name: depth__coverage__regions
      type:
      - File
      - 'null'
    - name: depth__coverage__dist
      type:
      - File
      - 'null'
    - name: depth__coverage__thresholds
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
