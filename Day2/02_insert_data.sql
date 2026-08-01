-- ======================================
-- Insert Departments
-- ======================================

INSERT INTO departments (department_name)
VALUES
('IT'),
('HR'),
('Finance'),
('Marketing');

-- ======================================
-- Insert Employees
-- ======================================

INSERT INTO employees
(employee_name, email, salary, city, department_id)
VALUES
('Ali', 'ali@gmail.com', 80000, 'Lahore', 1),
('Sara', 'sara@gmail.com', 65000, 'Karachi', 2),
('Ahmed', 'ahmed@gmail.com', 90000, 'Islamabad', 1),
('Fatima', 'fatima@gmail.com', 70000, 'Lahore', 3),
('Usman', 'usman@gmail.com', 95000, 'Karachi', 1),
('Ayesha', 'ayesha@gmail.com', 60000, 'Lahore', 2),
('Bilal', 'bilal@gmail.com', 55000, 'Islamabad', 4),
('Hina', 'hina@gmail.com', 85000, 'Karachi', 3);