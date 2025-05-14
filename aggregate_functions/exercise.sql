-- print total books in db
select
sum(stock_quantity) as stock,
count(*)
from books;

-- print how many books were released each year
select
released_year,
count(*) from books
group by released_year;

-- avg. released year for each author
select
concat(author_fname, " ", author_lname) as author,
avg(released_year) avg_rel_year
from books
group by author;

-- find full name of the author of longest book
select
concat_ws(' ', author_fname, author_lname) as verbose_author
from books
where pages = (
  select max(pages) from books
);

--
select
released_year as `year`,
count(*) as `#books`,
avg(pages) as `avg pages`
from books
group by `year`;