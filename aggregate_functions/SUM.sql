select sum(pages) from books;

select
concat(author_fname, " ", author_lname) as authors,
sum(pages) as pages_written
from books
group by authors;

select sum(author_fname) from books;
