-- limits the number of resulting rows
select
  title,
  released_year
from
  books
limit
  5;

-- when two arguments are passed to limit
-- ie 0, 5 then first is the index from where it starts
-- second is count number of items to include
select
  title,
  released_year
from
  books
limit
  2, 5;

-- NOTE: this could come in clutch for pagination
