select avg(greatest(a, b.element, c.element, d.element, eelement)) from hive.generated.l4 cross join unnest(b) as b cross join unnest(c) as c cross join unnest(d) as d cross join unnest(e) as e(eelement);