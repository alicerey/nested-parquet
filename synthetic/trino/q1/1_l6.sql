select avg(gelement) from hive.generated.l6 cross join unnest(b) cross join unnest(c) cross join unnest(d) cross join unnest(e) cross join unnest(f) cross join unnest(g) as g(gelement);