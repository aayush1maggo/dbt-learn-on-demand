{{ config (
    materialized="table"
)}}

-- order_id, customer_id, amount

with orders as (
    SELECT * FROM {{ ref('stg_orders')}}
),

customers as (
    select * from {{ ref('stg_customers')}}
),

payments as (
    select * from {{ ref('stg_payments')}}
)
SELECT orders.order_id,customers.customer_id, payments.amount from orders 
LEFT JOIN customers ON orders.customer_id = customers.customer_id
LEFT JOIN payments ON orders.order_id = payments.order_id