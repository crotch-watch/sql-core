-- assuming already existing tables
-- add column
ALTER TABLE companies
ADD COLUMN employees INT NOT NULL DEFAULT 1;
-- it will insert a column and will be filled with default
-- for all rows, entries would be same as already existing rows

-- adding multiple columns
ALTER TABLE companies
ADD COLUMN branches INT NOT NULL DEFAULT 5,
ADD COLUMN company_id INT AUTO_INCREMENT NOT NULL UNIQUE;

-- drop column
ALTER TABLE companies
DROP COLUMN employees;

-- renaming table
ALTER TABLE companies
RENAME TO suppliers;

-- renaming column
ALTER TABLE suppliers
RENAME COLUMN addr TO address;

-- can i remove all columns using *
-- TODO: after all queries
-- ALTER TABLE suppliers
-- DROP COLUMN *;

-- modify column def.
ALTER TABLE suppliers
-- first column name then column def.
-- since new def. doesn't have not null
-- field can contain null values
-- maybe all previous def. is overridden
MODIFY address VARCHAR(100);

-- invalid don't know reason
-- redundant
ALTER TABLE suppliers
MODIFY COLUMN `address` VARCHAR(100),
MODIFY COLUMN `address` VARCHAR(128) NOT NULL;

ALTER TABLE suppliers
MODIFY COLUMN address VARCHAR(128) NOT NULL,
MODIFY COLUMN employees INT NOT NULL DEFAULT 5;
-- data on existing rows didn't change

-- adding constraints
ALTER TABLE suppliers
ADD CONSTRAINT min_branches_5 check(branches >= 5),
DROP CONSTRAINT min_branches_5;
