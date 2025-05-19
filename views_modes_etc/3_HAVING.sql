-- using having clause group with specific conditions
-- can be selected/filtered
-- ex. a groups where year > 2000 etc.
select *, count(title)
from series
group by genre
having char_length(title) > 6;
