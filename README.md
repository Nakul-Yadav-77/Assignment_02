#Maven Toys DBT Project

This project uses the Maven Toys dataset with Snowflake and dbt, 
following the Medallion architecture — Bronze (staging), Silver (cleansed), and Gold (marts).

---

# 1. Initial Setup

Explored dataset in Excel to understand structure and issues.

Uploaded raw data to Snowflake without transformations.

Connected Snowflake to a new dbt project.

---

# 2. Bronze Layer (Staging)

Imported raw tables as-is into dbt staging models.

Handled missing headers in data_dictionary by skipping the first row.

Defined source.yml files for data lineage.


---

# 3. Silver Layer (Intermediate)

Calendar Table: Extracted day, month, year for time-based analysis.

Product Table:

Calculated profit (using price and cost).

Removed $ from price columns, converted to decimal.


Data Dictionary: Restructured to fix headers.

Joins: Merged sales, product, inventory, and store tables for richer insights.



---

# 4. Snapshot

Created a snapshot on the sales-product-store join.

Tracked changes in product_id, store_id, and units.

Scheduled to run every 2 hours for historical tracking.



---

# 5. Gold Layer (Marts)

Built aggregated, analysis-ready tables.

Cleaned columns and standardized names for business use.

Enabled decision-making via summarized, easy-to-query datasets.

---
