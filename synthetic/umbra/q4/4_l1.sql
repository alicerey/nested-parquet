select avg(greatest(a, "b.list.element")*1.0) from umbra.parquetview('l1.parquet')