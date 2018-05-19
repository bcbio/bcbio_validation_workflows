#!/usr/bin/env python
"""Clean Pisces truth sets, creating ready to compare VCFs.
"""
import glob
import os
import subprocess

from bcbio.variation import vcfutils

in_vcf_dir = os.path.join("pisces", "truth_raw")
out_vcf_dir = os.path.join("pisces", "truth")
in_region_dir = os.path.join("pisces", "regions_raw")
out_region_dir = os.path.join("pisces", "regions")

def clean_ras():
    """Add VCF headers to RAS VCFs and bgzip and tabix.
    """
    for in_vcf in (x for x in glob.glob(os.path.join(in_vcf_dir, "*.vcf")) if x.find("NA1287") == -1):
        out_vcf = os.path.join(out_vcf_dir, os.path.join(os.path.basename(in_vcf).replace(".txt", "")))
        if not os.path.exists(out_vcf) and not os.path.exists(out_vcf + ".gz"):
            vcfutils.write_empty_vcf(out_vcf, samples=[os.path.basename(in_vcf).replace(".txt.vcf", "")])
            with open(out_vcf, "a") as out_handle:
                with open(in_vcf) as in_handle:
                    for line in in_handle:
                        if line.startswith("chr"):
                            line = line[3:]
                        out_handle.write(line)
        vcfutils.bgzip_and_index(out_vcf)

def clean_titration():
    """Subset to interval regions and bgzip/tabix.
    """
    region_bed = os.path.join(in_region_dir, "Intervals_TSAVP_Titr.bed")
    for in_vcf in glob.glob(os.path.join(in_vcf_dir, "NA1287*.vcf")):
        out_vcf = os.path.join(out_vcf_dir, "%s.gz" % os.path.join(os.path.basename(in_vcf)))
        if not os.path.exists(out_vcf):
            cmd = ("bcftools view {in_vcf} -T {region_bed} | grep -v '##contig' | "
                   "sed 's/^chr//g' | bgzip -c > {out_vcf}")
            subprocess.check_call(cmd.format(**locals()), shell=True)
        vcfutils.bgzip_and_index(out_vcf)

def fix_regions():
    for in_bed in glob.glob(os.path.join(in_region_dir, "*.bed")):
        out_bed = os.path.join(out_region_dir, os.path.basename(in_bed))
        if not os.path.exists(out_bed):
            with open(in_bed) as in_handle:
                with open(out_bed, "w") as out_handle:
                    for line in in_handle:
                        if line.startswith("chr"):
                            line = line[3:]
                        out_handle.write(line)


clean_titration()
clean_ras()
fix_regions()
