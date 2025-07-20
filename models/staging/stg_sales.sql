SELECT
    sale_id,
    date::DATE AS sale_date,
    store_id,
    product_id,
    units
FROM Project_02.public.sales