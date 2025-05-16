select
  first_name, last_name, ifnull(sum(amount), 0) as spent
from customers left join orders
on customers.id = orders.customer_id
group by first_name, last_name;

-- ifnull evaluates expression and if result is null
-- replaces it with second argument provided
-- maybe it can also be used as a constraint
