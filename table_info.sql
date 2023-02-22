select table_name, table_rows, round((data_length + index_length)/1024/1024/1024) as GB_size
from information_schema.tables
where table_schema = 'mydata'
order by table_rows desc;

select * from information_schema.tables
where table_schema = 'mydata'
order by table_rows desc;


/* DB Size */
select table_schema as 'DB name', round(sum(data_length+index_length)/1024/1024) as 'Size(MB)'
from information_schema.tables
group by table_schema;

/* Table Size */
select table_name, round(sum(data_length+index_length)/1024/1024/1024) as Size_GB
from information_schema.tables
where table_schema = 'mydata'
group by table_name
order by Size_GB desc;

select * from user_mydata_api_access_log
where created_at between '2022-12-01 00:00:00' and '2022-12-01 23:59:59';

select date_format(created_at, '%Y-%m-%d') as dt, count(*)
from user_mydata_api_access_log
where created_at >= '2022-12-01 00:00:00'
group by dt;

select count(*) from user_mydata_api_access_log
where created_at between '2022-12-01 00:00:00' and '2022-12-01 23:59:59';




