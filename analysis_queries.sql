SELECT * FROM sales_db.sales_table;

-- Total Revenue
SELECT sum(total) AS total_revenue FROM sales_db.sales_table;

-- Total Revenue By Category
SELECT sum(total) AS total_revenue, category FROM sales_db.sales_table
GROUP BY category
ORDER BY total_revenue DESC;

-- Total Oders By Status
SELECT  status, COUNT(*) AS total_orders FROM sales_db.sales_table
GROUP BY status
ORDER BY total_orders;

-- Most Used Payment Method
 SELECT payment_method, COUNT(*) AS max_payment_method FROM sales_db.sales_table
 GROUP BY payment_method
 ORDER BY max_payment_method DESC;
 
 -- Top 5 Most Expensive Product
 SELECT product, MAX(price) AS max_price FROM sales_db.sales_table
 GROUP BY product
 ORDER BY max_price DESC
 LIMIT 5;

-- Average Order Value By Category
SELECT category, ROUND(AVG(total),2) AS avg_order  FROM sales_db.sales_table
GROUP BY category
ORDER BY avg_order DESC;

-- Revenue Payment Method
SELECT payment_method, SUM(total) AS total_reveneu, COUNT(*) AS total_orders  FROM sales_db.sales_table
GROUP BY payment_method;

-- Cancelled And Returned Order Loss
SELECT status, COUNT(*) AS total_orders, SUM(total) AS lost_revenue  FROM sales_db.sales_table
WHERE status IN ("Cancelled","Returned")
GROUP BY status;