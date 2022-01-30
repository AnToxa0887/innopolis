select tc.table_name, tc.constraint_name, tc.constraint_type,
kcu.column_name 
from information_schema.table_constraints tc 
left join information_schema.key_column_usage kcu on tc.table_name = kcu.table_name
and tc.constraint_name = kcu.constraint_name 
where tc.constraint_type = 'PRIMARY KEY'



