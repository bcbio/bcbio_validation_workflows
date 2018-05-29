"""Convert svcounter2 BAM tags (mi) into UMI_ in fastq name
"""
import sys

for line in sys.stdin:
    if line.startswith("@") and line.find(":Z:") > 0:
        parts = line.strip().split()
        umi = [x for x in parts[1:] if x.startswith("mi:")][0].split(":")[-1]
        base, read_num = parts[0].split("/")
        line = "%s:UMI_%s/%s\n" % (base, umi, read_num)
    sys.stdout.write(line)
