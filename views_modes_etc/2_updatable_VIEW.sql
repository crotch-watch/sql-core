delete from join_series_reviews_reviewers
where released_year < 2014;

-- The target table join_series_reviews_reviewers of the DELETE is not updatable
-- not every view is updatable insertable there are strict criteria which need to be considerd
-- https://dev.mysql.com/doc/refman/8.4/en/view-updatability.html

create view demo as select * from series order by title;

insert into demo (title, released_year, genre)
values ('Sacred Games', 2016, 'Thriller');

delete from demo
where title = 'Sacred Games';
