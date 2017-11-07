arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
- sentinel_parallel=batch-single
- sentinel_outputs=vc_rec:validate__summary;validate__tp;validate__fp;validate__fn;description;resources;vrn_file;config__algorithm__validate;reference__fasta__base;config__algorithm__variantcaller;reference__snpeff__GRCh38_86;config__algorithm__coverage_interval;metadata__batch;reference__twobit;config__algorithm__validate_regions;genome_build;metadata__phenotype;genome_resources__aliases__human;config__algorithm__tools_off;genome_resources__variation__dbsnp;genome_resources__variation__cosmic;reference__genome_context;analysis;config__algorithm__tools_on;config__algorithm__variant_regions;genome_resources__aliases__ensembl;reference__rtg;genome_resources__aliases__snpeff;align_bam;regions__sample_callable;config__algorithm__callable_regions
- sentinel_inputs=batch_rec:record,vrn_file:var
baseCommand:
- bcbio_nextgen.py
- runfn
- compare_to_rm
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
  - package: pythonpy
    specs:
    - https://anaconda.org/bioconda/pythonpy
  - package: gvcf-regions
    specs:
    - https://anaconda.org/bioconda/gvcf-regions
  - package: htslib
    specs:
    - https://anaconda.org/bioconda/htslib
  - package: rtg-tools
    specs:
    - https://anaconda.org/bioconda/rtg-tools
  - package: vcfanno
    specs:
    - https://anaconda.org/bioconda/vcfanno
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
- id: vrn_file
  secondaryFiles:
  - .tbi
  type: File
outputs:
- id: vc_rec
  type:
    items:
      fields:
      - name: validate__summary
        type:
        - File
        - 'null'
      - name: validate__tp
        type:
        - File
        - 'null'
      - name: validate__fp
        type:
        - File
        - 'null'
      - name: validate__fn
        type:
        - File
        - 'null'
      - name: description
        type: string
      - name: resources
        type: string
      - name: vrn_file
        type: File
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
      name: vc_rec
      type: record
    type: array
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: $(JSON.stringify(inputs))
    entryname: cwl.inputs.json
