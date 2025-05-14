select author_lname, count(*)
from books
group by author_lname;

select author_lname, count(*)
from books
group by author_lname
order by desc;

select released_year, count(released_year)
from books
group by released_year;

-- similar output
select released_year, count(*)
from books
group by released_year;
