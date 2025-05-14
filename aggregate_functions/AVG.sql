-- avg. pages written per book

select
concat(author_fname, " ", author_lname) as authors,
count(*) as books_written,
avg(pages) as avg_pages
from books
group by authors
order by avg_pages desc;

-- avg. stock quantity for books released in same year
select
released_year,
avg(stock_quantity) as stock
from books
group by released_year;
