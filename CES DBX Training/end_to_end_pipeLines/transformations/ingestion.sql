--sales
create streaming table sales as 
select *, current_timestamp() as ingestion_date from stream read_files("/Volumes/pipeline/default/input_files/sales/", format=>"csv");

--orders
create streaming table orders as
select *, current_timestamp() as ingestion_date from stream read_files("/Volumes/pipeline/default/input_files/orders/", format=>"csv");

--customers
create streaming table customers as 
select *, current_timestamp() as ingestion_date from stream read_files("/Volumes/pipeline/default/input_files/customers/", format=>"csv");

--products
create streaming table products as 
select *, current_timestamp() as ingestion_date from stream read_files("/Volumes/pipeline/default/input_files/products/", format=>"csv");