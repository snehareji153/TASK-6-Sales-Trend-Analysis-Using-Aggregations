-- Median Revenue

SELECT
    AVG(mid_sales) AS median_revenue
FROM (
    SELECT
        sales AS mid_sales,
        ROW_NUMBER() OVER (ORDER BY sales) AS rn,
        COUNT(*) OVER () AS total_rows
    FROM
       `sales_data_sample cleaning` 
    WHERE
        sales IS NOT NULL
) AS ordered_sales
WHERE
    rn BETWEEN (total_rows + 1) / 2 AND (total_rows + 2) / 2;