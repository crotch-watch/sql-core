-- find the year each author published their first book
select author_fname, author_lname, min(released_year)
from books
group by author_fname, author_lname

-- NOTE: mutli col fname and lname is required
-- we have dups for lname
-- alt. way
select
concat(author_fname, " ", author_lname) as author,
min(released_year)
from books
group by author;

-- if author has one book then first and last would be same
select
concat(author_fname, " ", author_lname) as author,
count(*) as books_written,
min(released_year) as first_book,
max(released_year) as latest_book,
max(pages) as longest_book
from books
group by author;
