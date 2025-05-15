create table
  adults (
    person varchar(24) not null,
    age tinyint unsigned check (age >= 18)
  );

insert into
  adults (person, age)
values
  ('aditya', 27);

-- check fails
insert into
  adults (person, age)
values
  ('mukesh', 17);

create table
  palindrome (
    word varchar(24) unique check (reverse (word) = word)
  );

insert into
  palindrome (word)
values
  ('mom'),
  ('racecar'),
  ('madam');

-- check fails
insert into
  palindrome (word)
values
  ('fails');
