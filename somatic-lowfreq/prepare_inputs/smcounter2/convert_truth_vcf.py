#!/usr/bin/env python
"""Convert smcounter TSV files into valid sorted VCF inputs.

Handles M cases (columns with variation info)
and N cases (VCF like columns)
"""
import sys

def write_header(parts, sample_name):
    if parts[0] == "Gene":
        cur_type = "M"
    else:
        cur_type = "N"
    sys.stdout.write("##fileformat=VCFv4.1\n")
    sys.stdout.write("#CHROM\tPOS\tID\tREF\tALT\tQUAL\tFILTER\tINFO\tFORMAT\t%s\n" % sample_name)
    return cur_type

def write_m_vcf(parts):
    gene, variant, chrom, position, ref, alt, _, af, _, _, _, _ = parts
    out = [chrom.replace("chr", ""), position, "%s_%s" % (gene, variant), ref, alt, ".", "PASS", ".", "GT:AF",
           "0/1:%s" % af]
    sys.stdout.write("\t".join(out) + "\n")

def write_n_vcf(parts):
    sys.stdout.write("\t".join(parts) + "\n")

sample_name = sys.argv[1]
cur_type = None
for line in sys.stdin:
    parts = line.strip().split("\t")
    if not cur_type:  # first line
        cur_type = write_header(parts, sample_name)
    elif cur_type == "M":
        write_m_vcf(parts)
    else:
        write_n_vcf(parts)
