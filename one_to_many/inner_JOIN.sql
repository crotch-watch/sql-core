-- inner join
-- this looks same as that of redundant table data
-- in which all of the data is present in one table
-- this cleans up the data and join produces same output
-- meaning this is a diff. representation of same data
select *
from customers join orders
on customers.id = orders.customer_id;

-- desired output
select first_name, last_name, order_date, amount
from customers inner join orders
on customers.id = orders.customer_id;

-- it's inner as in it's on venn dia. intersection
-- both el. with same ids are outputed
