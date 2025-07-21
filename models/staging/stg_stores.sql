SELECT
    store_id,
    store_name,
    store_city,
    store_location,
    TRY_CAST(store_open_date AS DATE) as store_open_date
FROM ASSIGNMENT_02.DBT_NYADAV.stores