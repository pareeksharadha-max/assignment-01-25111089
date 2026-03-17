## ETL Decisions

### Decision 1 — Standardizing Date Formats
Problem: The raw data contained dates written in different formats such as 10/01/2024 and 2024-01-10, which creates inconsistency during analysis.

Resolution: All dates were converted into one standard format YYYY-MM-DD before loading into dim_date so that monthly and yearly analysis becomes accurate.

### Decision 2 — Fixing Category Casing
Problem: Product categories appeared in different letter styles such as electronics, Electronics, and ELECTRONICS.

Resolution: All category values were converted into one consistent format with proper capitalization such as Electronics, Groceries, and Clothing before inserting into dim_product.

### Decision 3 — Handling NULL Values
Problem: Some rows had missing values in important fields such as product category or revenue, which could affect reporting.

Resolution: Missing values were cleaned by replacing NULL values with correct available data or removing incomplete records before loading into fact_sales.
