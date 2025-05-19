select title, round(avg(rating), 1) as avg_rating
from series inner join reviews
on series.id = reviews.series_id
group by title
order by avg_rating asc;
