select author_lname, count(*)
from books
group by author_lname;

select author_lname, count(*)
from books
group by author_fname, author_lname;

select author_fname, author_lname, count(*)
from books
group by author0h_fname, author_lname;

select
concat(author_fname, " ", author_lname) as author,
count(*)
from books
group by author;
