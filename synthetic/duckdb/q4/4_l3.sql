select a, b, c, unnest(d) from (select a, b, unnest(c).element c, unnest(c).d d from (select a, unnest(b).element b, unnest(b).c c from 'l3.parquet'));