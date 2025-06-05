 -- Yearly Revenue and Order Volume-- 
 



select 
  EXTRACT(YEAR FROM STR_TO_DATE(ORDERDATE, '%d-%m-%Y')) AS order_year,
   SUM(sales) AS total_revenue,
  COUNT(DISTINCT ORDERNUMBER) AS total_orders
FROM `sales_data_sample cleaning`
GROUP BY  order_year
ORDER BY  order_year;

