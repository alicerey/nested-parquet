select a, b, c, d, unnest(e) from (select a, b, c, unnest(d).element d, unnest(d).e e from (select a, b, unnest(c).element c, unnest(c).d d from (select a, unnest(b).element b, unnest(b).c c from 'l4.parquet')));