arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
- sentinel_parallel=batch-parallel
- sentinel_outputs=vrn_file_region,region_block
- sentinel_inputs=batch_rec:record,region_block:var
baseCommand:
- bcbio_nextgen.py
- runfn
- variantcall_batch_region
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: DockerRequirement
  dockerImageId: quay.io/bcbio/bcbio-vc
  dockerPull: quay.io/bcbio/bcbio-vc
- class: ResourceRequirement
  coresMin: 8
  outdirMin: 22238
  ramMin: 24576
  tmpdirMin: 21214
- class: SoftwareRequirement
  packages:
  - package: bcftools
    specs:
    - https://anaconda.org/bioconda/bcftools
  - package: bedtools
    specs:
    - https://anaconda.org/bioconda/bedtools
  - package: freebayes
    specs:
    - https://anaconda.org/bioconda/freebayes
    version:
    - 1.1.0.46
  - package: gatk
    specs:
    - https://anaconda.org/bioconda/gatk
  - package: gatk4
    specs:
    - https://anaconda.org/bioconda/gatk4
  - package: gatk-framework
    specs:
    - https://anaconda.org/bioconda/gatk-framework
  - package: htslib
    specs:
    - https://anaconda.org/bioconda/htslib
  - package: picard
    specs:
    - https://anaconda.org/bioconda/picard
  - package: platypus-variant
    specs:
    - https://anaconda.org/bioconda/platypus-variant
  - package: pythonpy
    specs:
    - https://anaconda.org/bioconda/pythonpy
  - package: samtools
    specs:
    - https://anaconda.org/bioconda/samtools
  - package: strelka
    specs:
    - https://anaconda.org/bioconda/strelka
  - package: vardict
    specs:
    - https://anaconda.org/bioconda/vardict
  - package: vardict-java
    specs:
    - https://anaconda.org/bioconda/vardict-java
  - package: varscan
    specs:
    - https://anaconda.org/bioconda/varscan
  - package: vcfanno
    specs:
    - https://anaconda.org/bioconda/vcfanno
  - package: vcflib
    specs:
    - https://anaconda.org/bioconda/vcflib
  - package: vt
    specs:
    - https://anaconda.org/bioconda/vt
  - package: r
    specs:
    - https://anaconda.org/bioconda/r
    version:
    - 3.4.1
  - package: perl
    specs:
    - https://anaconda.org/bioconda/perl
inputs:
- id: batch_rec
  type:
    items:
      fields:
      - name: description
        type: string
      - name: resources
        type: string
      - name: config__algorithm__validate
        type: File
      - name: reference__fasta__base
        type: File
      - name: config__algorithm__variantcaller
        type: string
      - name: reference__snpeff__GRCh38_86
        type: File
      - name: config__algorithm__coverage_interval
        type: string
      - name: metadata__batch
        type:
        - 'null'
        - string
      - name: reference__twobit
        type: File
      - name: config__algorithm__validate_regions
        type: File
      - name: genome_build
        type: string
      - name: metadata__phenotype
        type: string
      - name: genome_resources__aliases__human
        type:
        - string
        - 'null'
        - boolean
      - name: config__algorithm__tools_off
        type:
          items: string
          type: array
      - name: genome_resources__variation__dbsnp
        type: File
      - name: genome_resources__variation__cosmic
        type:
        - 'null'
        - string
      - name: reference__genome_context
        type:
          items: File
          type: array
      - name: analysis
        type: string
      - name: config__algorithm__tools_on
        type:
          items: string
          type: array
      - name: config__algorithm__variant_regions
        type: File
      - name: genome_resources__aliases__ensembl
        type: string
      - name: reference__rtg
        type: File
      - name: genome_resources__aliases__snpeff
        type: string
      - name: align_bam
        type: File
      - name: regions__sample_callable
        type: File
      - name: config__algorithm__callable_regions
        type: File
      name: batch_rec
      type: record
    type: array
- id: region_block_toolinput
  type:
    items: string
    type: array
outputs:
- id: vrn_file_region
  secondaryFiles:
  - .tbi
  type: File
- id: region_block
  type:
    items: string
    type: array
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: $(JSON.stringify(inputs))
    entryname: cwl.inputs.json
