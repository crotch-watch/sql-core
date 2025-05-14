select max(pages) from books;
-- once we receive the number it can be done maunually
select title from books where pages = 634
-- not programatic

-- another way could be
select title, pages
from books
group by pages desc
limit 0, 1;
-- issue with this approach is the magic number 1 in limit
-- this is only viable if there are no dups for max page values
-- otherwise we only get one
-- so second arg to limit requires us to know how many maxs are there
-- NOTE: anything that is not calc. programmatically test on it's deps.
-- ie. numbers passed as arg as in this case.

-- using subqueries
select title, pages
from books
where pages = (
  select max(pages) from books
);
