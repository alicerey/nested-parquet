SELECT title FROM umbra.parquetview('dblp.parquet') WHERE title like '%database%' or title like '%mining%';