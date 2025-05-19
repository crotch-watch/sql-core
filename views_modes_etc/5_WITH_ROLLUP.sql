select title, avg(rating) as avg
from full_table
group by title;


select title, avg(rating) as avg
from full_table
group by title with rollup;

select title, released_year, avg(rating) as avg
from full_table
group by title, released_year with rollup;

