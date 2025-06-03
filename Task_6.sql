use intern;

# checking table import 
show tables;

ALTER TABLE `sales data`
MODIFY COLUMN `Order Date` DATE;

# total revenue per month
select month(`Order Date`) as Month , sum(Revenue) 
from `sales data`  group by Month;

# which month get highest Revenue
select month(`Order Date`) as Month , sum(Revenue) as Total_Revenue 
from `sales data`  group by Month Order by Total_Revenue desc limit 5;

# unique order per month
SELECT month(`Order Date`) AS month, COUNT(DISTINCT `Ordre ID`) AS unique_orders
FROM `sales data` GROUP BY month
ORDER BY month;
