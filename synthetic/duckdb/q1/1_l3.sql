select unnest(d) from (select unnest(c).d d from (select unnest(b).c c from 'l3.parquet'));