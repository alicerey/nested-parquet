SELECT title FROM umbra.parquetview('dblp0.parquet') WHERE title like '%text%' or title like '%mining%';