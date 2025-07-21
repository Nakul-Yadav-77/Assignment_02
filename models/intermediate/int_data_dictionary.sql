SELECT
  TABLES,
  FIELD,
  DESCRIPTION
FROM (
  SELECT
    TABLES,
    FIELD,
    DESCRIPTION,
    ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS rn
  FROM {{ ref('stg_data_dictionary') }}
)
WHERE rn > 1