select min(released_year) from books;

select max(pages) from books;

-- alphabetical order not length
select min(author_fname), max(author_fname)
from books;

-- returns max char length in title
select max(char_length(title)) as longest
from books;

select max(pages), title from books;
