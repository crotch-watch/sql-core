create table
  contacts (
    person varchar(64) not null,
    phone varchar(10) not null unique
  );

insert into
  contacts (person, phone)
values
  ('aditya', '1234567890'),
  ('himesh', 0987654321);

-- errors out since phone isn't unique
insert into
  contacts (person, phone)
values
  ('mukesh', '1234567890');
