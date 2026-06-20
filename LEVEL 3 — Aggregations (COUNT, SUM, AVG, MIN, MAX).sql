showing the total number of orders in the whole dataset

SELECT COUNT(*) AS total_Orders
FROM orders;

 Find the total revenue (sum of all sales) across all orders

SELECT round (sum(Sales) , 2) AS total_Rvenue
FROM orders;

Find the average order value (average sales per row)
SELECT round (AVG (sales), 2) AS avg_order_value
FROM orders;

: Find the single most expensive order and the cheapest order


SELECT
      MAX (Sales) AS highest_sales,
	  MIN (Sales) AS lowest_Sales,
	  MAX (Profit) AS highest_profit,
	  MIN (Profit) AS lowest_profit
FROM orders;

Finding out how many segments are there in the dataset
SELECT DISTINCT Segment
FROM orders;

:Count how many orders were placed in each customer segment

SELECT segment,
COUNT(*) AS number_of_orders
FROM orders
GROUP BY Segment
Order BY number_of_orders DESC;

Find total sales and total profit for each product category

SELECT Category,
round (sum (Sales), 2) AS total_sales,
round (sum (Profit), 2) AS total_profits
FROM orders
GROUP BY Category
ORDER BY total_sales DESC; 


