-- left joins
select *
from customers left join orders
on customers.id = orders.customer_id;
-- this is same as the table which will have all the data
-- if we hadn't had separated it into another table
-- all the redundant fields and nulls
-- flow :-
-- 1.one table customers + orders -> 2.separate tables a.customers & b.orders
-- if a left join b -> 1. one table customers + orders
-- therefore if all data is in one table its in it's left join

select first_name, last_name, order_date, amount
from orders inner join customers
on orders.customer_id = customers.id;
-- this is has same result as that of inner join
-- since there or no customer_id that don't have an associated id
-- when rows with id are joined they all have associated ids
-- the join produces same result as inner join.

-- NOTE: left join can help to in this case find user's relation to orders
-- i.e. as we've sepated tables, info. regarding separate concerns aren't
-- avail to any table ex. customers don't have order info. and vice versa.
-- so in order to find how customers relate to orders we'd need left join
-- order would also matter as orders of customers -> customers left join orders
