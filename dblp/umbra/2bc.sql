SELECT title FROM umbra.parquetview('dblp.parquet') WHERE title like '%text%' and title like '%mining%'