  select title, rating
  from series inner join reviews
  on series.id = reviews.series_id;
