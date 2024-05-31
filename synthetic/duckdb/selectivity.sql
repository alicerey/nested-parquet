select avg(b) from (select a, unnest(b) b from 'l1.parquet');
select avg(b) from (select a, unnest(b) b from 'l1.parquet' where a % 10 = 0);
select avg(b) from (select a, unnest(b) b from 'l1.parquet' where a % 100 = 0);
select avg(b) from (select a, unnest(b) b from 'l1.parquet' where a % 1000 = 0);
select avg(b) from (select a, unnest(b) b from 'l1.parquet' where a % 10000 = 0);
select avg(b) from (select a, unnest(b) b from 'l1.parquet' where a % 100000 = 0);
select avg(b) from (select a, unnest(b) b from 'l1.parquet' where a % 1000000 = 0);
select avg(greatest(a, b)) from 'normalized/l1_0_a.parquet' l0 inner join 'normalized/l1_1_a.parquet' l1 on l0._sk = l1._psk0;
select avg(greatest(a, b)) from 'normalized/l1_0_a.parquet' l0 inner join 'normalized/l1_1_a.parquet' l1 on l0._sk = l1._psk0 where a % 10 = 0;
select avg(greatest(a, b)) from 'normalized/l1_0_a.parquet' l0 inner join 'normalized/l1_1_a.parquet' l1 on l0._sk = l1._psk0 where a % 100 = 0;
select avg(greatest(a, b)) from 'normalized/l1_0_a.parquet' l0 inner join 'normalized/l1_1_a.parquet' l1 on l0._sk = l1._psk0 where a % 1000 = 0;
select avg(greatest(a, b)) from 'normalized/l1_0_a.parquet' l0 inner join 'normalized/l1_1_a.parquet' l1 on l0._sk = l1._psk0 where a % 10000 = 0;
select avg(greatest(a, b)) from 'normalized/l1_0_a.parquet' l0 inner join 'normalized/l1_1_a.parquet' l1 on l0._sk = l1._psk0 where a % 100000 = 0;
select avg(greatest(a, b)) from 'normalized/l1_0_a.parquet' l0 inner join 'normalized/l1_1_a.parquet' l1 on l0._sk = l1._psk0 where a % 1000000 = 0;