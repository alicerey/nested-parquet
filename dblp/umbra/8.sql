SELECT "author.list.element", year, count(title) 
FROM umbra.parquetview('dblp.parquet')
WHERE title like '%database%' and title like '%text%' and title like '%mining%' and "author.list.element" is not null
GROUP BY "author.list.element", year