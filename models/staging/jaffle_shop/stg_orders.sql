with orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from `bamboo-machine-327808.dbt_tutorial.jaffle_shop_orders`

)

SELECT * FROM orders