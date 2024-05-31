SELECT "author.list.element", count(title)
FROM umbra.parquetview('dblp.parquet')
WHERE "author.list.element" is not null
GROUP BY "author.list.element"