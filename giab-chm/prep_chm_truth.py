#!/bin/env python
"""Prepare standard truth set + confident regions for CHM benchmark.

Extracts input from CHM-eval.kit download, prepping the BED file as:

    - Start with hybrid.genome.bed.gz as baseline confident regions
    - Remove polyA10 regions
    - Remove regions within +/- 10bp of problematic PacBio indels (1bp and >50bp).
      This is imperfect but is roughly the approach taken in the CHM paper,
      which is to ignore TP/FP/FNs in these regions.
"""
import os
import shutil
import subprocess
import sys

import cyvcf2

def main(genome, ref_fai):
    pad = 10
    if genome == 38:
        polya_file = os.path.join("CHM-eval.kit", "ployA10-38DH.bed.gz")
        vcf_file = os.path.join("CHM-eval.kit", "hybrid.m38DH.vcf.gz")
        confident_file = os.path.join("CHM-eval.kit", "hybrid.m38DH.bed.gz")

    work_dir = os.path.join(os.getcwd(), "tmpwork")
    if not os.path.exists(work_dir):
        os.makedirs(work_dir)

    badindel_file = os.path.join(work_dir, "chm-hg%s-badindel.bed" % genome)
    if not os.path.exists(badindel_file):
        with open(badindel_file, "w") as out_handle:
            for rec in cyvcf2.VCF(vcf_file):
                has_problem = False
                for a in rec.ALT:
                    sizediff = abs(len(rec.REF) - len(a))
                    if a == 1 or a > 50:
                        has_problem = True
                        break
                if has_problem:
                    out_handle.write("%s\t%s\t%s\n" % (rec.CHROM, rec.start - pad, rec.end + pad))
    combinedbad_file = os.path.join(work_dir, "chm-hg%s-combinedbad.bed.gz" % genome)
    if not os.path.exists(combinedbad_file):
        cmd = ("zcat {polya_file} | cat - {combinedbad_file} | bedtools merge | "
               "sort -k1,1 -k2,2n | bgzip -c > {combinedbad_file}")
        subprocess.check_call(cmd.format(**locals()), shell=True)

    truth_vcf = "chm-hg%s.vcf.gz" % genome
    truth_bed = "chm-hg%s-regions.bed.gz" % genome
    cmd = ("bedtools subtract -a {confident_file} -b {combinedbad_file} | "
           "gsort - {ref_fai} | bgzip -c > {truth_bed}")
    subprocess.check_call(cmd.format(**locals()), shell=True)
    shutil.copy(vcf_file, truth_vcf)
    subprocess.check_call(["tabix", "-p", "bed", truth_bed])
    subprocess.check_call(["tabix", "-p", "vcf", truth_vcf])

if __name__ == "__main__":
    main(38, sys.argv[1])



