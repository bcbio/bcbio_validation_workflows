{
  "cwlVersion" : "v1.0",
  "inputs" : [ {
    "id" : "config__algorithm__align_split_size",
    "type" : {
      "items" : "null",
      "type" : "array"
    }
  }, {
    "id" : "config__algorithm__validate",
    "type" : {
      "items" : "null",
      "type" : "array"
    }
  }, {
    "id" : "reference__fasta__base",
    "type" : {
      "items" : "File",
      "type" : "array"
    }
  }, {
    "id" : "genome_resources__variation__lcr",
    "type" : {
      "items" : "File",
      "type" : "array"
    }
  }, {
    "id" : "config__algorithm__variantcaller",
    "type" : {
      "items" : {
        "items" : "string",
        "type" : "array"
      },
      "type" : "array"
    }
  }, {
    "id" : "config__algorithm__svcaller",
    "type" : {
      "items" : {
        "items" : "string",
        "type" : "array"
      },
      "type" : "array"
    }
  }, {
    "id" : "genome_resources__rnaseq__transcripts_mask",
    "type" : {
      "items" : "File",
      "type" : "array"
    }
  }, {
    "id" : "genome_resources__variation__train_1000g",
    "type" : {
      "items" : "File",
      "type" : "array"
    }
  }, {
    "id" : "config__algorithm__coverage_interval",
    "type" : {
      "items" : "null",
      "type" : "array"
    }
  }, {
    "id" : "genome_resources__variation__qsignature",
    "type" : {
      "items" : "File",
      "type" : "array"
    }
  }, {
    "id" : "genome_resources__variation__train_hapmap",
    "type" : {
      "items" : "File",
      "type" : "array"
    }
  }, {
    "id" : "rgnames__lb",
    "type" : {
      "items" : "null",
      "type" : "array"
    }
  }, {
    "id" : "rgnames__rg",
    "type" : {
      "items" : "string",
      "type" : "array"
    }
  }, {
    "id" : "config__algorithm__realign",
    "type" : {
      "items" : "string",
      "type" : "array"
    }
  }, {
    "id" : "metadata__batch",
    "type" : {
      "items" : "null",
      "type" : "array"
    }
  }, {
    "id" : "rgnames__lane",
    "type" : {
      "items" : "string",
      "type" : "array"
    }
  }, {
    "id" : "config__algorithm__nomap_split_targets",
    "type" : {
      "items" : "long",
      "type" : "array"
    }
  }, {
    "id" : "genome_resources__variation__sv_repeat",
    "type" : {
      "items" : "File",
      "type" : "array"
    }
  }, {
    "id" : "reference__bwa__indexes",
    "type" : {
      "items" : "File",
      "type" : "array"
    }
  }, {
    "id" : "config__algorithm__nomap_split_size",
    "type" : {
      "items" : "long",
      "type" : "array"
    }
  }, {
    "id" : "files",
    "type" : {
      "items" : {
        "items" : "File",
        "type" : "array"
      },
      "type" : "array"
    }
  }, {
    "id" : "genome_resources__rnaseq__dexseq",
    "type" : {
      "items" : "File",
      "type" : "array"
    }
  }, {
    "id" : "description",
    "type" : {
      "items" : "string",
      "type" : "array"
    }
  }, {
    "id" : "config__algorithm__validate_regions",
    "type" : {
      "items" : "null",
      "type" : "array"
    }
  }, {
    "id" : "genome_resources__rnaseq__transcriptome_index__tophat",
    "type" : {
      "items" : "string",
      "type" : "array"
    }
  }, {
    "id" : "config__algorithm__aligner",
    "type" : {
      "items" : "string",
      "type" : "array"
    }
  }, {
    "id" : "genome_resources__variation__train_omni",
    "type" : {
      "items" : "File",
      "type" : "array"
    }
  }, {
    "id" : "config__algorithm__ensemble__numpass",
    "type" : {
      "items" : "long",
      "type" : "array"
    }
  }, {
    "id" : "genome_build",
    "type" : {
      "items" : "string",
      "type" : "array"
    }
  }, {
    "id" : "reference__rtg",
    "type" : {
      "items" : "File",
      "type" : "array"
    }
  }, {
    "id" : "config__algorithm__recalibrate",
    "type" : {
      "items" : "string",
      "type" : "array"
    }
  }, {
    "id" : "metadata__phenotype",
    "type" : {
      "items" : "string",
      "type" : "array"
    }
  }, {
    "id" : "genome_resources__rnaseq__transcripts",
    "type" : {
      "items" : "File",
      "type" : "array"
    }
  }, {
    "id" : "genome_resources__aliases__human",
    "type" : {
      "items" : "string",
      "type" : "array"
    }
  }, {
    "id" : "config__algorithm__tools_off",
    "type" : {
      "items" : {
        "items" : "string",
        "type" : "array"
      },
      "type" : "array"
    }
  }, {
    "id" : "genome_resources__variation__dbsnp",
    "type" : {
      "items" : "File",
      "type" : "array"
    }
  }, {
    "id" : "config__algorithm__mark_duplicates",
    "type" : {
      "items" : "string",
      "type" : "array"
    }
  }, {
    "id" : "rgnames__pu",
    "type" : {
      "items" : "string",
      "type" : "array"
    }
  }, {
    "id" : "vrn_file",
    "type" : {
      "items" : "null",
      "type" : "array"
    }
  }, {
    "id" : "rgnames__pl",
    "type" : {
      "items" : "string",
      "type" : "array"
    }
  }, {
    "id" : "reference__viral",
    "type" : {
      "items" : {
        "items" : "null",
        "type" : "array"
      },
      "type" : "array"
    }
  }, {
    "id" : "genome_resources__version",
    "type" : {
      "items" : "long",
      "type" : "array"
    }
  }, {
    "id" : "genome_resources__variation__cosmic",
    "type" : {
      "items" : "null",
      "type" : "array"
    }
  }, {
    "id" : "genome_resources__rnaseq__refflat",
    "type" : {
      "items" : "File",
      "type" : "array"
    }
  }, {
    "id" : "reference__genome_context",
    "type" : {
      "items" : {
        "items" : "null",
        "type" : "array"
      },
      "type" : "array"
    }
  }, {
    "id" : "config__algorithm__qc",
    "type" : {
      "items" : {
        "items" : "string",
        "type" : "array"
      },
      "type" : "array"
    }
  }, {
    "id" : "analysis",
    "type" : {
      "items" : "string",
      "type" : "array"
    }
  }, {
    "id" : "rgnames__sample",
    "type" : {
      "items" : "string",
      "type" : "array"
    }
  }, {
    "id" : "config__algorithm__tools_on",
    "type" : {
      "items" : {
        "items" : "null",
        "type" : "array"
      },
      "type" : "array"
    }
  }, {
    "id" : "config__algorithm__effects",
    "type" : {
      "items" : "string",
      "type" : "array"
    }
  }, {
    "id" : "config__algorithm__variant_regions",
    "type" : {
      "items" : "null",
      "type" : "array"
    }
  }, {
    "id" : "genome_resources__aliases__ensembl",
    "type" : {
      "items" : "string",
      "type" : "array"
    }
  }, {
    "id" : "metadata__sex",
    "type" : {
      "items" : "string",
      "type" : "array"
    }
  }, {
    "id" : "genome_resources__variation__train_indels",
    "type" : {
      "items" : "File",
      "type" : "array"
    }
  }, {
    "id" : "genome_resources__aliases__snpeff",
    "type" : {
      "items" : "string",
      "type" : "array"
    }
  }, {
    "id" : "config__algorithm__archive",
    "type" : {
      "items" : {
        "items" : "null",
        "type" : "array"
      },
      "type" : "array"
    }
  } ],
  "outputs" : [ {
    "id" : "align_bam",
    "type" : {
      "items" : "File",
      "type" : "array"
    },
    "outputSource" : "alignment/align_bam"
  }, {
    "id" : "summary__multiqc",
    "type" : {
      "items" : [ "File", "null" ],
      "type" : "array"
    },
    "outputSource" : "multiqc_summary/summary__multiqc"
  }, {
    "id" : "validate__grading_summary",
    "type" : {
      "items" : [ "File", "null" ],
      "type" : "array"
    },
    "outputSource" : "summarize_grading_vc/validate__grading_summary"
  } ],
  "hints" : [ ],
  "requirements" : [ {
    "class" : "EnvVarRequirement",
    "envDef" : [ {
      "envName" : "MPLCONFIGDIR",
      "envValue" : "."
    } ]
  }, {
    "class" : "ScatterFeatureRequirement"
  }, {
    "class" : "SubworkflowFeatureRequirement"
  } ],
  "successCodes" : [ ],
  "steps" : [ {
    "id" : "alignment_to_rec",
    "run" : {
      "cwlVersion" : "v1.0",
      "inputs" : [ {
        "id" : "sentinel_parallel",
        "default" : "multi-combined",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 0,
          "prefix" : "sentinel_parallel=",
          "separate" : false
        }
      }, {
        "id" : "sentinel_outputs",
        "default" : "alignment_rec:description;config__algorithm__align_split_size;reference__fasta__base;rgnames__lb;rgnames__rg;rgnames__lane;reference__bwa__indexes;files;config__algorithm__aligner;config__algorithm__mark_duplicates;rgnames__pu;rgnames__pl;rgnames__sample",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 1,
          "prefix" : "sentinel_outputs=",
          "separate" : false
        }
      }, {
        "id" : "sentinel_inputs",
        "default" : "files:var,config__algorithm__align_split_size:var,reference__fasta__base:var,rgnames__pl:var,rgnames__sample:var,rgnames__pu:var,rgnames__lane:var,rgnames__rg:var,rgnames__lb:var,reference__bwa__indexes:var,config__algorithm__aligner:var,config__algorithm__mark_duplicates:var,description:var",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 2,
          "prefix" : "sentinel_inputs=",
          "separate" : false
        }
      }, {
        "id" : "files",
        "type" : {
          "items" : {
            "items" : "File",
            "type" : "array"
          },
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__align_split_size",
        "type" : {
          "items" : "null",
          "type" : "array"
        }
      }, {
        "id" : "reference__fasta__base",
        "type" : {
          "items" : "File",
          "type" : "array"
        }
      }, {
        "id" : "rgnames__pl",
        "type" : {
          "items" : "string",
          "type" : "array"
        }
      }, {
        "id" : "rgnames__sample",
        "type" : {
          "items" : "string",
          "type" : "array"
        }
      }, {
        "id" : "rgnames__pu",
        "type" : {
          "items" : "string",
          "type" : "array"
        }
      }, {
        "id" : "rgnames__lane",
        "type" : {
          "items" : "string",
          "type" : "array"
        }
      }, {
        "id" : "rgnames__rg",
        "type" : {
          "items" : "string",
          "type" : "array"
        }
      }, {
        "id" : "rgnames__lb",
        "type" : {
          "items" : "null",
          "type" : "array"
        }
      }, {
        "id" : "reference__bwa__indexes",
        "type" : {
          "items" : "File",
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__aligner",
        "type" : {
          "items" : "string",
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__mark_duplicates",
        "type" : {
          "items" : "string",
          "type" : "array"
        }
      }, {
        "id" : "description",
        "type" : {
          "items" : "string",
          "type" : "array"
        }
      } ],
      "outputs" : [ {
        "id" : "alignment_rec",
        "type" : {
          "items" : {
            "fields" : [ {
              "name" : "description",
              "type" : "string"
            }, {
              "name" : "config__algorithm__align_split_size",
              "type" : "null"
            }, {
              "name" : "reference__fasta__base",
              "type" : "File"
            }, {
              "name" : "rgnames__lb",
              "type" : "null"
            }, {
              "name" : "rgnames__rg",
              "type" : "string"
            }, {
              "name" : "rgnames__lane",
              "type" : "string"
            }, {
              "name" : "reference__bwa__indexes",
              "type" : "File"
            }, {
              "name" : "files",
              "type" : {
                "items" : "File",
                "type" : "array"
              }
            }, {
              "name" : "config__algorithm__aligner",
              "type" : "string"
            }, {
              "name" : "config__algorithm__mark_duplicates",
              "type" : "string"
            }, {
              "name" : "rgnames__pu",
              "type" : "string"
            }, {
              "name" : "rgnames__pl",
              "type" : "string"
            }, {
              "name" : "rgnames__sample",
              "type" : "string"
            } ],
            "name" : "alignment_rec",
            "type" : "record"
          },
          "type" : "array"
        }
      } ],
      "hints" : [ {
        "class" : "DockerRequirement",
        "dockerPull" : "quay.io/bcbio/bcbio-base",
        "dockerImageId" : "quay.io/bcbio/bcbio-base"
      }, {
        "class" : "ResourceRequirement",
        "ramMin" : 3072,
        "outdirMin" : 1024,
        "coresMin" : 1
      } ],
      "requirements" : [ {
        "class" : "InlineJavascriptRequirement"
      }, {
        "class" : "InitialWorkDirRequirement",
        "listing" : [ {
          "entry" : "$(JSON.stringify(inputs))",
          "entryname" : "cwl.inputs.json"
        } ]
      } ],
      "successCodes" : [ ],
      "baseCommand" : [ "bcbio_nextgen.py", "runfn", "alignment_to_rec", "cwl" ],
      "arguments" : [ {
        "position" : 0,
        "valueFrom" : "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
      } ],
      "class" : "CommandLineTool"
    },
    "scatter" : null,
    "scatterMethod" : null,
    "in" : [ {
      "id" : "files",
      "source" : "files"
    }, {
      "id" : "config__algorithm__align_split_size",
      "source" : "config__algorithm__align_split_size"
    }, {
      "id" : "reference__fasta__base",
      "source" : "reference__fasta__base"
    }, {
      "id" : "rgnames__pl",
      "source" : "rgnames__pl"
    }, {
      "id" : "rgnames__sample",
      "source" : "rgnames__sample"
    }, {
      "id" : "rgnames__pu",
      "source" : "rgnames__pu"
    }, {
      "id" : "rgnames__lane",
      "source" : "rgnames__lane"
    }, {
      "id" : "rgnames__rg",
      "source" : "rgnames__rg"
    }, {
      "id" : "rgnames__lb",
      "source" : "rgnames__lb"
    }, {
      "id" : "reference__bwa__indexes",
      "source" : "reference__bwa__indexes"
    }, {
      "id" : "config__algorithm__aligner",
      "source" : "config__algorithm__aligner"
    }, {
      "id" : "config__algorithm__mark_duplicates",
      "source" : "config__algorithm__mark_duplicates"
    }, {
      "id" : "description",
      "source" : "description"
    } ],
    "out" : [ {
      "id" : "alignment_rec"
    } ],
    "hints" : [ ],
    "requirements" : [ ]
  }, {
    "id" : "alignment",
    "run" : {
      "cwlVersion" : "v1.0",
      "inputs" : [ {
        "id" : "alignment_rec",
        "type" : {
          "fields" : [ {
            "name" : "description",
            "type" : "string"
          }, {
            "name" : "config__algorithm__align_split_size",
            "type" : "null"
          }, {
            "name" : "reference__fasta__base",
            "type" : "File"
          }, {
            "name" : "rgnames__lb",
            "type" : "null"
          }, {
            "name" : "rgnames__rg",
            "type" : "string"
          }, {
            "name" : "rgnames__lane",
            "type" : "string"
          }, {
            "name" : "reference__bwa__indexes",
            "type" : "File"
          }, {
            "name" : "files",
            "type" : {
              "items" : "File",
              "type" : "array"
            }
          }, {
            "name" : "config__algorithm__aligner",
            "type" : "string"
          }, {
            "name" : "config__algorithm__mark_duplicates",
            "type" : "string"
          }, {
            "name" : "rgnames__pu",
            "type" : "string"
          }, {
            "name" : "rgnames__pl",
            "type" : "string"
          }, {
            "name" : "rgnames__sample",
            "type" : "string"
          } ],
          "name" : "alignment_rec",
          "type" : "record"
        }
      } ],
      "outputs" : [ {
        "id" : "align_bam",
        "type" : "File",
        "outputSource" : "merge_split_alignments/align_bam",
        "secondaryFiles" : [ ".bai" ]
      }, {
        "id" : "work_bam_plus__disc",
        "type" : [ "File", "null" ],
        "outputSource" : "merge_split_alignments/work_bam_plus__disc",
        "secondaryFiles" : [ ".bai" ]
      }, {
        "id" : "work_bam_plus__sr",
        "type" : [ "File", "null" ],
        "outputSource" : "merge_split_alignments/work_bam_plus__sr",
        "secondaryFiles" : [ ".bai" ]
      }, {
        "id" : "hla__fastq",
        "type" : [ "File", "null", {
          "items" : "File",
          "type" : "array"
        } ],
        "outputSource" : "merge_split_alignments/hla__fastq"
      } ],
      "hints" : [ ],
      "requirements" : [ {
        "class" : "EnvVarRequirement",
        "envDef" : [ {
          "envName" : "MPLCONFIGDIR",
          "envValue" : "."
        } ]
      }, {
        "class" : "ScatterFeatureRequirement"
      }, {
        "class" : "SubworkflowFeatureRequirement"
      } ],
      "successCodes" : [ ],
      "steps" : [ {
        "id" : "prep_align_inputs",
        "run" : {
          "cwlVersion" : "v1.0",
          "inputs" : [ {
            "id" : "sentinel_parallel",
            "default" : "single-split",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 0,
              "prefix" : "sentinel_parallel=",
              "separate" : false
            }
          }, {
            "id" : "sentinel_outputs",
            "default" : "process_alignment_rec:files;config__algorithm__quality_format;align_split",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 1,
              "prefix" : "sentinel_outputs=",
              "separate" : false
            }
          }, {
            "id" : "sentinel_inputs",
            "default" : "alignment_rec:record",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 2,
              "prefix" : "sentinel_inputs=",
              "separate" : false
            }
          }, {
            "id" : "alignment_rec",
            "type" : {
              "fields" : [ {
                "name" : "description",
                "type" : "string"
              }, {
                "name" : "config__algorithm__align_split_size",
                "type" : "null"
              }, {
                "name" : "reference__fasta__base",
                "type" : "File"
              }, {
                "name" : "rgnames__lb",
                "type" : "null"
              }, {
                "name" : "rgnames__rg",
                "type" : "string"
              }, {
                "name" : "rgnames__lane",
                "type" : "string"
              }, {
                "name" : "reference__bwa__indexes",
                "type" : "File"
              }, {
                "name" : "files",
                "type" : {
                  "items" : "File",
                  "type" : "array"
                }
              }, {
                "name" : "config__algorithm__aligner",
                "type" : "string"
              }, {
                "name" : "config__algorithm__mark_duplicates",
                "type" : "string"
              }, {
                "name" : "rgnames__pu",
                "type" : "string"
              }, {
                "name" : "rgnames__pl",
                "type" : "string"
              }, {
                "name" : "rgnames__sample",
                "type" : "string"
              } ],
              "name" : "alignment_rec",
              "type" : "record"
            }
          } ],
          "outputs" : [ {
            "id" : "process_alignment_rec",
            "type" : {
              "items" : {
                "fields" : [ {
                  "name" : "files",
                  "type" : {
                    "items" : "File",
                    "type" : "array"
                  }
                }, {
                  "name" : "config__algorithm__quality_format",
                  "type" : "string"
                }, {
                  "name" : "align_split",
                  "type" : [ "string", "null" ]
                } ],
                "name" : "process_alignment_rec",
                "type" : "record"
              },
              "type" : "array"
            }
          } ],
          "hints" : [ {
            "class" : "DockerRequirement",
            "dockerPull" : "quay.io/bcbio/bcbio-align",
            "dockerImageId" : "quay.io/bcbio/bcbio-align"
          }, {
            "class" : "ResourceRequirement",
            "tmpdirMin" : 174610798338,
            "ramMin" : 3072,
            "outdirMin" : 174610799362,
            "coresMin" : 1
          }, {
            "class" : "SoftwareRequirement",
            "packages" : [ {
              "package" : "grabix",
              "specs" : [ "https://anaconda.org/bioconda/grabix" ]
            }, {
              "package" : "htslib",
              "specs" : [ "https://anaconda.org/bioconda/htslib" ]
            }, {
              "package" : "biobambam",
              "specs" : [ "https://anaconda.org/bioconda/biobambam" ]
            } ]
          } ],
          "requirements" : [ {
            "class" : "InlineJavascriptRequirement"
          }, {
            "class" : "InitialWorkDirRequirement",
            "listing" : [ {
              "entry" : "$(JSON.stringify(inputs))",
              "entryname" : "cwl.inputs.json"
            } ]
          } ],
          "successCodes" : [ ],
          "baseCommand" : [ "bcbio_nextgen.py", "runfn", "prep_align_inputs", "cwl" ],
          "arguments" : [ {
            "position" : 0,
            "valueFrom" : "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
          } ],
          "class" : "CommandLineTool"
        },
        "scatter" : null,
        "scatterMethod" : null,
        "in" : [ {
          "id" : "alignment_rec",
          "source" : "alignment_rec"
        } ],
        "out" : [ {
          "id" : "process_alignment_rec"
        } ],
        "hints" : [ ],
        "requirements" : [ ]
      }, {
        "id" : "process_alignment",
        "run" : {
          "cwlVersion" : "v1.0",
          "inputs" : [ {
            "id" : "sentinel_parallel",
            "default" : "single-parallel",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 0,
              "prefix" : "sentinel_parallel=",
              "separate" : false
            }
          }, {
            "id" : "sentinel_outputs",
            "default" : "work_bam,align_bam,hla__fastq,work_bam_plus__disc,work_bam_plus__sr",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 1,
              "prefix" : "sentinel_outputs=",
              "separate" : false
            }
          }, {
            "id" : "sentinel_inputs",
            "default" : "alignment_rec:record,process_alignment_rec:record",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 2,
              "prefix" : "sentinel_inputs=",
              "separate" : false
            }
          }, {
            "id" : "alignment_rec",
            "type" : {
              "fields" : [ {
                "name" : "description",
                "type" : "string"
              }, {
                "name" : "config__algorithm__align_split_size",
                "type" : "null"
              }, {
                "name" : "reference__fasta__base",
                "type" : "File"
              }, {
                "name" : "rgnames__lb",
                "type" : "null"
              }, {
                "name" : "rgnames__rg",
                "type" : "string"
              }, {
                "name" : "rgnames__lane",
                "type" : "string"
              }, {
                "name" : "reference__bwa__indexes",
                "type" : "File"
              }, {
                "name" : "files",
                "type" : {
                  "items" : "File",
                  "type" : "array"
                }
              }, {
                "name" : "config__algorithm__aligner",
                "type" : "string"
              }, {
                "name" : "config__algorithm__mark_duplicates",
                "type" : "string"
              }, {
                "name" : "rgnames__pu",
                "type" : "string"
              }, {
                "name" : "rgnames__pl",
                "type" : "string"
              }, {
                "name" : "rgnames__sample",
                "type" : "string"
              } ],
              "name" : "alignment_rec",
              "type" : "record"
            }
          }, {
            "id" : "process_alignment_rec",
            "type" : {
              "fields" : [ {
                "name" : "files",
                "type" : {
                  "items" : "File",
                  "type" : "array"
                }
              }, {
                "name" : "config__algorithm__quality_format",
                "type" : "string"
              }, {
                "name" : "align_split",
                "type" : [ "string", "null" ]
              } ],
              "name" : "process_alignment_rec",
              "type" : "record"
            }
          } ],
          "outputs" : [ {
            "id" : "work_bam",
            "type" : "File"
          }, {
            "id" : "align_bam",
            "type" : "File"
          }, {
            "id" : "hla__fastq",
            "type" : [ "File", "null", {
              "items" : "File",
              "type" : "array"
            } ]
          }, {
            "id" : "work_bam_plus__disc",
            "type" : [ "File", "null" ],
            "secondaryFiles" : [ ".bai" ]
          }, {
            "id" : "work_bam_plus__sr",
            "type" : [ "File", "null" ],
            "secondaryFiles" : [ ".bai" ]
          } ],
          "hints" : [ {
            "class" : "DockerRequirement",
            "dockerPull" : "quay.io/bcbio/bcbio-align",
            "dockerImageId" : "quay.io/bcbio/bcbio-align"
          }, {
            "class" : "ResourceRequirement",
            "tmpdirMin" : 174610798338,
            "ramMin" : 24576,
            "outdirMin" : 174610799362,
            "coresMin" : 8
          }, {
            "class" : "SoftwareRequirement",
            "packages" : [ {
              "package" : "bwa",
              "specs" : [ "https://anaconda.org/bioconda/bwa" ]
            }, {
              "package" : "bwakit",
              "specs" : [ "https://anaconda.org/bioconda/bwakit" ]
            }, {
              "package" : "grabix",
              "specs" : [ "https://anaconda.org/bioconda/grabix" ]
            }, {
              "package" : "novoalign",
              "specs" : [ "https://anaconda.org/bioconda/novoalign" ]
            }, {
              "package" : "snap-aligner",
              "specs" : [ "https://anaconda.org/bioconda/snap-aligner" ],
              "version" : [ "1.0dev.97" ]
            }, {
              "package" : "sentieon",
              "specs" : [ "https://anaconda.org/bioconda/sentieon" ]
            }, {
              "package" : "samtools",
              "specs" : [ "https://anaconda.org/bioconda/samtools" ]
            }, {
              "package" : "sambamba",
              "specs" : [ "https://anaconda.org/bioconda/sambamba" ]
            }, {
              "package" : "fgbio",
              "specs" : [ "https://anaconda.org/bioconda/fgbio" ]
            }, {
              "package" : "umis",
              "specs" : [ "https://anaconda.org/bioconda/umis" ]
            }, {
              "package" : "biobambam",
              "specs" : [ "https://anaconda.org/bioconda/biobambam" ]
            }, {
              "package" : "seqtk",
              "specs" : [ "https://anaconda.org/bioconda/seqtk" ]
            }, {
              "package" : "samblaster",
              "specs" : [ "https://anaconda.org/bioconda/samblaster" ]
            } ]
          } ],
          "requirements" : [ {
            "class" : "InlineJavascriptRequirement"
          }, {
            "class" : "InitialWorkDirRequirement",
            "listing" : [ {
              "entry" : "$(JSON.stringify(inputs))",
              "entryname" : "cwl.inputs.json"
            } ]
          } ],
          "successCodes" : [ ],
          "baseCommand" : [ "bcbio_nextgen.py", "runfn", "process_alignment", "cwl" ],
          "arguments" : [ {
            "position" : 0,
            "valueFrom" : "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
          } ],
          "class" : "CommandLineTool"
        },
        "scatter" : [ "process_alignment_rec" ],
        "scatterMethod" : "dotproduct",
        "in" : [ {
          "id" : "alignment_rec",
          "source" : "alignment_rec"
        }, {
          "id" : "process_alignment_rec",
          "source" : "prep_align_inputs/process_alignment_rec"
        } ],
        "out" : [ {
          "id" : "work_bam"
        }, {
          "id" : "align_bam"
        }, {
          "id" : "hla__fastq"
        }, {
          "id" : "work_bam_plus__disc"
        }, {
          "id" : "work_bam_plus__sr"
        } ],
        "hints" : [ ],
        "requirements" : [ ]
      }, {
        "id" : "merge_split_alignments",
        "run" : {
          "cwlVersion" : "v1.0",
          "inputs" : [ {
            "id" : "sentinel_parallel",
            "default" : "single-merge",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 0,
              "prefix" : "sentinel_parallel=",
              "separate" : false
            }
          }, {
            "id" : "sentinel_outputs",
            "default" : "align_bam,work_bam_plus__disc,work_bam_plus__sr,hla__fastq",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 1,
              "prefix" : "sentinel_outputs=",
              "separate" : false
            }
          }, {
            "id" : "sentinel_inputs",
            "default" : "alignment_rec:record,work_bam:var,align_bam:var,work_bam_plus__disc:var,work_bam_plus__sr:var,hla__fastq:var",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 2,
              "prefix" : "sentinel_inputs=",
              "separate" : false
            }
          }, {
            "id" : "alignment_rec",
            "type" : {
              "fields" : [ {
                "name" : "description",
                "type" : "string"
              }, {
                "name" : "config__algorithm__align_split_size",
                "type" : "null"
              }, {
                "name" : "reference__fasta__base",
                "type" : "File"
              }, {
                "name" : "rgnames__lb",
                "type" : "null"
              }, {
                "name" : "rgnames__rg",
                "type" : "string"
              }, {
                "name" : "rgnames__lane",
                "type" : "string"
              }, {
                "name" : "reference__bwa__indexes",
                "type" : "File"
              }, {
                "name" : "files",
                "type" : {
                  "items" : "File",
                  "type" : "array"
                }
              }, {
                "name" : "config__algorithm__aligner",
                "type" : "string"
              }, {
                "name" : "config__algorithm__mark_duplicates",
                "type" : "string"
              }, {
                "name" : "rgnames__pu",
                "type" : "string"
              }, {
                "name" : "rgnames__pl",
                "type" : "string"
              }, {
                "name" : "rgnames__sample",
                "type" : "string"
              } ],
              "name" : "alignment_rec",
              "type" : "record"
            }
          }, {
            "id" : "work_bam",
            "type" : {
              "items" : "File",
              "type" : "array"
            }
          }, {
            "id" : "align_bam_toolinput",
            "type" : {
              "items" : "File",
              "type" : "array"
            }
          }, {
            "id" : "work_bam_plus__disc_toolinput",
            "type" : {
              "items" : [ "File", "null" ],
              "type" : "array"
            },
            "secondaryFiles" : [ ".bai" ]
          }, {
            "id" : "work_bam_plus__sr_toolinput",
            "type" : {
              "items" : [ "File", "null" ],
              "type" : "array"
            },
            "secondaryFiles" : [ ".bai" ]
          }, {
            "id" : "hla__fastq_toolinput",
            "type" : {
              "items" : [ "File", "null", {
                "items" : "File",
                "type" : "array"
              } ],
              "type" : "array"
            }
          } ],
          "outputs" : [ {
            "id" : "align_bam",
            "type" : "File",
            "secondaryFiles" : [ ".bai" ]
          }, {
            "id" : "work_bam_plus__disc",
            "type" : [ "File", "null" ],
            "secondaryFiles" : [ ".bai" ]
          }, {
            "id" : "work_bam_plus__sr",
            "type" : [ "File", "null" ],
            "secondaryFiles" : [ ".bai" ]
          }, {
            "id" : "hla__fastq",
            "type" : [ "File", "null", {
              "items" : "File",
              "type" : "array"
            } ]
          } ],
          "hints" : [ {
            "class" : "DockerRequirement",
            "dockerPull" : "quay.io/bcbio/bcbio-align",
            "dockerImageId" : "quay.io/bcbio/bcbio-align"
          }, {
            "class" : "ResourceRequirement",
            "tmpdirMin" : 349221596676,
            "ramMin" : 24576,
            "outdirMin" : 349221597700,
            "coresMin" : 8
          }, {
            "class" : "SoftwareRequirement",
            "packages" : [ {
              "package" : "biobambam",
              "specs" : [ "https://anaconda.org/bioconda/biobambam" ]
            }, {
              "package" : "samtools",
              "specs" : [ "https://anaconda.org/bioconda/samtools" ]
            } ]
          } ],
          "requirements" : [ {
            "class" : "InlineJavascriptRequirement"
          }, {
            "class" : "InitialWorkDirRequirement",
            "listing" : [ {
              "entry" : "$(JSON.stringify(inputs))",
              "entryname" : "cwl.inputs.json"
            } ]
          } ],
          "successCodes" : [ ],
          "baseCommand" : [ "bcbio_nextgen.py", "runfn", "merge_split_alignments", "cwl" ],
          "arguments" : [ {
            "position" : 0,
            "valueFrom" : "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
          } ],
          "class" : "CommandLineTool"
        },
        "scatter" : null,
        "scatterMethod" : null,
        "in" : [ {
          "id" : "alignment_rec",
          "source" : "alignment_rec"
        }, {
          "id" : "work_bam",
          "source" : "process_alignment/work_bam"
        }, {
          "id" : "align_bam_toolinput",
          "source" : "process_alignment/align_bam"
        }, {
          "id" : "work_bam_plus__disc_toolinput",
          "source" : "process_alignment/work_bam_plus__disc"
        }, {
          "id" : "work_bam_plus__sr_toolinput",
          "source" : "process_alignment/work_bam_plus__sr"
        }, {
          "id" : "hla__fastq_toolinput",
          "source" : "process_alignment/hla__fastq"
        } ],
        "out" : [ {
          "id" : "align_bam"
        }, {
          "id" : "work_bam_plus__disc"
        }, {
          "id" : "work_bam_plus__sr"
        }, {
          "id" : "hla__fastq"
        } ],
        "hints" : [ ],
        "requirements" : [ ]
      } ],
      "class" : "Workflow"
    },
    "scatter" : [ "alignment_rec" ],
    "scatterMethod" : "dotproduct",
    "in" : [ {
      "id" : "alignment_rec",
      "source" : "alignment_to_rec/alignment_rec"
    } ],
    "out" : [ {
      "id" : "align_bam"
    }, {
      "id" : "work_bam_plus__disc"
    }, {
      "id" : "work_bam_plus__sr"
    }, {
      "id" : "hla__fastq"
    } ],
    "hints" : [ ],
    "requirements" : [ ]
  }, {
    "id" : "prep_samples_to_rec",
    "run" : {
      "cwlVersion" : "v1.0",
      "inputs" : [ {
        "id" : "sentinel_parallel",
        "default" : "multi-combined",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 0,
          "prefix" : "sentinel_parallel=",
          "separate" : false
        }
      }, {
        "id" : "sentinel_outputs",
        "default" : "prep_samples_rec:description;reference__fasta__base;config__algorithm__variant_regions",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 1,
          "prefix" : "sentinel_outputs=",
          "separate" : false
        }
      }, {
        "id" : "sentinel_inputs",
        "default" : "config__algorithm__variant_regions:var,reference__fasta__base:var,description:var",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 2,
          "prefix" : "sentinel_inputs=",
          "separate" : false
        }
      }, {
        "id" : "config__algorithm__variant_regions",
        "type" : {
          "items" : "null",
          "type" : "array"
        }
      }, {
        "id" : "reference__fasta__base",
        "type" : {
          "items" : "File",
          "type" : "array"
        }
      }, {
        "id" : "description",
        "type" : {
          "items" : "string",
          "type" : "array"
        }
      } ],
      "outputs" : [ {
        "id" : "prep_samples_rec",
        "type" : {
          "items" : {
            "fields" : [ {
              "name" : "description",
              "type" : "string"
            }, {
              "name" : "reference__fasta__base",
              "type" : "File"
            }, {
              "name" : "config__algorithm__variant_regions",
              "type" : "null"
            } ],
            "name" : "prep_samples_rec",
            "type" : "record"
          },
          "type" : "array"
        }
      } ],
      "hints" : [ {
        "class" : "DockerRequirement",
        "dockerPull" : "quay.io/bcbio/bcbio-base",
        "dockerImageId" : "quay.io/bcbio/bcbio-base"
      }, {
        "class" : "ResourceRequirement",
        "ramMin" : 3072,
        "outdirMin" : 1024,
        "coresMin" : 1
      } ],
      "requirements" : [ {
        "class" : "InlineJavascriptRequirement"
      }, {
        "class" : "InitialWorkDirRequirement",
        "listing" : [ {
          "entry" : "$(JSON.stringify(inputs))",
          "entryname" : "cwl.inputs.json"
        } ]
      } ],
      "successCodes" : [ ],
      "baseCommand" : [ "bcbio_nextgen.py", "runfn", "prep_samples_to_rec", "cwl" ],
      "arguments" : [ {
        "position" : 0,
        "valueFrom" : "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
      } ],
      "class" : "CommandLineTool"
    },
    "scatter" : null,
    "scatterMethod" : null,
    "in" : [ {
      "id" : "config__algorithm__variant_regions",
      "source" : "config__algorithm__variant_regions"
    }, {
      "id" : "reference__fasta__base",
      "source" : "reference__fasta__base"
    }, {
      "id" : "description",
      "source" : "description"
    } ],
    "out" : [ {
      "id" : "prep_samples_rec"
    } ],
    "hints" : [ ],
    "requirements" : [ ]
  }, {
    "id" : "prep_samples",
    "run" : {
      "cwlVersion" : "v1.0",
      "inputs" : [ {
        "id" : "sentinel_parallel",
        "default" : "multi-parallel",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 0,
          "prefix" : "sentinel_parallel=",
          "separate" : false
        }
      }, {
        "id" : "sentinel_outputs",
        "default" : "config__algorithm__variant_regions,config__algorithm__variant_regions_merged,config__algorithm__variant_regions_orig,config__algorithm__coverage,config__algorithm__coverage_merged,config__algorithm__coverage_orig,config__algorithm__seq2c_bed_ready",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 1,
          "prefix" : "sentinel_outputs=",
          "separate" : false
        }
      }, {
        "id" : "sentinel_inputs",
        "default" : "prep_samples_rec:record",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 2,
          "prefix" : "sentinel_inputs=",
          "separate" : false
        }
      }, {
        "id" : "prep_samples_rec",
        "type" : {
          "fields" : [ {
            "name" : "description",
            "type" : "string"
          }, {
            "name" : "reference__fasta__base",
            "type" : "File"
          }, {
            "name" : "config__algorithm__variant_regions",
            "type" : "null"
          } ],
          "name" : "prep_samples_rec",
          "type" : "record"
        }
      } ],
      "outputs" : [ {
        "id" : "config__algorithm__variant_regions",
        "type" : [ "File", "null" ]
      }, {
        "id" : "config__algorithm__variant_regions_merged",
        "type" : [ "File", "null" ]
      }, {
        "id" : "config__algorithm__variant_regions_orig",
        "type" : [ "File", "null" ]
      }, {
        "id" : "config__algorithm__coverage",
        "type" : [ "File", "null" ]
      }, {
        "id" : "config__algorithm__coverage_merged",
        "type" : [ "File", "null" ]
      }, {
        "id" : "config__algorithm__coverage_orig",
        "type" : [ "File", "null" ]
      }, {
        "id" : "config__algorithm__seq2c_bed_ready",
        "type" : [ "File", "null" ]
      } ],
      "hints" : [ {
        "class" : "DockerRequirement",
        "dockerPull" : "quay.io/bcbio/bcbio-align",
        "dockerImageId" : "quay.io/bcbio/bcbio-align"
      }, {
        "class" : "ResourceRequirement",
        "ramMin" : 3072,
        "outdirMin" : 1024,
        "coresMin" : 1
      }, {
        "class" : "SoftwareRequirement",
        "packages" : [ {
          "package" : "htslib",
          "specs" : [ "https://anaconda.org/bioconda/htslib" ]
        }, {
          "package" : "bedtools",
          "specs" : [ "https://anaconda.org/bioconda/bedtools" ]
        }, {
          "package" : "pythonpy",
          "specs" : [ "https://anaconda.org/bioconda/pythonpy" ]
        } ]
      } ],
      "requirements" : [ {
        "class" : "InlineJavascriptRequirement"
      }, {
        "class" : "InitialWorkDirRequirement",
        "listing" : [ {
          "entry" : "$(JSON.stringify(inputs))",
          "entryname" : "cwl.inputs.json"
        } ]
      } ],
      "successCodes" : [ ],
      "baseCommand" : [ "bcbio_nextgen.py", "runfn", "prep_samples", "cwl" ],
      "arguments" : [ {
        "position" : 0,
        "valueFrom" : "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
      } ],
      "class" : "CommandLineTool"
    },
    "scatter" : [ "prep_samples_rec" ],
    "scatterMethod" : "dotproduct",
    "in" : [ {
      "id" : "prep_samples_rec",
      "source" : "prep_samples_to_rec/prep_samples_rec"
    } ],
    "out" : [ {
      "id" : "config__algorithm__variant_regions"
    }, {
      "id" : "config__algorithm__variant_regions_merged"
    }, {
      "id" : "config__algorithm__variant_regions_orig"
    }, {
      "id" : "config__algorithm__coverage"
    }, {
      "id" : "config__algorithm__coverage_merged"
    }, {
      "id" : "config__algorithm__coverage_orig"
    }, {
      "id" : "config__algorithm__seq2c_bed_ready"
    } ],
    "hints" : [ ],
    "requirements" : [ ]
  }, {
    "id" : "postprocess_alignment_to_rec",
    "run" : {
      "cwlVersion" : "v1.0",
      "inputs" : [ {
        "id" : "sentinel_parallel",
        "default" : "multi-combined",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 0,
          "prefix" : "sentinel_parallel=",
          "separate" : false
        }
      }, {
        "id" : "sentinel_outputs",
        "default" : "postprocess_alignment_rec:description;reference__fasta__base;config__algorithm__coverage_interval;config__algorithm__recalibrate;config__algorithm__variant_regions;align_bam;config__algorithm__variant_regions_merged;config__algorithm__variant_regions_orig;config__algorithm__coverage;config__algorithm__coverage_merged;config__algorithm__coverage_orig;config__algorithm__seq2c_bed_ready",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 1,
          "prefix" : "sentinel_outputs=",
          "separate" : false
        }
      }, {
        "id" : "sentinel_inputs",
        "default" : "align_bam:var,config__algorithm__coverage_interval:var,config__algorithm__variant_regions:var,config__algorithm__variant_regions_merged:var,config__algorithm__variant_regions_orig:var,config__algorithm__coverage:var,config__algorithm__coverage_merged:var,config__algorithm__coverage_orig:var,config__algorithm__seq2c_bed_ready:var,config__algorithm__recalibrate:var,reference__fasta__base:var,description:var",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 2,
          "prefix" : "sentinel_inputs=",
          "separate" : false
        }
      }, {
        "id" : "align_bam",
        "type" : {
          "items" : "File",
          "type" : "array"
        },
        "secondaryFiles" : [ ".bai" ]
      }, {
        "id" : "config__algorithm__coverage_interval",
        "type" : {
          "items" : "null",
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__variant_regions",
        "type" : {
          "items" : [ "File", "null" ],
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__variant_regions_merged",
        "type" : {
          "items" : [ "File", "null" ],
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__variant_regions_orig",
        "type" : {
          "items" : [ "File", "null" ],
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__coverage",
        "type" : {
          "items" : [ "File", "null" ],
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__coverage_merged",
        "type" : {
          "items" : [ "File", "null" ],
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__coverage_orig",
        "type" : {
          "items" : [ "File", "null" ],
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__seq2c_bed_ready",
        "type" : {
          "items" : [ "File", "null" ],
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__recalibrate",
        "type" : {
          "items" : "string",
          "type" : "array"
        }
      }, {
        "id" : "reference__fasta__base",
        "type" : {
          "items" : "File",
          "type" : "array"
        }
      }, {
        "id" : "description",
        "type" : {
          "items" : "string",
          "type" : "array"
        }
      } ],
      "outputs" : [ {
        "id" : "postprocess_alignment_rec",
        "type" : {
          "items" : {
            "fields" : [ {
              "name" : "description",
              "type" : "string"
            }, {
              "name" : "reference__fasta__base",
              "type" : "File"
            }, {
              "name" : "config__algorithm__coverage_interval",
              "type" : "null"
            }, {
              "name" : "config__algorithm__recalibrate",
              "type" : "string"
            }, {
              "name" : "config__algorithm__variant_regions",
              "type" : [ "File", "null" ]
            }, {
              "name" : "align_bam",
              "type" : "File"
            }, {
              "name" : "config__algorithm__variant_regions_merged",
              "type" : [ "File", "null" ]
            }, {
              "name" : "config__algorithm__variant_regions_orig",
              "type" : [ "File", "null" ]
            }, {
              "name" : "config__algorithm__coverage",
              "type" : [ "File", "null" ]
            }, {
              "name" : "config__algorithm__coverage_merged",
              "type" : [ "File", "null" ]
            }, {
              "name" : "config__algorithm__coverage_orig",
              "type" : [ "File", "null" ]
            }, {
              "name" : "config__algorithm__seq2c_bed_ready",
              "type" : [ "File", "null" ]
            } ],
            "name" : "postprocess_alignment_rec",
            "type" : "record"
          },
          "type" : "array"
        }
      } ],
      "hints" : [ {
        "class" : "DockerRequirement",
        "dockerPull" : "quay.io/bcbio/bcbio-base",
        "dockerImageId" : "quay.io/bcbio/bcbio-base"
      }, {
        "class" : "ResourceRequirement",
        "ramMin" : 3072,
        "outdirMin" : 1024,
        "coresMin" : 1
      } ],
      "requirements" : [ {
        "class" : "InlineJavascriptRequirement"
      }, {
        "class" : "InitialWorkDirRequirement",
        "listing" : [ {
          "entry" : "$(JSON.stringify(inputs))",
          "entryname" : "cwl.inputs.json"
        } ]
      } ],
      "successCodes" : [ ],
      "baseCommand" : [ "bcbio_nextgen.py", "runfn", "postprocess_alignment_to_rec", "cwl" ],
      "arguments" : [ {
        "position" : 0,
        "valueFrom" : "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
      } ],
      "class" : "CommandLineTool"
    },
    "scatter" : null,
    "scatterMethod" : null,
    "in" : [ {
      "id" : "align_bam",
      "source" : "alignment/align_bam"
    }, {
      "id" : "config__algorithm__coverage_interval",
      "source" : "config__algorithm__coverage_interval"
    }, {
      "id" : "config__algorithm__variant_regions",
      "source" : "prep_samples/config__algorithm__variant_regions"
    }, {
      "id" : "config__algorithm__variant_regions_merged",
      "source" : "prep_samples/config__algorithm__variant_regions_merged"
    }, {
      "id" : "config__algorithm__variant_regions_orig",
      "source" : "prep_samples/config__algorithm__variant_regions_orig"
    }, {
      "id" : "config__algorithm__coverage",
      "source" : "prep_samples/config__algorithm__coverage"
    }, {
      "id" : "config__algorithm__coverage_merged",
      "source" : "prep_samples/config__algorithm__coverage_merged"
    }, {
      "id" : "config__algorithm__coverage_orig",
      "source" : "prep_samples/config__algorithm__coverage_orig"
    }, {
      "id" : "config__algorithm__seq2c_bed_ready",
      "source" : "prep_samples/config__algorithm__seq2c_bed_ready"
    }, {
      "id" : "config__algorithm__recalibrate",
      "source" : "config__algorithm__recalibrate"
    }, {
      "id" : "reference__fasta__base",
      "source" : "reference__fasta__base"
    }, {
      "id" : "description",
      "source" : "description"
    } ],
    "out" : [ {
      "id" : "postprocess_alignment_rec"
    } ],
    "hints" : [ ],
    "requirements" : [ ]
  }, {
    "id" : "postprocess_alignment",
    "run" : {
      "cwlVersion" : "v1.0",
      "inputs" : [ {
        "id" : "sentinel_parallel",
        "default" : "multi-parallel",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 0,
          "prefix" : "sentinel_parallel=",
          "separate" : false
        }
      }, {
        "id" : "sentinel_outputs",
        "default" : "config__algorithm__coverage_interval,config__algorithm__variant_regions,config__algorithm__variant_regions_merged,config__algorithm__variant_regions_orig,config__algorithm__coverage,config__algorithm__coverage_merged,config__algorithm__coverage_orig,config__algorithm__seq2c_bed_ready,regions__callable,regions__sample_callable,regions__nblock,regions__highdepth",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 1,
          "prefix" : "sentinel_outputs=",
          "separate" : false
        }
      }, {
        "id" : "sentinel_inputs",
        "default" : "postprocess_alignment_rec:record",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 2,
          "prefix" : "sentinel_inputs=",
          "separate" : false
        }
      }, {
        "id" : "postprocess_alignment_rec",
        "type" : {
          "fields" : [ {
            "name" : "description",
            "type" : "string"
          }, {
            "name" : "reference__fasta__base",
            "type" : "File"
          }, {
            "name" : "config__algorithm__coverage_interval",
            "type" : "null"
          }, {
            "name" : "config__algorithm__recalibrate",
            "type" : "string"
          }, {
            "name" : "config__algorithm__variant_regions",
            "type" : [ "File", "null" ]
          }, {
            "name" : "align_bam",
            "type" : "File"
          }, {
            "name" : "config__algorithm__variant_regions_merged",
            "type" : [ "File", "null" ]
          }, {
            "name" : "config__algorithm__variant_regions_orig",
            "type" : [ "File", "null" ]
          }, {
            "name" : "config__algorithm__coverage",
            "type" : [ "File", "null" ]
          }, {
            "name" : "config__algorithm__coverage_merged",
            "type" : [ "File", "null" ]
          }, {
            "name" : "config__algorithm__coverage_orig",
            "type" : [ "File", "null" ]
          }, {
            "name" : "config__algorithm__seq2c_bed_ready",
            "type" : [ "File", "null" ]
          } ],
          "name" : "postprocess_alignment_rec",
          "type" : "record"
        }
      } ],
      "outputs" : [ {
        "id" : "config__algorithm__coverage_interval",
        "type" : "string"
      }, {
        "id" : "config__algorithm__variant_regions",
        "type" : "File"
      }, {
        "id" : "config__algorithm__variant_regions_merged",
        "type" : "File"
      }, {
        "id" : "config__algorithm__variant_regions_orig",
        "type" : "File"
      }, {
        "id" : "config__algorithm__coverage",
        "type" : [ "File", "null" ]
      }, {
        "id" : "config__algorithm__coverage_merged",
        "type" : [ "File", "null" ]
      }, {
        "id" : "config__algorithm__coverage_orig",
        "type" : [ "File", "null" ]
      }, {
        "id" : "config__algorithm__seq2c_bed_ready",
        "type" : [ "File", "null" ]
      }, {
        "id" : "regions__callable",
        "type" : "File"
      }, {
        "id" : "regions__sample_callable",
        "type" : "File"
      }, {
        "id" : "regions__nblock",
        "type" : "File"
      }, {
        "id" : "regions__highdepth",
        "type" : [ "File", "null" ]
      } ],
      "hints" : [ {
        "class" : "DockerRequirement",
        "dockerPull" : "quay.io/bcbio/bcbio-align",
        "dockerImageId" : "quay.io/bcbio/bcbio-align"
      }, {
        "class" : "ResourceRequirement",
        "ramMin" : 24576,
        "outdirMin" : 1024,
        "coresMin" : 8
      }, {
        "class" : "SoftwareRequirement",
        "packages" : [ {
          "package" : "sambamba",
          "specs" : [ "https://anaconda.org/bioconda/sambamba" ]
        }, {
          "package" : "goleft",
          "specs" : [ "https://anaconda.org/bioconda/goleft" ]
        }, {
          "package" : "bedtools",
          "specs" : [ "https://anaconda.org/bioconda/bedtools" ]
        }, {
          "package" : "htslib",
          "specs" : [ "https://anaconda.org/bioconda/htslib" ]
        } ]
      } ],
      "requirements" : [ {
        "class" : "InlineJavascriptRequirement"
      }, {
        "class" : "InitialWorkDirRequirement",
        "listing" : [ {
          "entry" : "$(JSON.stringify(inputs))",
          "entryname" : "cwl.inputs.json"
        } ]
      } ],
      "successCodes" : [ ],
      "baseCommand" : [ "bcbio_nextgen.py", "runfn", "postprocess_alignment", "cwl" ],
      "arguments" : [ {
        "position" : 0,
        "valueFrom" : "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
      } ],
      "class" : "CommandLineTool"
    },
    "scatter" : [ "postprocess_alignment_rec" ],
    "scatterMethod" : "dotproduct",
    "in" : [ {
      "id" : "postprocess_alignment_rec",
      "source" : "postprocess_alignment_to_rec/postprocess_alignment_rec"
    } ],
    "out" : [ {
      "id" : "config__algorithm__coverage_interval"
    }, {
      "id" : "config__algorithm__variant_regions"
    }, {
      "id" : "config__algorithm__variant_regions_merged"
    }, {
      "id" : "config__algorithm__variant_regions_orig"
    }, {
      "id" : "config__algorithm__coverage"
    }, {
      "id" : "config__algorithm__coverage_merged"
    }, {
      "id" : "config__algorithm__coverage_orig"
    }, {
      "id" : "config__algorithm__seq2c_bed_ready"
    }, {
      "id" : "regions__callable"
    }, {
      "id" : "regions__sample_callable"
    }, {
      "id" : "regions__nblock"
    }, {
      "id" : "regions__highdepth"
    } ],
    "hints" : [ ],
    "requirements" : [ ]
  }, {
    "id" : "combine_sample_regions",
    "run" : {
      "cwlVersion" : "v1.0",
      "inputs" : [ {
        "id" : "sentinel_parallel",
        "default" : "multi-combined",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 0,
          "prefix" : "sentinel_parallel=",
          "separate" : false
        }
      }, {
        "id" : "sentinel_outputs",
        "default" : "config__algorithm__callable_regions,config__algorithm__non_callable_regions,config__algorithm__callable_count",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 1,
          "prefix" : "sentinel_outputs=",
          "separate" : false
        }
      }, {
        "id" : "sentinel_inputs",
        "default" : "regions__callable:var,regions__nblock:var,config__algorithm__nomap_split_size:var,config__algorithm__nomap_split_targets:var,reference__fasta__base:var,description:var",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 2,
          "prefix" : "sentinel_inputs=",
          "separate" : false
        }
      }, {
        "id" : "regions__callable",
        "type" : {
          "items" : "File",
          "type" : "array"
        }
      }, {
        "id" : "regions__nblock",
        "type" : {
          "items" : "File",
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__nomap_split_size",
        "type" : {
          "items" : "long",
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__nomap_split_targets",
        "type" : {
          "items" : "long",
          "type" : "array"
        }
      }, {
        "id" : "reference__fasta__base",
        "type" : {
          "items" : "File",
          "type" : "array"
        }
      }, {
        "id" : "description",
        "type" : {
          "items" : "string",
          "type" : "array"
        }
      } ],
      "outputs" : [ {
        "id" : "config__algorithm__callable_regions",
        "type" : {
          "items" : "File",
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__non_callable_regions",
        "type" : {
          "items" : "File",
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__callable_count",
        "type" : {
          "items" : "int",
          "type" : "array"
        }
      } ],
      "hints" : [ {
        "class" : "DockerRequirement",
        "dockerPull" : "quay.io/bcbio/bcbio-align",
        "dockerImageId" : "quay.io/bcbio/bcbio-align"
      }, {
        "class" : "ResourceRequirement",
        "ramMin" : 3072,
        "outdirMin" : 1024,
        "coresMin" : 1
      }, {
        "class" : "SoftwareRequirement",
        "packages" : [ {
          "package" : "bedtools",
          "specs" : [ "https://anaconda.org/bioconda/bedtools" ]
        }, {
          "package" : "htslib",
          "specs" : [ "https://anaconda.org/bioconda/htslib" ]
        } ]
      } ],
      "requirements" : [ {
        "class" : "InlineJavascriptRequirement"
      }, {
        "class" : "InitialWorkDirRequirement",
        "listing" : [ {
          "entry" : "$(JSON.stringify(inputs))",
          "entryname" : "cwl.inputs.json"
        } ]
      } ],
      "successCodes" : [ ],
      "baseCommand" : [ "bcbio_nextgen.py", "runfn", "combine_sample_regions", "cwl" ],
      "arguments" : [ {
        "position" : 0,
        "valueFrom" : "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
      } ],
      "class" : "CommandLineTool"
    },
    "scatter" : null,
    "scatterMethod" : null,
    "in" : [ {
      "id" : "regions__callable",
      "source" : "postprocess_alignment/regions__callable"
    }, {
      "id" : "regions__nblock",
      "source" : "postprocess_alignment/regions__nblock"
    }, {
      "id" : "config__algorithm__nomap_split_size",
      "source" : "config__algorithm__nomap_split_size"
    }, {
      "id" : "config__algorithm__nomap_split_targets",
      "source" : "config__algorithm__nomap_split_targets"
    }, {
      "id" : "reference__fasta__base",
      "source" : "reference__fasta__base"
    }, {
      "id" : "description",
      "source" : "description"
    } ],
    "out" : [ {
      "id" : "config__algorithm__callable_regions"
    }, {
      "id" : "config__algorithm__non_callable_regions"
    }, {
      "id" : "config__algorithm__callable_count"
    } ],
    "hints" : [ ],
    "requirements" : [ ]
  }, {
    "id" : "batch_for_variantcall",
    "run" : {
      "cwlVersion" : "v1.0",
      "inputs" : [ {
        "id" : "sentinel_parallel",
        "default" : "multi-batch",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 0,
          "prefix" : "sentinel_parallel=",
          "separate" : false
        }
      }, {
        "id" : "sentinel_outputs",
        "default" : "batch_rec:description;config__algorithm__validate;reference__fasta__base;config__algorithm__variantcaller;config__algorithm__coverage_interval;metadata__batch;config__algorithm__validate_regions;genome_build;reference__rtg;metadata__phenotype;config__algorithm__tools_off;genome_resources__variation__dbsnp;genome_resources__variation__cosmic;reference__genome_context;analysis;config__algorithm__tools_on;config__algorithm__variant_regions;align_bam;regions__callable;config__algorithm__callable_regions",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 1,
          "prefix" : "sentinel_outputs=",
          "separate" : false
        }
      }, {
        "id" : "sentinel_inputs",
        "default" : "analysis:var,genome_build:var,align_bam:var,config__algorithm__callable_regions:var,metadata__batch:var,metadata__phenotype:var,regions__callable:var,config__algorithm__variantcaller:var,config__algorithm__coverage_interval:var,config__algorithm__variant_regions:var,config__algorithm__validate:var,config__algorithm__validate_regions:var,config__algorithm__tools_on:var,config__algorithm__tools_off:var,reference__fasta__base:var,reference__rtg:var,reference__genome_context:var,genome_resources__variation__cosmic:var,genome_resources__variation__dbsnp:var,description:var",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 2,
          "prefix" : "sentinel_inputs=",
          "separate" : false
        }
      }, {
        "id" : "analysis",
        "type" : {
          "items" : "string",
          "type" : "array"
        }
      }, {
        "id" : "genome_build",
        "type" : {
          "items" : "string",
          "type" : "array"
        }
      }, {
        "id" : "align_bam",
        "type" : {
          "items" : "File",
          "type" : "array"
        },
        "secondaryFiles" : [ ".bai" ]
      }, {
        "id" : "config__algorithm__callable_regions",
        "type" : {
          "items" : "File",
          "type" : "array"
        }
      }, {
        "id" : "metadata__batch",
        "type" : {
          "items" : "null",
          "type" : "array"
        }
      }, {
        "id" : "metadata__phenotype",
        "type" : {
          "items" : "string",
          "type" : "array"
        }
      }, {
        "id" : "regions__callable",
        "type" : {
          "items" : "File",
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__variantcaller",
        "type" : {
          "items" : {
            "items" : "string",
            "type" : "array"
          },
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__coverage_interval",
        "type" : {
          "items" : "string",
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__variant_regions",
        "type" : {
          "items" : "File",
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__validate",
        "type" : {
          "items" : "null",
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__validate_regions",
        "type" : {
          "items" : "null",
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__tools_on",
        "type" : {
          "items" : {
            "items" : "null",
            "type" : "array"
          },
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__tools_off",
        "type" : {
          "items" : {
            "items" : "string",
            "type" : "array"
          },
          "type" : "array"
        }
      }, {
        "id" : "reference__fasta__base",
        "type" : {
          "items" : "File",
          "type" : "array"
        }
      }, {
        "id" : "reference__rtg",
        "type" : {
          "items" : "File",
          "type" : "array"
        }
      }, {
        "id" : "reference__genome_context",
        "type" : {
          "items" : {
            "items" : "null",
            "type" : "array"
          },
          "type" : "array"
        }
      }, {
        "id" : "genome_resources__variation__cosmic",
        "type" : {
          "items" : "null",
          "type" : "array"
        }
      }, {
        "id" : "genome_resources__variation__dbsnp",
        "type" : {
          "items" : "File",
          "type" : "array"
        }
      }, {
        "id" : "description",
        "type" : {
          "items" : "string",
          "type" : "array"
        }
      } ],
      "outputs" : [ {
        "id" : "batch_rec",
        "type" : {
          "items" : {
            "items" : {
              "fields" : [ {
                "name" : "description",
                "type" : "string"
              }, {
                "name" : "config__algorithm__validate",
                "type" : "null"
              }, {
                "name" : "reference__fasta__base",
                "type" : "File"
              }, {
                "name" : "config__algorithm__variantcaller",
                "type" : "string"
              }, {
                "name" : "config__algorithm__coverage_interval",
                "type" : "string"
              }, {
                "name" : "metadata__batch",
                "type" : "null"
              }, {
                "name" : "config__algorithm__validate_regions",
                "type" : "null"
              }, {
                "name" : "genome_build",
                "type" : "string"
              }, {
                "name" : "reference__rtg",
                "type" : "File"
              }, {
                "name" : "metadata__phenotype",
                "type" : "string"
              }, {
                "name" : "config__algorithm__tools_off",
                "type" : {
                  "items" : "string",
                  "type" : "array"
                }
              }, {
                "name" : "genome_resources__variation__dbsnp",
                "type" : "File"
              }, {
                "name" : "genome_resources__variation__cosmic",
                "type" : "null"
              }, {
                "name" : "reference__genome_context",
                "type" : {
                  "items" : "null",
                  "type" : "array"
                }
              }, {
                "name" : "analysis",
                "type" : "string"
              }, {
                "name" : "config__algorithm__tools_on",
                "type" : {
                  "items" : "null",
                  "type" : "array"
                }
              }, {
                "name" : "config__algorithm__variant_regions",
                "type" : "File"
              }, {
                "name" : "align_bam",
                "type" : "File"
              }, {
                "name" : "regions__callable",
                "type" : "File"
              }, {
                "name" : "config__algorithm__callable_regions",
                "type" : "File"
              } ],
              "name" : "batch_rec",
              "type" : "record"
            },
            "type" : "array"
          },
          "type" : "array"
        }
      } ],
      "hints" : [ {
        "class" : "DockerRequirement",
        "dockerPull" : "quay.io/bcbio/bcbio-base",
        "dockerImageId" : "quay.io/bcbio/bcbio-base"
      }, {
        "class" : "ResourceRequirement",
        "ramMin" : 3072,
        "outdirMin" : 1024,
        "coresMin" : 1
      } ],
      "requirements" : [ {
        "class" : "InlineJavascriptRequirement"
      }, {
        "class" : "InitialWorkDirRequirement",
        "listing" : [ {
          "entry" : "$(JSON.stringify(inputs))",
          "entryname" : "cwl.inputs.json"
        } ]
      } ],
      "successCodes" : [ ],
      "baseCommand" : [ "bcbio_nextgen.py", "runfn", "batch_for_variantcall", "cwl" ],
      "arguments" : [ {
        "position" : 0,
        "valueFrom" : "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
      } ],
      "class" : "CommandLineTool"
    },
    "scatter" : null,
    "scatterMethod" : null,
    "in" : [ {
      "id" : "analysis",
      "source" : "analysis"
    }, {
      "id" : "genome_build",
      "source" : "genome_build"
    }, {
      "id" : "align_bam",
      "source" : "alignment/align_bam"
    }, {
      "id" : "config__algorithm__callable_regions",
      "source" : "combine_sample_regions/config__algorithm__callable_regions"
    }, {
      "id" : "metadata__batch",
      "source" : "metadata__batch"
    }, {
      "id" : "metadata__phenotype",
      "source" : "metadata__phenotype"
    }, {
      "id" : "regions__callable",
      "source" : "postprocess_alignment/regions__callable"
    }, {
      "id" : "config__algorithm__variantcaller",
      "source" : "config__algorithm__variantcaller"
    }, {
      "id" : "config__algorithm__coverage_interval",
      "source" : "postprocess_alignment/config__algorithm__coverage_interval"
    }, {
      "id" : "config__algorithm__variant_regions",
      "source" : "postprocess_alignment/config__algorithm__variant_regions"
    }, {
      "id" : "config__algorithm__validate",
      "source" : "config__algorithm__validate"
    }, {
      "id" : "config__algorithm__validate_regions",
      "source" : "config__algorithm__validate_regions"
    }, {
      "id" : "config__algorithm__tools_on",
      "source" : "config__algorithm__tools_on"
    }, {
      "id" : "config__algorithm__tools_off",
      "source" : "config__algorithm__tools_off"
    }, {
      "id" : "reference__fasta__base",
      "source" : "reference__fasta__base"
    }, {
      "id" : "reference__rtg",
      "source" : "reference__rtg"
    }, {
      "id" : "reference__genome_context",
      "source" : "reference__genome_context"
    }, {
      "id" : "genome_resources__variation__cosmic",
      "source" : "genome_resources__variation__cosmic"
    }, {
      "id" : "genome_resources__variation__dbsnp",
      "source" : "genome_resources__variation__dbsnp"
    }, {
      "id" : "description",
      "source" : "description"
    } ],
    "out" : [ {
      "id" : "batch_rec"
    } ],
    "hints" : [ ],
    "requirements" : [ ]
  }, {
    "id" : "variantcall",
    "run" : {
      "cwlVersion" : "v1.0",
      "inputs" : [ {
        "id" : "batch_rec",
        "type" : {
          "items" : {
            "fields" : [ {
              "name" : "description",
              "type" : "string"
            }, {
              "name" : "config__algorithm__validate",
              "type" : "null"
            }, {
              "name" : "reference__fasta__base",
              "type" : "File"
            }, {
              "name" : "config__algorithm__variantcaller",
              "type" : "string"
            }, {
              "name" : "config__algorithm__coverage_interval",
              "type" : "string"
            }, {
              "name" : "metadata__batch",
              "type" : "null"
            }, {
              "name" : "config__algorithm__validate_regions",
              "type" : "null"
            }, {
              "name" : "genome_build",
              "type" : "string"
            }, {
              "name" : "reference__rtg",
              "type" : "File"
            }, {
              "name" : "metadata__phenotype",
              "type" : "string"
            }, {
              "name" : "config__algorithm__tools_off",
              "type" : {
                "items" : "string",
                "type" : "array"
              }
            }, {
              "name" : "genome_resources__variation__dbsnp",
              "type" : "File"
            }, {
              "name" : "genome_resources__variation__cosmic",
              "type" : "null"
            }, {
              "name" : "reference__genome_context",
              "type" : {
                "items" : "null",
                "type" : "array"
              }
            }, {
              "name" : "analysis",
              "type" : "string"
            }, {
              "name" : "config__algorithm__tools_on",
              "type" : {
                "items" : "null",
                "type" : "array"
              }
            }, {
              "name" : "config__algorithm__variant_regions",
              "type" : "File"
            }, {
              "name" : "align_bam",
              "type" : "File"
            }, {
              "name" : "regions__callable",
              "type" : "File"
            }, {
              "name" : "config__algorithm__callable_regions",
              "type" : "File"
            } ],
            "name" : "batch_rec",
            "type" : "record"
          },
          "type" : "array"
        }
      } ],
      "outputs" : [ {
        "id" : "vc_rec",
        "type" : {
          "items" : {
            "fields" : [ {
              "name" : "validate__summary",
              "type" : [ "File", "null" ]
            }, {
              "name" : "validate__tp",
              "type" : [ "File", "null" ]
            }, {
              "name" : "validate__fp",
              "type" : [ "File", "null" ]
            }, {
              "name" : "validate__fn",
              "type" : [ "File", "null" ]
            }, {
              "name" : "description",
              "type" : "string"
            }, {
              "name" : "vrn_file",
              "type" : "File"
            }, {
              "name" : "config__algorithm__validate",
              "type" : "null"
            }, {
              "name" : "reference__fasta__base",
              "type" : "File"
            }, {
              "name" : "config__algorithm__variantcaller",
              "type" : "string"
            }, {
              "name" : "config__algorithm__coverage_interval",
              "type" : "string"
            }, {
              "name" : "metadata__batch",
              "type" : "null"
            }, {
              "name" : "config__algorithm__validate_regions",
              "type" : "null"
            }, {
              "name" : "genome_build",
              "type" : "string"
            }, {
              "name" : "reference__rtg",
              "type" : "File"
            }, {
              "name" : "metadata__phenotype",
              "type" : "string"
            }, {
              "name" : "config__algorithm__tools_off",
              "type" : {
                "items" : "string",
                "type" : "array"
              }
            }, {
              "name" : "genome_resources__variation__dbsnp",
              "type" : "File"
            }, {
              "name" : "genome_resources__variation__cosmic",
              "type" : "null"
            }, {
              "name" : "reference__genome_context",
              "type" : {
                "items" : "null",
                "type" : "array"
              }
            }, {
              "name" : "analysis",
              "type" : "string"
            }, {
              "name" : "config__algorithm__tools_on",
              "type" : {
                "items" : "null",
                "type" : "array"
              }
            }, {
              "name" : "config__algorithm__variant_regions",
              "type" : "File"
            }, {
              "name" : "align_bam",
              "type" : "File"
            }, {
              "name" : "regions__callable",
              "type" : "File"
            }, {
              "name" : "config__algorithm__callable_regions",
              "type" : "File"
            } ],
            "name" : "vc_rec",
            "type" : "record"
          },
          "type" : "array"
        },
        "outputSource" : "compare_to_rm/vc_rec"
      } ],
      "hints" : [ ],
      "requirements" : [ {
        "class" : "EnvVarRequirement",
        "envDef" : [ {
          "envName" : "MPLCONFIGDIR",
          "envValue" : "."
        } ]
      }, {
        "class" : "ScatterFeatureRequirement"
      }, {
        "class" : "SubworkflowFeatureRequirement"
      } ],
      "successCodes" : [ ],
      "steps" : [ {
        "id" : "get_parallel_regions",
        "run" : {
          "cwlVersion" : "v1.0",
          "inputs" : [ {
            "id" : "sentinel_parallel",
            "default" : "batch-split",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 0,
              "prefix" : "sentinel_parallel=",
              "separate" : false
            }
          }, {
            "id" : "sentinel_outputs",
            "default" : "region",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 1,
              "prefix" : "sentinel_outputs=",
              "separate" : false
            }
          }, {
            "id" : "sentinel_inputs",
            "default" : "batch_rec:record",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 2,
              "prefix" : "sentinel_inputs=",
              "separate" : false
            }
          }, {
            "id" : "batch_rec",
            "type" : {
              "items" : {
                "fields" : [ {
                  "name" : "description",
                  "type" : "string"
                }, {
                  "name" : "config__algorithm__validate",
                  "type" : "null"
                }, {
                  "name" : "reference__fasta__base",
                  "type" : "File"
                }, {
                  "name" : "config__algorithm__variantcaller",
                  "type" : "string"
                }, {
                  "name" : "config__algorithm__coverage_interval",
                  "type" : "string"
                }, {
                  "name" : "metadata__batch",
                  "type" : "null"
                }, {
                  "name" : "config__algorithm__validate_regions",
                  "type" : "null"
                }, {
                  "name" : "genome_build",
                  "type" : "string"
                }, {
                  "name" : "reference__rtg",
                  "type" : "File"
                }, {
                  "name" : "metadata__phenotype",
                  "type" : "string"
                }, {
                  "name" : "config__algorithm__tools_off",
                  "type" : {
                    "items" : "string",
                    "type" : "array"
                  }
                }, {
                  "name" : "genome_resources__variation__dbsnp",
                  "type" : "File"
                }, {
                  "name" : "genome_resources__variation__cosmic",
                  "type" : "null"
                }, {
                  "name" : "reference__genome_context",
                  "type" : {
                    "items" : "null",
                    "type" : "array"
                  }
                }, {
                  "name" : "analysis",
                  "type" : "string"
                }, {
                  "name" : "config__algorithm__tools_on",
                  "type" : {
                    "items" : "null",
                    "type" : "array"
                  }
                }, {
                  "name" : "config__algorithm__variant_regions",
                  "type" : "File"
                }, {
                  "name" : "align_bam",
                  "type" : "File"
                }, {
                  "name" : "regions__callable",
                  "type" : "File"
                }, {
                  "name" : "config__algorithm__callable_regions",
                  "type" : "File"
                } ],
                "name" : "batch_rec",
                "type" : "record"
              },
              "type" : "array"
            }
          } ],
          "outputs" : [ {
            "id" : "region",
            "type" : {
              "items" : "string",
              "type" : "array"
            }
          } ],
          "hints" : [ {
            "class" : "DockerRequirement",
            "dockerPull" : "quay.io/bcbio/bcbio-base",
            "dockerImageId" : "quay.io/bcbio/bcbio-base"
          }, {
            "class" : "ResourceRequirement",
            "ramMin" : 3072,
            "outdirMin" : 1024,
            "coresMin" : 1
          } ],
          "requirements" : [ {
            "class" : "InlineJavascriptRequirement"
          }, {
            "class" : "InitialWorkDirRequirement",
            "listing" : [ {
              "entry" : "$(JSON.stringify(inputs))",
              "entryname" : "cwl.inputs.json"
            } ]
          } ],
          "successCodes" : [ ],
          "baseCommand" : [ "bcbio_nextgen.py", "runfn", "get_parallel_regions", "cwl" ],
          "arguments" : [ {
            "position" : 0,
            "valueFrom" : "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
          } ],
          "class" : "CommandLineTool"
        },
        "scatter" : null,
        "scatterMethod" : null,
        "in" : [ {
          "id" : "batch_rec",
          "source" : "batch_rec"
        } ],
        "out" : [ {
          "id" : "region"
        } ],
        "hints" : [ ],
        "requirements" : [ ]
      }, {
        "id" : "variantcall_batch_region",
        "run" : {
          "cwlVersion" : "v1.0",
          "inputs" : [ {
            "id" : "sentinel_parallel",
            "default" : "batch-parallel",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 0,
              "prefix" : "sentinel_parallel=",
              "separate" : false
            }
          }, {
            "id" : "sentinel_outputs",
            "default" : "vrn_file_region,region",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 1,
              "prefix" : "sentinel_outputs=",
              "separate" : false
            }
          }, {
            "id" : "sentinel_inputs",
            "default" : "batch_rec:record,region:var",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 2,
              "prefix" : "sentinel_inputs=",
              "separate" : false
            }
          }, {
            "id" : "batch_rec",
            "type" : {
              "items" : {
                "fields" : [ {
                  "name" : "description",
                  "type" : "string"
                }, {
                  "name" : "config__algorithm__validate",
                  "type" : "null"
                }, {
                  "name" : "reference__fasta__base",
                  "type" : "File"
                }, {
                  "name" : "config__algorithm__variantcaller",
                  "type" : "string"
                }, {
                  "name" : "config__algorithm__coverage_interval",
                  "type" : "string"
                }, {
                  "name" : "metadata__batch",
                  "type" : "null"
                }, {
                  "name" : "config__algorithm__validate_regions",
                  "type" : "null"
                }, {
                  "name" : "genome_build",
                  "type" : "string"
                }, {
                  "name" : "reference__rtg",
                  "type" : "File"
                }, {
                  "name" : "metadata__phenotype",
                  "type" : "string"
                }, {
                  "name" : "config__algorithm__tools_off",
                  "type" : {
                    "items" : "string",
                    "type" : "array"
                  }
                }, {
                  "name" : "genome_resources__variation__dbsnp",
                  "type" : "File"
                }, {
                  "name" : "genome_resources__variation__cosmic",
                  "type" : "null"
                }, {
                  "name" : "reference__genome_context",
                  "type" : {
                    "items" : "null",
                    "type" : "array"
                  }
                }, {
                  "name" : "analysis",
                  "type" : "string"
                }, {
                  "name" : "config__algorithm__tools_on",
                  "type" : {
                    "items" : "null",
                    "type" : "array"
                  }
                }, {
                  "name" : "config__algorithm__variant_regions",
                  "type" : "File"
                }, {
                  "name" : "align_bam",
                  "type" : "File"
                }, {
                  "name" : "regions__callable",
                  "type" : "File"
                }, {
                  "name" : "config__algorithm__callable_regions",
                  "type" : "File"
                } ],
                "name" : "batch_rec",
                "type" : "record"
              },
              "type" : "array"
            }
          }, {
            "id" : "region_toolinput",
            "type" : "string"
          } ],
          "outputs" : [ {
            "id" : "vrn_file_region",
            "type" : "File",
            "secondaryFiles" : [ ".tbi" ]
          }, {
            "id" : "region",
            "type" : "string"
          } ],
          "hints" : [ {
            "class" : "DockerRequirement",
            "dockerPull" : "quay.io/bcbio/bcbio-vc",
            "dockerImageId" : "quay.io/bcbio/bcbio-vc"
          }, {
            "class" : "ResourceRequirement",
            "ramMin" : 3072,
            "outdirMin" : 1024,
            "coresMin" : 1
          }, {
            "class" : "SoftwareRequirement",
            "packages" : [ {
              "package" : "bcftools",
              "specs" : [ "https://anaconda.org/bioconda/bcftools" ]
            }, {
              "package" : "bedtools",
              "specs" : [ "https://anaconda.org/bioconda/bedtools" ]
            }, {
              "package" : "freebayes",
              "specs" : [ "https://anaconda.org/bioconda/freebayes" ],
              "version" : [ "1.1.0" ]
            }, {
              "package" : "gatk",
              "specs" : [ "https://anaconda.org/bioconda/gatk" ]
            }, {
              "package" : "gatk-framework",
              "specs" : [ "https://anaconda.org/bioconda/gatk-framework" ]
            }, {
              "package" : "htslib",
              "specs" : [ "https://anaconda.org/bioconda/htslib" ]
            }, {
              "package" : "picard",
              "specs" : [ "https://anaconda.org/bioconda/picard" ]
            }, {
              "package" : "platypus-variant",
              "specs" : [ "https://anaconda.org/bioconda/platypus-variant" ]
            }, {
              "package" : "pythonpy",
              "specs" : [ "https://anaconda.org/bioconda/pythonpy" ]
            }, {
              "package" : "samtools",
              "specs" : [ "https://anaconda.org/bioconda/samtools" ]
            }, {
              "package" : "vardict",
              "specs" : [ "https://anaconda.org/bioconda/vardict" ]
            }, {
              "package" : "vardict-java",
              "specs" : [ "https://anaconda.org/bioconda/vardict-java" ]
            }, {
              "package" : "varscan",
              "specs" : [ "https://anaconda.org/bioconda/varscan" ]
            }, {
              "package" : "vcfanno",
              "specs" : [ "https://anaconda.org/bioconda/vcfanno" ]
            }, {
              "package" : "vcflib",
              "specs" : [ "https://anaconda.org/bioconda/vcflib" ]
            }, {
              "package" : "vt",
              "specs" : [ "https://anaconda.org/bioconda/vt" ]
            }, {
              "package" : "r",
              "specs" : [ "https://anaconda.org/bioconda/r" ],
              "version" : [ "3.2.2" ]
            }, {
              "package" : "perl",
              "specs" : [ "https://anaconda.org/bioconda/perl" ]
            } ]
          } ],
          "requirements" : [ {
            "class" : "InlineJavascriptRequirement"
          }, {
            "class" : "InitialWorkDirRequirement",
            "listing" : [ {
              "entry" : "$(JSON.stringify(inputs))",
              "entryname" : "cwl.inputs.json"
            } ]
          } ],
          "successCodes" : [ ],
          "baseCommand" : [ "bcbio_nextgen.py", "runfn", "variantcall_batch_region", "cwl" ],
          "arguments" : [ {
            "position" : 0,
            "valueFrom" : "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
          } ],
          "class" : "CommandLineTool"
        },
        "scatter" : [ "region_toolinput" ],
        "scatterMethod" : "dotproduct",
        "in" : [ {
          "id" : "batch_rec",
          "source" : "batch_rec"
        }, {
          "id" : "region_toolinput",
          "source" : "get_parallel_regions/region"
        } ],
        "out" : [ {
          "id" : "vrn_file_region"
        }, {
          "id" : "region"
        } ],
        "hints" : [ ],
        "requirements" : [ ]
      }, {
        "id" : "concat_batch_variantcalls",
        "run" : {
          "cwlVersion" : "v1.0",
          "inputs" : [ {
            "id" : "sentinel_parallel",
            "default" : "batch-merge",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 0,
              "prefix" : "sentinel_parallel=",
              "separate" : false
            }
          }, {
            "id" : "sentinel_outputs",
            "default" : "vrn_file",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 1,
              "prefix" : "sentinel_outputs=",
              "separate" : false
            }
          }, {
            "id" : "sentinel_inputs",
            "default" : "batch_rec:record,region:var,vrn_file_region:var",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 2,
              "prefix" : "sentinel_inputs=",
              "separate" : false
            }
          }, {
            "id" : "batch_rec",
            "type" : {
              "items" : {
                "fields" : [ {
                  "name" : "description",
                  "type" : "string"
                }, {
                  "name" : "config__algorithm__validate",
                  "type" : "null"
                }, {
                  "name" : "reference__fasta__base",
                  "type" : "File"
                }, {
                  "name" : "config__algorithm__variantcaller",
                  "type" : "string"
                }, {
                  "name" : "config__algorithm__coverage_interval",
                  "type" : "string"
                }, {
                  "name" : "metadata__batch",
                  "type" : "null"
                }, {
                  "name" : "config__algorithm__validate_regions",
                  "type" : "null"
                }, {
                  "name" : "genome_build",
                  "type" : "string"
                }, {
                  "name" : "reference__rtg",
                  "type" : "File"
                }, {
                  "name" : "metadata__phenotype",
                  "type" : "string"
                }, {
                  "name" : "config__algorithm__tools_off",
                  "type" : {
                    "items" : "string",
                    "type" : "array"
                  }
                }, {
                  "name" : "genome_resources__variation__dbsnp",
                  "type" : "File"
                }, {
                  "name" : "genome_resources__variation__cosmic",
                  "type" : "null"
                }, {
                  "name" : "reference__genome_context",
                  "type" : {
                    "items" : "null",
                    "type" : "array"
                  }
                }, {
                  "name" : "analysis",
                  "type" : "string"
                }, {
                  "name" : "config__algorithm__tools_on",
                  "type" : {
                    "items" : "null",
                    "type" : "array"
                  }
                }, {
                  "name" : "config__algorithm__variant_regions",
                  "type" : "File"
                }, {
                  "name" : "align_bam",
                  "type" : "File"
                }, {
                  "name" : "regions__callable",
                  "type" : "File"
                }, {
                  "name" : "config__algorithm__callable_regions",
                  "type" : "File"
                } ],
                "name" : "batch_rec",
                "type" : "record"
              },
              "type" : "array"
            }
          }, {
            "id" : "region",
            "type" : {
              "items" : "string",
              "type" : "array"
            }
          }, {
            "id" : "vrn_file_region",
            "type" : {
              "items" : "File",
              "type" : "array"
            },
            "secondaryFiles" : [ ".tbi" ]
          } ],
          "outputs" : [ {
            "id" : "vrn_file",
            "type" : "File",
            "secondaryFiles" : [ ".tbi" ]
          } ],
          "hints" : [ {
            "class" : "DockerRequirement",
            "dockerPull" : "quay.io/bcbio/bcbio-vc",
            "dockerImageId" : "quay.io/bcbio/bcbio-vc"
          }, {
            "class" : "ResourceRequirement",
            "ramMin" : 3072,
            "outdirMin" : 1024,
            "coresMin" : 1
          }, {
            "class" : "SoftwareRequirement",
            "packages" : [ {
              "package" : "bcftools",
              "specs" : [ "https://anaconda.org/bioconda/bcftools" ]
            }, {
              "package" : "htslib",
              "specs" : [ "https://anaconda.org/bioconda/htslib" ]
            } ]
          } ],
          "requirements" : [ {
            "class" : "InlineJavascriptRequirement"
          }, {
            "class" : "InitialWorkDirRequirement",
            "listing" : [ {
              "entry" : "$(JSON.stringify(inputs))",
              "entryname" : "cwl.inputs.json"
            } ]
          } ],
          "successCodes" : [ ],
          "baseCommand" : [ "bcbio_nextgen.py", "runfn", "concat_batch_variantcalls", "cwl" ],
          "arguments" : [ {
            "position" : 0,
            "valueFrom" : "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
          } ],
          "class" : "CommandLineTool"
        },
        "scatter" : null,
        "scatterMethod" : null,
        "in" : [ {
          "id" : "batch_rec",
          "source" : "batch_rec"
        }, {
          "id" : "region",
          "source" : "variantcall_batch_region/region"
        }, {
          "id" : "vrn_file_region",
          "source" : "variantcall_batch_region/vrn_file_region"
        } ],
        "out" : [ {
          "id" : "vrn_file"
        } ],
        "hints" : [ ],
        "requirements" : [ ]
      }, {
        "id" : "postprocess_variants",
        "run" : {
          "cwlVersion" : "v1.0",
          "inputs" : [ {
            "id" : "sentinel_parallel",
            "default" : "batch-single",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 0,
              "prefix" : "sentinel_parallel=",
              "separate" : false
            }
          }, {
            "id" : "sentinel_outputs",
            "default" : "vrn_file",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 1,
              "prefix" : "sentinel_outputs=",
              "separate" : false
            }
          }, {
            "id" : "sentinel_inputs",
            "default" : "batch_rec:record,vrn_file:var",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 2,
              "prefix" : "sentinel_inputs=",
              "separate" : false
            }
          }, {
            "id" : "batch_rec",
            "type" : {
              "items" : {
                "fields" : [ {
                  "name" : "description",
                  "type" : "string"
                }, {
                  "name" : "config__algorithm__validate",
                  "type" : "null"
                }, {
                  "name" : "reference__fasta__base",
                  "type" : "File"
                }, {
                  "name" : "config__algorithm__variantcaller",
                  "type" : "string"
                }, {
                  "name" : "config__algorithm__coverage_interval",
                  "type" : "string"
                }, {
                  "name" : "metadata__batch",
                  "type" : "null"
                }, {
                  "name" : "config__algorithm__validate_regions",
                  "type" : "null"
                }, {
                  "name" : "genome_build",
                  "type" : "string"
                }, {
                  "name" : "reference__rtg",
                  "type" : "File"
                }, {
                  "name" : "metadata__phenotype",
                  "type" : "string"
                }, {
                  "name" : "config__algorithm__tools_off",
                  "type" : {
                    "items" : "string",
                    "type" : "array"
                  }
                }, {
                  "name" : "genome_resources__variation__dbsnp",
                  "type" : "File"
                }, {
                  "name" : "genome_resources__variation__cosmic",
                  "type" : "null"
                }, {
                  "name" : "reference__genome_context",
                  "type" : {
                    "items" : "null",
                    "type" : "array"
                  }
                }, {
                  "name" : "analysis",
                  "type" : "string"
                }, {
                  "name" : "config__algorithm__tools_on",
                  "type" : {
                    "items" : "null",
                    "type" : "array"
                  }
                }, {
                  "name" : "config__algorithm__variant_regions",
                  "type" : "File"
                }, {
                  "name" : "align_bam",
                  "type" : "File"
                }, {
                  "name" : "regions__callable",
                  "type" : "File"
                }, {
                  "name" : "config__algorithm__callable_regions",
                  "type" : "File"
                } ],
                "name" : "batch_rec",
                "type" : "record"
              },
              "type" : "array"
            }
          }, {
            "id" : "vrn_file_toolinput",
            "type" : "File",
            "secondaryFiles" : [ ".tbi" ]
          } ],
          "outputs" : [ {
            "id" : "vrn_file",
            "type" : "File",
            "secondaryFiles" : [ ".tbi" ]
          } ],
          "hints" : [ {
            "class" : "DockerRequirement",
            "dockerPull" : "quay.io/bcbio/bcbio-vc",
            "dockerImageId" : "quay.io/bcbio/bcbio-vc"
          }, {
            "class" : "ResourceRequirement",
            "ramMin" : 24576,
            "outdirMin" : 1024,
            "coresMin" : 8
          }, {
            "class" : "SoftwareRequirement",
            "packages" : [ {
              "package" : "snpeff",
              "specs" : [ "https://anaconda.org/bioconda/snpeff" ],
              "version" : [ "4.3i" ]
            } ]
          } ],
          "requirements" : [ {
            "class" : "InlineJavascriptRequirement"
          }, {
            "class" : "InitialWorkDirRequirement",
            "listing" : [ {
              "entry" : "$(JSON.stringify(inputs))",
              "entryname" : "cwl.inputs.json"
            } ]
          } ],
          "successCodes" : [ ],
          "baseCommand" : [ "bcbio_nextgen.py", "runfn", "postprocess_variants", "cwl" ],
          "arguments" : [ {
            "position" : 0,
            "valueFrom" : "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
          } ],
          "class" : "CommandLineTool"
        },
        "scatter" : null,
        "scatterMethod" : null,
        "in" : [ {
          "id" : "batch_rec",
          "source" : "batch_rec"
        }, {
          "id" : "vrn_file_toolinput",
          "source" : "concat_batch_variantcalls/vrn_file"
        } ],
        "out" : [ {
          "id" : "vrn_file"
        } ],
        "hints" : [ ],
        "requirements" : [ ]
      }, {
        "id" : "compare_to_rm",
        "run" : {
          "cwlVersion" : "v1.0",
          "inputs" : [ {
            "id" : "sentinel_parallel",
            "default" : "batch-single",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 0,
              "prefix" : "sentinel_parallel=",
              "separate" : false
            }
          }, {
            "id" : "sentinel_outputs",
            "default" : "vc_rec:validate__summary;validate__tp;validate__fp;validate__fn;description;vrn_file;config__algorithm__validate;reference__fasta__base;config__algorithm__variantcaller;config__algorithm__coverage_interval;metadata__batch;config__algorithm__validate_regions;genome_build;reference__rtg;metadata__phenotype;config__algorithm__tools_off;genome_resources__variation__dbsnp;genome_resources__variation__cosmic;reference__genome_context;analysis;config__algorithm__tools_on;config__algorithm__variant_regions;align_bam;regions__callable;config__algorithm__callable_regions",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 1,
              "prefix" : "sentinel_outputs=",
              "separate" : false
            }
          }, {
            "id" : "sentinel_inputs",
            "default" : "batch_rec:record,vrn_file:var",
            "type" : "string",
            "inputBinding" : {
              "itemSeparator" : ";;",
              "position" : 2,
              "prefix" : "sentinel_inputs=",
              "separate" : false
            }
          }, {
            "id" : "batch_rec",
            "type" : {
              "items" : {
                "fields" : [ {
                  "name" : "description",
                  "type" : "string"
                }, {
                  "name" : "config__algorithm__validate",
                  "type" : "null"
                }, {
                  "name" : "reference__fasta__base",
                  "type" : "File"
                }, {
                  "name" : "config__algorithm__variantcaller",
                  "type" : "string"
                }, {
                  "name" : "config__algorithm__coverage_interval",
                  "type" : "string"
                }, {
                  "name" : "metadata__batch",
                  "type" : "null"
                }, {
                  "name" : "config__algorithm__validate_regions",
                  "type" : "null"
                }, {
                  "name" : "genome_build",
                  "type" : "string"
                }, {
                  "name" : "reference__rtg",
                  "type" : "File"
                }, {
                  "name" : "metadata__phenotype",
                  "type" : "string"
                }, {
                  "name" : "config__algorithm__tools_off",
                  "type" : {
                    "items" : "string",
                    "type" : "array"
                  }
                }, {
                  "name" : "genome_resources__variation__dbsnp",
                  "type" : "File"
                }, {
                  "name" : "genome_resources__variation__cosmic",
                  "type" : "null"
                }, {
                  "name" : "reference__genome_context",
                  "type" : {
                    "items" : "null",
                    "type" : "array"
                  }
                }, {
                  "name" : "analysis",
                  "type" : "string"
                }, {
                  "name" : "config__algorithm__tools_on",
                  "type" : {
                    "items" : "null",
                    "type" : "array"
                  }
                }, {
                  "name" : "config__algorithm__variant_regions",
                  "type" : "File"
                }, {
                  "name" : "align_bam",
                  "type" : "File"
                }, {
                  "name" : "regions__callable",
                  "type" : "File"
                }, {
                  "name" : "config__algorithm__callable_regions",
                  "type" : "File"
                } ],
                "name" : "batch_rec",
                "type" : "record"
              },
              "type" : "array"
            }
          }, {
            "id" : "vrn_file",
            "type" : "File",
            "secondaryFiles" : [ ".tbi" ]
          } ],
          "outputs" : [ {
            "id" : "vc_rec",
            "type" : {
              "items" : {
                "fields" : [ {
                  "name" : "validate__summary",
                  "type" : [ "File", "null" ]
                }, {
                  "name" : "validate__tp",
                  "type" : [ "File", "null" ]
                }, {
                  "name" : "validate__fp",
                  "type" : [ "File", "null" ]
                }, {
                  "name" : "validate__fn",
                  "type" : [ "File", "null" ]
                }, {
                  "name" : "description",
                  "type" : "string"
                }, {
                  "name" : "vrn_file",
                  "type" : "File"
                }, {
                  "name" : "config__algorithm__validate",
                  "type" : "null"
                }, {
                  "name" : "reference__fasta__base",
                  "type" : "File"
                }, {
                  "name" : "config__algorithm__variantcaller",
                  "type" : "string"
                }, {
                  "name" : "config__algorithm__coverage_interval",
                  "type" : "string"
                }, {
                  "name" : "metadata__batch",
                  "type" : "null"
                }, {
                  "name" : "config__algorithm__validate_regions",
                  "type" : "null"
                }, {
                  "name" : "genome_build",
                  "type" : "string"
                }, {
                  "name" : "reference__rtg",
                  "type" : "File"
                }, {
                  "name" : "metadata__phenotype",
                  "type" : "string"
                }, {
                  "name" : "config__algorithm__tools_off",
                  "type" : {
                    "items" : "string",
                    "type" : "array"
                  }
                }, {
                  "name" : "genome_resources__variation__dbsnp",
                  "type" : "File"
                }, {
                  "name" : "genome_resources__variation__cosmic",
                  "type" : "null"
                }, {
                  "name" : "reference__genome_context",
                  "type" : {
                    "items" : "null",
                    "type" : "array"
                  }
                }, {
                  "name" : "analysis",
                  "type" : "string"
                }, {
                  "name" : "config__algorithm__tools_on",
                  "type" : {
                    "items" : "null",
                    "type" : "array"
                  }
                }, {
                  "name" : "config__algorithm__variant_regions",
                  "type" : "File"
                }, {
                  "name" : "align_bam",
                  "type" : "File"
                }, {
                  "name" : "regions__callable",
                  "type" : "File"
                }, {
                  "name" : "config__algorithm__callable_regions",
                  "type" : "File"
                } ],
                "name" : "vc_rec",
                "type" : "record"
              },
              "type" : "array"
            }
          } ],
          "hints" : [ {
            "class" : "DockerRequirement",
            "dockerPull" : "quay.io/bcbio/bcbio-vc",
            "dockerImageId" : "quay.io/bcbio/bcbio-vc"
          }, {
            "class" : "ResourceRequirement",
            "ramMin" : 24576,
            "outdirMin" : 1024,
            "coresMin" : 8
          }, {
            "class" : "SoftwareRequirement",
            "packages" : [ {
              "package" : "bcftools",
              "specs" : [ "https://anaconda.org/bioconda/bcftools" ]
            }, {
              "package" : "bedtools",
              "specs" : [ "https://anaconda.org/bioconda/bedtools" ]
            }, {
              "package" : "pythonpy",
              "specs" : [ "https://anaconda.org/bioconda/pythonpy" ]
            }, {
              "package" : "gvcf-regions",
              "specs" : [ "https://anaconda.org/bioconda/gvcf-regions" ]
            }, {
              "package" : "htslib",
              "specs" : [ "https://anaconda.org/bioconda/htslib" ]
            }, {
              "package" : "rtg-tools",
              "specs" : [ "https://anaconda.org/bioconda/rtg-tools" ]
            }, {
              "package" : "vcfanno",
              "specs" : [ "https://anaconda.org/bioconda/vcfanno" ]
            } ]
          } ],
          "requirements" : [ {
            "class" : "InlineJavascriptRequirement"
          }, {
            "class" : "InitialWorkDirRequirement",
            "listing" : [ {
              "entry" : "$(JSON.stringify(inputs))",
              "entryname" : "cwl.inputs.json"
            } ]
          } ],
          "successCodes" : [ ],
          "baseCommand" : [ "bcbio_nextgen.py", "runfn", "compare_to_rm", "cwl" ],
          "arguments" : [ {
            "position" : 0,
            "valueFrom" : "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
          } ],
          "class" : "CommandLineTool"
        },
        "scatter" : null,
        "scatterMethod" : null,
        "in" : [ {
          "id" : "batch_rec",
          "source" : "batch_rec"
        }, {
          "id" : "vrn_file",
          "source" : "postprocess_variants/vrn_file"
        } ],
        "out" : [ {
          "id" : "vc_rec"
        } ],
        "hints" : [ ],
        "requirements" : [ ]
      } ],
      "class" : "Workflow"
    },
    "scatter" : [ "batch_rec" ],
    "scatterMethod" : "dotproduct",
    "in" : [ {
      "id" : "batch_rec",
      "source" : "batch_for_variantcall/batch_rec"
    } ],
    "out" : [ {
      "id" : "vc_rec"
    } ],
    "hints" : [ ],
    "requirements" : [ ]
  }, {
    "id" : "summarize_grading_vc",
    "run" : {
      "cwlVersion" : "v1.0",
      "inputs" : [ {
        "id" : "sentinel_parallel",
        "default" : "multi-combined",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 0,
          "prefix" : "sentinel_parallel=",
          "separate" : false
        }
      }, {
        "id" : "sentinel_outputs",
        "default" : "validate__grading_summary,validate__grading_plots",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 1,
          "prefix" : "sentinel_outputs=",
          "separate" : false
        }
      }, {
        "id" : "sentinel_inputs",
        "default" : "vc_rec:record",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 2,
          "prefix" : "sentinel_inputs=",
          "separate" : false
        }
      }, {
        "id" : "vc_rec",
        "type" : {
          "items" : {
            "items" : {
              "fields" : [ {
                "name" : "validate__summary",
                "type" : [ "File", "null" ]
              }, {
                "name" : "validate__tp",
                "type" : [ "File", "null" ]
              }, {
                "name" : "validate__fp",
                "type" : [ "File", "null" ]
              }, {
                "name" : "validate__fn",
                "type" : [ "File", "null" ]
              }, {
                "name" : "description",
                "type" : "string"
              }, {
                "name" : "vrn_file",
                "type" : "File"
              }, {
                "name" : "config__algorithm__validate",
                "type" : "null"
              }, {
                "name" : "reference__fasta__base",
                "type" : "File"
              }, {
                "name" : "config__algorithm__variantcaller",
                "type" : "string"
              }, {
                "name" : "config__algorithm__coverage_interval",
                "type" : "string"
              }, {
                "name" : "metadata__batch",
                "type" : "null"
              }, {
                "name" : "config__algorithm__validate_regions",
                "type" : "null"
              }, {
                "name" : "genome_build",
                "type" : "string"
              }, {
                "name" : "reference__rtg",
                "type" : "File"
              }, {
                "name" : "metadata__phenotype",
                "type" : "string"
              }, {
                "name" : "config__algorithm__tools_off",
                "type" : {
                  "items" : "string",
                  "type" : "array"
                }
              }, {
                "name" : "genome_resources__variation__dbsnp",
                "type" : "File"
              }, {
                "name" : "genome_resources__variation__cosmic",
                "type" : "null"
              }, {
                "name" : "reference__genome_context",
                "type" : {
                  "items" : "null",
                  "type" : "array"
                }
              }, {
                "name" : "analysis",
                "type" : "string"
              }, {
                "name" : "config__algorithm__tools_on",
                "type" : {
                  "items" : "null",
                  "type" : "array"
                }
              }, {
                "name" : "config__algorithm__variant_regions",
                "type" : "File"
              }, {
                "name" : "align_bam",
                "type" : "File"
              }, {
                "name" : "regions__callable",
                "type" : "File"
              }, {
                "name" : "config__algorithm__callable_regions",
                "type" : "File"
              } ],
              "name" : "vc_rec",
              "type" : "record"
            },
            "type" : "array"
          },
          "type" : "array"
        }
      } ],
      "outputs" : [ {
        "id" : "validate__grading_summary",
        "type" : {
          "items" : [ "File", "null" ],
          "type" : "array"
        }
      }, {
        "id" : "validate__grading_plots",
        "type" : {
          "items" : {
            "items" : [ "File", "null" ],
            "type" : "array"
          },
          "type" : "array"
        }
      } ],
      "hints" : [ {
        "class" : "DockerRequirement",
        "dockerPull" : "quay.io/bcbio/bcbio-base",
        "dockerImageId" : "quay.io/bcbio/bcbio-base"
      }, {
        "class" : "ResourceRequirement",
        "ramMin" : 3072,
        "outdirMin" : 1024,
        "coresMin" : 1
      } ],
      "requirements" : [ {
        "class" : "InlineJavascriptRequirement"
      }, {
        "class" : "InitialWorkDirRequirement",
        "listing" : [ {
          "entry" : "$(JSON.stringify(inputs))",
          "entryname" : "cwl.inputs.json"
        } ]
      } ],
      "successCodes" : [ ],
      "baseCommand" : [ "bcbio_nextgen.py", "runfn", "summarize_grading_vc", "cwl" ],
      "arguments" : [ {
        "position" : 0,
        "valueFrom" : "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
      } ],
      "class" : "CommandLineTool"
    },
    "scatter" : null,
    "scatterMethod" : null,
    "in" : [ {
      "id" : "vc_rec",
      "source" : "variantcall/vc_rec"
    } ],
    "out" : [ {
      "id" : "validate__grading_summary"
    }, {
      "id" : "validate__grading_plots"
    } ],
    "hints" : [ ],
    "requirements" : [ ]
  }, {
    "id" : "qc_to_rec",
    "run" : {
      "cwlVersion" : "v1.0",
      "inputs" : [ {
        "id" : "sentinel_parallel",
        "default" : "multi-combined",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 0,
          "prefix" : "sentinel_parallel=",
          "separate" : false
        }
      }, {
        "id" : "sentinel_outputs",
        "default" : "qc_rec:description;reference__fasta__base;config__algorithm__coverage_interval;genome_build;config__algorithm__tools_off;config__algorithm__qc;analysis;config__algorithm__tools_on;config__algorithm__variant_regions;align_bam;config__algorithm__variant_regions_merged;config__algorithm__coverage;config__algorithm__coverage_merged",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 1,
          "prefix" : "sentinel_outputs=",
          "separate" : false
        }
      }, {
        "id" : "sentinel_inputs",
        "default" : "align_bam:var,analysis:var,reference__fasta__base:var,genome_build:var,config__algorithm__coverage_interval:var,config__algorithm__tools_on:var,config__algorithm__tools_off:var,config__algorithm__qc:var,config__algorithm__variant_regions:var,config__algorithm__variant_regions_merged:var,config__algorithm__coverage:var,config__algorithm__coverage_merged:var,description:var",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 2,
          "prefix" : "sentinel_inputs=",
          "separate" : false
        }
      }, {
        "id" : "align_bam",
        "type" : {
          "items" : "File",
          "type" : "array"
        },
        "secondaryFiles" : [ ".bai" ]
      }, {
        "id" : "analysis",
        "type" : {
          "items" : "string",
          "type" : "array"
        }
      }, {
        "id" : "reference__fasta__base",
        "type" : {
          "items" : "File",
          "type" : "array"
        }
      }, {
        "id" : "genome_build",
        "type" : {
          "items" : "string",
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__coverage_interval",
        "type" : {
          "items" : "string",
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__tools_on",
        "type" : {
          "items" : {
            "items" : "null",
            "type" : "array"
          },
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__tools_off",
        "type" : {
          "items" : {
            "items" : "string",
            "type" : "array"
          },
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__qc",
        "type" : {
          "items" : {
            "items" : "string",
            "type" : "array"
          },
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__variant_regions",
        "type" : {
          "items" : "File",
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__variant_regions_merged",
        "type" : {
          "items" : "File",
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__coverage",
        "type" : {
          "items" : [ "File", "null" ],
          "type" : "array"
        }
      }, {
        "id" : "config__algorithm__coverage_merged",
        "type" : {
          "items" : [ "File", "null" ],
          "type" : "array"
        }
      }, {
        "id" : "description",
        "type" : {
          "items" : "string",
          "type" : "array"
        }
      } ],
      "outputs" : [ {
        "id" : "qc_rec",
        "type" : {
          "items" : {
            "fields" : [ {
              "name" : "description",
              "type" : "string"
            }, {
              "name" : "reference__fasta__base",
              "type" : "File"
            }, {
              "name" : "config__algorithm__coverage_interval",
              "type" : "string"
            }, {
              "name" : "genome_build",
              "type" : "string"
            }, {
              "name" : "config__algorithm__tools_off",
              "type" : {
                "items" : "string",
                "type" : "array"
              }
            }, {
              "name" : "config__algorithm__qc",
              "type" : {
                "items" : "string",
                "type" : "array"
              }
            }, {
              "name" : "analysis",
              "type" : "string"
            }, {
              "name" : "config__algorithm__tools_on",
              "type" : {
                "items" : "null",
                "type" : "array"
              }
            }, {
              "name" : "config__algorithm__variant_regions",
              "type" : "File"
            }, {
              "name" : "align_bam",
              "type" : "File"
            }, {
              "name" : "config__algorithm__variant_regions_merged",
              "type" : "File"
            }, {
              "name" : "config__algorithm__coverage",
              "type" : [ "File", "null" ]
            }, {
              "name" : "config__algorithm__coverage_merged",
              "type" : [ "File", "null" ]
            } ],
            "name" : "qc_rec",
            "type" : "record"
          },
          "type" : "array"
        }
      } ],
      "hints" : [ {
        "class" : "DockerRequirement",
        "dockerPull" : "quay.io/bcbio/bcbio-base",
        "dockerImageId" : "quay.io/bcbio/bcbio-base"
      }, {
        "class" : "ResourceRequirement",
        "ramMin" : 3072,
        "outdirMin" : 1024,
        "coresMin" : 1
      } ],
      "requirements" : [ {
        "class" : "InlineJavascriptRequirement"
      }, {
        "class" : "InitialWorkDirRequirement",
        "listing" : [ {
          "entry" : "$(JSON.stringify(inputs))",
          "entryname" : "cwl.inputs.json"
        } ]
      } ],
      "successCodes" : [ ],
      "baseCommand" : [ "bcbio_nextgen.py", "runfn", "qc_to_rec", "cwl" ],
      "arguments" : [ {
        "position" : 0,
        "valueFrom" : "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
      } ],
      "class" : "CommandLineTool"
    },
    "scatter" : null,
    "scatterMethod" : null,
    "in" : [ {
      "id" : "align_bam",
      "source" : "alignment/align_bam"
    }, {
      "id" : "analysis",
      "source" : "analysis"
    }, {
      "id" : "reference__fasta__base",
      "source" : "reference__fasta__base"
    }, {
      "id" : "genome_build",
      "source" : "genome_build"
    }, {
      "id" : "config__algorithm__coverage_interval",
      "source" : "postprocess_alignment/config__algorithm__coverage_interval"
    }, {
      "id" : "config__algorithm__tools_on",
      "source" : "config__algorithm__tools_on"
    }, {
      "id" : "config__algorithm__tools_off",
      "source" : "config__algorithm__tools_off"
    }, {
      "id" : "config__algorithm__qc",
      "source" : "config__algorithm__qc"
    }, {
      "id" : "config__algorithm__variant_regions",
      "source" : "postprocess_alignment/config__algorithm__variant_regions"
    }, {
      "id" : "config__algorithm__variant_regions_merged",
      "source" : "postprocess_alignment/config__algorithm__variant_regions_merged"
    }, {
      "id" : "config__algorithm__coverage",
      "source" : "postprocess_alignment/config__algorithm__coverage"
    }, {
      "id" : "config__algorithm__coverage_merged",
      "source" : "postprocess_alignment/config__algorithm__coverage_merged"
    }, {
      "id" : "description",
      "source" : "description"
    } ],
    "out" : [ {
      "id" : "qc_rec"
    } ],
    "hints" : [ ],
    "requirements" : [ ]
  }, {
    "id" : "pipeline_summary",
    "run" : {
      "cwlVersion" : "v1.0",
      "inputs" : [ {
        "id" : "sentinel_parallel",
        "default" : "multi-parallel",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 0,
          "prefix" : "sentinel_parallel=",
          "separate" : false
        }
      }, {
        "id" : "sentinel_outputs",
        "default" : "qcout_rec:summary__qc;summary__metrics;description;reference__fasta__base;config__algorithm__coverage_interval;genome_build;config__algorithm__tools_off;config__algorithm__qc;analysis;config__algorithm__tools_on;config__algorithm__variant_regions;align_bam;config__algorithm__variant_regions_merged;config__algorithm__coverage;config__algorithm__coverage_merged",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 1,
          "prefix" : "sentinel_outputs=",
          "separate" : false
        }
      }, {
        "id" : "sentinel_inputs",
        "default" : "qc_rec:record",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 2,
          "prefix" : "sentinel_inputs=",
          "separate" : false
        }
      }, {
        "id" : "qc_rec",
        "type" : {
          "fields" : [ {
            "name" : "description",
            "type" : "string"
          }, {
            "name" : "reference__fasta__base",
            "type" : "File"
          }, {
            "name" : "config__algorithm__coverage_interval",
            "type" : "string"
          }, {
            "name" : "genome_build",
            "type" : "string"
          }, {
            "name" : "config__algorithm__tools_off",
            "type" : {
              "items" : "string",
              "type" : "array"
            }
          }, {
            "name" : "config__algorithm__qc",
            "type" : {
              "items" : "string",
              "type" : "array"
            }
          }, {
            "name" : "analysis",
            "type" : "string"
          }, {
            "name" : "config__algorithm__tools_on",
            "type" : {
              "items" : "null",
              "type" : "array"
            }
          }, {
            "name" : "config__algorithm__variant_regions",
            "type" : "File"
          }, {
            "name" : "align_bam",
            "type" : "File"
          }, {
            "name" : "config__algorithm__variant_regions_merged",
            "type" : "File"
          }, {
            "name" : "config__algorithm__coverage",
            "type" : [ "File", "null" ]
          }, {
            "name" : "config__algorithm__coverage_merged",
            "type" : [ "File", "null" ]
          } ],
          "name" : "qc_rec",
          "type" : "record"
        }
      } ],
      "outputs" : [ {
        "id" : "qcout_rec",
        "type" : {
          "fields" : [ {
            "name" : "summary__qc",
            "type" : [ "File", "null" ]
          }, {
            "name" : "summary__metrics",
            "type" : "string"
          }, {
            "name" : "description",
            "type" : "string"
          }, {
            "name" : "reference__fasta__base",
            "type" : "File"
          }, {
            "name" : "config__algorithm__coverage_interval",
            "type" : "string"
          }, {
            "name" : "genome_build",
            "type" : "string"
          }, {
            "name" : "config__algorithm__tools_off",
            "type" : {
              "items" : "string",
              "type" : "array"
            }
          }, {
            "name" : "config__algorithm__qc",
            "type" : {
              "items" : "string",
              "type" : "array"
            }
          }, {
            "name" : "analysis",
            "type" : "string"
          }, {
            "name" : "config__algorithm__tools_on",
            "type" : {
              "items" : "null",
              "type" : "array"
            }
          }, {
            "name" : "config__algorithm__variant_regions",
            "type" : "File"
          }, {
            "name" : "align_bam",
            "type" : "File"
          }, {
            "name" : "config__algorithm__variant_regions_merged",
            "type" : "File"
          }, {
            "name" : "config__algorithm__coverage",
            "type" : [ "File", "null" ]
          }, {
            "name" : "config__algorithm__coverage_merged",
            "type" : [ "File", "null" ]
          } ],
          "name" : "qcout_rec",
          "type" : "record"
        }
      } ],
      "hints" : [ {
        "class" : "DockerRequirement",
        "dockerPull" : "quay.io/bcbio/bcbio-qc",
        "dockerImageId" : "quay.io/bcbio/bcbio-qc"
      }, {
        "class" : "ResourceRequirement",
        "ramMin" : 24576,
        "outdirMin" : 1024,
        "coresMin" : 8
      }, {
        "class" : "SoftwareRequirement",
        "packages" : [ {
          "package" : "bcftools",
          "specs" : [ "https://anaconda.org/bioconda/bcftools" ]
        }, {
          "package" : "bedtools",
          "specs" : [ "https://anaconda.org/bioconda/bedtools" ]
        }, {
          "package" : "fastqc",
          "specs" : [ "https://anaconda.org/bioconda/fastqc" ]
        }, {
          "package" : "goleft",
          "specs" : [ "https://anaconda.org/bioconda/goleft" ]
        }, {
          "package" : "picard",
          "specs" : [ "https://anaconda.org/bioconda/picard" ]
        }, {
          "package" : "pythonpy",
          "specs" : [ "https://anaconda.org/bioconda/pythonpy" ]
        }, {
          "package" : "qsignature",
          "specs" : [ "https://anaconda.org/bioconda/qsignature" ]
        }, {
          "package" : "qualimap",
          "specs" : [ "https://anaconda.org/bioconda/qualimap" ]
        }, {
          "package" : "sambamba",
          "specs" : [ "https://anaconda.org/bioconda/sambamba" ]
        }, {
          "package" : "samtools",
          "specs" : [ "https://anaconda.org/bioconda/samtools" ]
        } ]
      } ],
      "requirements" : [ {
        "class" : "InlineJavascriptRequirement"
      }, {
        "class" : "InitialWorkDirRequirement",
        "listing" : [ {
          "entry" : "$(JSON.stringify(inputs))",
          "entryname" : "cwl.inputs.json"
        } ]
      } ],
      "successCodes" : [ ],
      "baseCommand" : [ "bcbio_nextgen.py", "runfn", "pipeline_summary", "cwl" ],
      "arguments" : [ {
        "position" : 0,
        "valueFrom" : "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
      } ],
      "class" : "CommandLineTool"
    },
    "scatter" : [ "qc_rec" ],
    "scatterMethod" : "dotproduct",
    "in" : [ {
      "id" : "qc_rec",
      "source" : "qc_to_rec/qc_rec"
    } ],
    "out" : [ {
      "id" : "qcout_rec"
    } ],
    "hints" : [ ],
    "requirements" : [ ]
  }, {
    "id" : "multiqc_summary",
    "run" : {
      "cwlVersion" : "v1.0",
      "inputs" : [ {
        "id" : "sentinel_parallel",
        "default" : "multi-combined",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 0,
          "prefix" : "sentinel_parallel=",
          "separate" : false
        }
      }, {
        "id" : "sentinel_outputs",
        "default" : "summary__multiqc",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 1,
          "prefix" : "sentinel_outputs=",
          "separate" : false
        }
      }, {
        "id" : "sentinel_inputs",
        "default" : "qcout_rec:record",
        "type" : "string",
        "inputBinding" : {
          "itemSeparator" : ";;",
          "position" : 2,
          "prefix" : "sentinel_inputs=",
          "separate" : false
        }
      }, {
        "id" : "qcout_rec",
        "type" : {
          "items" : {
            "fields" : [ {
              "name" : "summary__qc",
              "type" : [ "File", "null" ]
            }, {
              "name" : "summary__metrics",
              "type" : "string"
            }, {
              "name" : "description",
              "type" : "string"
            }, {
              "name" : "reference__fasta__base",
              "type" : "File"
            }, {
              "name" : "config__algorithm__coverage_interval",
              "type" : "string"
            }, {
              "name" : "genome_build",
              "type" : "string"
            }, {
              "name" : "config__algorithm__tools_off",
              "type" : {
                "items" : "string",
                "type" : "array"
              }
            }, {
              "name" : "config__algorithm__qc",
              "type" : {
                "items" : "string",
                "type" : "array"
              }
            }, {
              "name" : "analysis",
              "type" : "string"
            }, {
              "name" : "config__algorithm__tools_on",
              "type" : {
                "items" : "null",
                "type" : "array"
              }
            }, {
              "name" : "config__algorithm__variant_regions",
              "type" : "File"
            }, {
              "name" : "align_bam",
              "type" : "File"
            }, {
              "name" : "config__algorithm__variant_regions_merged",
              "type" : "File"
            }, {
              "name" : "config__algorithm__coverage",
              "type" : [ "File", "null" ]
            }, {
              "name" : "config__algorithm__coverage_merged",
              "type" : [ "File", "null" ]
            } ],
            "name" : "qcout_rec",
            "type" : "record"
          },
          "type" : "array"
        }
      } ],
      "outputs" : [ {
        "id" : "summary__multiqc",
        "type" : {
          "items" : [ "File", "null" ],
          "type" : "array"
        }
      } ],
      "hints" : [ {
        "class" : "DockerRequirement",
        "dockerPull" : "quay.io/bcbio/bcbio-qc",
        "dockerImageId" : "quay.io/bcbio/bcbio-qc"
      }, {
        "class" : "ResourceRequirement",
        "ramMin" : 3072,
        "outdirMin" : 1024,
        "coresMin" : 1
      }, {
        "class" : "SoftwareRequirement",
        "packages" : [ {
          "package" : "multiqc",
          "specs" : [ "https://anaconda.org/bioconda/multiqc" ]
        }, {
          "package" : "multiqc-bcbio",
          "specs" : [ "https://anaconda.org/bioconda/multiqc-bcbio" ]
        } ]
      } ],
      "requirements" : [ {
        "class" : "InlineJavascriptRequirement"
      }, {
        "class" : "InitialWorkDirRequirement",
        "listing" : [ {
          "entry" : "$(JSON.stringify(inputs))",
          "entryname" : "cwl.inputs.json"
        } ]
      } ],
      "successCodes" : [ ],
      "baseCommand" : [ "bcbio_nextgen.py", "runfn", "multiqc_summary", "cwl" ],
      "arguments" : [ {
        "position" : 0,
        "valueFrom" : "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
      } ],
      "class" : "CommandLineTool"
    },
    "scatter" : null,
    "scatterMethod" : null,
    "in" : [ {
      "id" : "qcout_rec",
      "source" : "pipeline_summary/qcout_rec"
    } ],
    "out" : [ {
      "id" : "summary__multiqc"
    } ],
    "hints" : [ ],
    "requirements" : [ ]
  } ],
  "class" : "Workflow"
}
