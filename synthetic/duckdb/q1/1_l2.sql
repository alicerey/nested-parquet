select avg(c) from (select unnest(c) as c from (select unnest(b).c c from 'l2.parquet'));