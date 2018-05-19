#!/bin/env python
"""Prepare bcbio input sample YAML files for analysis.
"""
import copy
import glob
import os

import yaml

base = {"analysis": "variant", "genome_build": "GRCh37",
        "algorithm": {
            "aligner": "minimap2",
            "variantcaller": ["vardict", "freebayes", "mutect2"],
        }}

def write_sample_yaml(out, fname):
    with open(fname, "w") as out_handle:
        yaml.safe_dump({"details": out}, out_handle, default_flow_style=False, allow_unicode=False)

def prepare_titration():
    out = []
    for in_bam in sorted(glob.glob(os.path.join("pisces", "inputs", "*pct-NA1287*bam"))):
        name = "-".join(os.path.basename(in_bam).split("-")[:2])
        cur = copy.deepcopy(base)
        cur["description"] = name
        cur["files"] = in_bam
        cur["algorithm"]["variant_regions"] = "pisces/regions/Intervals_TSAVP_Titr.bed"
        cur["algorithm"]["validate_regions"] = "pisces/regions/Intervals_TSAVP_Titr.bed"
        cur["algorithm"]["validate"] = "pisces/truth/NA1287_78Titr.vcf.gz"
        out.append(cur)
    return write_sample_yaml(out, "pisces-titr.yaml")

def prepare_ras():
    out = []
    for in_bam in sorted(glob.glob(os.path.join("pisces", "inputs", "*bam"))):
        if in_bam.find("pct-NA1287") < 0:
            name = os.path.basename(in_bam).split("_")[0]
            cur = copy.deepcopy(base)
            cur["description"] = name
            cur["files"] = in_bam
            cur["algorithm"]["variant_regions"] = "pisces/regions/KRASandNRASinterval2.bed"
            cur["algorithm"]["validate_regions"] = "pisces/regions/KRASandNRASinterval2.bed"
            cur["algorithm"]["validate"] = "pisces/truth/%s_truth.vcf.gz" % name
            assert os.path.exists(cur["algorithm"]["validate"]), cur["algorithm"]["validate"]
            out.append(cur)
    return write_sample_yaml(out, "pisces-ras.yaml")

prepare_titration()
prepare_ras()
