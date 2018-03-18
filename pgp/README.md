## Personal Genome Project analysis

Demonstrates query, data retrieval and analysis of samples from the
[Personal Genome Project (PGP)](http://www.personalgenomes.org/us).

### Participant identification

Identify participants to analyze using the [PGP untap](https://github.com/abeconnelly/untap)
SQLite database, hosted on [the Veritas public PGP
server](https://collections.su92l.arvadosapi.com/c=2210f7ee07fc1c8b926e5db28eff9635-3284/_/html/index.html?disposition=inline).
We developed queries based on [an initial analysis of PGP participants](https://github.com/swzCuroverse/PGPGraphics).

Query SQLite database to find sample of interest:

    wget https://collections.su92l.arvadosapi.com/c=su92l-4zz18-2w3rfqxc5zkhfhd/t=t6rn146cw51wzi7s66dteicjsk0k57p4mj5cpapnsc94q8bfg/_/arv-stage/untap.db
    python scripts/extract_veritas_pgp.py untap.db

We identify participant `huAF3C63` as a candidate for additional analysis.

### Find BAM and VCF files in Arvados collections

BAM, VCF and 23andMe data identified on PGP participant IDs are available
as [Arvados data
collections](https://workbench.su92l.arvadosapi.com/projects/su92l-j7d0g-nsjiqjm7jne7zgr?#Data_collections):

    wget https://workbench.su92l.arvadosapi.com/collections/787056fd0698c7ea6c9497c4257b17d8+2956924/huAF3C63_WGC069892D.bam.tgz?disposition=attachment&size=15873089899
