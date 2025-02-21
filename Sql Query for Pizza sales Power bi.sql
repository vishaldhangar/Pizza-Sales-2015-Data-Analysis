SELECT * FROM [pizza sales]

select sum(total_price)/count(distinct order_id) as Avg_Order_Value from [pizza sales]

select sum(quantity)  as Total_Pizza_Sold from [pizza sales]

select  count(distinct order_id) as Total_Orders from [pizza sales]

select cast(cast(sum(quantity) as decimal(10,2))/cast(count(distinct order_id) as decimal(10,2)) as decimal (10,2))as Avg_Pizzas_Per_Order from [pizza sales]

select DATENAME(DW,order_date) as order_day,count(distinct order_id) as Total_orders from [pizza sales] group by DATENAME(DW,order_date)

select DATENAME(Month,order_date) as Month_Name,count(distinct order_id) as Total_orders from [pizza sales] group by DATENAME(Month ,order_date)

select pizza_category,sum(total_price)*100/(select sum(total_price) from [pizza sales])  as PCT_TotalSales from [pizza sales] group by pizza_category

select pizza_size,sum(total_price)*100/(select sum(total_price) from [pizza sales])  as PCT_TotalSales from [pizza sales] group by pizza_size

select Top 5 pizza_name,sum(total_price) as Total_Revenue from [pizza sales] group by pizza_name order by Total_Revenue DESC

select Top 5 pizza_name,sum(total_price) as Total_Revenue from [pizza sales] group by pizza_name order by Total_Revenue ASC

select Top 5 pizza_name,sum(quantity) as Total_Quantity from [pizza sales] group by pizza_name order by Total_Quantity DESC

select Top 5 pizza_name,sum(quantity) as Total_Quantity from [pizza sales] group by pizza_name order by Total_Quantity ASC

select Top 5 pizza_name,count(distinct order_id) as Total_Orders from [pizza sales] group by pizza_name order by Total_Orders DESC

select Top 5 pizza_name,count(distinct order_id) as Total_Orders from [pizza sales] group by pizza_name order by Total_Orders ASC







