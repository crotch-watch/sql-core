create table students (
  id int unsigned auto_increment not null,
  primary key(id),
  first_name varchar(64) not null
);

create table papers (
  title varchar(128) not null,
  grade int,
  student_id int unsigned not null,
    foreign key (student_id)
    references students (id)
    on delete cascade
);

INSERT INTO students (first_name) VALUES
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

-- firstname of student who wrote a corresponding essay and has a grade on it
select first_name, title, grade
from students inner join papers
on students.id = papers.student_id;

-- since our data is one to many therefore every right and inner join
-- will have same output
select first_name, title, grade
from students right join papers
on students.id = papers.student_id;

-- where papers corresponding to all students are shown
select first_name, title, grade
from students left join papers
on students.id = papers.student_id;

-- all missing grades should be 0
select first_name, title, ifnull(grade, 0) as grade
from students left join papers
on students.id = papers.student_id;

-- averages of all students marks
select first_name, ifnull(avg(cast(grade as signed)), 0) as grade
from students left join papers
on students.id = papers.student_id
group by first_name;

-- average column with grade 75 and above as passing
-- mistake rather than avg. if any grade is < 75 fail
select first_name, case
    when grade < 75 then 'failing'
    else 'passing'
  end
as status
from students left join papers
on students.id = papers.student_id
group by first_name;

-- it has to be on avg
select first_name, avg(grade) as average,
  case
    when avg(grade) < 75 then 'failing'
    else 'passing'
  end as status
from students left join papers
on students.id = papers.student_id
group by first_name;

--
select first_name, avg(grade) as average,
  case
  -- if there is no ifnull then the avg could be null
  -- in that case the null comparison will yield null
  -- that's neither 0 || 1 so it will slide through this when
  -- and pass into else
    when ifnull(avg(grade), 0) < 75 then 'failing'
    else 'passing'
  end as status
from students left join papers
on students.id = papers.student_id
group by first_name;
