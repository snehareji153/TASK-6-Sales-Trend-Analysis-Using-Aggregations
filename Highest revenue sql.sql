-- Highest Revenue Month

SELECT 
  EXTRACT(MONTH FROM STR_TO_DATE(SUBSTRING_INDEX(ORDERDATE, ' ', 1), '%d-%m-%Y')) AS order_month,
  SUM(sales) AS total_revenue,
  COUNT(DISTINCT ORDERNUMBER) AS total_orders
FROM `sales_data_sample cleaning`
GROUP BY  order_month
ORDER BY total_revenue DESC
LIMIT 1;

