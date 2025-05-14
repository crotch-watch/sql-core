-- titles which contains 'stories'
select
  title
from
  books
where
  title like '%stories%';

-- book with max pages
select
  title,
  pages
from
  books
order by
  pages desc
limit
  0, 1;

-- column alias as summary title and year of 3 most recent books
select
  concat_ws (" - ", title, released_year) as summary
from
  books
order by
  released_year desc
limit
  0, 3;

-- find all books with an author_lname containing " "
select
  title,
  author_lname
from
  books
where
  author_lname like '% %';

-- books with 3 lowest stock_quantity
select
  title,
  released_year,
  stock_quantity
from
  books
order by
  stock_quantity asc
limit
  0, 3;

-- first sort by author_lname then title
select
  title,
  author_lname
from
  books
order by
  author_lname asc,
  title asc;

-- sort Alphabetically By author_lname
select
  concat (
    'STRING',
    " ",
    upper(author_fname),
    " ",
    upper(author_lname)
  ) as yell
from
  books
order by
  author_lname asc;