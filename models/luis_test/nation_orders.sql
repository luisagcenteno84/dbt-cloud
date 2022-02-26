with nation_order as(
    select * 
    from {{ref('order_customer')}} o
        join snowflake_sample_data.tpch_sf10.nation n
            on o.c_nationkey = n.n_nationkey 
)

select * from nation_order