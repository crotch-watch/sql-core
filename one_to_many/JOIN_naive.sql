SELECT id
FROM customers
WHERE last_name = 'George';
-- outputs - 1
-- then in second query we can where id=1
SELECT *
FROM orders
WHERE customer_id = 1;
-- we don't have which customer corresponds to which order

SELECT *
FROM orders
WHERE customer_id = (
  SELECT id FROM customers WHERE last_name = 'George'
);
-- using subquery still doesn't provide customer with orders

-- kind of gives the ans.
SELECT first_name, last_name
from customers
WHERE first_name = 'George';

SELECT *
FROM orders
WHERE customer_id = (
  SELECT id FROM customers WHERE last_name = 'George'
);
