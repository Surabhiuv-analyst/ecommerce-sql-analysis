

-- OBJECTIVE: Isolate all transactions within the Technology category.
-- USE CASE: Supports category-specific performance review and inventory planning.
SELECT*
FROM orders
WHERE Category = 'Technology';

-- OBJECTIVE: Identify unprofitable transactions across all product lines.
-- USE CASE: Flags operational inefficiencies, high discount rates, or shipping cost deficits.
Select*
FROM orders
WHERE profit < 0;

-- OBJECTIVE: Review order, customer, and sales details specific to California.
-- USE CASE: Supports state-level performance analysis and regional sales strategy.
SELECT "Order_ID", "Customer_Name",City, Sales,State
FROM orders
WHERE State = 'California';

-- OBJECTIVE: Filter high-value orders (Sales > $1,000) ranked by total transaction revenue.
-- USE CASE: Identifies VIP customers and top-tier retail distribution trends.
SELECT "Order_ID", "Customer_Name","Product_Name",Sales
FROM orders
Where Sales > 1000
ORDER BY Sales DESC;

-- OBJECTIVE: Surface the top 5 highest-value individual orders by sales amount.
-- USE CASE: Highlights flagship transactions for customer relationship management and case studies.
SELECT "Order_ID", "Customer_Name","Product_Name",Sales
FROM orders
Order By Sales DESC
LIMIT 5;

6. Q12: Show all orders where the discount is greater than 0.5 (50% off or more)
SELECT "Order_ID", "Product_Name", Sales, Discount, Profit
FROM orders
WHERE Discount > 0.5
ORDER BY Discount DESC;


