select avg(greatest(a, b.element, c.element, delement)) from hive.generated.l3 cross join unnest(b) as b cross join unnest(c) as c cross join unnest(d) as d(delement);