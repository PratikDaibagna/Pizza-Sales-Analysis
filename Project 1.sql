USE project1;
SELECT * FROM pizza_sales2 ;
SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales2 ; 
SELECT sum(total_price) / COUNT(DISTINCT order_id ) AS Avg_Order_Value from pizza_sales2 ; 
SELECT SUM(quantity) AS Total_Pizza_Sold  FROM pizza_sales2 ;
SELECT COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales2 ;
SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) /
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS Avg_Pizzas_Per_Order FROM pizza_sales2 ;
SELECT DAYNAME( STR_TO_DATE( order_date , '%d-%m-%Y') ) as order_day , COUNT(DISTINCT order_id) AS Total_Orders From pizza_sales2 GROUP BY
 DAYNAME(STR_TO_DATE( order_date , '%d-%m-%Y')) ;
 SELECT MONTHNAME( STR_TO_DATE( order_date , '%d-%m-%Y') ) as Month_Name , COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales2 
 GROUP BY  MONTHNAME( STR_TO_DATE( order_date , '%d-%m-%Y') ) ORDER BY Total_Orders DESC ;
 SELECT pizza_category , SUM( total_price ) *100 / ( SELECT SUM( total_price ) FROM pizza_sales2 ) AS Percentage_Of_Total_Sales FROM pizza_sales2 
 GROUP BY pizza_category;
SELECT pizza_size , CAST(SUM( total_price ) *100 / ( SELECT SUM( total_price ) FROM pizza_sales2 )AS DECIMAL(10,2)) AS Percentage_Of_Total_Sales FROM pizza_sales2 
 GROUP BY pizza_size ORDER BY Percentage_Of_Total_Sales DESC ;
SELECT pizza_name, SUM(total_price) AS Total_Revenue FROM pizza_sales2 GROUP BY pizza_name ORDER BY Total_Revenue DESC LIMIT 5 ; 
SELECT pizza_name, SUM(total_price) AS Total_Revenue FROM pizza_sales2 GROUP BY pizza_name ORDER BY Total_Revenue ASC LIMIT 5 ; 
SELECT pizza_name, SUM(quantity) AS Total_Quantity FROM pizza_sales2 GROUP BY pizza_name ORDER BY Total_Quantity DESC LIMIT 5 ; 
SELECT pizza_name, SUM(quantity) AS Total_Quantity FROM pizza_sales2 GROUP BY pizza_name ORDER BY Total_Quantity ASC LIMIT 5 ; 
SELECT pizza_name, COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales2 GROUP BY pizza_name ORDER BY Total_Orders DESC LIMIT 5 ; 
SELECT pizza_name, COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales2 GROUP BY pizza_name ORDER BY Total_Orders ASC LIMIT 5 ; 
