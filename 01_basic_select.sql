
-- OBJECTIVE: Preview the dataset structure and confirm data is loading correctly.
-- USE CASE: First step in any analysis — quick sanity check on raw data.
SELECT*
FROM orders
LIMIT 10;
-- OBJECTIVE: Retrieve core customer location details (name, city, state).
-- USE CASE: Supports regional customer mapping and location-based segmentation.
SELECT "Customer_Name", City, State
FROM orders;
-- OBJECTIVE: Rename technical column names into clear, business-friendly labels.
-- USE CASE: Improves readability for non-technical stakeholders reviewing reports.
SELECT
      "CUstomer_Name"  AS 'Customer',
	  "Profit"  AS 'Net_Profit',
	  "Sales"  AS 'Revenue'
FROM orders;

-- OBJECTIVE: Identify all distinct product categories sold by the business.
-- USE CASE: Establishes the product taxonomy used across all further analysis.
SELECT DISTINCT Category
FROM orders;

-- OBJECTIVE: Map all unique category and sub-category combinations.
-- USE CASE: Validates product hierarchy and supports category-level reporting structure.
SELECT DISTINCT Category, "Sub-Category"
FROM orders
ORDER By  Category;

-- OBJECTIVE: Extract a quick snapshot of order IDs, customers, and sales values.
-- USE CASE: Sample export for stakeholder review or spot-checking transaction data.
SELECT "Order_ID", "Custoner_Name",Sales
FROM orders
LIMIT 20;


