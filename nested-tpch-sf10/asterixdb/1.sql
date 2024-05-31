select
        l.l_returnflag as a,
        l.l_linestatus as b,
        sum(l.l_quantity) as c,
        sum(l.l_extendedprice) as d,
        sum(l.l_extendedprice * (1 - l.l_discount)) as e,
        sum(l.l_extendedprice * (1 - l.l_discount) * (1 + l.l_tax)) as f,
        avg(l.l_quantity) as g,
        avg(l.l_extendedprice) as h,
        avg(l.l_discount) as i,
        count(*) as j
from
        tpch10 as t unnest t.c_orders as o unnest o.o_lineitems l
where
        l.l_shipdate <= date('1998-12-01') - duration('P90D')
group by
        l.l_returnflag,
        l.l_linestatus
order by
        l.l_returnflag,
        l.l_linestatus;