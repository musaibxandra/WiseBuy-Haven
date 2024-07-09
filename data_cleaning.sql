
-- Reesearch On:

-- fields we are dealing with;

select column_name from information_schema.columns
where table_name = 'wisebuy'
order by column_name asc

-- Note: the column name have spaced like "order id" instead of "order_id", 
-- and all the columns starts with capital letter, 
-- so we need to alter the names of columns.

-- Rename Columns

alter table wisebuy rename "Category" to category;
alter table wisebuy rename "City" to city;
alter table wisebuy rename "Country" to country;
alter table wisebuy rename "Customer ID" to customer_id;
alter table wisebuy rename "Customer Name" to customer_name;
alter table wisebuy rename "Discount" to discount;
alter table wisebuy rename "Order Date" to order_date;
alter table wisebuy rename "Order ID" to order_id;
alter table wisebuy rename "Postal Code" to postal_code;
alter table wisebuy rename "Product ID" to product_id;
alter table wisebuy rename "Product Name" to product_name;
alter table wisebuy rename "Profit" to profit;
alter table wisebuy rename "Region" to region;
alter table wisebuy rename "Sales" to sales;
alter table wisebuy rename "Segment" to segment;
alter table wisebuy rename "Ship Date" to ship_date;
alter table wisebuy rename "Ship Mode" to ship_mode;
alter table wisebuy rename "State" to state;
alter table wisebuy rename "Sub-Category" to sub_category;
alter table wisebuy rename "Quantity" to quantity

-- Show the table desciption

SELECT column_name, data_type, is_nullable
FROM information_schema.columns
WHERE table_name = 'wisebuy';

--  rows
select count(*) from wisebuy

--  columns
select count(column_name) from information_schema.columns
where table_name = 'wisebuy'

-- Note: We are dealing with 9994 rows with 20 columns

-- Check for duplicates

SELECT "profit","postal_code","sales","quantity","discount","customer_name","segment",
	"country","city","state","order_id","region","product_id","category","sub_category",
	"product_name","order_date","ship_date","ship_mode","customer_id", COUNT(*) FROM wisebuy
GROUP BY "profit","postal_code","sales","quantity","discount","customer_name",
	"segment","country","city","state","order_id","region","product_id",
	"category","sub_category","product_name","order_date","ship_date",
	"ship_mode","customer_id"
HAVING COUNT(*) > 1;

-- Note: Its seems like we only have one duplicate value, its weird! right?
-- well, i confirmed the same using pandas and yes there is only one duplicate record
-- and i'll just drop it.





