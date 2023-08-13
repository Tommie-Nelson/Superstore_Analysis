select * from superstore_dataset


----- Total Revenue-----
select sum(sales) AS TOTAL_REVENUE
from superstore_dataset

---Sum of sales by category---
select distinct category
from superstore_dataset

Select
		CASE WHEN CATEGORY = 'FURNITURE' THEN SUM(SALES) END AS FURNITURE_SALES,
		CASE WHEN CATEGORY = 'TECHNOLOGY' THEN SUM(SALES) END AS TECHNOLOGY_SALES,
		CASE WHEN CATEGORY = 'OFFICE SUPPLIES' THEN SUM(SALES) END AS OFFICE_SUPPLIES_SALES
		from superstore_dataset
		GROUP BY Category


Select sum(sales) as Furniture_Sales
from superstore_dataset
where Category = 'Furniture'

Select sum(sales) as Technology_Sales
from superstore_dataset
where Category = 'Technology'

Select sum(sales) as Supplies_Sales
from superstore_dataset
where Category = 'Office Supplies'

----Analysing Sales By Region----
Select Region, sum (Sales) as Total_Revenue
from superstore_dataset
Group By Region

----Analysing Sales by Customer Segment---
Select Segment, sum (Sales) as Customer_Segment_Revenue
from superstore_dataset
Group By Segment

----Analysing Sales Trends over time-----

Select Year(Order_Date) as Sales_Year,
Sum (Sales) as Total_Sales
from superstore_dataset
Group By Year(Order_Date)
Order by Sales_Year asc

----Product Performance----
SELECT DISTINCT SUB_CATEGORY, 
		COUNT (SUB_CATEGORY) AS SUBCATEGORY_COUNT, 
		Sum (Sales) AS TOTAL_SALES
		FROM superstore_Dataset
		GROUP BY Sub_Category
		ORDER BY SUBCATEGORY_COUNT DESC, TOTAL_SALES DESC

------CUSTOMER BEHAVIOUR----
SELECT DISTINCT Customer_Name, Sub_Category
FROM superstore_Dataset
group by Customer_Name, Sub_Category

select * from superstore_Dataset

SELECT 
		TOP 100
		Customer_Name
		ORDER_ID,
		COUNT (Order_date) as Purchase_Frequency,
		AVG (Sales) as Average_Transaction,
		COUNT(Order_Date) - 1 as Repeat_Purchase
		from superstore_dataset
		GROUP BY Customer_Name, Order_ID
		ORDER BY Repeat_Purchase desc