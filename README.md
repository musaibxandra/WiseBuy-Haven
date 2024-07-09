# WiseBuy Haven

![Alt text](images/wise_img.jpg)


Python | sql / Postgresql | Tableau

This repository contains SQL queries and the slide presentation for the analytical project on WiseBuy Haven sales a shopping mall chain in united states franchised over 49 states, Aims at exploring the sales and analyzing metrics and concerns on sales at WiseBuy Haven a retail mall by anlyzing the following:


1. What regions have made the most sales?
2. Which states have turned out to be more profitable?
3. Derive the average sales by product sub-category
4. Which year had the highest Weekly average sale?
5. What is the total profit ratio over years?



# Data

The dataset used in this analysis contains records close 1000 customers obtained from which is available in this repo.

Information on the dataset include:

 `profit`, `postal_code`, `sales` , `quantity` , `discount` , `customer_name`, `segment`,
 `country`, `city`, `state`, `order_id`, `region`, `product_id`, `category`, `sub_category`,
 `product_name`, `order_date`, `ship_date`, `ship_mode`, `customer_id`



# SQL Analytical Queries


- `data_cleaning.sql`: query for data cleaning and data exploration
- `query_visualization.sql`: query for data visualization in Tableau


# Graphs and Charts

- KPIs
- Calendar
- U.S Map
- Bar Chart
- Line Chart
- Interactive Dashboard

#### Availabe in the packaged Tableau Workbook ; `wise_workbook.twbx`


# Analytical Results

Brief findings of this project are:
1. West region has the highest sales followed by East.
2. California and New york are the most profitable states.
3. Average sales by product sub-category are:


![Alt text](images/snap.png)


4. "2006" had the highest Weekly average sale
5. "Illinois" has the lowest monthly profit margin?


# Final Report

- Available in the tableau workbook file `wise_workbook.twbx`.

![Alt text](images/snap2.png)
