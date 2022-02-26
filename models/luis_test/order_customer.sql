with order_customer as(

    select *
from snowflake_sample_data.tpch_sf10.orders o
    join snowflake_sample_data.tpch_sf10.customer c
        on o.o_custkey = c.c_custkey
)

select * from order_customer