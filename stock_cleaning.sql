-- clean the raw dataset(stock prices table)

create or replace table `Portfolio_Finance.stock_prices_cleaned` as
select
date(date) as date, -- convert string to date
cast(open as FLOAT64) as open_price,
cast(high as FLOAT64) as high_price,
cast(low as FLOAT64) as low_price,
cast(close as FLOAT64) as close_price,
cast(volume as INT64) as volume
from `Portfolio_Finance.stock_prices_raw`
where close is not null