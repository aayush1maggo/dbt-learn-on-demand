WITH customers AS (
  SELECT 
    id as customer_id,
    first_name,
    last_name
  FROM `bamboo-machine-327808.dbt_tutorial.jaffle_shop_customers`
)

SELECT * FROM customers