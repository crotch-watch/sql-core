-- on it's own entries are ordered in chronological order
-- order by sorts them by alphabetical order by default (asc)
-- other columns are re-arranged w.r.t ordered column
select
  book_id,
  author_fname,
  author_lname
from
  books
order by
  author_fname;

-- default is asc. it can also be written explicitly
select
  book_id,
  author_fname,
  author_lname
from
  books
order by
  author_fname asc;

-- desc.
select
  book_id,
  title,
  pages
from
  books
order by
  pages desc;

-- we can also order by a column
-- which isn't selected explicitly
-- we are just not selecting the column
select
  book_id,
  title,
  pages
from
  books
order by
  released_year;

-- alt. syntax is to ref. to column number.
select
  book_id,
  title,
  pages
from
  books
order by
  2 asc;

-- if column number is < or > provided columns
-- it errors out showing out of range
select
  book_id,
  title,
  pages
from
  books
order by
  4 asc;

-- ordering by multiple columns
-- first column which is passed in order would be ordered
-- the structure for first column would be fixed
-- then then second column passed would provide sorting
select
  author_fname,
  author_lname,
  released_year
from
  books
order by
  author_fname,
  released_year;

-- individual column can be order separately in asc desc order
select
  author_fname,
  author_lname,
  released_year
from
  books
order by
  author_fname desc,
  released_year desc;

-- reversing the columns for sort
-- this would seem to yield the same result as above
-- but it doesn't as released_year is fixed first
-- then only the second column passed in order i.e. author_fname
-- would be mobile i.e. sorted
-- ex. release year 2001 if there are multiple entries
-- only then author_fname would produce different result
-- else if one year has no multiple entries then it wouldn't
select
  author_fname,
  author_lname,
  released_year
from
  books
order by
  released_year desc,
  author_fname desc;

-- aliased columns can be sorted as well
select
  concat (author_fname, " ", author_lname) as author
from
  books
order by
  author asc;

-- can be used in conjuction with where
-- to constrain the rows to the condition
select
  author_fname,
  author_lname,
  released_year
from
  books
where
  released_year >= 2001
order by
  released_year desc,
  author_fname desc;

-- NOTE: in below ex. it doesn't make sense to order by released_year
-- as there is only 1 year so keep this in mind
select
  author_fname,
  author_lname,
  released_year
from
  books
where
  released_year = 2001
order by
  released_year desc,
  author_fname desc;
