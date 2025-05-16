-- here I'm manually doing this so here I need keep in mind
-- which field in which table is whose primary or foreign key
DELETE FROM orders WHERE customer_id = 1
DELETE FROM customers WHERE id = 1

-- if I try to delete customers from table there would be an error
-- stating it can't be deleted because foreign key must have an association
-- in primary key so logically if primary key is unique and it's deleted from
-- customers table then in orders table the foreign key wouldn't have a
-- primary key counterpart.
-- so first I'd have to delete the from orders table and then customers
-- so if I wish to delete the customer and want all the related data is
-- deleted then I can use ON DELETE CASCADE clause in foreign key constraint

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
    FOREIGN KEY (customer_id)
      REFERENCES customers (id)
      ON DELETE CASCADE
  );
