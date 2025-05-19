select title as unreviewed_series
from series left join reviews
on series.id = reviews.series_id
where rating is null;
-- NOTE: since there is no review corresponding to these series
-- all entries in all columns would be null on join

-- right join
select title as unreviewed_series
from reviews right join series
on reviews.series_id = series.id
where rating is null;
