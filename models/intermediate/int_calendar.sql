SELECT
  Date AS Date,
  TO_CHAR(TO_DATE(Date), 'YYYY') AS Year,
  TO_CHAR(TO_DATE(Date), 'MM') AS Month,
  TO_CHAR(TO_DATE(Date), 'DD') AS Day,
  TO_CHAR(TO_DATE(Date), 'DY') AS Day_Name


FROM {{ ref('stg_calendar') }}