-- the way our data is setup now right join will always look
-- same as inner join as the relation we've set is every key in customers
-- would always be present in orders therefore customers.id is a superset
-- of orders.customer_id and in venn dia. orders.customer_id will be completely
-- inside the customers.id so right now won't do anything
select first_name, last_name, order_date, amount
from customers right join orders
on customers.id = orders.customer_id;

-- if I invert the order of table it'll become left join
select first_name, last_name, order_date, amount
from orders right join customers
on customers.id = orders.customer_id;
