-- separate in diff. files if need be
-- provide meaningfull examples
-- use this after sourcing file
-- join strings together
select
  concat ('h', 'e', 'y')
  -- TODO: short description of behaviour when cols are passed as an arg.
  -- constant comparsion to loop iteration right or wrong !?
select
  concat (author_fname, '*')
from
  books;

select
  concat (author_fname, ' ', author_lname)
from
  books;

select
  concat (author_fname, ' ', author_lname) as author
from
  books;

-- CONCAT_WS(separator, ...args)
select
  CONCAT_WS ('-->', author_fname, author_lname) as author
from
  books;

-- substring
-- substring ex. also ellipsis at end with concat
select
  substring('Hello World', 1, 4);

select
  substring('Hello World', 7);

select
  substring('Hello World', -3);

select
  substring(title, 1, 10) as 'short title'
from
  books;

select
  substr (title, 1, 10) as 'short title'
from
  books;

-- nested fns. ?
select
  concat (substr (title, 1, 10), '..') as 'short title'
from
  books;

select
  concat_ws (
    ".",
    substring(author_fname, 1, 1),
    substring(author_lname, 1, 1)
  ) as 'author initials'
from
  books;

select
  concat (
    substring(author_fname, 1, 1),
    ".",
    substring(author_lname, 1, 1),
    "."
  ) as 'author initials'
from books;

-- replace
-- provide ex. of bad work replace
select replace ('Hello World', 'Hell', '%$#@');

select replace ('Hello World', 'l', '7');

select replace ('Hello World', 'o', '0');

select replace ('HellO World', 'o', '*');

select replace ('cheese bread coffee milk', ' ', ' and ');

select replace (title, 'e ', '3')
from books;

select replace (title, ' ', '-')
from books;

-- length bytes vs char_length chars
select title

from books
WHERE char_length(title) < 24;

select char_length('Hello World');

select
char_length(title) as length,
title
from books;

select
  author_lname,
  char_length(author_lname) as 'length'
from books;

select
concat (
  author_lname,
  ' is ',
  char_length(author_lname),
  ' characters long'
)
from
  books;

select title
from books
where char_length(title) < 24;

-- upper and lower fns.
-- initials chat app

-- left right for initial

-- exercise
-- Reverse and Uppercase the following sentence

-- "Why does my cat look at me with such hatred?

select
reverse (
  upper('Why does my cat look at me with such hatred?')
);

select
author_lname as forwards,
reverse(author_lname) as backwards
from books;

select concat(title, ' was released in year ', released_year)
as blurb
from books;

select title, char_length(title)
as 'character count'
from books;

select
concat(substring(title, 1, 10), '...') as 'short title',
concat(author_lname, ',', author_fname) as author,
concat(stock_quantity, ' in stock') as quantity
from books;
