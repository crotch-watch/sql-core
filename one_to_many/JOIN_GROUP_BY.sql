select
  concat_ws(" ", first_name, last_name) as person,
  sum(amount) as spent
from customers inner join orders
on customers.id = orders.customer_id
group by person;
