select
  first_name,
  last_name,
  ifnull (count(rating), 0) as COUNT,
  ifnull (min(rating), 0) as MIN,
  ifnull (max(rating), 0) as MAX,
  ifnull (round(avg(rating)), 0) as AVG,
  case
    when rating is null then 'INACTIVE'
    else 'ACTIVE'
  end as `STATUS`
from
  reviewers
  left join reviews on reviewers.id = reviews.reviewer_id
group by
  first_name,
  last_name;
