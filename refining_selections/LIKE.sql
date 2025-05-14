--  like is used for pattern matching
-- it isn't 1-1 replacement of regex.
select
  title,
  author_fname,
  author_lname,
  pages
from
  books
where
  author_fname like '%da%';

-- % before pattern indicates that any number of char
-- can be present before it, no char inclusive
-- % after pattern means same just in opp. way
select
  title,
  author_fname,
  author_lname,
  pages
from
  books
where
  title like '%:%';

-- _ underscore is for number of chars.
-- quantity of _ is exact no. of chars which needs to be present
select
  *
from
  books
where
  author_fname like '____';

-- a should be the alphabet in middle of any other word
-- whose length is precisely 3.
select
  *
from
  books
where
  author_fname like '_a_';

-- both % and _ can be used together
-- any number of chars can be present before is found
-- then there must only be 2 more chars. in the word
select
  *
from
  books
where
  author_fname like '%a__';

-- escaping wildcards
-- To select books with '%' in their title:
SELECT
  *
FROM
  books
WHERE
  title LIKE '%\%%';

-- To select items with an underscore '_' in title:
SELECT
  *
FROM
  books
WHERE
  title LIKE '%\_%';
