-- scenarion 1: where foreign key ins't explicitly added
-- let's assume these tables are supposed to be associated
-- if I insert data into orders and that doesn't have a way to associate
-- itself with the first table ex. below I'm assuming the customer_id in orders
-- should be same as id in customers but in case orders has an entry which
-- doesn't have an id which is present in customers there is no relation bw. that row
-- and any row in customers table as the relation described by me is 'id' <-> 'customer_id'
-- therefore that is no one to one, one to many no type of relation so once that table gets queried
-- for that row ie. order that wouldn't belong to any user hence there would be no point in keeping
-- a row like that since it's only present to serve as an endpoint to one relation.
-- so foreign key concept is required to ensure that these rows with no relation to previous
-- table aren't mistakenly added into other tables.
CREATE TABLE
  customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
  );

CREATE TABLE
  orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8, 2),
    customer_id INT,
  );

--
-- improvement
--
CREATE TABLE
  customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
  );

CREATE TABLE
  orders (
    -- why can't this id be used as foreign key?
    -- if I have more entries in this table than customers which certainly
    --  will be the case as there'd be more orders than customers
    -- then it wouldn't make sense as one id key wouldn't be able to
    -- be unique and also be present in customers
    -- 1 customer -> 5 orders order_id will be 1...5 but customers 1.
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8, 2),
    customer_id INT,
    -- adding foreign key to ensure customer_id
    -- present in set customer table id column
    FOREIGN KEY (customer_id) REFERENCES customers (id)
  );

INSERT INTO
  customers (first_name, last_name, email)
VALUES
  ('Boy', 'George', 'george@gmail.com'),
  ('George', 'Michael', 'gm@gmail.com'),
  ('David', 'Bowie', 'david@gmail.com'),
  ('Blue', 'Steele', 'blue@gmail.com'),
  ('Bette', 'Davis', 'bette@aol.com');

INSERT INTO
  orders (order_date, amount, customer_id)
VALUES
  ('2016-02-10', 99.99, 1),
  ('2017-11-11', 35.50, 1),
  ('2014-12-12', 800.67, 2),
  ('2015-01-03', 12.50, 2),
  ('1999-04-11', 450.25, 5);