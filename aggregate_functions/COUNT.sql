-- gets the count of rows
select count(*) from books;

-- in course it's mentioned that this shouldn't work
-- but it does maybe mariadb ?
select title, author_fname, count(*) from books;

-- count of valid rows in column
-- excluding NULL
select count(title) from books;

-- skip@start
insert into books () values ();

select count(*) from books;
-- 20
select count(title) from books;
-- 19 as there is a Null title
-- skip@end

-- count unique values
select count(author_fname) from books;
select count(distinct author_fname) from books;

-- title includes 'the'
select title from books where title like '%the%';
select count(title) from books where title like '%the%';
-- since rows are already filtered with where constraint
-- no need to count title * will do might even be better
select count(*) from books where title like '%the%';
-- queries for selection can be used
-- constraints which limit selection
-- order by and limit can also be used
