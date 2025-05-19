-- avg. rating per genre
select genre, round(avg(rating), 1) as avg_rating
from series inner join reviews
on series.id = reviews.series_id
group by genre;

-- using left join
select genre, round(avg(rating), 1) as avg_rating
from series left join reviews
on series.id = reviews.series_id
where rating is not null
group by genre;
