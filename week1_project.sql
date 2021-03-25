-- All Employees before 1965-01-01
SELECT * FROM employees WHERE birth_date > 1965-01-01;
-- All female employees hired after 1990
SELECT * FROM employees WHERE hire_date > 1989-12-31 AND gender="F";
-- First 50 employees whose last name start with F
SELECT * FROM employees WHERE last_name LIKE 'F%' limit 50;
-- Inserting 3 new employees
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES (100, '1990-01-01', 'Robert', 'Ochi', 'M', '2021-03-16');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES (101, '1989-03-06', 'Darryl', 'Malthers', 'M', '2021-03-16');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES (102, '1990-07-07', 'Sheryl', 'Sanders', 'F', '2021-03-16'); 
-- Change Employee Name
UPDATE employees SET first_name='Bob' WHERE emp_no='10023';
--Change hire dates of employees whose first/last names start with P
UPDATE employees SET hire_date='2002-01-01' WHERE first_name LIKE 'P%' OR last_name LIKE 'P%';
--Employee ID purge of anything less than 10000.
DELETE FROM employees WHERE emp_no < 10000;
--Single Line multi-delete by ID
DELETE FROM employees WHERE (emp_no) IN (10048, 10099, 10234, 20089);