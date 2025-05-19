select
  title,
  rating,
  concat_ws (' ', first_name, last_name) as reviewer
from
  series
  left join reviews on series.id = reviews.series_id
  left join reviewers on reviews.reviewer_id = reviewers.id;