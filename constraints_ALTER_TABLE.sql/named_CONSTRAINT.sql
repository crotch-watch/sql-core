create table
  human (
    person varchar(64) not null,
    -- this allows null values
    -- null won't fail as it's allowed
    -- add not null
    age tinyint,
    constraint non_negative_age check (age >= 0)
  );

insert into
  human (person, age)
values
  ('homosapien', 0);

insert into
  human (person, age),
values
  ('unborn', -1);

insert into
  human (person, age)
values
  ('inhuman', null);

create table
  -- NOTE: it might not make sense for diff. fields to be unique
  -- individually but in conjuction they must.
  -- keep these cases in mind
  companies (
    company varchar(256) not null,
    addr varchar(256) not null,
    constraint diff_company_name_addr_pair unique (company, addr)
  );

insert into
  companies (company, addr)
values
  ('bmw', 'shop-123'),
  ('mercedes', 'shop-321'),
  ('maruti', 'shop-123');

insert into
  companies (company, addr)
values
  ('bmw', 'shop-123');