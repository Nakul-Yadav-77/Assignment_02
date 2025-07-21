SELECT
    i.Store_id,
    i.Product_id,
    i.Stock_on_hand,
    p.Product_name,
    p.Product_category
FROM {{ ref('stg_inventory') }} i
JOIN {{ ref('int_product') }} p ON i.Product_id = p.Product_id