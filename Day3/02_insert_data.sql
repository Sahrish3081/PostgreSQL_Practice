-- Customers

INSERT INTO customers (customer_name, city)
VALUES
('Ali','Lahore'),
('Sara','Karachi'),
('Ahmed','Islamabad'),
('Fatima','Lahore'),
('Usman','Karachi');

----------------------------------------------------

-- Orders

INSERT INTO orders
(customer_id,product,category,quantity,price,order_date)

VALUES
(1,'Laptop','Electronics',1,120000,'2026-01-10'),
(1,'Mouse','Electronics',2,2500,'2026-01-11'),
(2,'Chair','Furniture',3,7000,'2026-01-15'),
(3,'Desk','Furniture',1,18000,'2026-02-01'),
(4,'Phone','Electronics',2,85000,'2026-02-10'),
(5,'Keyboard','Electronics',4,4500,'2026-02-15'),
(2,'Monitor','Electronics',1,42000,'2026-03-05'),
(3,'Table','Furniture',2,14000,'2026-03-12'),
(4,'Printer','Electronics',1,35000,'2026-03-20'),
(5,'Cabinet','Furniture',1,22000,'2026-03-28');