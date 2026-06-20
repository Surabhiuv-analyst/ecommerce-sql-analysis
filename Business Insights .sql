Which region generates the most total revenue? Show all regions ranked.

SELECT Region,
ROUND (SUM (Sales), 2) AS total_sales,
ROUND (SUM (Profit), 2) AS total_profit,
count(*)      AS total_orders
FROM orders
GROUP BY Region
ORDER BY total_sales DESC;

Who are the top 10 customers by total revenue?

SELECT "Customer Name",
       ROUND(SUM(Sales), 2) AS total_spent,
       COUNT(*) AS number_of_orders
FROM orders
GROUP BY "Customer Name"
ORDER BY total_spent DESC
LIMIT 10;

: What is the average profit margin by product sub-category?

SELECT
      "Sub-Category",
	  ROUND(AVG(Profit), 2) AS avg_profit,
	  ROUND(SUM(Profit), 2) AS total_profit
FROM orders
GROUP BY "Sub_Category"
ORDER BY avg_profit DESC


: How many unique customers are in each region?

	  
SELECT
     Region,
	 COUNT (DISTINCT "Customer_ID") AS Unique_customers,
	 COUNT(*) AS total_orders
FROM orders
GROUP BY Region
ORDER BY Unique_customers DESC;

Which states have total sales above £50,000? Show them ranked.

ELECT
      State,
	  ROUND (SUM(Sales), 2) AS total_sales
FROM orders
GROUP BY State
HAVING SUM(Sales) > 50000
ORDER BY total_sales DESC;

