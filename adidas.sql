What is the total revenue generated over the years
select sum(total_sales) from sales
What are the top 5 products over the years? 
select product, sum(total_sales)
from sales
GROUP by product
order by 2 desc
limit 5
What is the average daily sales value by retailer?
What are the top regions, states, and cities for sales?
select region,states,city,sum(total_sales)
from sales
GROUP by 1,2,3
order by 4 desc
Limit 1
select CURRENT_DATE
select CURRENT_TIME
Which sales methods are the top 3 for sales
select sales_method,sum(total_sales)
from sales
GROUP by sales_method
order by 2 desc
limit 3
What is the profit margin for different products or categories
select product,((sum(operating_profit))/(sum(total_sales))*100) as profit_margin
from sales
group by product
How does profitability vary across different sales methods?
select sales_method,((sum(operating_profit))/(sum(total_sales))*100) as profit_margin
from sales
group by 1
order by 2 desc


