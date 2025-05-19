-- first_name last_name all reviews
select first_name, last_name, rating
from reviewers inner join reviews
on reviewers.id = reviews.reviewer_id;
