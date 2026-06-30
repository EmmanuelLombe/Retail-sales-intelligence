truncate table retail_sales;
select count(*) from retail_sales;

CREATE TABLE retail_sales (
    order_id VARCHAR(20),
    order_date DATE,
    customer_id VARCHAR(20),
    customer_name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    region VARCHAR(20),
    city VARCHAR(50),
    product_category VARCHAR(50),
    product_name VARCHAR(100),
    quantity INT,
    unit_price NUMERIC(10,2),
    discount_pct NUMERIC(5,2),
    sales_amount NUMERIC(10,2),
    profit NUMERIC(10,2),
    shipping_cost NUMERIC(10,2),
    payment_method VARCHAR(30),
    customer_satisfaction INT,
    return_flag BOOLEAN,
    order_status VARCHAR(20),
    days_to_ship INT
);

--Total revenue and profit
select 
	sum(sales_amount) as total_revenue, 
	sum(profit) as total_proftit
from retail_sales;

--Total revenue and profit by product category 
select 
	product_category, 
	sum(sales_amount) as total_revenue, 
	sum(profit) as total_proftit
from retail_sales
group by product_category
order by total_revenue desc;

--Profit margin by category
select 
	product_category, 
	sum(sales_amount) as total_revenue, 
	sum(profit) as total_proftit, 
	ROUND((select sum(sales_amount)/sum(profit)), 2) as profit_margin
from retail_sales
group by product_category
order by profit_margin desc;

--Total revenue and profit by region
select 
	region,
	sum(sales_amount) as total_revenue,
	sum(profit) as total_profit
from retail_sales
group by region
order by total_revenue desc;

--Total revenue of each payment method and the number of orders associated with each order status
select 
	payment_method, 
	sum(sales_amount) as total_revenue
from retail_sales
group by payment_method
order by total_revenue desc;

select order_status, count(order_status) as total_in_status 
from retail_sales
group by order_status
order by total_in_status desc;


