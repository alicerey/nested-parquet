select name from (select unnest(people.person).name as name, unnest(people.person)._id  as a from "sf10.parquet") where a = 'person0'