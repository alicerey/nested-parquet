select avg(l.a-e) from l4 as l unnest(l.b) as b unnest(b.c) as c unnest(c.d) as d unnest (d.e) as e;