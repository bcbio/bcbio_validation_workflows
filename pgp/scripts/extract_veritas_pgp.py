#!/usr/bin/env python
"""Explore PGP participant data from untap sqlite database.

Extracts recently sequenced Illumina data from a diverse set of participants
with other associated data.
"""
from __future__ import print_function
import sys

import pandas as pd
import sqlite3

def main(sqlite_db):
    # Query for recent Veritas sequenced samples from a diverse population
    query = ("SELECT uploaded_data.human_id, date, name, race "
             "FROM uploaded_data, demographics WHERE "
             "data_type == 'Veritas Genetics' AND "
             "race != 'White' AND race != '' AND race != 'Caucasian (White)' AND "
             "uploaded_data.name GLOB '*VCF'")
    conn = sqlite3.connect(sys.argv[1])
    df = pd.read_sql_query(query, conn)
    print(df.describe())

    # Uniquify by sample
    del df["race"]
    df.sort_values("date", inplace=True)
    df.drop_duplicates(inplace=True)

    # Final recent samples with more than 1 data type
    for sample in list(df.tail(30)["human_id"]):
        query = ("SELECT data_type, date FROM uploaded_data WHERE human_id='%s'" % sample)
        df = pd.read_sql_query(query, conn)
        if len(df.data_type.unique()) > 1:
            print(sample, list(set(df["data_type"])), list(set(df["date"])))

    # Select the first for additional analysis
    query = ("SELECT * from demographics WHERE human_id='%s'"% "huAF3C63")
    df = pd.read_sql_query(query, conn)
    print(df)

if __name__ == "__main__":
    main(sys.argv[1:])
