-- creates a virtual table in db
-- show tables
-- which can be used as a starting point for other queries
-- whichs had this portion in common


-- what about clashing column names
create view join_series_reviews_reviewers as
select title, released_year, genre, rating, first_name, last_name
from series left join reviews
on series.id = reviews.series_id left join reviewers
on reviews.reviewer_id = reviewers.id;

show tables;

select * from join_series_reviews_reviewers
where released_year > 2012;
