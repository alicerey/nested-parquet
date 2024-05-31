SELECT "author.list.element", year, count(title) 
FROM umbra.parquetview('dblp.parquet')
WHERE title like '%database%' and title like '%text%' and title like '%mining%'
GROUP BY "author.list.element", year