WITH payments AS (
  SELECT 
    orderid as order_id,
    id as payment_id,
    amount
  FROM `bamboo-machine-327808.dbt_tutorial.stripe_payments`
)

SELECT * FROM payments