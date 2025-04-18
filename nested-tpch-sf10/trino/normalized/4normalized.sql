-- TPC-H Query 4
select
        "c_orders-o_orderpriority",
        count(*) as order_count
from
        (
                select
                        distinct "c_orders-o_orderkey", "c_orders-o_orderpriority"
                from
                        hive.tpch10.t2 l inner join hive.tpch10.t1 o on o._sk = l._psk1
                where
                        "c_orders-o_orderdate" >= date '1993-07-01'
                        and  "c_orders-o_orderdate" < date '1993-07-01' + interval '3' month
                        and "c_orders-o_lineitems-l_commitdate" < "c_orders-o_lineitems-l_receiptdate"
        )
group by
        "c_orders-o_orderpriority"
order by
        "c_orders-o_orderpriority";
