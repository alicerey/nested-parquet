SELECT "author", year, count(title)
FROM umbra.parquetview('dblp0.parquet') d0, umbra.parquetview('dblp1.parquet') d1
WHERE d0._sk = d1._psk0 and title like '%database%' and title like '%text%' and title like '%mining%'
GROUP BY "author", year