{
    "cwlVersion": "v1.0", 
    "$graph": [
        {
            "class": "Workflow", 
            "hints": [], 
            "inputs": [
                {
                    "id": "#main/config__algorithm__align_split_size", 
                    "type": {
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__validate", 
                    "type": {
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/reference__fasta__base", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__variation__lcr", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__variantcaller", 
                    "type": {
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__svcaller", 
                    "type": {
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__rnaseq__transcripts_mask", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__variation__train_1000g", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__coverage_interval", 
                    "type": {
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__variation__qsignature", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__variation__train_hapmap", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/rgnames__lb", 
                    "type": {
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/rgnames__rg", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__realign", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/metadata__batch", 
                    "type": {
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/rgnames__lane", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__nomap_split_targets", 
                    "type": {
                        "items": "long", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__variation__sv_repeat", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/reference__bwa__indexes", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__nomap_split_size", 
                    "type": {
                        "items": "long", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/files", 
                    "type": {
                        "items": {
                            "items": "File", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__rnaseq__dexseq", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/description", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__validate_regions", 
                    "type": {
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__rnaseq__transcriptome_index__tophat", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__aligner", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__variation__train_omni", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__ensemble__numpass", 
                    "type": {
                        "items": "long", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_build", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/reference__rtg", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__recalibrate", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/metadata__phenotype", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__rnaseq__transcripts", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__aliases__human", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__tools_off", 
                    "type": {
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__variation__dbsnp", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__mark_duplicates", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/rgnames__pu", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/vrn_file", 
                    "type": {
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/rgnames__pl", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/reference__viral", 
                    "type": {
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__version", 
                    "type": {
                        "items": "long", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__variation__cosmic", 
                    "type": {
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__rnaseq__refflat", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/reference__genome_context", 
                    "type": {
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__qc", 
                    "type": {
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/analysis", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/rgnames__sample", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__tools_on", 
                    "type": {
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__effects", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__variant_regions", 
                    "type": {
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__aliases__ensembl", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/metadata__sex", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__variation__train_indels", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__aliases__snpeff", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__archive", 
                    "type": {
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#main/align_bam", 
                    "outputSource": "#main/alignment/align_bam", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/summary__multiqc", 
                    "outputSource": "#main/multiqc_summary/summary__multiqc", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/validate__grading_summary", 
                    "outputSource": "#main/summarize_grading_vc/validate__grading_summary", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }
            ], 
            "requirements": [
                {
                    "class": "EnvVarRequirement", 
                    "envDef": [
                        {
                            "envName": "MPLCONFIGDIR", 
                            "envValue": "."
                        }
                    ]
                }, 
                {
                    "class": "ScatterFeatureRequirement"
                }, 
                {
                    "class": "StepInputExpressionRequirement"
                }, 
                {
                    "class": "SubworkflowFeatureRequirement"
                }, 
                {
                    "class": "InlineJavascriptRequirement"
                }
            ], 
            "steps": [
                {
                    "id": "#main/alignment_to_rec", 
                    "in": [
                        {
                            "id": "#main/alignment_to_rec/files", 
                            "source": "#main/files"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/config__algorithm__align_split_size", 
                            "source": "#main/config__algorithm__align_split_size"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/reference__fasta__base", 
                            "source": "#main/reference__fasta__base"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/rgnames__pl", 
                            "source": "#main/rgnames__pl"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/rgnames__sample", 
                            "source": "#main/rgnames__sample"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/rgnames__pu", 
                            "source": "#main/rgnames__pu"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/rgnames__lane", 
                            "source": "#main/rgnames__lane"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/rgnames__rg", 
                            "source": "#main/rgnames__rg"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/rgnames__lb", 
                            "source": "#main/rgnames__lb"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/reference__bwa__indexes", 
                            "source": "#main/reference__bwa__indexes"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/config__algorithm__aligner", 
                            "source": "#main/config__algorithm__aligner"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/config__algorithm__mark_duplicates", 
                            "source": "#main/config__algorithm__mark_duplicates"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/description", 
                            "source": "#main/description"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/alignment_to_rec/alignment_rec"
                        }
                    ], 
                    "run": "#alignment_to_rec.cwl"
                }, 
                {
                    "id": "#main/alignment", 
                    "in": [
                        {
                            "id": "#main/alignment/description", 
                            "source": "#main/alignment_to_rec/alignment_rec", 
                            "valueFrom": "$(self['description'])"
                        }, 
                        {
                            "id": "#main/alignment/config__algorithm__align_split_size", 
                            "source": "#main/alignment_to_rec/alignment_rec", 
                            "valueFrom": "$(self['config__algorithm__align_split_size'])"
                        }, 
                        {
                            "id": "#main/alignment/reference__fasta__base", 
                            "source": "#main/alignment_to_rec/alignment_rec", 
                            "valueFrom": "$(self['reference__fasta__base'])"
                        }, 
                        {
                            "id": "#main/alignment/rgnames__lb", 
                            "source": "#main/alignment_to_rec/alignment_rec", 
                            "valueFrom": "$(self['rgnames__lb'])"
                        }, 
                        {
                            "id": "#main/alignment/rgnames__rg", 
                            "source": "#main/alignment_to_rec/alignment_rec", 
                            "valueFrom": "$(self['rgnames__rg'])"
                        }, 
                        {
                            "id": "#main/alignment/rgnames__lane", 
                            "source": "#main/alignment_to_rec/alignment_rec", 
                            "valueFrom": "$(self['rgnames__lane'])"
                        }, 
                        {
                            "id": "#main/alignment/reference__bwa__indexes", 
                            "source": "#main/alignment_to_rec/alignment_rec", 
                            "valueFrom": "$(self['reference__bwa__indexes'])"
                        }, 
                        {
                            "id": "#main/alignment/files", 
                            "source": "#main/alignment_to_rec/alignment_rec", 
                            "valueFrom": "$(self['files'])"
                        }, 
                        {
                            "id": "#main/alignment/config__algorithm__aligner", 
                            "source": "#main/alignment_to_rec/alignment_rec", 
                            "valueFrom": "$(self['config__algorithm__aligner'])"
                        }, 
                        {
                            "id": "#main/alignment/config__algorithm__mark_duplicates", 
                            "source": "#main/alignment_to_rec/alignment_rec", 
                            "valueFrom": "$(self['config__algorithm__mark_duplicates'])"
                        }, 
                        {
                            "id": "#main/alignment/rgnames__pu", 
                            "source": "#main/alignment_to_rec/alignment_rec", 
                            "valueFrom": "$(self['rgnames__pu'])"
                        }, 
                        {
                            "id": "#main/alignment/rgnames__pl", 
                            "source": "#main/alignment_to_rec/alignment_rec", 
                            "valueFrom": "$(self['rgnames__pl'])"
                        }, 
                        {
                            "id": "#main/alignment/rgnames__sample", 
                            "source": "#main/alignment_to_rec/alignment_rec", 
                            "valueFrom": "$(self['rgnames__sample'])"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/alignment/align_bam"
                        }, 
                        {
                            "id": "#main/alignment/work_bam_plus__disc"
                        }, 
                        {
                            "id": "#main/alignment/work_bam_plus__sr"
                        }, 
                        {
                            "id": "#main/alignment/hla__fastq"
                        }
                    ], 
                    "run": "#wf-alignment.cwl", 
                    "scatter": [
                        "#main/alignment/description", 
                        "#main/alignment/config__algorithm__align_split_size", 
                        "#main/alignment/reference__fasta__base", 
                        "#main/alignment/rgnames__lb", 
                        "#main/alignment/rgnames__rg", 
                        "#main/alignment/rgnames__lane", 
                        "#main/alignment/reference__bwa__indexes", 
                        "#main/alignment/files", 
                        "#main/alignment/config__algorithm__aligner", 
                        "#main/alignment/config__algorithm__mark_duplicates", 
                        "#main/alignment/rgnames__pu", 
                        "#main/alignment/rgnames__pl", 
                        "#main/alignment/rgnames__sample"
                    ], 
                    "scatterMethod": "dotproduct"
                }, 
                {
                    "id": "#main/prep_samples_to_rec", 
                    "in": [
                        {
                            "id": "#main/prep_samples_to_rec/config__algorithm__variant_regions", 
                            "source": "#main/config__algorithm__variant_regions"
                        }, 
                        {
                            "id": "#main/prep_samples_to_rec/reference__fasta__base", 
                            "source": "#main/reference__fasta__base"
                        }, 
                        {
                            "id": "#main/prep_samples_to_rec/description", 
                            "source": "#main/description"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/prep_samples_to_rec/prep_samples_rec"
                        }
                    ], 
                    "run": "#prep_samples_to_rec.cwl"
                }, 
                {
                    "id": "#main/prep_samples", 
                    "in": [
                        {
                            "id": "#main/prep_samples/description", 
                            "source": "#main/prep_samples_to_rec/prep_samples_rec", 
                            "valueFrom": "$(self['description'])"
                        }, 
                        {
                            "id": "#main/prep_samples/reference__fasta__base", 
                            "source": "#main/prep_samples_to_rec/prep_samples_rec", 
                            "valueFrom": "$(self['reference__fasta__base'])"
                        }, 
                        {
                            "id": "#main/prep_samples/config__algorithm__variant_regions_toolinput", 
                            "source": "#main/prep_samples_to_rec/prep_samples_rec", 
                            "valueFrom": "$(self['config__algorithm__variant_regions'])"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/prep_samples/config__algorithm__variant_regions"
                        }, 
                        {
                            "id": "#main/prep_samples/config__algorithm__variant_regions_merged"
                        }, 
                        {
                            "id": "#main/prep_samples/config__algorithm__variant_regions_orig"
                        }, 
                        {
                            "id": "#main/prep_samples/config__algorithm__coverage"
                        }, 
                        {
                            "id": "#main/prep_samples/config__algorithm__coverage_merged"
                        }, 
                        {
                            "id": "#main/prep_samples/config__algorithm__coverage_orig"
                        }, 
                        {
                            "id": "#main/prep_samples/config__algorithm__seq2c_bed_ready"
                        }
                    ], 
                    "run": "#prep_samples.cwl", 
                    "scatter": [
                        "#main/prep_samples/description", 
                        "#main/prep_samples/reference__fasta__base", 
                        "#main/prep_samples/config__algorithm__variant_regions_toolinput"
                    ], 
                    "scatterMethod": "dotproduct"
                }, 
                {
                    "id": "#main/postprocess_alignment_to_rec", 
                    "in": [
                        {
                            "id": "#main/postprocess_alignment_to_rec/align_bam", 
                            "source": "#main/alignment/align_bam"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/config__algorithm__coverage_interval", 
                            "source": "#main/config__algorithm__coverage_interval"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/config__algorithm__variant_regions", 
                            "source": "#main/prep_samples/config__algorithm__variant_regions"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/config__algorithm__variant_regions_merged", 
                            "source": "#main/prep_samples/config__algorithm__variant_regions_merged"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/config__algorithm__variant_regions_orig", 
                            "source": "#main/prep_samples/config__algorithm__variant_regions_orig"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/config__algorithm__coverage", 
                            "source": "#main/prep_samples/config__algorithm__coverage"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/config__algorithm__coverage_merged", 
                            "source": "#main/prep_samples/config__algorithm__coverage_merged"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/config__algorithm__coverage_orig", 
                            "source": "#main/prep_samples/config__algorithm__coverage_orig"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/config__algorithm__seq2c_bed_ready", 
                            "source": "#main/prep_samples/config__algorithm__seq2c_bed_ready"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/config__algorithm__recalibrate", 
                            "source": "#main/config__algorithm__recalibrate"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/reference__fasta__base", 
                            "source": "#main/reference__fasta__base"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/description", 
                            "source": "#main/description"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/postprocess_alignment_to_rec/postprocess_alignment_rec"
                        }
                    ], 
                    "run": "#postprocess_alignment_to_rec.cwl"
                }, 
                {
                    "id": "#main/postprocess_alignment", 
                    "in": [
                        {
                            "id": "#main/postprocess_alignment/description", 
                            "source": "#main/postprocess_alignment_to_rec/postprocess_alignment_rec", 
                            "valueFrom": "$(self['description'])"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/reference__fasta__base", 
                            "source": "#main/postprocess_alignment_to_rec/postprocess_alignment_rec", 
                            "valueFrom": "$(self['reference__fasta__base'])"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__coverage_interval_toolinput", 
                            "source": "#main/postprocess_alignment_to_rec/postprocess_alignment_rec", 
                            "valueFrom": "$(self['config__algorithm__coverage_interval'])"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__recalibrate", 
                            "source": "#main/postprocess_alignment_to_rec/postprocess_alignment_rec", 
                            "valueFrom": "$(self['config__algorithm__recalibrate'])"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__variant_regions_toolinput", 
                            "source": "#main/postprocess_alignment_to_rec/postprocess_alignment_rec", 
                            "valueFrom": "$(self['config__algorithm__variant_regions'])"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/align_bam", 
                            "source": "#main/postprocess_alignment_to_rec/postprocess_alignment_rec", 
                            "valueFrom": "$(self['align_bam'])"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__variant_regions_merged_toolinput", 
                            "source": "#main/postprocess_alignment_to_rec/postprocess_alignment_rec", 
                            "valueFrom": "$(self['config__algorithm__variant_regions_merged'])"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__variant_regions_orig_toolinput", 
                            "source": "#main/postprocess_alignment_to_rec/postprocess_alignment_rec", 
                            "valueFrom": "$(self['config__algorithm__variant_regions_orig'])"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__coverage_toolinput", 
                            "source": "#main/postprocess_alignment_to_rec/postprocess_alignment_rec", 
                            "valueFrom": "$(self['config__algorithm__coverage'])"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__coverage_merged_toolinput", 
                            "source": "#main/postprocess_alignment_to_rec/postprocess_alignment_rec", 
                            "valueFrom": "$(self['config__algorithm__coverage_merged'])"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__coverage_orig_toolinput", 
                            "source": "#main/postprocess_alignment_to_rec/postprocess_alignment_rec", 
                            "valueFrom": "$(self['config__algorithm__coverage_orig'])"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__seq2c_bed_ready_toolinput", 
                            "source": "#main/postprocess_alignment_to_rec/postprocess_alignment_rec", 
                            "valueFrom": "$(self['config__algorithm__seq2c_bed_ready'])"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__coverage_interval"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__variant_regions"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__variant_regions_merged"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__variant_regions_orig"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__coverage"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__coverage_merged"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__coverage_orig"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__seq2c_bed_ready"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/regions__callable"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/regions__sample_callable"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/regions__nblock"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/regions__highdepth"
                        }
                    ], 
                    "run": "#postprocess_alignment.cwl", 
                    "scatter": [
                        "#main/postprocess_alignment/description", 
                        "#main/postprocess_alignment/reference__fasta__base", 
                        "#main/postprocess_alignment/config__algorithm__coverage_interval_toolinput", 
                        "#main/postprocess_alignment/config__algorithm__recalibrate", 
                        "#main/postprocess_alignment/config__algorithm__variant_regions_toolinput", 
                        "#main/postprocess_alignment/align_bam", 
                        "#main/postprocess_alignment/config__algorithm__variant_regions_merged_toolinput", 
                        "#main/postprocess_alignment/config__algorithm__variant_regions_orig_toolinput", 
                        "#main/postprocess_alignment/config__algorithm__coverage_toolinput", 
                        "#main/postprocess_alignment/config__algorithm__coverage_merged_toolinput", 
                        "#main/postprocess_alignment/config__algorithm__coverage_orig_toolinput", 
                        "#main/postprocess_alignment/config__algorithm__seq2c_bed_ready_toolinput"
                    ], 
                    "scatterMethod": "dotproduct"
                }, 
                {
                    "id": "#main/combine_sample_regions", 
                    "in": [
                        {
                            "id": "#main/combine_sample_regions/regions__callable", 
                            "source": "#main/postprocess_alignment/regions__callable"
                        }, 
                        {
                            "id": "#main/combine_sample_regions/regions__nblock", 
                            "source": "#main/postprocess_alignment/regions__nblock"
                        }, 
                        {
                            "id": "#main/combine_sample_regions/config__algorithm__nomap_split_size", 
                            "source": "#main/config__algorithm__nomap_split_size"
                        }, 
                        {
                            "id": "#main/combine_sample_regions/config__algorithm__nomap_split_targets", 
                            "source": "#main/config__algorithm__nomap_split_targets"
                        }, 
                        {
                            "id": "#main/combine_sample_regions/reference__fasta__base", 
                            "source": "#main/reference__fasta__base"
                        }, 
                        {
                            "id": "#main/combine_sample_regions/description", 
                            "source": "#main/description"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/combine_sample_regions/config__algorithm__callable_regions"
                        }, 
                        {
                            "id": "#main/combine_sample_regions/config__algorithm__non_callable_regions"
                        }, 
                        {
                            "id": "#main/combine_sample_regions/config__algorithm__callable_count"
                        }
                    ], 
                    "run": "#combine_sample_regions.cwl"
                }, 
                {
                    "id": "#main/batch_for_variantcall", 
                    "in": [
                        {
                            "id": "#main/batch_for_variantcall/analysis", 
                            "source": "#main/analysis"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/genome_build", 
                            "source": "#main/genome_build"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/align_bam", 
                            "source": "#main/alignment/align_bam"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/config__algorithm__callable_regions", 
                            "source": "#main/combine_sample_regions/config__algorithm__callable_regions"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/metadata__batch", 
                            "source": "#main/metadata__batch"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/metadata__phenotype", 
                            "source": "#main/metadata__phenotype"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/regions__callable", 
                            "source": "#main/postprocess_alignment/regions__callable"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/config__algorithm__variantcaller", 
                            "source": "#main/config__algorithm__variantcaller"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/config__algorithm__coverage_interval", 
                            "source": "#main/postprocess_alignment/config__algorithm__coverage_interval"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/config__algorithm__variant_regions", 
                            "source": "#main/postprocess_alignment/config__algorithm__variant_regions"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/config__algorithm__validate", 
                            "source": "#main/config__algorithm__validate"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/config__algorithm__validate_regions", 
                            "source": "#main/config__algorithm__validate_regions"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/config__algorithm__tools_on", 
                            "source": "#main/config__algorithm__tools_on"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/config__algorithm__tools_off", 
                            "source": "#main/config__algorithm__tools_off"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/reference__fasta__base", 
                            "source": "#main/reference__fasta__base"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/reference__rtg", 
                            "source": "#main/reference__rtg"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/reference__genome_context", 
                            "source": "#main/reference__genome_context"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/genome_resources__variation__cosmic", 
                            "source": "#main/genome_resources__variation__cosmic"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/genome_resources__variation__dbsnp", 
                            "source": "#main/genome_resources__variation__dbsnp"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/description", 
                            "source": "#main/description"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/batch_for_variantcall/batch_rec"
                        }
                    ], 
                    "run": "#batch_for_variantcall.cwl"
                }, 
                {
                    "id": "#main/variantcall", 
                    "in": [
                        {
                            "id": "#main/variantcall/description", 
                            "source": "#main/batch_for_variantcall/batch_rec", 
                            "valueFrom": "$(self['description'])"
                        }, 
                        {
                            "id": "#main/variantcall/config__algorithm__validate", 
                            "source": "#main/batch_for_variantcall/batch_rec", 
                            "valueFrom": "$(self['config__algorithm__validate'])"
                        }, 
                        {
                            "id": "#main/variantcall/reference__fasta__base", 
                            "source": "#main/batch_for_variantcall/batch_rec", 
                            "valueFrom": "$(self['reference__fasta__base'])"
                        }, 
                        {
                            "id": "#main/variantcall/config__algorithm__variantcaller", 
                            "source": "#main/batch_for_variantcall/batch_rec", 
                            "valueFrom": "$(self['config__algorithm__variantcaller'])"
                        }, 
                        {
                            "id": "#main/variantcall/config__algorithm__coverage_interval", 
                            "source": "#main/batch_for_variantcall/batch_rec", 
                            "valueFrom": "$(self['config__algorithm__coverage_interval'])"
                        }, 
                        {
                            "id": "#main/variantcall/metadata__batch", 
                            "source": "#main/batch_for_variantcall/batch_rec", 
                            "valueFrom": "$(self['metadata__batch'])"
                        }, 
                        {
                            "id": "#main/variantcall/config__algorithm__validate_regions", 
                            "source": "#main/batch_for_variantcall/batch_rec", 
                            "valueFrom": "$(self['config__algorithm__validate_regions'])"
                        }, 
                        {
                            "id": "#main/variantcall/genome_build", 
                            "source": "#main/batch_for_variantcall/batch_rec", 
                            "valueFrom": "$(self['genome_build'])"
                        }, 
                        {
                            "id": "#main/variantcall/reference__rtg", 
                            "source": "#main/batch_for_variantcall/batch_rec", 
                            "valueFrom": "$(self['reference__rtg'])"
                        }, 
                        {
                            "id": "#main/variantcall/metadata__phenotype", 
                            "source": "#main/batch_for_variantcall/batch_rec", 
                            "valueFrom": "$(self['metadata__phenotype'])"
                        }, 
                        {
                            "id": "#main/variantcall/config__algorithm__tools_off", 
                            "source": "#main/batch_for_variantcall/batch_rec", 
                            "valueFrom": "$(self['config__algorithm__tools_off'])"
                        }, 
                        {
                            "id": "#main/variantcall/genome_resources__variation__dbsnp", 
                            "source": "#main/batch_for_variantcall/batch_rec", 
                            "valueFrom": "$(self['genome_resources__variation__dbsnp'])"
                        }, 
                        {
                            "id": "#main/variantcall/genome_resources__variation__cosmic", 
                            "source": "#main/batch_for_variantcall/batch_rec", 
                            "valueFrom": "$(self['genome_resources__variation__cosmic'])"
                        }, 
                        {
                            "id": "#main/variantcall/reference__genome_context", 
                            "source": "#main/batch_for_variantcall/batch_rec", 
                            "valueFrom": "$(self['reference__genome_context'])"
                        }, 
                        {
                            "id": "#main/variantcall/analysis", 
                            "source": "#main/batch_for_variantcall/batch_rec", 
                            "valueFrom": "$(self['analysis'])"
                        }, 
                        {
                            "id": "#main/variantcall/config__algorithm__tools_on", 
                            "source": "#main/batch_for_variantcall/batch_rec", 
                            "valueFrom": "$(self['config__algorithm__tools_on'])"
                        }, 
                        {
                            "id": "#main/variantcall/config__algorithm__variant_regions", 
                            "source": "#main/batch_for_variantcall/batch_rec", 
                            "valueFrom": "$(self['config__algorithm__variant_regions'])"
                        }, 
                        {
                            "id": "#main/variantcall/align_bam", 
                            "source": "#main/batch_for_variantcall/batch_rec", 
                            "valueFrom": "$(self['align_bam'])"
                        }, 
                        {
                            "id": "#main/variantcall/regions__callable", 
                            "source": "#main/batch_for_variantcall/batch_rec", 
                            "valueFrom": "$(self['regions__callable'])"
                        }, 
                        {
                            "id": "#main/variantcall/config__algorithm__callable_regions", 
                            "source": "#main/batch_for_variantcall/batch_rec", 
                            "valueFrom": "$(self['config__algorithm__callable_regions'])"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/variantcall/vc_rec"
                        }, 
                        {
                            "id": "#main/variantcall/validate__tp"
                        }, 
                        {
                            "id": "#main/variantcall/validate__fp"
                        }, 
                        {
                            "id": "#main/variantcall/validate__fn"
                        }
                    ], 
                    "run": "#wf-variantcall.cwl", 
                    "scatter": [
                        "#main/variantcall/description", 
                        "#main/variantcall/config__algorithm__validate", 
                        "#main/variantcall/reference__fasta__base", 
                        "#main/variantcall/config__algorithm__variantcaller", 
                        "#main/variantcall/config__algorithm__coverage_interval", 
                        "#main/variantcall/metadata__batch", 
                        "#main/variantcall/config__algorithm__validate_regions", 
                        "#main/variantcall/genome_build", 
                        "#main/variantcall/reference__rtg", 
                        "#main/variantcall/metadata__phenotype", 
                        "#main/variantcall/config__algorithm__tools_off", 
                        "#main/variantcall/genome_resources__variation__dbsnp", 
                        "#main/variantcall/genome_resources__variation__cosmic", 
                        "#main/variantcall/reference__genome_context", 
                        "#main/variantcall/analysis", 
                        "#main/variantcall/config__algorithm__tools_on", 
                        "#main/variantcall/config__algorithm__variant_regions", 
                        "#main/variantcall/align_bam", 
                        "#main/variantcall/regions__callable", 
                        "#main/variantcall/config__algorithm__callable_regions"
                    ], 
                    "scatterMethod": "dotproduct"
                }, 
                {
                    "id": "#main/summarize_grading_vc", 
                    "in": [
                        {
                            "id": "#main/summarize_grading_vc/description", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['description']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/vrn_file", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['vrn_file']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/config__algorithm__validate", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['config__algorithm__validate']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/reference__fasta__base", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['reference__fasta__base']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/config__algorithm__variantcaller", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['config__algorithm__variantcaller']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/config__algorithm__coverage_interval", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['config__algorithm__coverage_interval']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/metadata__batch", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['metadata__batch']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/config__algorithm__validate_regions", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['config__algorithm__validate_regions']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/genome_build", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['genome_build']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/reference__rtg", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['reference__rtg']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/metadata__phenotype", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['metadata__phenotype']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/config__algorithm__tools_off", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['config__algorithm__tools_off']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/genome_resources__variation__dbsnp", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['genome_resources__variation__dbsnp']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/genome_resources__variation__cosmic", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['genome_resources__variation__cosmic']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/reference__genome_context", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['reference__genome_context']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/analysis", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['analysis']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/config__algorithm__tools_on", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['config__algorithm__tools_on']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/config__algorithm__variant_regions", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['config__algorithm__variant_regions']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/align_bam", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['align_bam']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/regions__callable", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['regions__callable']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/config__algorithm__callable_regions", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['config__algorithm__callable_regions']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/validate__summary", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['validate__summary']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/validate__tp", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['validate__tp']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/validate__fp", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['validate__fp']; }))"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/validate__fn", 
                            "source": "#main/variantcall/vc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['validate__fn']; }))"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/summarize_grading_vc/validate__grading_summary"
                        }, 
                        {
                            "id": "#main/summarize_grading_vc/validate__grading_plots"
                        }
                    ], 
                    "run": "#summarize_grading_vc.cwl"
                }, 
                {
                    "id": "#main/qc_to_rec", 
                    "in": [
                        {
                            "id": "#main/qc_to_rec/align_bam", 
                            "source": "#main/alignment/align_bam"
                        }, 
                        {
                            "id": "#main/qc_to_rec/analysis", 
                            "source": "#main/analysis"
                        }, 
                        {
                            "id": "#main/qc_to_rec/reference__fasta__base", 
                            "source": "#main/reference__fasta__base"
                        }, 
                        {
                            "id": "#main/qc_to_rec/genome_build", 
                            "source": "#main/genome_build"
                        }, 
                        {
                            "id": "#main/qc_to_rec/config__algorithm__coverage_interval", 
                            "source": "#main/postprocess_alignment/config__algorithm__coverage_interval"
                        }, 
                        {
                            "id": "#main/qc_to_rec/config__algorithm__tools_on", 
                            "source": "#main/config__algorithm__tools_on"
                        }, 
                        {
                            "id": "#main/qc_to_rec/config__algorithm__tools_off", 
                            "source": "#main/config__algorithm__tools_off"
                        }, 
                        {
                            "id": "#main/qc_to_rec/config__algorithm__qc", 
                            "source": "#main/config__algorithm__qc"
                        }, 
                        {
                            "id": "#main/qc_to_rec/config__algorithm__variant_regions", 
                            "source": "#main/postprocess_alignment/config__algorithm__variant_regions"
                        }, 
                        {
                            "id": "#main/qc_to_rec/config__algorithm__variant_regions_merged", 
                            "source": "#main/postprocess_alignment/config__algorithm__variant_regions_merged"
                        }, 
                        {
                            "id": "#main/qc_to_rec/config__algorithm__coverage", 
                            "source": "#main/postprocess_alignment/config__algorithm__coverage"
                        }, 
                        {
                            "id": "#main/qc_to_rec/config__algorithm__coverage_merged", 
                            "source": "#main/postprocess_alignment/config__algorithm__coverage_merged"
                        }, 
                        {
                            "id": "#main/qc_to_rec/description", 
                            "source": "#main/description"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/qc_to_rec/qc_rec"
                        }
                    ], 
                    "run": "#qc_to_rec.cwl"
                }, 
                {
                    "id": "#main/pipeline_summary", 
                    "in": [
                        {
                            "id": "#main/pipeline_summary/description", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self['description'])"
                        }, 
                        {
                            "id": "#main/pipeline_summary/reference__fasta__base", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self['reference__fasta__base'])"
                        }, 
                        {
                            "id": "#main/pipeline_summary/config__algorithm__coverage_interval", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self['config__algorithm__coverage_interval'])"
                        }, 
                        {
                            "id": "#main/pipeline_summary/genome_build", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self['genome_build'])"
                        }, 
                        {
                            "id": "#main/pipeline_summary/config__algorithm__tools_off", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self['config__algorithm__tools_off'])"
                        }, 
                        {
                            "id": "#main/pipeline_summary/config__algorithm__qc", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self['config__algorithm__qc'])"
                        }, 
                        {
                            "id": "#main/pipeline_summary/analysis", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self['analysis'])"
                        }, 
                        {
                            "id": "#main/pipeline_summary/config__algorithm__tools_on", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self['config__algorithm__tools_on'])"
                        }, 
                        {
                            "id": "#main/pipeline_summary/config__algorithm__variant_regions", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self['config__algorithm__variant_regions'])"
                        }, 
                        {
                            "id": "#main/pipeline_summary/align_bam", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self['align_bam'])"
                        }, 
                        {
                            "id": "#main/pipeline_summary/config__algorithm__variant_regions_merged", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self['config__algorithm__variant_regions_merged'])"
                        }, 
                        {
                            "id": "#main/pipeline_summary/config__algorithm__coverage", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self['config__algorithm__coverage'])"
                        }, 
                        {
                            "id": "#main/pipeline_summary/config__algorithm__coverage_merged", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self['config__algorithm__coverage_merged'])"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/pipeline_summary/summary__qc"
                        }, 
                        {
                            "id": "#main/pipeline_summary/summary__metrics"
                        }
                    ], 
                    "run": "#pipeline_summary.cwl", 
                    "scatter": [
                        "#main/pipeline_summary/description", 
                        "#main/pipeline_summary/reference__fasta__base", 
                        "#main/pipeline_summary/config__algorithm__coverage_interval", 
                        "#main/pipeline_summary/genome_build", 
                        "#main/pipeline_summary/config__algorithm__tools_off", 
                        "#main/pipeline_summary/config__algorithm__qc", 
                        "#main/pipeline_summary/analysis", 
                        "#main/pipeline_summary/config__algorithm__tools_on", 
                        "#main/pipeline_summary/config__algorithm__variant_regions", 
                        "#main/pipeline_summary/align_bam", 
                        "#main/pipeline_summary/config__algorithm__variant_regions_merged", 
                        "#main/pipeline_summary/config__algorithm__coverage", 
                        "#main/pipeline_summary/config__algorithm__coverage_merged"
                    ], 
                    "scatterMethod": "dotproduct"
                }, 
                {
                    "id": "#main/multiqc_summary", 
                    "in": [
                        {
                            "id": "#main/multiqc_summary/description", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['description']; }))"
                        }, 
                        {
                            "id": "#main/multiqc_summary/reference__fasta__base", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['reference__fasta__base']; }))"
                        }, 
                        {
                            "id": "#main/multiqc_summary/config__algorithm__coverage_interval", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['config__algorithm__coverage_interval']; }))"
                        }, 
                        {
                            "id": "#main/multiqc_summary/genome_build", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['genome_build']; }))"
                        }, 
                        {
                            "id": "#main/multiqc_summary/config__algorithm__tools_off", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['config__algorithm__tools_off']; }))"
                        }, 
                        {
                            "id": "#main/multiqc_summary/config__algorithm__qc", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['config__algorithm__qc']; }))"
                        }, 
                        {
                            "id": "#main/multiqc_summary/analysis", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['analysis']; }))"
                        }, 
                        {
                            "id": "#main/multiqc_summary/config__algorithm__tools_on", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['config__algorithm__tools_on']; }))"
                        }, 
                        {
                            "id": "#main/multiqc_summary/config__algorithm__variant_regions", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['config__algorithm__variant_regions']; }))"
                        }, 
                        {
                            "id": "#main/multiqc_summary/align_bam", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['align_bam']; }))"
                        }, 
                        {
                            "id": "#main/multiqc_summary/config__algorithm__variant_regions_merged", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['config__algorithm__variant_regions_merged']; }))"
                        }, 
                        {
                            "id": "#main/multiqc_summary/config__algorithm__coverage", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['config__algorithm__coverage']; }))"
                        }, 
                        {
                            "id": "#main/multiqc_summary/config__algorithm__coverage_merged", 
                            "source": "#main/qc_to_rec/qc_rec", 
                            "valueFrom": "$(self.map(function(x) { return x['config__algorithm__coverage_merged']; }))"
                        }, 
                        {
                            "id": "#main/multiqc_summary/summary__qc", 
                            "source": "#main/pipeline_summary/summary__qc"
                        }, 
                        {
                            "id": "#main/multiqc_summary/summary__metrics", 
                            "source": "#main/pipeline_summary/summary__metrics"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/multiqc_summary/summary__multiqc"
                        }
                    ], 
                    "run": "#multiqc_summary.cwl"
                }
            ], 
            "id": "#main"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "alignment_to_rec", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-base", 
                    "dockerPull": "quay.io/bcbio/bcbio-base"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1024, 
                    "ramMin": 3072
                }
            ], 
            "inputs": [
                {
                    "default": "multi-combined", 
                    "id": "#alignment_to_rec.cwl/sentinel_parallel", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 0, 
                        "prefix": "sentinel_parallel=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "default": "alignment_rec", 
                    "id": "#alignment_to_rec.cwl/sentinel_outputs", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 1, 
                        "prefix": "sentinel_outputs=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#alignment_to_rec.cwl/files", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 2, 
                            "prefix": "files=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "File", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/config__algorithm__align_split_size", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 3, 
                            "prefix": "config__algorithm__align_split_size=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/reference__fasta__base", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 4, 
                            "prefix": "reference__fasta__base=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/rgnames__pl", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 5, 
                            "prefix": "rgnames__pl=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/rgnames__sample", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 6, 
                            "prefix": "rgnames__sample=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/rgnames__pu", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 7, 
                            "prefix": "rgnames__pu=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/rgnames__lane", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 8, 
                            "prefix": "rgnames__lane=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/rgnames__rg", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 9, 
                            "prefix": "rgnames__rg=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/rgnames__lb", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 10, 
                            "prefix": "rgnames__lb=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/reference__bwa__indexes", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 11, 
                            "prefix": "reference__bwa__indexes=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/config__algorithm__aligner", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 12, 
                            "prefix": "config__algorithm__aligner=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/config__algorithm__mark_duplicates", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 13, 
                            "prefix": "config__algorithm__mark_duplicates=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/description", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 14, 
                            "prefix": "description=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#alignment_to_rec.cwl/alignment_rec", 
                    "type": {
                        "items": {
                            "fields": [
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/description", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/config__algorithm__align_split_size", 
                                    "type": "null"
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/reference__fasta__base", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/rgnames__lb", 
                                    "type": "null"
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/rgnames__rg", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/rgnames__lane", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/reference__bwa__indexes", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/files", 
                                    "type": {
                                        "items": "File", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/config__algorithm__aligner", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/config__algorithm__mark_duplicates", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/rgnames__pu", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/rgnames__pl", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/rgnames__sample", 
                                    "type": "string"
                                }
                            ], 
                            "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec", 
                            "type": "record"
                        }, 
                        "type": "array"
                    }
                }
            ], 
            "id": "#alignment_to_rec.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "batch_for_variantcall", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-base", 
                    "dockerPull": "quay.io/bcbio/bcbio-base"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1024, 
                    "ramMin": 3072
                }
            ], 
            "inputs": [
                {
                    "default": "multi-batch", 
                    "id": "#batch_for_variantcall.cwl/sentinel_parallel", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 0, 
                        "prefix": "sentinel_parallel=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "default": "batch_rec", 
                    "id": "#batch_for_variantcall.cwl/sentinel_outputs", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 1, 
                        "prefix": "sentinel_outputs=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/analysis", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 2, 
                            "prefix": "analysis=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/genome_build", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 3, 
                            "prefix": "genome_build=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/align_bam", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 4, 
                            "prefix": "align_bam=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/config__algorithm__callable_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 5, 
                            "prefix": "config__algorithm__callable_regions=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/metadata__batch", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 6, 
                            "prefix": "metadata__batch=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/metadata__phenotype", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 7, 
                            "prefix": "metadata__phenotype=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/regions__callable", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 8, 
                            "prefix": "regions__callable=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/config__algorithm__variantcaller", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 9, 
                            "prefix": "config__algorithm__variantcaller=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/config__algorithm__coverage_interval", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 10, 
                            "prefix": "config__algorithm__coverage_interval=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/config__algorithm__variant_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 11, 
                            "prefix": "config__algorithm__variant_regions=", 
                            "separate": false
                        }, 
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/config__algorithm__validate", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 12, 
                            "prefix": "config__algorithm__validate=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/config__algorithm__validate_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 13, 
                            "prefix": "config__algorithm__validate_regions=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/config__algorithm__tools_on", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 14, 
                            "prefix": "config__algorithm__tools_on=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/config__algorithm__tools_off", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 15, 
                            "prefix": "config__algorithm__tools_off=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/reference__fasta__base", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 16, 
                            "prefix": "reference__fasta__base=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/reference__rtg", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 17, 
                            "prefix": "reference__rtg=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/reference__genome_context", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 18, 
                            "prefix": "reference__genome_context=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/genome_resources__variation__cosmic", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 19, 
                            "prefix": "genome_resources__variation__cosmic=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/genome_resources__variation__dbsnp", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 20, 
                            "prefix": "genome_resources__variation__dbsnp=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/description", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 21, 
                            "prefix": "description=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#batch_for_variantcall.cwl/batch_rec", 
                    "type": {
                        "items": {
                            "fields": [
                                {
                                    "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/description", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/config__algorithm__validate", 
                                    "type": {
                                        "items": "null", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/reference__fasta__base", 
                                    "type": {
                                        "items": "File", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/config__algorithm__variantcaller", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/config__algorithm__coverage_interval", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/metadata__batch", 
                                    "type": {
                                        "items": "null", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/config__algorithm__validate_regions", 
                                    "type": {
                                        "items": "null", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/genome_build", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/reference__rtg", 
                                    "type": {
                                        "items": "File", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/metadata__phenotype", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/config__algorithm__tools_off", 
                                    "type": {
                                        "items": {
                                            "items": "string", 
                                            "type": "array"
                                        }, 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__dbsnp", 
                                    "type": {
                                        "items": "File", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__cosmic", 
                                    "type": {
                                        "items": "null", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/reference__genome_context", 
                                    "type": {
                                        "items": {
                                            "items": "null", 
                                            "type": "array"
                                        }, 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/analysis", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/config__algorithm__tools_on", 
                                    "type": {
                                        "items": {
                                            "items": "null", 
                                            "type": "array"
                                        }, 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/config__algorithm__variant_regions", 
                                    "type": {
                                        "items": [
                                            "File", 
                                            "null"
                                        ], 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/align_bam", 
                                    "type": {
                                        "items": "File", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/regions__callable", 
                                    "type": {
                                        "items": "File", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/config__algorithm__callable_regions", 
                                    "type": {
                                        "items": "File", 
                                        "type": "array"
                                    }
                                }
                            ], 
                            "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec", 
                            "type": "record"
                        }, 
                        "type": "array"
                    }
                }
            ], 
            "id": "#batch_for_variantcall.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "combine_sample_regions", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-align", 
                    "dockerPull": "quay.io/bcbio/bcbio-align"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1024, 
                    "ramMin": 3072
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "bedtools", 
                            "specs": [
                                "https://anaconda.org/bioconda/bedtools"
                            ]
                        }, 
                        {
                            "package": "htslib", 
                            "specs": [
                                "https://anaconda.org/bioconda/htslib"
                            ]
                        }
                    ]
                }
            ], 
            "inputs": [
                {
                    "default": "multi-combined", 
                    "id": "#combine_sample_regions.cwl/sentinel_parallel", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 0, 
                        "prefix": "sentinel_parallel=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "default": "config__algorithm__callable_regions,config__algorithm__non_callable_regions,config__algorithm__callable_count", 
                    "id": "#combine_sample_regions.cwl/sentinel_outputs", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 1, 
                        "prefix": "sentinel_outputs=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#combine_sample_regions.cwl/regions__callable", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 2, 
                            "prefix": "regions__callable=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#combine_sample_regions.cwl/regions__nblock", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 3, 
                            "prefix": "regions__nblock=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#combine_sample_regions.cwl/config__algorithm__nomap_split_size", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 4, 
                            "prefix": "config__algorithm__nomap_split_size=", 
                            "separate": false
                        }, 
                        "items": "long", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#combine_sample_regions.cwl/config__algorithm__nomap_split_targets", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 5, 
                            "prefix": "config__algorithm__nomap_split_targets=", 
                            "separate": false
                        }, 
                        "items": "long", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#combine_sample_regions.cwl/reference__fasta__base", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 6, 
                            "prefix": "reference__fasta__base=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#combine_sample_regions.cwl/description", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 7, 
                            "prefix": "description=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#combine_sample_regions.cwl/config__algorithm__callable_regions", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#combine_sample_regions.cwl/config__algorithm__non_callable_regions", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#combine_sample_regions.cwl/config__algorithm__callable_count", 
                    "type": {
                        "items": "int", 
                        "type": "array"
                    }
                }
            ], 
            "id": "#combine_sample_regions.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "compare_to_rm", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-vc", 
                    "dockerPull": "quay.io/bcbio/bcbio-vc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 8, 
                    "outdirMin": 1024, 
                    "ramMin": 24576
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "bcftools", 
                            "specs": [
                                "https://anaconda.org/bioconda/bcftools"
                            ]
                        }, 
                        {
                            "package": "bedtools", 
                            "specs": [
                                "https://anaconda.org/bioconda/bedtools"
                            ]
                        }, 
                        {
                            "package": "pythonpy", 
                            "specs": [
                                "https://anaconda.org/bioconda/pythonpy"
                            ]
                        }, 
                        {
                            "package": "gvcf-regions", 
                            "specs": [
                                "https://anaconda.org/bioconda/gvcf-regions"
                            ]
                        }, 
                        {
                            "package": "htslib", 
                            "specs": [
                                "https://anaconda.org/bioconda/htslib"
                            ]
                        }, 
                        {
                            "package": "rtg-tools", 
                            "specs": [
                                "https://anaconda.org/bioconda/rtg-tools"
                            ]
                        }, 
                        {
                            "package": "vcfanno", 
                            "specs": [
                                "https://anaconda.org/bioconda/vcfanno"
                            ]
                        }
                    ]
                }
            ], 
            "inputs": [
                {
                    "default": "batch-single", 
                    "id": "#compare_to_rm.cwl/sentinel_parallel", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 0, 
                        "prefix": "sentinel_parallel=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "default": "validate__summary,validate__tp,validate__fp,validate__fn", 
                    "id": "#compare_to_rm.cwl/sentinel_outputs", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 1, 
                        "prefix": "sentinel_outputs=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#compare_to_rm.cwl/description", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 2, 
                            "prefix": "description=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#compare_to_rm.cwl/config__algorithm__validate", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 3, 
                            "prefix": "config__algorithm__validate=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#compare_to_rm.cwl/reference__fasta__base", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 4, 
                            "prefix": "reference__fasta__base=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#compare_to_rm.cwl/config__algorithm__variantcaller", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 5, 
                            "prefix": "config__algorithm__variantcaller=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#compare_to_rm.cwl/config__algorithm__coverage_interval", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 6, 
                            "prefix": "config__algorithm__coverage_interval=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#compare_to_rm.cwl/metadata__batch", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 7, 
                            "prefix": "metadata__batch=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#compare_to_rm.cwl/config__algorithm__validate_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 8, 
                            "prefix": "config__algorithm__validate_regions=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#compare_to_rm.cwl/genome_build", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 9, 
                            "prefix": "genome_build=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#compare_to_rm.cwl/reference__rtg", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 10, 
                            "prefix": "reference__rtg=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#compare_to_rm.cwl/metadata__phenotype", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 11, 
                            "prefix": "metadata__phenotype=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#compare_to_rm.cwl/config__algorithm__tools_off", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 12, 
                            "prefix": "config__algorithm__tools_off=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#compare_to_rm.cwl/genome_resources__variation__dbsnp", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 13, 
                            "prefix": "genome_resources__variation__dbsnp=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#compare_to_rm.cwl/genome_resources__variation__cosmic", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 14, 
                            "prefix": "genome_resources__variation__cosmic=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#compare_to_rm.cwl/reference__genome_context", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 15, 
                            "prefix": "reference__genome_context=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#compare_to_rm.cwl/analysis", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 16, 
                            "prefix": "analysis=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#compare_to_rm.cwl/config__algorithm__tools_on", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 17, 
                            "prefix": "config__algorithm__tools_on=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#compare_to_rm.cwl/config__algorithm__variant_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 18, 
                            "prefix": "config__algorithm__variant_regions=", 
                            "separate": false
                        }, 
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#compare_to_rm.cwl/align_bam", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 19, 
                            "prefix": "align_bam=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#compare_to_rm.cwl/regions__callable", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 20, 
                            "prefix": "regions__callable=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#compare_to_rm.cwl/config__algorithm__callable_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 21, 
                            "prefix": "config__algorithm__callable_regions=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#compare_to_rm.cwl/vrn_file", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 22, 
                        "prefix": "vrn_file=", 
                        "separate": false
                    }, 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": "File"
                }
            ], 
            "outputs": [
                {
                    "id": "#compare_to_rm.cwl/validate__summary", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#compare_to_rm.cwl/validate__tp", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#compare_to_rm.cwl/validate__fp", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#compare_to_rm.cwl/validate__fn", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }
            ], 
            "id": "#compare_to_rm.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "concat_batch_variantcalls", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-vc", 
                    "dockerPull": "quay.io/bcbio/bcbio-vc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1024, 
                    "ramMin": 3072
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "bcftools", 
                            "specs": [
                                "https://anaconda.org/bioconda/bcftools"
                            ]
                        }, 
                        {
                            "package": "htslib", 
                            "specs": [
                                "https://anaconda.org/bioconda/htslib"
                            ]
                        }
                    ]
                }
            ], 
            "inputs": [
                {
                    "default": "batch-merge", 
                    "id": "#concat_batch_variantcalls.cwl/sentinel_parallel", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 0, 
                        "prefix": "sentinel_parallel=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "default": "vrn_file", 
                    "id": "#concat_batch_variantcalls.cwl/sentinel_outputs", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 1, 
                        "prefix": "sentinel_outputs=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/description", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 2, 
                            "prefix": "description=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/config__algorithm__validate", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 3, 
                            "prefix": "config__algorithm__validate=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/reference__fasta__base", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 4, 
                            "prefix": "reference__fasta__base=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/config__algorithm__variantcaller", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 5, 
                            "prefix": "config__algorithm__variantcaller=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/config__algorithm__coverage_interval", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 6, 
                            "prefix": "config__algorithm__coverage_interval=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/metadata__batch", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 7, 
                            "prefix": "metadata__batch=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/config__algorithm__validate_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 8, 
                            "prefix": "config__algorithm__validate_regions=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/genome_build", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 9, 
                            "prefix": "genome_build=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/reference__rtg", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 10, 
                            "prefix": "reference__rtg=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/metadata__phenotype", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 11, 
                            "prefix": "metadata__phenotype=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/config__algorithm__tools_off", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 12, 
                            "prefix": "config__algorithm__tools_off=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/genome_resources__variation__dbsnp", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 13, 
                            "prefix": "genome_resources__variation__dbsnp=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/genome_resources__variation__cosmic", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 14, 
                            "prefix": "genome_resources__variation__cosmic=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/reference__genome_context", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 15, 
                            "prefix": "reference__genome_context=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/analysis", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 16, 
                            "prefix": "analysis=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/config__algorithm__tools_on", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 17, 
                            "prefix": "config__algorithm__tools_on=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/config__algorithm__variant_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 18, 
                            "prefix": "config__algorithm__variant_regions=", 
                            "separate": false
                        }, 
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/align_bam", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 19, 
                            "prefix": "align_bam=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/regions__callable", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 20, 
                            "prefix": "regions__callable=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/config__algorithm__callable_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 21, 
                            "prefix": "config__algorithm__callable_regions=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/region", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 22, 
                            "prefix": "region=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/vrn_file_region", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 23, 
                            "prefix": "vrn_file_region=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#concat_batch_variantcalls.cwl/vrn_file", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": "File"
                }
            ], 
            "id": "#concat_batch_variantcalls.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "get_parallel_regions", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-base", 
                    "dockerPull": "quay.io/bcbio/bcbio-base"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1024, 
                    "ramMin": 3072
                }
            ], 
            "inputs": [
                {
                    "default": "batch-split", 
                    "id": "#get_parallel_regions.cwl/sentinel_parallel", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 0, 
                        "prefix": "sentinel_parallel=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "default": "region", 
                    "id": "#get_parallel_regions.cwl/sentinel_outputs", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 1, 
                        "prefix": "sentinel_outputs=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#get_parallel_regions.cwl/description", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 2, 
                            "prefix": "description=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#get_parallel_regions.cwl/config__algorithm__validate", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 3, 
                            "prefix": "config__algorithm__validate=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#get_parallel_regions.cwl/reference__fasta__base", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 4, 
                            "prefix": "reference__fasta__base=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#get_parallel_regions.cwl/config__algorithm__variantcaller", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 5, 
                            "prefix": "config__algorithm__variantcaller=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#get_parallel_regions.cwl/config__algorithm__coverage_interval", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 6, 
                            "prefix": "config__algorithm__coverage_interval=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#get_parallel_regions.cwl/metadata__batch", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 7, 
                            "prefix": "metadata__batch=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#get_parallel_regions.cwl/config__algorithm__validate_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 8, 
                            "prefix": "config__algorithm__validate_regions=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#get_parallel_regions.cwl/genome_build", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 9, 
                            "prefix": "genome_build=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#get_parallel_regions.cwl/reference__rtg", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 10, 
                            "prefix": "reference__rtg=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#get_parallel_regions.cwl/metadata__phenotype", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 11, 
                            "prefix": "metadata__phenotype=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#get_parallel_regions.cwl/config__algorithm__tools_off", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 12, 
                            "prefix": "config__algorithm__tools_off=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#get_parallel_regions.cwl/genome_resources__variation__dbsnp", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 13, 
                            "prefix": "genome_resources__variation__dbsnp=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#get_parallel_regions.cwl/genome_resources__variation__cosmic", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 14, 
                            "prefix": "genome_resources__variation__cosmic=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#get_parallel_regions.cwl/reference__genome_context", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 15, 
                            "prefix": "reference__genome_context=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#get_parallel_regions.cwl/analysis", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 16, 
                            "prefix": "analysis=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#get_parallel_regions.cwl/config__algorithm__tools_on", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 17, 
                            "prefix": "config__algorithm__tools_on=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#get_parallel_regions.cwl/config__algorithm__variant_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 18, 
                            "prefix": "config__algorithm__variant_regions=", 
                            "separate": false
                        }, 
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#get_parallel_regions.cwl/align_bam", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 19, 
                            "prefix": "align_bam=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#get_parallel_regions.cwl/regions__callable", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 20, 
                            "prefix": "regions__callable=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#get_parallel_regions.cwl/config__algorithm__callable_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 21, 
                            "prefix": "config__algorithm__callable_regions=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#get_parallel_regions.cwl/region", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }
            ], 
            "id": "#get_parallel_regions.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "merge_split_alignments", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-align", 
                    "dockerPull": "quay.io/bcbio/bcbio-align"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 8, 
                    "outdirMin": 349221597700, 
                    "ramMin": 24576, 
                    "tmpdirMin": 349221596676
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "biobambam", 
                            "specs": [
                                "https://anaconda.org/bioconda/biobambam"
                            ]
                        }, 
                        {
                            "package": "samtools", 
                            "specs": [
                                "https://anaconda.org/bioconda/samtools"
                            ]
                        }
                    ]
                }
            ], 
            "inputs": [
                {
                    "default": "single-merge", 
                    "id": "#merge_split_alignments.cwl/sentinel_parallel", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 0, 
                        "prefix": "sentinel_parallel=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "default": "align_bam,work_bam_plus__disc,work_bam_plus__sr,hla__fastq", 
                    "id": "#merge_split_alignments.cwl/sentinel_outputs", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 1, 
                        "prefix": "sentinel_outputs=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#merge_split_alignments.cwl/work_bam", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 2, 
                        "prefix": "work_bam=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#merge_split_alignments.cwl/align_bam_toolinput", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 3, 
                        "prefix": "align_bam=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#merge_split_alignments.cwl/work_bam_plus__disc_toolinput", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 4, 
                        "prefix": "work_bam_plus__disc=", 
                        "separate": false
                    }, 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#merge_split_alignments.cwl/work_bam_plus__sr_toolinput", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 5, 
                        "prefix": "work_bam_plus__sr=", 
                        "separate": false
                    }, 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#merge_split_alignments.cwl/hla__fastq_toolinput", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 6, 
                        "prefix": "hla__fastq=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": [
                            "File", 
                            "null", 
                            {
                                "items": "File", 
                                "type": "array"
                            }
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#merge_split_alignments.cwl/description", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 7, 
                        "prefix": "description=", 
                        "separate": false
                    }, 
                    "type": "string"
                }
            ], 
            "outputs": [
                {
                    "id": "#merge_split_alignments.cwl/align_bam", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": "File"
                }, 
                {
                    "id": "#merge_split_alignments.cwl/work_bam_plus__disc", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#merge_split_alignments.cwl/work_bam_plus__sr", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#merge_split_alignments.cwl/hla__fastq", 
                    "type": [
                        "File", 
                        "null", 
                        {
                            "items": "File", 
                            "type": "array"
                        }
                    ]
                }
            ], 
            "id": "#merge_split_alignments.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "multiqc_summary", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-qc", 
                    "dockerPull": "quay.io/bcbio/bcbio-qc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1024, 
                    "ramMin": 3072
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "multiqc", 
                            "specs": [
                                "https://anaconda.org/bioconda/multiqc"
                            ]
                        }, 
                        {
                            "package": "multiqc-bcbio", 
                            "specs": [
                                "https://anaconda.org/bioconda/multiqc-bcbio"
                            ]
                        }
                    ]
                }
            ], 
            "inputs": [
                {
                    "default": "multi-combined", 
                    "id": "#multiqc_summary.cwl/sentinel_parallel", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 0, 
                        "prefix": "sentinel_parallel=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "default": "summary__multiqc", 
                    "id": "#multiqc_summary.cwl/sentinel_outputs", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 1, 
                        "prefix": "sentinel_outputs=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#multiqc_summary.cwl/description", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 2, 
                            "prefix": "description=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#multiqc_summary.cwl/reference__fasta__base", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 3, 
                            "prefix": "reference__fasta__base=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "File", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#multiqc_summary.cwl/config__algorithm__coverage_interval", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 4, 
                            "prefix": "config__algorithm__coverage_interval=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#multiqc_summary.cwl/genome_build", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 5, 
                            "prefix": "genome_build=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#multiqc_summary.cwl/config__algorithm__tools_off", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 6, 
                            "prefix": "config__algorithm__tools_off=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": {
                                "items": "string", 
                                "type": "array"
                            }, 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#multiqc_summary.cwl/config__algorithm__qc", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 7, 
                            "prefix": "config__algorithm__qc=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": {
                                "items": "string", 
                                "type": "array"
                            }, 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#multiqc_summary.cwl/analysis", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 8, 
                            "prefix": "analysis=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#multiqc_summary.cwl/config__algorithm__tools_on", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 9, 
                            "prefix": "config__algorithm__tools_on=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": {
                                "items": "null", 
                                "type": "array"
                            }, 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#multiqc_summary.cwl/config__algorithm__variant_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 10, 
                            "prefix": "config__algorithm__variant_regions=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": [
                                "File", 
                                "null"
                            ], 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#multiqc_summary.cwl/align_bam", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 11, 
                            "prefix": "align_bam=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "File", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#multiqc_summary.cwl/config__algorithm__variant_regions_merged", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 12, 
                            "prefix": "config__algorithm__variant_regions_merged=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": [
                                "File", 
                                "null"
                            ], 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#multiqc_summary.cwl/config__algorithm__coverage", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 13, 
                            "prefix": "config__algorithm__coverage=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": [
                                "File", 
                                "null"
                            ], 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#multiqc_summary.cwl/config__algorithm__coverage_merged", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 14, 
                            "prefix": "config__algorithm__coverage_merged=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": [
                                "File", 
                                "null"
                            ], 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#multiqc_summary.cwl/summary__qc", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 15, 
                            "prefix": "summary__qc=", 
                            "separate": false
                        }, 
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#multiqc_summary.cwl/summary__metrics", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 16, 
                            "prefix": "summary__metrics=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#multiqc_summary.cwl/summary__multiqc", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }
            ], 
            "id": "#multiqc_summary.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "pipeline_summary", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-qc", 
                    "dockerPull": "quay.io/bcbio/bcbio-qc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 8, 
                    "outdirMin": 1024, 
                    "ramMin": 24576
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "bcftools", 
                            "specs": [
                                "https://anaconda.org/bioconda/bcftools"
                            ]
                        }, 
                        {
                            "package": "bedtools", 
                            "specs": [
                                "https://anaconda.org/bioconda/bedtools"
                            ]
                        }, 
                        {
                            "package": "fastqc", 
                            "specs": [
                                "https://anaconda.org/bioconda/fastqc"
                            ]
                        }, 
                        {
                            "package": "goleft", 
                            "specs": [
                                "https://anaconda.org/bioconda/goleft"
                            ]
                        }, 
                        {
                            "package": "picard", 
                            "specs": [
                                "https://anaconda.org/bioconda/picard"
                            ]
                        }, 
                        {
                            "package": "pythonpy", 
                            "specs": [
                                "https://anaconda.org/bioconda/pythonpy"
                            ]
                        }, 
                        {
                            "package": "qsignature", 
                            "specs": [
                                "https://anaconda.org/bioconda/qsignature"
                            ]
                        }, 
                        {
                            "package": "qualimap", 
                            "specs": [
                                "https://anaconda.org/bioconda/qualimap"
                            ]
                        }, 
                        {
                            "package": "sambamba", 
                            "specs": [
                                "https://anaconda.org/bioconda/sambamba"
                            ]
                        }, 
                        {
                            "package": "samtools", 
                            "specs": [
                                "https://anaconda.org/bioconda/samtools"
                            ]
                        }
                    ]
                }
            ], 
            "inputs": [
                {
                    "default": "multi-parallel", 
                    "id": "#pipeline_summary.cwl/sentinel_parallel", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 0, 
                        "prefix": "sentinel_parallel=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "default": "summary__qc,summary__metrics", 
                    "id": "#pipeline_summary.cwl/sentinel_outputs", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 1, 
                        "prefix": "sentinel_outputs=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#pipeline_summary.cwl/description", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 2, 
                        "prefix": "description=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#pipeline_summary.cwl/reference__fasta__base", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 3, 
                        "prefix": "reference__fasta__base=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#pipeline_summary.cwl/config__algorithm__coverage_interval", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 4, 
                        "prefix": "config__algorithm__coverage_interval=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#pipeline_summary.cwl/genome_build", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 5, 
                        "prefix": "genome_build=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#pipeline_summary.cwl/config__algorithm__tools_off", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 6, 
                        "prefix": "config__algorithm__tools_off=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#pipeline_summary.cwl/config__algorithm__qc", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 7, 
                        "prefix": "config__algorithm__qc=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#pipeline_summary.cwl/analysis", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 8, 
                        "prefix": "analysis=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#pipeline_summary.cwl/config__algorithm__tools_on", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 9, 
                        "prefix": "config__algorithm__tools_on=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#pipeline_summary.cwl/config__algorithm__variant_regions", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 10, 
                        "prefix": "config__algorithm__variant_regions=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#pipeline_summary.cwl/align_bam", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 11, 
                        "prefix": "align_bam=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#pipeline_summary.cwl/config__algorithm__variant_regions_merged", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 12, 
                        "prefix": "config__algorithm__variant_regions_merged=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#pipeline_summary.cwl/config__algorithm__coverage", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 13, 
                        "prefix": "config__algorithm__coverage=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#pipeline_summary.cwl/config__algorithm__coverage_merged", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 14, 
                        "prefix": "config__algorithm__coverage_merged=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#pipeline_summary.cwl/summary__qc", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#pipeline_summary.cwl/summary__metrics", 
                    "type": "string"
                }
            ], 
            "id": "#pipeline_summary.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "postprocess_alignment", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-align", 
                    "dockerPull": "quay.io/bcbio/bcbio-align"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 8, 
                    "outdirMin": 1024, 
                    "ramMin": 24576
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "sambamba", 
                            "specs": [
                                "https://anaconda.org/bioconda/sambamba"
                            ]
                        }, 
                        {
                            "package": "goleft", 
                            "specs": [
                                "https://anaconda.org/bioconda/goleft"
                            ]
                        }, 
                        {
                            "package": "bedtools", 
                            "specs": [
                                "https://anaconda.org/bioconda/bedtools"
                            ]
                        }, 
                        {
                            "package": "htslib", 
                            "specs": [
                                "https://anaconda.org/bioconda/htslib"
                            ]
                        }
                    ]
                }
            ], 
            "inputs": [
                {
                    "default": "multi-parallel", 
                    "id": "#postprocess_alignment.cwl/sentinel_parallel", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 0, 
                        "prefix": "sentinel_parallel=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "default": "config__algorithm__coverage_interval,config__algorithm__variant_regions,config__algorithm__variant_regions_merged,config__algorithm__variant_regions_orig,config__algorithm__coverage,config__algorithm__coverage_merged,config__algorithm__coverage_orig,config__algorithm__seq2c_bed_ready,regions__callable,regions__sample_callable,regions__nblock,regions__highdepth", 
                    "id": "#postprocess_alignment.cwl/sentinel_outputs", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 1, 
                        "prefix": "sentinel_outputs=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#postprocess_alignment.cwl/description", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 2, 
                        "prefix": "description=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment.cwl/reference__fasta__base", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 3, 
                        "prefix": "reference__fasta__base=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__coverage_interval_toolinput", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 4, 
                        "prefix": "config__algorithm__coverage_interval=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__recalibrate", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 5, 
                        "prefix": "config__algorithm__recalibrate=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__variant_regions_toolinput", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 6, 
                        "prefix": "config__algorithm__variant_regions=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment.cwl/align_bam", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 7, 
                        "prefix": "align_bam=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__variant_regions_merged_toolinput", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 8, 
                        "prefix": "config__algorithm__variant_regions_merged=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__variant_regions_orig_toolinput", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 9, 
                        "prefix": "config__algorithm__variant_regions_orig=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__coverage_toolinput", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 10, 
                        "prefix": "config__algorithm__coverage=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__coverage_merged_toolinput", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 11, 
                        "prefix": "config__algorithm__coverage_merged=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__coverage_orig_toolinput", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 12, 
                        "prefix": "config__algorithm__coverage_orig=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__seq2c_bed_ready_toolinput", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 13, 
                        "prefix": "config__algorithm__seq2c_bed_ready=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__coverage_interval", 
                    "type": "string"
                }, 
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__variant_regions", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__variant_regions_merged", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__variant_regions_orig", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__coverage", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__coverage_merged", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__coverage_orig", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__seq2c_bed_ready", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/regions__callable", 
                    "type": "File"
                }, 
                {
                    "id": "#postprocess_alignment.cwl/regions__sample_callable", 
                    "type": "File"
                }, 
                {
                    "id": "#postprocess_alignment.cwl/regions__nblock", 
                    "type": "File"
                }, 
                {
                    "id": "#postprocess_alignment.cwl/regions__highdepth", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }
            ], 
            "id": "#postprocess_alignment.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "postprocess_alignment_to_rec", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-base", 
                    "dockerPull": "quay.io/bcbio/bcbio-base"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1024, 
                    "ramMin": 3072
                }
            ], 
            "inputs": [
                {
                    "default": "multi-batch", 
                    "id": "#postprocess_alignment_to_rec.cwl/sentinel_parallel", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 0, 
                        "prefix": "sentinel_parallel=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "default": "postprocess_alignment_rec", 
                    "id": "#postprocess_alignment_to_rec.cwl/sentinel_outputs", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 1, 
                        "prefix": "sentinel_outputs=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/align_bam", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 2, 
                            "prefix": "align_bam=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/config__algorithm__coverage_interval", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 3, 
                            "prefix": "config__algorithm__coverage_interval=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/config__algorithm__variant_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 4, 
                            "prefix": "config__algorithm__variant_regions=", 
                            "separate": false
                        }, 
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/config__algorithm__variant_regions_merged", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 5, 
                            "prefix": "config__algorithm__variant_regions_merged=", 
                            "separate": false
                        }, 
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/config__algorithm__variant_regions_orig", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 6, 
                            "prefix": "config__algorithm__variant_regions_orig=", 
                            "separate": false
                        }, 
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/config__algorithm__coverage", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 7, 
                            "prefix": "config__algorithm__coverage=", 
                            "separate": false
                        }, 
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/config__algorithm__coverage_merged", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 8, 
                            "prefix": "config__algorithm__coverage_merged=", 
                            "separate": false
                        }, 
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/config__algorithm__coverage_orig", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 9, 
                            "prefix": "config__algorithm__coverage_orig=", 
                            "separate": false
                        }, 
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/config__algorithm__seq2c_bed_ready", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 10, 
                            "prefix": "config__algorithm__seq2c_bed_ready=", 
                            "separate": false
                        }, 
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/config__algorithm__recalibrate", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 11, 
                            "prefix": "config__algorithm__recalibrate=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/reference__fasta__base", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 12, 
                            "prefix": "reference__fasta__base=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/description", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 13, 
                            "prefix": "description=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec", 
                    "type": {
                        "items": {
                            "fields": [
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/description", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/reference__fasta__base", 
                                    "type": {
                                        "items": "File", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__coverage_interval", 
                                    "type": {
                                        "items": "null", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__recalibrate", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__variant_regions", 
                                    "type": {
                                        "items": [
                                            "File", 
                                            "null"
                                        ], 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/align_bam", 
                                    "type": {
                                        "items": "File", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__variant_regions_merged", 
                                    "type": {
                                        "items": [
                                            "File", 
                                            "null"
                                        ], 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__variant_regions_orig", 
                                    "type": {
                                        "items": [
                                            "File", 
                                            "null"
                                        ], 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__coverage", 
                                    "type": {
                                        "items": [
                                            "File", 
                                            "null"
                                        ], 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__coverage_merged", 
                                    "type": {
                                        "items": [
                                            "File", 
                                            "null"
                                        ], 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__coverage_orig", 
                                    "type": {
                                        "items": [
                                            "File", 
                                            "null"
                                        ], 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__seq2c_bed_ready", 
                                    "type": {
                                        "items": [
                                            "File", 
                                            "null"
                                        ], 
                                        "type": "array"
                                    }
                                }
                            ], 
                            "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec", 
                            "type": "record"
                        }, 
                        "type": "array"
                    }
                }
            ], 
            "id": "#postprocess_alignment_to_rec.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "postprocess_variants", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-vc", 
                    "dockerPull": "quay.io/bcbio/bcbio-vc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 8, 
                    "outdirMin": 1024, 
                    "ramMin": 24576
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "snpeff", 
                            "specs": [
                                "https://anaconda.org/bioconda/snpeff"
                            ], 
                            "version": [
                                "4.3i"
                            ]
                        }
                    ]
                }
            ], 
            "inputs": [
                {
                    "default": "batch-single", 
                    "id": "#postprocess_variants.cwl/sentinel_parallel", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 0, 
                        "prefix": "sentinel_parallel=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "default": "vrn_file", 
                    "id": "#postprocess_variants.cwl/sentinel_outputs", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 1, 
                        "prefix": "sentinel_outputs=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#postprocess_variants.cwl/description", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 2, 
                            "prefix": "description=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_variants.cwl/config__algorithm__validate", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 3, 
                            "prefix": "config__algorithm__validate=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_variants.cwl/reference__fasta__base", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 4, 
                            "prefix": "reference__fasta__base=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_variants.cwl/config__algorithm__variantcaller", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 5, 
                            "prefix": "config__algorithm__variantcaller=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_variants.cwl/config__algorithm__coverage_interval", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 6, 
                            "prefix": "config__algorithm__coverage_interval=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_variants.cwl/metadata__batch", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 7, 
                            "prefix": "metadata__batch=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_variants.cwl/config__algorithm__validate_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 8, 
                            "prefix": "config__algorithm__validate_regions=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_variants.cwl/genome_build", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 9, 
                            "prefix": "genome_build=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_variants.cwl/reference__rtg", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 10, 
                            "prefix": "reference__rtg=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_variants.cwl/metadata__phenotype", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 11, 
                            "prefix": "metadata__phenotype=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_variants.cwl/config__algorithm__tools_off", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 12, 
                            "prefix": "config__algorithm__tools_off=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_variants.cwl/genome_resources__variation__dbsnp", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 13, 
                            "prefix": "genome_resources__variation__dbsnp=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_variants.cwl/genome_resources__variation__cosmic", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 14, 
                            "prefix": "genome_resources__variation__cosmic=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_variants.cwl/reference__genome_context", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 15, 
                            "prefix": "reference__genome_context=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_variants.cwl/analysis", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 16, 
                            "prefix": "analysis=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_variants.cwl/config__algorithm__tools_on", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 17, 
                            "prefix": "config__algorithm__tools_on=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_variants.cwl/config__algorithm__variant_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 18, 
                            "prefix": "config__algorithm__variant_regions=", 
                            "separate": false
                        }, 
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_variants.cwl/align_bam", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 19, 
                            "prefix": "align_bam=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_variants.cwl/regions__callable", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 20, 
                            "prefix": "regions__callable=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_variants.cwl/config__algorithm__callable_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 21, 
                            "prefix": "config__algorithm__callable_regions=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_variants.cwl/vrn_file_toolinput", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 22, 
                        "prefix": "vrn_file=", 
                        "separate": false
                    }, 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": "File"
                }
            ], 
            "outputs": [
                {
                    "id": "#postprocess_variants.cwl/vrn_file", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": "File"
                }
            ], 
            "id": "#postprocess_variants.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "prep_align_inputs", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-align", 
                    "dockerPull": "quay.io/bcbio/bcbio-align"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 174610799362, 
                    "ramMin": 3072, 
                    "tmpdirMin": 174610798338
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "grabix", 
                            "specs": [
                                "https://anaconda.org/bioconda/grabix"
                            ]
                        }, 
                        {
                            "package": "htslib", 
                            "specs": [
                                "https://anaconda.org/bioconda/htslib"
                            ]
                        }, 
                        {
                            "package": "biobambam", 
                            "specs": [
                                "https://anaconda.org/bioconda/biobambam"
                            ]
                        }
                    ]
                }
            ], 
            "inputs": [
                {
                    "default": "single-split", 
                    "id": "#prep_align_inputs.cwl/sentinel_parallel", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 0, 
                        "prefix": "sentinel_parallel=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "default": "process_alignment_rec", 
                    "id": "#prep_align_inputs.cwl/sentinel_outputs", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 1, 
                        "prefix": "sentinel_outputs=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#prep_align_inputs.cwl/description", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 2, 
                        "prefix": "description=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#prep_align_inputs.cwl/config__algorithm__align_split_size", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 3, 
                        "prefix": "config__algorithm__align_split_size=", 
                        "separate": false
                    }, 
                    "type": "null"
                }, 
                {
                    "id": "#prep_align_inputs.cwl/reference__fasta__base", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 4, 
                        "prefix": "reference__fasta__base=", 
                        "separate": false
                    }, 
                    "type": "File"
                }, 
                {
                    "id": "#prep_align_inputs.cwl/rgnames__lb", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 5, 
                        "prefix": "rgnames__lb=", 
                        "separate": false
                    }, 
                    "type": "null"
                }, 
                {
                    "id": "#prep_align_inputs.cwl/rgnames__rg", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 6, 
                        "prefix": "rgnames__rg=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#prep_align_inputs.cwl/rgnames__lane", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 7, 
                        "prefix": "rgnames__lane=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#prep_align_inputs.cwl/reference__bwa__indexes", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 8, 
                        "prefix": "reference__bwa__indexes=", 
                        "separate": false
                    }, 
                    "type": "File"
                }, 
                {
                    "id": "#prep_align_inputs.cwl/files", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 9, 
                        "prefix": "files=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#prep_align_inputs.cwl/config__algorithm__aligner", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 10, 
                        "prefix": "config__algorithm__aligner=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#prep_align_inputs.cwl/config__algorithm__mark_duplicates", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 11, 
                        "prefix": "config__algorithm__mark_duplicates=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#prep_align_inputs.cwl/rgnames__pu", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 12, 
                        "prefix": "rgnames__pu=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#prep_align_inputs.cwl/rgnames__pl", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 13, 
                        "prefix": "rgnames__pl=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#prep_align_inputs.cwl/rgnames__sample", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 14, 
                        "prefix": "rgnames__sample=", 
                        "separate": false
                    }, 
                    "type": "string"
                }
            ], 
            "outputs": [
                {
                    "id": "#prep_align_inputs.cwl/process_alignment_rec", 
                    "type": {
                        "items": {
                            "fields": [
                                {
                                    "name": "#prep_align_inputs.cwl/process_alignment_rec/process_alignment_rec/config__algorithm__quality_format", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#prep_align_inputs.cwl/process_alignment_rec/process_alignment_rec/align_split", 
                                    "type": [
                                        "string", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#prep_align_inputs.cwl/process_alignment_rec/process_alignment_rec/files", 
                                    "type": {
                                        "items": "File", 
                                        "type": "array"
                                    }
                                }
                            ], 
                            "name": "#prep_align_inputs.cwl/process_alignment_rec/process_alignment_rec", 
                            "type": "record"
                        }, 
                        "type": "array"
                    }
                }
            ], 
            "id": "#prep_align_inputs.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "prep_samples", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-align", 
                    "dockerPull": "quay.io/bcbio/bcbio-align"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1024, 
                    "ramMin": 3072
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "htslib", 
                            "specs": [
                                "https://anaconda.org/bioconda/htslib"
                            ]
                        }, 
                        {
                            "package": "bedtools", 
                            "specs": [
                                "https://anaconda.org/bioconda/bedtools"
                            ]
                        }, 
                        {
                            "package": "pythonpy", 
                            "specs": [
                                "https://anaconda.org/bioconda/pythonpy"
                            ]
                        }
                    ]
                }
            ], 
            "inputs": [
                {
                    "default": "multi-parallel", 
                    "id": "#prep_samples.cwl/sentinel_parallel", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 0, 
                        "prefix": "sentinel_parallel=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "default": "config__algorithm__variant_regions,config__algorithm__variant_regions_merged,config__algorithm__variant_regions_orig,config__algorithm__coverage,config__algorithm__coverage_merged,config__algorithm__coverage_orig,config__algorithm__seq2c_bed_ready", 
                    "id": "#prep_samples.cwl/sentinel_outputs", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 1, 
                        "prefix": "sentinel_outputs=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#prep_samples.cwl/description", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 2, 
                        "prefix": "description=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#prep_samples.cwl/reference__fasta__base", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 3, 
                        "prefix": "reference__fasta__base=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#prep_samples.cwl/config__algorithm__variant_regions_toolinput", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 4, 
                        "prefix": "config__algorithm__variant_regions=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": "null", 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#prep_samples.cwl/config__algorithm__variant_regions", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#prep_samples.cwl/config__algorithm__variant_regions_merged", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#prep_samples.cwl/config__algorithm__variant_regions_orig", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#prep_samples.cwl/config__algorithm__coverage", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#prep_samples.cwl/config__algorithm__coverage_merged", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#prep_samples.cwl/config__algorithm__coverage_orig", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#prep_samples.cwl/config__algorithm__seq2c_bed_ready", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }
            ], 
            "id": "#prep_samples.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "prep_samples_to_rec", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-base", 
                    "dockerPull": "quay.io/bcbio/bcbio-base"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1024, 
                    "ramMin": 3072
                }
            ], 
            "inputs": [
                {
                    "default": "multi-batch", 
                    "id": "#prep_samples_to_rec.cwl/sentinel_parallel", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 0, 
                        "prefix": "sentinel_parallel=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "default": "prep_samples_rec", 
                    "id": "#prep_samples_to_rec.cwl/sentinel_outputs", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 1, 
                        "prefix": "sentinel_outputs=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#prep_samples_to_rec.cwl/config__algorithm__variant_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 2, 
                            "prefix": "config__algorithm__variant_regions=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#prep_samples_to_rec.cwl/reference__fasta__base", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 3, 
                            "prefix": "reference__fasta__base=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#prep_samples_to_rec.cwl/description", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 4, 
                            "prefix": "description=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#prep_samples_to_rec.cwl/prep_samples_rec", 
                    "type": {
                        "items": {
                            "fields": [
                                {
                                    "name": "#prep_samples_to_rec.cwl/prep_samples_rec/prep_samples_rec/description", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#prep_samples_to_rec.cwl/prep_samples_rec/prep_samples_rec/reference__fasta__base", 
                                    "type": {
                                        "items": "File", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#prep_samples_to_rec.cwl/prep_samples_rec/prep_samples_rec/config__algorithm__variant_regions", 
                                    "type": {
                                        "items": "null", 
                                        "type": "array"
                                    }
                                }
                            ], 
                            "name": "#prep_samples_to_rec.cwl/prep_samples_rec/prep_samples_rec", 
                            "type": "record"
                        }, 
                        "type": "array"
                    }
                }
            ], 
            "id": "#prep_samples_to_rec.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "process_alignment", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-align", 
                    "dockerPull": "quay.io/bcbio/bcbio-align"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 8, 
                    "outdirMin": 174610799362, 
                    "ramMin": 24576, 
                    "tmpdirMin": 174610798338
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "bwa", 
                            "specs": [
                                "https://anaconda.org/bioconda/bwa"
                            ]
                        }, 
                        {
                            "package": "bwakit", 
                            "specs": [
                                "https://anaconda.org/bioconda/bwakit"
                            ]
                        }, 
                        {
                            "package": "grabix", 
                            "specs": [
                                "https://anaconda.org/bioconda/grabix"
                            ]
                        }, 
                        {
                            "package": "novoalign", 
                            "specs": [
                                "https://anaconda.org/bioconda/novoalign"
                            ]
                        }, 
                        {
                            "package": "snap-aligner", 
                            "specs": [
                                "https://anaconda.org/bioconda/snap-aligner"
                            ], 
                            "version": [
                                "1.0dev.97"
                            ]
                        }, 
                        {
                            "package": "sentieon", 
                            "specs": [
                                "https://anaconda.org/bioconda/sentieon"
                            ]
                        }, 
                        {
                            "package": "samtools", 
                            "specs": [
                                "https://anaconda.org/bioconda/samtools"
                            ]
                        }, 
                        {
                            "package": "sambamba", 
                            "specs": [
                                "https://anaconda.org/bioconda/sambamba"
                            ]
                        }, 
                        {
                            "package": "fgbio", 
                            "specs": [
                                "https://anaconda.org/bioconda/fgbio"
                            ]
                        }, 
                        {
                            "package": "umis", 
                            "specs": [
                                "https://anaconda.org/bioconda/umis"
                            ]
                        }, 
                        {
                            "package": "biobambam", 
                            "specs": [
                                "https://anaconda.org/bioconda/biobambam"
                            ]
                        }, 
                        {
                            "package": "seqtk", 
                            "specs": [
                                "https://anaconda.org/bioconda/seqtk"
                            ]
                        }, 
                        {
                            "package": "samblaster", 
                            "specs": [
                                "https://anaconda.org/bioconda/samblaster"
                            ]
                        }
                    ]
                }
            ], 
            "inputs": [
                {
                    "default": "single-parallel", 
                    "id": "#process_alignment.cwl/sentinel_parallel", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 0, 
                        "prefix": "sentinel_parallel=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "default": "work_bam,align_bam,hla__fastq,work_bam_plus__disc,work_bam_plus__sr", 
                    "id": "#process_alignment.cwl/sentinel_outputs", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 1, 
                        "prefix": "sentinel_outputs=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#process_alignment.cwl/config__algorithm__quality_format", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 2, 
                        "prefix": "config__algorithm__quality_format=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#process_alignment.cwl/align_split", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 3, 
                        "prefix": "align_split=", 
                        "separate": false
                    }, 
                    "type": [
                        "string", 
                        "null"
                    ]
                }, 
                {
                    "id": "#process_alignment.cwl/files", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 4, 
                        "prefix": "files=", 
                        "separate": false
                    }, 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#process_alignment.cwl/description", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 5, 
                        "prefix": "description=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#process_alignment.cwl/config__algorithm__align_split_size", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 6, 
                        "prefix": "config__algorithm__align_split_size=", 
                        "separate": false
                    }, 
                    "type": "null"
                }, 
                {
                    "id": "#process_alignment.cwl/reference__fasta__base", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 7, 
                        "prefix": "reference__fasta__base=", 
                        "separate": false
                    }, 
                    "type": "File"
                }, 
                {
                    "id": "#process_alignment.cwl/rgnames__lb", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 8, 
                        "prefix": "rgnames__lb=", 
                        "separate": false
                    }, 
                    "type": "null"
                }, 
                {
                    "id": "#process_alignment.cwl/rgnames__rg", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 9, 
                        "prefix": "rgnames__rg=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#process_alignment.cwl/rgnames__lane", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 10, 
                        "prefix": "rgnames__lane=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#process_alignment.cwl/reference__bwa__indexes", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 11, 
                        "prefix": "reference__bwa__indexes=", 
                        "separate": false
                    }, 
                    "type": "File"
                }, 
                {
                    "id": "#process_alignment.cwl/config__algorithm__aligner", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 12, 
                        "prefix": "config__algorithm__aligner=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#process_alignment.cwl/config__algorithm__mark_duplicates", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 13, 
                        "prefix": "config__algorithm__mark_duplicates=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#process_alignment.cwl/rgnames__pu", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 14, 
                        "prefix": "rgnames__pu=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#process_alignment.cwl/rgnames__pl", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 15, 
                        "prefix": "rgnames__pl=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#process_alignment.cwl/rgnames__sample", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 16, 
                        "prefix": "rgnames__sample=", 
                        "separate": false
                    }, 
                    "type": "string"
                }
            ], 
            "outputs": [
                {
                    "id": "#process_alignment.cwl/work_bam", 
                    "type": "File"
                }, 
                {
                    "id": "#process_alignment.cwl/align_bam", 
                    "type": "File"
                }, 
                {
                    "id": "#process_alignment.cwl/hla__fastq", 
                    "type": [
                        "File", 
                        "null", 
                        {
                            "items": "File", 
                            "type": "array"
                        }
                    ]
                }, 
                {
                    "id": "#process_alignment.cwl/work_bam_plus__disc", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#process_alignment.cwl/work_bam_plus__sr", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }
            ], 
            "id": "#process_alignment.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "qc_to_rec", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-base", 
                    "dockerPull": "quay.io/bcbio/bcbio-base"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1024, 
                    "ramMin": 3072
                }
            ], 
            "inputs": [
                {
                    "default": "multi-batch", 
                    "id": "#qc_to_rec.cwl/sentinel_parallel", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 0, 
                        "prefix": "sentinel_parallel=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "default": "qc_rec", 
                    "id": "#qc_to_rec.cwl/sentinel_outputs", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 1, 
                        "prefix": "sentinel_outputs=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#qc_to_rec.cwl/align_bam", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 2, 
                            "prefix": "align_bam=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/analysis", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 3, 
                            "prefix": "analysis=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/reference__fasta__base", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 4, 
                            "prefix": "reference__fasta__base=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/genome_build", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 5, 
                            "prefix": "genome_build=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/config__algorithm__coverage_interval", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 6, 
                            "prefix": "config__algorithm__coverage_interval=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/config__algorithm__tools_on", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 7, 
                            "prefix": "config__algorithm__tools_on=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/config__algorithm__tools_off", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 8, 
                            "prefix": "config__algorithm__tools_off=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/config__algorithm__qc", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 9, 
                            "prefix": "config__algorithm__qc=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/config__algorithm__variant_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 10, 
                            "prefix": "config__algorithm__variant_regions=", 
                            "separate": false
                        }, 
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/config__algorithm__variant_regions_merged", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 11, 
                            "prefix": "config__algorithm__variant_regions_merged=", 
                            "separate": false
                        }, 
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/config__algorithm__coverage", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 12, 
                            "prefix": "config__algorithm__coverage=", 
                            "separate": false
                        }, 
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/config__algorithm__coverage_merged", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 13, 
                            "prefix": "config__algorithm__coverage_merged=", 
                            "separate": false
                        }, 
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/description", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 14, 
                            "prefix": "description=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#qc_to_rec.cwl/qc_rec", 
                    "type": {
                        "items": {
                            "fields": [
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/description", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/reference__fasta__base", 
                                    "type": {
                                        "items": "File", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/config__algorithm__coverage_interval", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/genome_build", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/config__algorithm__tools_off", 
                                    "type": {
                                        "items": {
                                            "items": "string", 
                                            "type": "array"
                                        }, 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/config__algorithm__qc", 
                                    "type": {
                                        "items": {
                                            "items": "string", 
                                            "type": "array"
                                        }, 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/analysis", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/config__algorithm__tools_on", 
                                    "type": {
                                        "items": {
                                            "items": "null", 
                                            "type": "array"
                                        }, 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/config__algorithm__variant_regions", 
                                    "type": {
                                        "items": [
                                            "File", 
                                            "null"
                                        ], 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/align_bam", 
                                    "type": {
                                        "items": "File", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/config__algorithm__variant_regions_merged", 
                                    "type": {
                                        "items": [
                                            "File", 
                                            "null"
                                        ], 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/config__algorithm__coverage", 
                                    "type": {
                                        "items": [
                                            "File", 
                                            "null"
                                        ], 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/config__algorithm__coverage_merged", 
                                    "type": {
                                        "items": [
                                            "File", 
                                            "null"
                                        ], 
                                        "type": "array"
                                    }
                                }
                            ], 
                            "name": "#qc_to_rec.cwl/qc_rec/qc_rec", 
                            "type": "record"
                        }, 
                        "type": "array"
                    }
                }
            ], 
            "id": "#qc_to_rec.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "summarize_grading_vc", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-base", 
                    "dockerPull": "quay.io/bcbio/bcbio-base"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1024, 
                    "ramMin": 3072
                }
            ], 
            "inputs": [
                {
                    "default": "multi-combined", 
                    "id": "#summarize_grading_vc.cwl/sentinel_parallel", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 0, 
                        "prefix": "sentinel_parallel=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "default": "validate__grading_summary,validate__grading_plots", 
                    "id": "#summarize_grading_vc.cwl/sentinel_outputs", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 1, 
                        "prefix": "sentinel_outputs=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/description", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 2, 
                            "prefix": "description=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/vrn_file", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 3, 
                            "prefix": "vrn_file=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "File", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/config__algorithm__validate", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 4, 
                            "prefix": "config__algorithm__validate=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/reference__fasta__base", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 5, 
                            "prefix": "reference__fasta__base=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "File", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/config__algorithm__variantcaller", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 6, 
                            "prefix": "config__algorithm__variantcaller=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/config__algorithm__coverage_interval", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 7, 
                            "prefix": "config__algorithm__coverage_interval=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/metadata__batch", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 8, 
                            "prefix": "metadata__batch=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/config__algorithm__validate_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 9, 
                            "prefix": "config__algorithm__validate_regions=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/genome_build", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 10, 
                            "prefix": "genome_build=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/reference__rtg", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 11, 
                            "prefix": "reference__rtg=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "File", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/metadata__phenotype", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 12, 
                            "prefix": "metadata__phenotype=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/config__algorithm__tools_off", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 13, 
                            "prefix": "config__algorithm__tools_off=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": {
                                "items": "string", 
                                "type": "array"
                            }, 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/genome_resources__variation__dbsnp", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 14, 
                            "prefix": "genome_resources__variation__dbsnp=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "File", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/genome_resources__variation__cosmic", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 15, 
                            "prefix": "genome_resources__variation__cosmic=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/reference__genome_context", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 16, 
                            "prefix": "reference__genome_context=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": {
                                "items": "null", 
                                "type": "array"
                            }, 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/analysis", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 17, 
                            "prefix": "analysis=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/config__algorithm__tools_on", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 18, 
                            "prefix": "config__algorithm__tools_on=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": {
                                "items": "null", 
                                "type": "array"
                            }, 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/config__algorithm__variant_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 19, 
                            "prefix": "config__algorithm__variant_regions=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": [
                                "File", 
                                "null"
                            ], 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/align_bam", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 20, 
                            "prefix": "align_bam=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "File", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/regions__callable", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 21, 
                            "prefix": "regions__callable=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "File", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/config__algorithm__callable_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 22, 
                            "prefix": "config__algorithm__callable_regions=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "File", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/validate__summary", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 23, 
                            "prefix": "validate__summary=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": [
                                "File", 
                                "null"
                            ], 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/validate__tp", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 24, 
                            "prefix": "validate__tp=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": [
                                "File", 
                                "null"
                            ], 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/validate__fp", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 25, 
                            "prefix": "validate__fp=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": [
                                "File", 
                                "null"
                            ], 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/validate__fn", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 26, 
                            "prefix": "validate__fn=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": [
                                "File", 
                                "null"
                            ], 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#summarize_grading_vc.cwl/validate__grading_summary", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_grading_vc.cwl/validate__grading_plots", 
                    "type": {
                        "items": {
                            "items": [
                                "File", 
                                "null"
                            ], 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }
            ], 
            "id": "#summarize_grading_vc.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "variantcall_batch_region", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-vc", 
                    "dockerPull": "quay.io/bcbio/bcbio-vc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1024, 
                    "ramMin": 3072
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "bcftools", 
                            "specs": [
                                "https://anaconda.org/bioconda/bcftools"
                            ]
                        }, 
                        {
                            "package": "bedtools", 
                            "specs": [
                                "https://anaconda.org/bioconda/bedtools"
                            ]
                        }, 
                        {
                            "package": "freebayes", 
                            "specs": [
                                "https://anaconda.org/bioconda/freebayes"
                            ], 
                            "version": [
                                "1.1.0"
                            ]
                        }, 
                        {
                            "package": "gatk", 
                            "specs": [
                                "https://anaconda.org/bioconda/gatk"
                            ]
                        }, 
                        {
                            "package": "gatk-framework", 
                            "specs": [
                                "https://anaconda.org/bioconda/gatk-framework"
                            ]
                        }, 
                        {
                            "package": "htslib", 
                            "specs": [
                                "https://anaconda.org/bioconda/htslib"
                            ]
                        }, 
                        {
                            "package": "picard", 
                            "specs": [
                                "https://anaconda.org/bioconda/picard"
                            ]
                        }, 
                        {
                            "package": "platypus-variant", 
                            "specs": [
                                "https://anaconda.org/bioconda/platypus-variant"
                            ]
                        }, 
                        {
                            "package": "pythonpy", 
                            "specs": [
                                "https://anaconda.org/bioconda/pythonpy"
                            ]
                        }, 
                        {
                            "package": "samtools", 
                            "specs": [
                                "https://anaconda.org/bioconda/samtools"
                            ]
                        }, 
                        {
                            "package": "vardict", 
                            "specs": [
                                "https://anaconda.org/bioconda/vardict"
                            ]
                        }, 
                        {
                            "package": "vardict-java", 
                            "specs": [
                                "https://anaconda.org/bioconda/vardict-java"
                            ]
                        }, 
                        {
                            "package": "varscan", 
                            "specs": [
                                "https://anaconda.org/bioconda/varscan"
                            ]
                        }, 
                        {
                            "package": "vcfanno", 
                            "specs": [
                                "https://anaconda.org/bioconda/vcfanno"
                            ]
                        }, 
                        {
                            "package": "vcflib", 
                            "specs": [
                                "https://anaconda.org/bioconda/vcflib"
                            ]
                        }, 
                        {
                            "package": "vt", 
                            "specs": [
                                "https://anaconda.org/bioconda/vt"
                            ]
                        }, 
                        {
                            "package": "r", 
                            "specs": [
                                "https://anaconda.org/bioconda/r"
                            ], 
                            "version": [
                                "3.2.2"
                            ]
                        }, 
                        {
                            "package": "perl", 
                            "specs": [
                                "https://anaconda.org/bioconda/perl"
                            ]
                        }
                    ]
                }
            ], 
            "inputs": [
                {
                    "default": "batch-parallel", 
                    "id": "#variantcall_batch_region.cwl/sentinel_parallel", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 0, 
                        "prefix": "sentinel_parallel=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "default": "vrn_file_region,region", 
                    "id": "#variantcall_batch_region.cwl/sentinel_outputs", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 1, 
                        "prefix": "sentinel_outputs=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/description", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 2, 
                            "prefix": "description=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/config__algorithm__validate", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 3, 
                            "prefix": "config__algorithm__validate=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/reference__fasta__base", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 4, 
                            "prefix": "reference__fasta__base=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/config__algorithm__variantcaller", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 5, 
                            "prefix": "config__algorithm__variantcaller=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/config__algorithm__coverage_interval", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 6, 
                            "prefix": "config__algorithm__coverage_interval=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/metadata__batch", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 7, 
                            "prefix": "metadata__batch=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/config__algorithm__validate_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 8, 
                            "prefix": "config__algorithm__validate_regions=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/genome_build", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 9, 
                            "prefix": "genome_build=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/reference__rtg", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 10, 
                            "prefix": "reference__rtg=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/metadata__phenotype", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 11, 
                            "prefix": "metadata__phenotype=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/config__algorithm__tools_off", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 12, 
                            "prefix": "config__algorithm__tools_off=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/genome_resources__variation__dbsnp", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 13, 
                            "prefix": "genome_resources__variation__dbsnp=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/genome_resources__variation__cosmic", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 14, 
                            "prefix": "genome_resources__variation__cosmic=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/reference__genome_context", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 15, 
                            "prefix": "reference__genome_context=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/analysis", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 16, 
                            "prefix": "analysis=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/config__algorithm__tools_on", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 17, 
                            "prefix": "config__algorithm__tools_on=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/config__algorithm__variant_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 18, 
                            "prefix": "config__algorithm__variant_regions=", 
                            "separate": false
                        }, 
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/align_bam", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 19, 
                            "prefix": "align_bam=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/regions__callable", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 20, 
                            "prefix": "regions__callable=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/config__algorithm__callable_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 21, 
                            "prefix": "config__algorithm__callable_regions=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/region_toolinput", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 22, 
                        "prefix": "region=", 
                        "separate": false
                    }, 
                    "type": "string"
                }
            ], 
            "outputs": [
                {
                    "id": "#variantcall_batch_region.cwl/vrn_file_region", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": "File"
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/region", 
                    "type": "string"
                }
            ], 
            "id": "#variantcall_batch_region.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "vc_output_record", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-base", 
                    "dockerPull": "quay.io/bcbio/bcbio-base"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1024, 
                    "ramMin": 3072
                }
            ], 
            "inputs": [
                {
                    "default": "batch-single", 
                    "id": "#vc_output_record.cwl/sentinel_parallel", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 0, 
                        "prefix": "sentinel_parallel=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "default": "vc_rec", 
                    "id": "#vc_output_record.cwl/sentinel_outputs", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 1, 
                        "prefix": "sentinel_outputs=", 
                        "separate": false
                    }, 
                    "type": "string"
                }, 
                {
                    "id": "#vc_output_record.cwl/description", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 2, 
                            "prefix": "description=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#vc_output_record.cwl/config__algorithm__validate", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 3, 
                            "prefix": "config__algorithm__validate=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#vc_output_record.cwl/reference__fasta__base", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 4, 
                            "prefix": "reference__fasta__base=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#vc_output_record.cwl/config__algorithm__variantcaller", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 5, 
                            "prefix": "config__algorithm__variantcaller=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#vc_output_record.cwl/config__algorithm__coverage_interval", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 6, 
                            "prefix": "config__algorithm__coverage_interval=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#vc_output_record.cwl/metadata__batch", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 7, 
                            "prefix": "metadata__batch=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#vc_output_record.cwl/config__algorithm__validate_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 8, 
                            "prefix": "config__algorithm__validate_regions=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#vc_output_record.cwl/genome_build", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 9, 
                            "prefix": "genome_build=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#vc_output_record.cwl/reference__rtg", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 10, 
                            "prefix": "reference__rtg=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#vc_output_record.cwl/metadata__phenotype", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 11, 
                            "prefix": "metadata__phenotype=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#vc_output_record.cwl/config__algorithm__tools_off", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 12, 
                            "prefix": "config__algorithm__tools_off=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#vc_output_record.cwl/genome_resources__variation__dbsnp", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 13, 
                            "prefix": "genome_resources__variation__dbsnp=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#vc_output_record.cwl/genome_resources__variation__cosmic", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 14, 
                            "prefix": "genome_resources__variation__cosmic=", 
                            "separate": false
                        }, 
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#vc_output_record.cwl/reference__genome_context", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 15, 
                            "prefix": "reference__genome_context=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#vc_output_record.cwl/analysis", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 16, 
                            "prefix": "analysis=", 
                            "separate": false
                        }, 
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#vc_output_record.cwl/config__algorithm__tools_on", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 17, 
                            "prefix": "config__algorithm__tools_on=", 
                            "separate": false
                        }, 
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#vc_output_record.cwl/config__algorithm__variant_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 18, 
                            "prefix": "config__algorithm__variant_regions=", 
                            "separate": false
                        }, 
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#vc_output_record.cwl/align_bam", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 19, 
                            "prefix": "align_bam=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#vc_output_record.cwl/regions__callable", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 20, 
                            "prefix": "regions__callable=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#vc_output_record.cwl/config__algorithm__callable_regions", 
                    "type": {
                        "inputBinding": {
                            "itemSeparator": ";;", 
                            "position": 21, 
                            "prefix": "config__algorithm__callable_regions=", 
                            "separate": false
                        }, 
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#vc_output_record.cwl/vrn_file", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 22, 
                        "prefix": "vrn_file=", 
                        "separate": false
                    }, 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": "File"
                }, 
                {
                    "id": "#vc_output_record.cwl/validate__summary", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 23, 
                        "prefix": "validate__summary=", 
                        "separate": false
                    }, 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#vc_output_record.cwl/validate__tp", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 24, 
                        "prefix": "validate__tp=", 
                        "separate": false
                    }, 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#vc_output_record.cwl/validate__fp", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 25, 
                        "prefix": "validate__fp=", 
                        "separate": false
                    }, 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#vc_output_record.cwl/validate__fn", 
                    "inputBinding": {
                        "itemSeparator": ";;", 
                        "position": 26, 
                        "prefix": "validate__fn=", 
                        "separate": false
                    }, 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }
            ], 
            "outputs": [
                {
                    "id": "#vc_output_record.cwl/vc_rec", 
                    "type": {
                        "fields": [
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/description", 
                                "type": {
                                    "items": "string", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/vrn_file", 
                                "type": {
                                    "items": "File", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/config__algorithm__validate", 
                                "type": {
                                    "items": "null", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/reference__fasta__base", 
                                "type": {
                                    "items": "File", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/config__algorithm__variantcaller", 
                                "type": {
                                    "items": "string", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/config__algorithm__coverage_interval", 
                                "type": {
                                    "items": "string", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/metadata__batch", 
                                "type": {
                                    "items": "null", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/config__algorithm__validate_regions", 
                                "type": {
                                    "items": "null", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/genome_build", 
                                "type": {
                                    "items": "string", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/reference__rtg", 
                                "type": {
                                    "items": "File", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/metadata__phenotype", 
                                "type": {
                                    "items": "string", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/config__algorithm__tools_off", 
                                "type": {
                                    "items": {
                                        "items": "string", 
                                        "type": "array"
                                    }, 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/genome_resources__variation__dbsnp", 
                                "type": {
                                    "items": "File", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/genome_resources__variation__cosmic", 
                                "type": {
                                    "items": "null", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/reference__genome_context", 
                                "type": {
                                    "items": {
                                        "items": "null", 
                                        "type": "array"
                                    }, 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/analysis", 
                                "type": {
                                    "items": "string", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/config__algorithm__tools_on", 
                                "type": {
                                    "items": {
                                        "items": "null", 
                                        "type": "array"
                                    }, 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/config__algorithm__variant_regions", 
                                "type": {
                                    "items": [
                                        "File", 
                                        "null"
                                    ], 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/align_bam", 
                                "type": {
                                    "items": "File", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/regions__callable", 
                                "type": {
                                    "items": "File", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/config__algorithm__callable_regions", 
                                "type": {
                                    "items": "File", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/validate__summary", 
                                "type": {
                                    "items": [
                                        "File", 
                                        "null"
                                    ], 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/validate__tp", 
                                "type": {
                                    "items": [
                                        "File", 
                                        "null"
                                    ], 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/validate__fp", 
                                "type": {
                                    "items": [
                                        "File", 
                                        "null"
                                    ], 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#vc_output_record.cwl/vc_rec/vc_rec/validate__fn", 
                                "type": {
                                    "items": [
                                        "File", 
                                        "null"
                                    ], 
                                    "type": "array"
                                }
                            }
                        ], 
                        "name": "#vc_output_record.cwl/vc_rec/vc_rec", 
                        "type": "record"
                    }
                }
            ], 
            "id": "#vc_output_record.cwl"
        }, 
        {
            "class": "Workflow", 
            "hints": [], 
            "inputs": [
                {
                    "id": "#wf-alignment.cwl/description", 
                    "type": "string"
                }, 
                {
                    "id": "#wf-alignment.cwl/config__algorithm__align_split_size", 
                    "type": "null"
                }, 
                {
                    "id": "#wf-alignment.cwl/reference__fasta__base", 
                    "type": "File"
                }, 
                {
                    "id": "#wf-alignment.cwl/rgnames__lb", 
                    "type": "null"
                }, 
                {
                    "id": "#wf-alignment.cwl/rgnames__rg", 
                    "type": "string"
                }, 
                {
                    "id": "#wf-alignment.cwl/rgnames__lane", 
                    "type": "string"
                }, 
                {
                    "id": "#wf-alignment.cwl/reference__bwa__indexes", 
                    "type": "File"
                }, 
                {
                    "id": "#wf-alignment.cwl/files", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#wf-alignment.cwl/config__algorithm__aligner", 
                    "type": "string"
                }, 
                {
                    "id": "#wf-alignment.cwl/config__algorithm__mark_duplicates", 
                    "type": "string"
                }, 
                {
                    "id": "#wf-alignment.cwl/rgnames__pu", 
                    "type": "string"
                }, 
                {
                    "id": "#wf-alignment.cwl/rgnames__pl", 
                    "type": "string"
                }, 
                {
                    "id": "#wf-alignment.cwl/rgnames__sample", 
                    "type": "string"
                }
            ], 
            "outputs": [
                {
                    "id": "#wf-alignment.cwl/align_bam", 
                    "outputSource": "#wf-alignment.cwl/merge_split_alignments/align_bam", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": "File"
                }, 
                {
                    "id": "#wf-alignment.cwl/work_bam_plus__disc", 
                    "outputSource": "#wf-alignment.cwl/merge_split_alignments/work_bam_plus__disc", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#wf-alignment.cwl/work_bam_plus__sr", 
                    "outputSource": "#wf-alignment.cwl/merge_split_alignments/work_bam_plus__sr", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#wf-alignment.cwl/hla__fastq", 
                    "outputSource": "#wf-alignment.cwl/merge_split_alignments/hla__fastq", 
                    "type": [
                        "File", 
                        "null", 
                        {
                            "items": "File", 
                            "type": "array"
                        }
                    ]
                }
            ], 
            "requirements": [
                {
                    "class": "EnvVarRequirement", 
                    "envDef": [
                        {
                            "envName": "MPLCONFIGDIR", 
                            "envValue": "."
                        }
                    ]
                }, 
                {
                    "class": "ScatterFeatureRequirement"
                }, 
                {
                    "class": "StepInputExpressionRequirement"
                }, 
                {
                    "class": "SubworkflowFeatureRequirement"
                }, 
                {
                    "class": "InlineJavascriptRequirement"
                }
            ], 
            "steps": [
                {
                    "id": "#wf-alignment.cwl/prep_align_inputs", 
                    "in": [
                        {
                            "id": "#wf-alignment.cwl/prep_align_inputs/description", 
                            "source": "#wf-alignment.cwl/description"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/prep_align_inputs/config__algorithm__align_split_size", 
                            "source": "#wf-alignment.cwl/config__algorithm__align_split_size"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/prep_align_inputs/reference__fasta__base", 
                            "source": "#wf-alignment.cwl/reference__fasta__base"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/prep_align_inputs/rgnames__lb", 
                            "source": "#wf-alignment.cwl/rgnames__lb"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/prep_align_inputs/rgnames__rg", 
                            "source": "#wf-alignment.cwl/rgnames__rg"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/prep_align_inputs/rgnames__lane", 
                            "source": "#wf-alignment.cwl/rgnames__lane"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/prep_align_inputs/reference__bwa__indexes", 
                            "source": "#wf-alignment.cwl/reference__bwa__indexes"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/prep_align_inputs/files", 
                            "source": "#wf-alignment.cwl/files"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/prep_align_inputs/config__algorithm__aligner", 
                            "source": "#wf-alignment.cwl/config__algorithm__aligner"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/prep_align_inputs/config__algorithm__mark_duplicates", 
                            "source": "#wf-alignment.cwl/config__algorithm__mark_duplicates"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/prep_align_inputs/rgnames__pu", 
                            "source": "#wf-alignment.cwl/rgnames__pu"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/prep_align_inputs/rgnames__pl", 
                            "source": "#wf-alignment.cwl/rgnames__pl"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/prep_align_inputs/rgnames__sample", 
                            "source": "#wf-alignment.cwl/rgnames__sample"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#wf-alignment.cwl/prep_align_inputs/process_alignment_rec"
                        }
                    ], 
                    "run": "#prep_align_inputs.cwl"
                }, 
                {
                    "id": "#wf-alignment.cwl/process_alignment", 
                    "in": [
                        {
                            "id": "#wf-alignment.cwl/process_alignment/config__algorithm__quality_format", 
                            "source": "#wf-alignment.cwl/prep_align_inputs/process_alignment_rec", 
                            "valueFrom": "$(self['config__algorithm__quality_format'])"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/process_alignment/align_split", 
                            "source": "#wf-alignment.cwl/prep_align_inputs/process_alignment_rec", 
                            "valueFrom": "$(self['align_split'])"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/process_alignment/files", 
                            "source": "#wf-alignment.cwl/prep_align_inputs/process_alignment_rec", 
                            "valueFrom": "$(self['files'])"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/process_alignment/description", 
                            "source": "#wf-alignment.cwl/description"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/process_alignment/config__algorithm__align_split_size", 
                            "source": "#wf-alignment.cwl/config__algorithm__align_split_size"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/process_alignment/reference__fasta__base", 
                            "source": "#wf-alignment.cwl/reference__fasta__base"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/process_alignment/rgnames__lb", 
                            "source": "#wf-alignment.cwl/rgnames__lb"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/process_alignment/rgnames__rg", 
                            "source": "#wf-alignment.cwl/rgnames__rg"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/process_alignment/rgnames__lane", 
                            "source": "#wf-alignment.cwl/rgnames__lane"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/process_alignment/reference__bwa__indexes", 
                            "source": "#wf-alignment.cwl/reference__bwa__indexes"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/process_alignment/config__algorithm__aligner", 
                            "source": "#wf-alignment.cwl/config__algorithm__aligner"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/process_alignment/config__algorithm__mark_duplicates", 
                            "source": "#wf-alignment.cwl/config__algorithm__mark_duplicates"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/process_alignment/rgnames__pu", 
                            "source": "#wf-alignment.cwl/rgnames__pu"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/process_alignment/rgnames__pl", 
                            "source": "#wf-alignment.cwl/rgnames__pl"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/process_alignment/rgnames__sample", 
                            "source": "#wf-alignment.cwl/rgnames__sample"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#wf-alignment.cwl/process_alignment/work_bam"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/process_alignment/align_bam"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/process_alignment/hla__fastq"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/process_alignment/work_bam_plus__disc"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/process_alignment/work_bam_plus__sr"
                        }
                    ], 
                    "run": "#process_alignment.cwl", 
                    "scatter": [
                        "#wf-alignment.cwl/process_alignment/config__algorithm__quality_format", 
                        "#wf-alignment.cwl/process_alignment/align_split", 
                        "#wf-alignment.cwl/process_alignment/files"
                    ], 
                    "scatterMethod": "dotproduct"
                }, 
                {
                    "id": "#wf-alignment.cwl/merge_split_alignments", 
                    "in": [
                        {
                            "id": "#wf-alignment.cwl/merge_split_alignments/work_bam", 
                            "source": "#wf-alignment.cwl/process_alignment/work_bam"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/merge_split_alignments/align_bam_toolinput", 
                            "source": "#wf-alignment.cwl/process_alignment/align_bam"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/merge_split_alignments/work_bam_plus__disc_toolinput", 
                            "source": "#wf-alignment.cwl/process_alignment/work_bam_plus__disc"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/merge_split_alignments/work_bam_plus__sr_toolinput", 
                            "source": "#wf-alignment.cwl/process_alignment/work_bam_plus__sr"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/merge_split_alignments/hla__fastq_toolinput", 
                            "source": "#wf-alignment.cwl/process_alignment/hla__fastq"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/merge_split_alignments/description", 
                            "source": "#wf-alignment.cwl/description"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#wf-alignment.cwl/merge_split_alignments/align_bam"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/merge_split_alignments/work_bam_plus__disc"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/merge_split_alignments/work_bam_plus__sr"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/merge_split_alignments/hla__fastq"
                        }
                    ], 
                    "run": "#merge_split_alignments.cwl"
                }
            ], 
            "id": "#wf-alignment.cwl"
        }, 
        {
            "class": "Workflow", 
            "hints": [], 
            "inputs": [
                {
                    "id": "#wf-variantcall.cwl/description", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#wf-variantcall.cwl/config__algorithm__validate", 
                    "type": {
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#wf-variantcall.cwl/reference__fasta__base", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#wf-variantcall.cwl/config__algorithm__variantcaller", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#wf-variantcall.cwl/config__algorithm__coverage_interval", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#wf-variantcall.cwl/metadata__batch", 
                    "type": {
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#wf-variantcall.cwl/config__algorithm__validate_regions", 
                    "type": {
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#wf-variantcall.cwl/genome_build", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#wf-variantcall.cwl/reference__rtg", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#wf-variantcall.cwl/metadata__phenotype", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#wf-variantcall.cwl/config__algorithm__tools_off", 
                    "type": {
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#wf-variantcall.cwl/genome_resources__variation__dbsnp", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#wf-variantcall.cwl/genome_resources__variation__cosmic", 
                    "type": {
                        "items": "null", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#wf-variantcall.cwl/reference__genome_context", 
                    "type": {
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#wf-variantcall.cwl/analysis", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#wf-variantcall.cwl/config__algorithm__tools_on", 
                    "type": {
                        "items": {
                            "items": "null", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#wf-variantcall.cwl/config__algorithm__variant_regions", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#wf-variantcall.cwl/align_bam", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#wf-variantcall.cwl/regions__callable", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#wf-variantcall.cwl/config__algorithm__callable_regions", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#wf-variantcall.cwl/vc_rec", 
                    "outputSource": "#wf-variantcall.cwl/vc_output_record/vc_rec", 
                    "type": {
                        "fields": [
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/description", 
                                "type": {
                                    "items": "string", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/vrn_file", 
                                "type": {
                                    "items": "File", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/config__algorithm__validate", 
                                "type": {
                                    "items": "null", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/reference__fasta__base", 
                                "type": {
                                    "items": "File", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/config__algorithm__variantcaller", 
                                "type": {
                                    "items": "string", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/config__algorithm__coverage_interval", 
                                "type": {
                                    "items": "string", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/metadata__batch", 
                                "type": {
                                    "items": "null", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/config__algorithm__validate_regions", 
                                "type": {
                                    "items": "null", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/genome_build", 
                                "type": {
                                    "items": "string", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/reference__rtg", 
                                "type": {
                                    "items": "File", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/metadata__phenotype", 
                                "type": {
                                    "items": "string", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/config__algorithm__tools_off", 
                                "type": {
                                    "items": {
                                        "items": "string", 
                                        "type": "array"
                                    }, 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/genome_resources__variation__dbsnp", 
                                "type": {
                                    "items": "File", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/genome_resources__variation__cosmic", 
                                "type": {
                                    "items": "null", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/reference__genome_context", 
                                "type": {
                                    "items": {
                                        "items": "null", 
                                        "type": "array"
                                    }, 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/analysis", 
                                "type": {
                                    "items": "string", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/config__algorithm__tools_on", 
                                "type": {
                                    "items": {
                                        "items": "null", 
                                        "type": "array"
                                    }, 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/config__algorithm__variant_regions", 
                                "type": {
                                    "items": [
                                        "File", 
                                        "null"
                                    ], 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/align_bam", 
                                "type": {
                                    "items": "File", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/regions__callable", 
                                "type": {
                                    "items": "File", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/config__algorithm__callable_regions", 
                                "type": {
                                    "items": "File", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/validate__summary", 
                                "type": {
                                    "items": [
                                        "File", 
                                        "null"
                                    ], 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/validate__tp", 
                                "type": {
                                    "items": [
                                        "File", 
                                        "null"
                                    ], 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/validate__fp", 
                                "type": {
                                    "items": [
                                        "File", 
                                        "null"
                                    ], 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-variantcall.cwl/vc_rec/vc_rec/validate__fn", 
                                "type": {
                                    "items": [
                                        "File", 
                                        "null"
                                    ], 
                                    "type": "array"
                                }
                            }
                        ], 
                        "name": "#wf-variantcall.cwl/vc_rec/vc_rec", 
                        "type": "record"
                    }
                }, 
                {
                    "id": "#wf-variantcall.cwl/validate__tp", 
                    "outputSource": "#wf-variantcall.cwl/compare_to_rm/validate__tp", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#wf-variantcall.cwl/validate__fp", 
                    "outputSource": "#wf-variantcall.cwl/compare_to_rm/validate__fp", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#wf-variantcall.cwl/validate__fn", 
                    "outputSource": "#wf-variantcall.cwl/compare_to_rm/validate__fn", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }
            ], 
            "requirements": [
                {
                    "class": "EnvVarRequirement", 
                    "envDef": [
                        {
                            "envName": "MPLCONFIGDIR", 
                            "envValue": "."
                        }
                    ]
                }, 
                {
                    "class": "ScatterFeatureRequirement"
                }, 
                {
                    "class": "StepInputExpressionRequirement"
                }, 
                {
                    "class": "SubworkflowFeatureRequirement"
                }, 
                {
                    "class": "InlineJavascriptRequirement"
                }
            ], 
            "steps": [
                {
                    "id": "#wf-variantcall.cwl/get_parallel_regions", 
                    "in": [
                        {
                            "id": "#wf-variantcall.cwl/get_parallel_regions/description", 
                            "source": "#wf-variantcall.cwl/description"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/get_parallel_regions/config__algorithm__validate", 
                            "source": "#wf-variantcall.cwl/config__algorithm__validate"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/get_parallel_regions/reference__fasta__base", 
                            "source": "#wf-variantcall.cwl/reference__fasta__base"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/get_parallel_regions/config__algorithm__variantcaller", 
                            "source": "#wf-variantcall.cwl/config__algorithm__variantcaller"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/get_parallel_regions/config__algorithm__coverage_interval", 
                            "source": "#wf-variantcall.cwl/config__algorithm__coverage_interval"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/get_parallel_regions/metadata__batch", 
                            "source": "#wf-variantcall.cwl/metadata__batch"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/get_parallel_regions/config__algorithm__validate_regions", 
                            "source": "#wf-variantcall.cwl/config__algorithm__validate_regions"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/get_parallel_regions/genome_build", 
                            "source": "#wf-variantcall.cwl/genome_build"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/get_parallel_regions/reference__rtg", 
                            "source": "#wf-variantcall.cwl/reference__rtg"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/get_parallel_regions/metadata__phenotype", 
                            "source": "#wf-variantcall.cwl/metadata__phenotype"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/get_parallel_regions/config__algorithm__tools_off", 
                            "source": "#wf-variantcall.cwl/config__algorithm__tools_off"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/get_parallel_regions/genome_resources__variation__dbsnp", 
                            "source": "#wf-variantcall.cwl/genome_resources__variation__dbsnp"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/get_parallel_regions/genome_resources__variation__cosmic", 
                            "source": "#wf-variantcall.cwl/genome_resources__variation__cosmic"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/get_parallel_regions/reference__genome_context", 
                            "source": "#wf-variantcall.cwl/reference__genome_context"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/get_parallel_regions/analysis", 
                            "source": "#wf-variantcall.cwl/analysis"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/get_parallel_regions/config__algorithm__tools_on", 
                            "source": "#wf-variantcall.cwl/config__algorithm__tools_on"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/get_parallel_regions/config__algorithm__variant_regions", 
                            "source": "#wf-variantcall.cwl/config__algorithm__variant_regions"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/get_parallel_regions/align_bam", 
                            "source": "#wf-variantcall.cwl/align_bam"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/get_parallel_regions/regions__callable", 
                            "source": "#wf-variantcall.cwl/regions__callable"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/get_parallel_regions/config__algorithm__callable_regions", 
                            "source": "#wf-variantcall.cwl/config__algorithm__callable_regions"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#wf-variantcall.cwl/get_parallel_regions/region"
                        }
                    ], 
                    "run": "#get_parallel_regions.cwl"
                }, 
                {
                    "id": "#wf-variantcall.cwl/variantcall_batch_region", 
                    "in": [
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/description", 
                            "source": "#wf-variantcall.cwl/description"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/config__algorithm__validate", 
                            "source": "#wf-variantcall.cwl/config__algorithm__validate"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/reference__fasta__base", 
                            "source": "#wf-variantcall.cwl/reference__fasta__base"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/config__algorithm__variantcaller", 
                            "source": "#wf-variantcall.cwl/config__algorithm__variantcaller"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/config__algorithm__coverage_interval", 
                            "source": "#wf-variantcall.cwl/config__algorithm__coverage_interval"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/metadata__batch", 
                            "source": "#wf-variantcall.cwl/metadata__batch"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/config__algorithm__validate_regions", 
                            "source": "#wf-variantcall.cwl/config__algorithm__validate_regions"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/genome_build", 
                            "source": "#wf-variantcall.cwl/genome_build"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/reference__rtg", 
                            "source": "#wf-variantcall.cwl/reference__rtg"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/metadata__phenotype", 
                            "source": "#wf-variantcall.cwl/metadata__phenotype"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/config__algorithm__tools_off", 
                            "source": "#wf-variantcall.cwl/config__algorithm__tools_off"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/genome_resources__variation__dbsnp", 
                            "source": "#wf-variantcall.cwl/genome_resources__variation__dbsnp"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/genome_resources__variation__cosmic", 
                            "source": "#wf-variantcall.cwl/genome_resources__variation__cosmic"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/reference__genome_context", 
                            "source": "#wf-variantcall.cwl/reference__genome_context"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/analysis", 
                            "source": "#wf-variantcall.cwl/analysis"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/config__algorithm__tools_on", 
                            "source": "#wf-variantcall.cwl/config__algorithm__tools_on"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/config__algorithm__variant_regions", 
                            "source": "#wf-variantcall.cwl/config__algorithm__variant_regions"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/align_bam", 
                            "source": "#wf-variantcall.cwl/align_bam"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/regions__callable", 
                            "source": "#wf-variantcall.cwl/regions__callable"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/config__algorithm__callable_regions", 
                            "source": "#wf-variantcall.cwl/config__algorithm__callable_regions"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/region_toolinput", 
                            "source": "#wf-variantcall.cwl/get_parallel_regions/region"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/vrn_file_region"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/region"
                        }
                    ], 
                    "run": "#variantcall_batch_region.cwl", 
                    "scatter": [
                        "#wf-variantcall.cwl/variantcall_batch_region/region_toolinput"
                    ], 
                    "scatterMethod": "dotproduct"
                }, 
                {
                    "id": "#wf-variantcall.cwl/concat_batch_variantcalls", 
                    "in": [
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/description", 
                            "source": "#wf-variantcall.cwl/description"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/config__algorithm__validate", 
                            "source": "#wf-variantcall.cwl/config__algorithm__validate"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/reference__fasta__base", 
                            "source": "#wf-variantcall.cwl/reference__fasta__base"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/config__algorithm__variantcaller", 
                            "source": "#wf-variantcall.cwl/config__algorithm__variantcaller"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/config__algorithm__coverage_interval", 
                            "source": "#wf-variantcall.cwl/config__algorithm__coverage_interval"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/metadata__batch", 
                            "source": "#wf-variantcall.cwl/metadata__batch"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/config__algorithm__validate_regions", 
                            "source": "#wf-variantcall.cwl/config__algorithm__validate_regions"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/genome_build", 
                            "source": "#wf-variantcall.cwl/genome_build"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/reference__rtg", 
                            "source": "#wf-variantcall.cwl/reference__rtg"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/metadata__phenotype", 
                            "source": "#wf-variantcall.cwl/metadata__phenotype"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/config__algorithm__tools_off", 
                            "source": "#wf-variantcall.cwl/config__algorithm__tools_off"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/genome_resources__variation__dbsnp", 
                            "source": "#wf-variantcall.cwl/genome_resources__variation__dbsnp"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/genome_resources__variation__cosmic", 
                            "source": "#wf-variantcall.cwl/genome_resources__variation__cosmic"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/reference__genome_context", 
                            "source": "#wf-variantcall.cwl/reference__genome_context"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/analysis", 
                            "source": "#wf-variantcall.cwl/analysis"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/config__algorithm__tools_on", 
                            "source": "#wf-variantcall.cwl/config__algorithm__tools_on"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/config__algorithm__variant_regions", 
                            "source": "#wf-variantcall.cwl/config__algorithm__variant_regions"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/align_bam", 
                            "source": "#wf-variantcall.cwl/align_bam"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/regions__callable", 
                            "source": "#wf-variantcall.cwl/regions__callable"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/config__algorithm__callable_regions", 
                            "source": "#wf-variantcall.cwl/config__algorithm__callable_regions"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/region", 
                            "source": "#wf-variantcall.cwl/variantcall_batch_region/region"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/vrn_file_region", 
                            "source": "#wf-variantcall.cwl/variantcall_batch_region/vrn_file_region"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/vrn_file"
                        }
                    ], 
                    "run": "#concat_batch_variantcalls.cwl"
                }, 
                {
                    "id": "#wf-variantcall.cwl/postprocess_variants", 
                    "in": [
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/description", 
                            "source": "#wf-variantcall.cwl/description"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/config__algorithm__validate", 
                            "source": "#wf-variantcall.cwl/config__algorithm__validate"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/reference__fasta__base", 
                            "source": "#wf-variantcall.cwl/reference__fasta__base"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/config__algorithm__variantcaller", 
                            "source": "#wf-variantcall.cwl/config__algorithm__variantcaller"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/config__algorithm__coverage_interval", 
                            "source": "#wf-variantcall.cwl/config__algorithm__coverage_interval"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/metadata__batch", 
                            "source": "#wf-variantcall.cwl/metadata__batch"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/config__algorithm__validate_regions", 
                            "source": "#wf-variantcall.cwl/config__algorithm__validate_regions"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/genome_build", 
                            "source": "#wf-variantcall.cwl/genome_build"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/reference__rtg", 
                            "source": "#wf-variantcall.cwl/reference__rtg"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/metadata__phenotype", 
                            "source": "#wf-variantcall.cwl/metadata__phenotype"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/config__algorithm__tools_off", 
                            "source": "#wf-variantcall.cwl/config__algorithm__tools_off"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/genome_resources__variation__dbsnp", 
                            "source": "#wf-variantcall.cwl/genome_resources__variation__dbsnp"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/genome_resources__variation__cosmic", 
                            "source": "#wf-variantcall.cwl/genome_resources__variation__cosmic"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/reference__genome_context", 
                            "source": "#wf-variantcall.cwl/reference__genome_context"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/analysis", 
                            "source": "#wf-variantcall.cwl/analysis"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/config__algorithm__tools_on", 
                            "source": "#wf-variantcall.cwl/config__algorithm__tools_on"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/config__algorithm__variant_regions", 
                            "source": "#wf-variantcall.cwl/config__algorithm__variant_regions"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/align_bam", 
                            "source": "#wf-variantcall.cwl/align_bam"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/regions__callable", 
                            "source": "#wf-variantcall.cwl/regions__callable"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/config__algorithm__callable_regions", 
                            "source": "#wf-variantcall.cwl/config__algorithm__callable_regions"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/vrn_file_toolinput", 
                            "source": "#wf-variantcall.cwl/concat_batch_variantcalls/vrn_file"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/vrn_file"
                        }
                    ], 
                    "run": "#postprocess_variants.cwl"
                }, 
                {
                    "id": "#wf-variantcall.cwl/compare_to_rm", 
                    "in": [
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/description", 
                            "source": "#wf-variantcall.cwl/description"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/config__algorithm__validate", 
                            "source": "#wf-variantcall.cwl/config__algorithm__validate"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/reference__fasta__base", 
                            "source": "#wf-variantcall.cwl/reference__fasta__base"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/config__algorithm__variantcaller", 
                            "source": "#wf-variantcall.cwl/config__algorithm__variantcaller"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/config__algorithm__coverage_interval", 
                            "source": "#wf-variantcall.cwl/config__algorithm__coverage_interval"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/metadata__batch", 
                            "source": "#wf-variantcall.cwl/metadata__batch"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/config__algorithm__validate_regions", 
                            "source": "#wf-variantcall.cwl/config__algorithm__validate_regions"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/genome_build", 
                            "source": "#wf-variantcall.cwl/genome_build"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/reference__rtg", 
                            "source": "#wf-variantcall.cwl/reference__rtg"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/metadata__phenotype", 
                            "source": "#wf-variantcall.cwl/metadata__phenotype"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/config__algorithm__tools_off", 
                            "source": "#wf-variantcall.cwl/config__algorithm__tools_off"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/genome_resources__variation__dbsnp", 
                            "source": "#wf-variantcall.cwl/genome_resources__variation__dbsnp"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/genome_resources__variation__cosmic", 
                            "source": "#wf-variantcall.cwl/genome_resources__variation__cosmic"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/reference__genome_context", 
                            "source": "#wf-variantcall.cwl/reference__genome_context"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/analysis", 
                            "source": "#wf-variantcall.cwl/analysis"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/config__algorithm__tools_on", 
                            "source": "#wf-variantcall.cwl/config__algorithm__tools_on"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/config__algorithm__variant_regions", 
                            "source": "#wf-variantcall.cwl/config__algorithm__variant_regions"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/align_bam", 
                            "source": "#wf-variantcall.cwl/align_bam"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/regions__callable", 
                            "source": "#wf-variantcall.cwl/regions__callable"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/config__algorithm__callable_regions", 
                            "source": "#wf-variantcall.cwl/config__algorithm__callable_regions"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/vrn_file", 
                            "source": "#wf-variantcall.cwl/postprocess_variants/vrn_file"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/validate__summary"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/validate__tp"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/validate__fp"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/validate__fn"
                        }
                    ], 
                    "run": "#compare_to_rm.cwl"
                }, 
                {
                    "id": "#wf-variantcall.cwl/vc_output_record", 
                    "in": [
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/description", 
                            "source": "#wf-variantcall.cwl/description"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/config__algorithm__validate", 
                            "source": "#wf-variantcall.cwl/config__algorithm__validate"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/reference__fasta__base", 
                            "source": "#wf-variantcall.cwl/reference__fasta__base"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/config__algorithm__variantcaller", 
                            "source": "#wf-variantcall.cwl/config__algorithm__variantcaller"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/config__algorithm__coverage_interval", 
                            "source": "#wf-variantcall.cwl/config__algorithm__coverage_interval"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/metadata__batch", 
                            "source": "#wf-variantcall.cwl/metadata__batch"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/config__algorithm__validate_regions", 
                            "source": "#wf-variantcall.cwl/config__algorithm__validate_regions"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/genome_build", 
                            "source": "#wf-variantcall.cwl/genome_build"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/reference__rtg", 
                            "source": "#wf-variantcall.cwl/reference__rtg"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/metadata__phenotype", 
                            "source": "#wf-variantcall.cwl/metadata__phenotype"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/config__algorithm__tools_off", 
                            "source": "#wf-variantcall.cwl/config__algorithm__tools_off"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/genome_resources__variation__dbsnp", 
                            "source": "#wf-variantcall.cwl/genome_resources__variation__dbsnp"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/genome_resources__variation__cosmic", 
                            "source": "#wf-variantcall.cwl/genome_resources__variation__cosmic"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/reference__genome_context", 
                            "source": "#wf-variantcall.cwl/reference__genome_context"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/analysis", 
                            "source": "#wf-variantcall.cwl/analysis"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/config__algorithm__tools_on", 
                            "source": "#wf-variantcall.cwl/config__algorithm__tools_on"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/config__algorithm__variant_regions", 
                            "source": "#wf-variantcall.cwl/config__algorithm__variant_regions"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/align_bam", 
                            "source": "#wf-variantcall.cwl/align_bam"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/regions__callable", 
                            "source": "#wf-variantcall.cwl/regions__callable"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/config__algorithm__callable_regions", 
                            "source": "#wf-variantcall.cwl/config__algorithm__callable_regions"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/vrn_file", 
                            "source": "#wf-variantcall.cwl/postprocess_variants/vrn_file"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/validate__summary", 
                            "source": "#wf-variantcall.cwl/compare_to_rm/validate__summary"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/validate__tp", 
                            "source": "#wf-variantcall.cwl/compare_to_rm/validate__tp"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/validate__fp", 
                            "source": "#wf-variantcall.cwl/compare_to_rm/validate__fp"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/validate__fn", 
                            "source": "#wf-variantcall.cwl/compare_to_rm/validate__fn"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#wf-variantcall.cwl/vc_output_record/vc_rec"
                        }
                    ], 
                    "run": "#vc_output_record.cwl"
                }
            ], 
            "id": "#wf-variantcall.cwl"
        }
    ]
}