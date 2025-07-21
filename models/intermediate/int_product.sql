SELECT
  Product_id,
  Product_name,
  Product_category,
  TO_DECIMAL(REPLACE(Product_cost, '$', ''), 10, 2) AS product_cost,
  TO_DECIMAL(REPLACE(Product_price, '$', ''), 10, 2) AS product_price,
  TO_DECIMAL(
    TO_DECIMAL(REPLACE(Product_price, '$', ''), 10, 2) 
    - TO_DECIMAL(REPLACE(Product_cost, '$', ''), 10, 2)
  , 10, 2) AS product_profit
FROM {{ ref('stg_product') }}