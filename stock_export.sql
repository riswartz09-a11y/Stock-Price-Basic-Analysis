-- aggregate monthly summary

create or replace table `Portfolio_Finance.monthly_stock_summary` as
select
format_date("%Y-%m", date) as year_month,
count(*) as trading_days,
round(avg(close_price), 2) as avg_close_price,
round(min(close_price), 2) as min_price,
round(max(close_price), 2) as max_price
from `Portfolio_Finance.stock_prices_cleaned`
group by year_month
order by year_month;