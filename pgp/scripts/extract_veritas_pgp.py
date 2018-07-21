#!/usr/bin/env python
"""Explore PGP participant data from untap sqlite database.

Extracts recently sequenced Illumina data from a diverse set of participants
with other associated data.
"""
from __future__ import print_function
import sys

import pandas as pd
import sqlite3

try:
    import arvados
except ImportError:
    arvados = None

def main(sqlite_db):
    # Query for recent Veritas sequenced samples
    query = ("SELECT uploaded_data.human_id, date, name "
             "FROM uploaded_data WHERE "
             "data_type == 'Veritas Genetics' AND "
             "uploaded_data.name GLOB '*VCF'")
    conn = sqlite3.connect(sys.argv[1])
    df = pd.read_sql_query(query, conn)

    # Uniquify by sample
    df.sort_values("date", inplace=True)
    df.drop_duplicates(inplace=True)
    print(df.describe())

    # Load files in Arvados BAM collection, if arvados client installed
    if arvados:
        api = arvados.api(host="su92l.arvadosapi.com", token="42yz0fp9s19djsgkae33khevpzq4or1ile5o7khofzw388lvfl")
        cr = arvados.CollectionReader("su92l-4zz18-1rqqi0kpkfmfite", api)
        bam_coll = [(x.name, x.size()) for x in cr.all_files()]
    else:
        bam_coll = None

    # Find recent samples with more than 1 data type, emphasizing diverse samples
    # Require higher depth coverage > 50Gb
    for sample in df["human_id"]:
        query = ("SELECT data_type, date FROM uploaded_data WHERE human_id='%s'" % sample)
        df = pd.read_sql_query(query, conn)
        if len(df.data_type.unique()) > 1:
            bam_size = find_bam_size(sample, bam_coll) if bam_coll else 100
            if bam_size > 50:
                query = ("SELECT * from demographics WHERE human_id='%s'"% sample)
                dfd = pd.read_sql_query(query, conn)
                if (len(dfd) and ((dfd["gender"][0] not in ["", "Male"])
                                or (dfd["race"][0] not in ["", "White", "Caucasian (White)"]))):
                    demo = "%s %s" % (dfd["gender"][0], dfd["race"][0])
                elif len(dfd) == 0:
                    demo = "No demographics"
                print(sample, "%sGb" % bam_size, demo, list(set(df["data_type"])), list(set(df["date"])))

def find_bam_size(huid, coll):
    """Find PGP BAM size, in Gb from the Arvados collection.
    """
    return int(sum([s for (n, s) in coll if n.startswith(huid)]) / (1024.0 * 1024.0 * 1024.0))

if __name__ == "__main__":
    main(sys.argv[1:])
