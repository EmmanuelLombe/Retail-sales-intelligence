select * from retail_sales_cleaned limit 10;


--Total revenue and profit
select 
	sum(sales_amount) as total_revenue, 
	sum(profit) as total_proftit
from retail_sales_cleaned;

--Total revenue and profit by product category 
select 
	product_category, 
	sum(sales_amount) as total_revenue, 
	sum(profit) as total_proftit
from retail_sales_cleaned
group by product_category
order by total_revenue desc;

--Profit margin by category
select 
	product_category, 
	sum(sales_amount) as total_revenue, 
	sum(profit) as total_proftit, 
	ROUND((select sum(sales_amount)/sum(profit)), 2) as profit_margin
from retail_sales_cleaned
group by product_category
order by profit_margin desc;

--Total revenue and profit by region
select 
	region,
	sum(sales_amount) as total_revenue,
	sum(profit) as total_profit
from retail_sales_cleaned
group by region
order by total_revenue desc;

--Total revenue of each payment method and the number of orders associated with each order status
select 
	payment_method, 
	sum(sales_amount) as total_revenue
from retail_sales_cleaned
group by payment_method
order by total_revenue desc;

select order_status, count(order_status) as total_in_status 
from retail_sales_cleaned
group by order_status
order by total_in_status desc;




