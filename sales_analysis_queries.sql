
-- 📌 Query 1: Total Sales
SELECT SUM("Total Sale") AS Total_Sales
FROM salesdata_dashboard.cleaned_salesdata_T2;

-- 📌 Query 2: Total Orders
SELECT COUNT(DISTINCT "Order ID") AS Total_Orders
FROM salesdata_dashboard.cleaned_salesdata_T2;

-- 📌 Query 3: Total Quantity Sold
SELECT SUM("Quantity") AS Total_Quantity
FROM salesdata_dashboard.cleaned_salesdata_T2;

-- 📌 Query 4: Average Unit Price
SELECT AVG("Unit Price") AS Average_Unit_Price
FROM salesdata_dashboard.cleaned_salesdata_T2;

-- 📌 Query 5: Average Sales per Order
SELECT AVG(order_total) AS Avg_Sales_Per_Order
FROM (
  SELECT "Order ID", SUM("Total Sale") AS order_total
  FROM salesdata_dashboard.cleaned_salesdata_T2
  GROUP BY "Order ID"
) AS order_summary;

-- 📌 Query 6: Sales by Region
SELECT "Region", SUM("Total Sale") AS Region_Sales
FROM salesdata_dashboard.cleaned_salesdata_T2
GROUP BY "Region"
ORDER BY Region_Sales DESC;

-- 📌 Query 7: Monthly Sales Trend
SELECT "Month", SUM("Total Sale") AS Monthly_Sales
FROM salesdata_dashboard.cleaned_salesdata_T2
GROUP BY "Month"
ORDER BY "Month";
