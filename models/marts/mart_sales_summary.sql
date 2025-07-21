SELECT
    c.year,
    c.month,
    st.store_city,
    p.product_category,
    SUM(s.units) AS total_units_sold,
    SUM(s.units * p.product_price) AS total_revenue
FROM {{ ref('int_sales_with_product_and_store') }} s
JOIN {{ ref('int_calendar') }} c ON s.sale_Date = c.date
JOIN {{ ref('int_product') }} p ON s.product_id = p.product_id
JOIN {{ ref('stg_stores') }} st ON s.store_id = st.store_id
GROUP BY c.year, c.month, st.store_city, p.product_category
ORDER BY c.year, c.month, st.store_city, p.product_category