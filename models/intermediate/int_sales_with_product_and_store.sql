SELECT
    s.Sale_id,
    s.sale_Date,
    s.store_id,
    s.Product_id,
    s.Units,
    p.Product_name,
    p.Product_category,
    p.product_cost,
    p.Product_price,
    st.Store_name,
    st.Store_city,
    st.Store_location,
    st.Store_open_date
FROM {{ ref('stg_sales') }} s
JOIN {{ ref('stg_product') }} p ON s.Product_id = p.Product_id
JOIN {{ ref('stg_stores') }} st ON s.store_id = st.Store_id
