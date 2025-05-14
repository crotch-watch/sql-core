select distinct
  author_lname
from
  books;

-- distinct author name
select
  author_fname,
  author_lname
from
  books;

-- this works as not distinct fname and distinct lname
-- this works as distinct fname & lname combinations
-- but what if I required distinct one column but not other?
select distinct
  author_fname,
  author_lname
from
  books;

-- here it aligned well but could there be situations where
-- author_fname isn't present in the same row misalignment ?
-- if there are multiple same author_fname with different author_lname ?
-- and conversely diff. author_fname with same author_lname
select distinct
  concat (author_fname, " ", author_lname) as 'distinct fullname'
from
  books;