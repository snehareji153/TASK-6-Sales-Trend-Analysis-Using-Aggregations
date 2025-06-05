-- Monthly and Yearly Sales Summary-- 

SELECT 
  EXTRACT(YEAR FROM STR_TO_DATE(ORDERDATE, '%d-%m-%Y')) AS order_year,
  EXTRACT(MONTH FROM STR_TO_DATE(ORDERDATE, '%d-%m-%Y')) AS order_month,
  SUM(sales) AS total_revenue,
  COUNT(DISTINCT ORDERNUMBER) AS total_orders
FROM `sales_data_sample cleaning`
GROUP BY order_year, order_month
ORDER BY order_year, order_month;
