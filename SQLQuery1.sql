SELECT SUM(total_price) as Total_Revenue from pizza_sales;
Select SUM(total_price) /  Count(Distinct order_id) AS Avg_Order_Value from pizza_sales;
SELECT SUM(quantity) as Total_Pizza_Sold from pizza_sales;
SELECT COUNT(Distinct order_id) AS Total_orders from pizza_sales;

SELECT CAST(CAST (SUM(quantity) AS DECIMAL (10,2))/
CAST(COUNT(Distinct order_id)AS DECIMAL (10,2)) AS DECIMAL (10,2)) AS Avg_Pizza_per_order from pizza_sales;


SELECT DATENAME(DW,order_date) as order_day , COUNT (DISTINCT order_id) AS Total_orders from pizza_sales
Group BY DATENAME (DW, order_date);

SELECT DATENAME(MONTH,order_date) AS Month_Name, COUNT(DISTINCT order_id) AS Total_orders 
FROM pizza_sales
GROUP BY DATENAME(MONTH,order_date)
ORDER BY Total_orders DESC



SELECT pizza_category,sum(total_price) as Total_sales, sum(total_price) * 100 / (SELECT sum(total_price) from pizza_sales)AS Percentages_Of_Sales 
from pizza_sales
where MONTH(order_date)=1
GROUP BY pizza_category

SELECT pizza_size,sum(total_price) as Total_sales, sum(total_price) * 100 / (SELECT sum(total_price) from pizza_sales)AS Percentages_Of_Sales 
from pizza_sales
where MONTH(order_date)=1
GROUP BY pizza_size


select pizza_name , sum (total_price) AS Total_Revenue from pizza_sales
group by pizza_name
order by Total_Revenue desc



select Top 5 pizza_name , sum (total_price) AS Total_Revenue from pizza_sales
group by pizza_name
order by Total_Revenue desc 


select Top 5 pizza_name , sum (quantity) AS Total_Quantity from pizza_sales
group by pizza_name
order by Total_Quantity desc 