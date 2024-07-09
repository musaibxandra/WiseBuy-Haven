
/*
--------------------------------------------------------------------------------------------------------
Data Exploration and Analysis for WiseBuy Haven
--------------------------------------------------------------------------------------------------------

Reesearch Questions
=======================================================================================================
- What regions have made the most sales?
- Which states have turned out to be more profitable?
- What is the average sales by product-sub category?
- What are the Weekly average sales? 
- What is the total profit margin?

*/
--  Table
select * from wisebuy
order by 1 asc

--  Regions
select distinct region from wisebuy
order by 1 asc

--  States
select distinct state from wisebuy
order by 1 asc

--  cities
select distinct city from wisebuy
order by 1 asc


-- What regions have made the most sales?
select region, round(cast(sum(sales) as numeric), 0) as total
from wisebuy
group by region
order by round(cast(sum(sales) as numeric), 0) desc;

-- Which states have turned out to be profitable?
select state, round(cast(sum(sales) as numeric), 2) as total_profit
from wisebuy
group by state
order by total_profit desc;

-- What is the average sales by product-sub category?

select sub_category, round(cast(avg(sales) as numeric),2) as avg_sale
from wisebuy
group by sub_category
order by avg_sale desc
limit 7;

-- Which year had the highest Weekly average sale?
select year, sum(average_sales) as total_avg_sales from
(select 
    extract(year from to_date("order_date", 'DD-MM-YYYY')) as year,
    extract(week from to_date("order_date", 'DD-MM-YYYY')) as week,
    round(avg(sales):: numeric, 2) as average_sales
from wisebuy 
group by year, week
order by year, week)
group by year
order by total_avg_sales desc
limit 1


-- Which state has the lowest monthly profit margin?

select state,
	extract(year from to_date("order_date", 'DD-MM-YYYY')) as year,
	extract(month from to_date("order_date", 'DD-MM-YYYY')) as month,
	round((sum(profit)/sum(sales) * 100)::numeric, 2) as profit_margin
from wisebuy
group by year, month, state
order by profit_margin
limit 1


