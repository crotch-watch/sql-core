create or replace views join_series_reviews_reviewers as
select title, released_year, genre, rating, first_name, last_name
from series left join reviews
on series.id = reviews.series_id left join reviewers
on reviews.reviewer_id = reviewers.id;

alter view as join_series_reviews_reviewers
select title, released_year, genre, rating, first_name, last_name
from series left join reviews
on series.id = reviews.series_id left join reviewers
on reviews.reviewer_id = reviewers.id;

rename table
join_series_reviews_reviewers to full_table;
