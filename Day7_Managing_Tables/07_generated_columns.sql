-- ==========================================
-- Generated Columns
-- ==========================================

/*
Definition:
A Generated Column automatically
calculates its value from other
columns in the same table.
*/

-- ==========================================
-- Syntax
-- ==========================================

CREATE TABLE table_name
(
    column1 data_type,
    column2 data_type,

    generated_column data_type
    GENERATED ALWAYS AS
    (expression)
    STORED
);

------------------------------------------------

-- Example

CREATE TABLE products
(
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2),
    quantity INTEGER,

    total_price DECIMAL(10,2)
    GENERATED ALWAYS AS
    (price * quantity)
    STORED
);

------------------------------------------------

-- Insert Data

INSERT INTO products
(product_name,price,quantity)
VALUES
('Laptop',50000,2),
('Mouse',1500,3);

------------------------------------------------

-- View Data

SELECT *
FROM products;

------------------------------------------------

-- Update Example

UPDATE products
SET quantity = 5
WHERE product_name = 'Laptop';

------------------------------------------------

SELECT *
FROM products;

------------------------------------------------

-- Important Notes

/*
1. Generated columns are calculated automatically.

2. You cannot manually insert values
   into a generated column.

3. PostgreSQL currently supports
   STORED generated columns.
*/

------------------------------------------------

-- Interview Questions

/*
Q1. What is a Generated Column?

Answer:
A Generated Column automatically
calculates its value from
other columns.

----------------------------------------

Q2. Can we insert values into
a Generated Column?

Answer:
No.
The database generates
the value automatically.

----------------------------------------

Q3. Why do we use Generated Columns?

Answer:
To avoid duplicate calculations
and maintain data consistency.
*/