-- Drop departments table if exists
DROP TABLE IF EXISTS departments;

-- Create new departments table
CREATE TABLE departments (
    dept_no VARCHAR(100)   NOT NULL,
    dept_name VARCHAR(100)   NOT NULL,
    PRIMARY KEY (dept_no)
);
-- View the departments table structure without the data
SELECT *
FROM departments;

-- Insert data into the departments table 

-- View the departments table
SELECT *
FROM departments;

-- Drop employees table if exists
DROP TABLE IF EXISTS employees;

-- Create new employees table

CREATE TABLE employees(
    emp_no INT,
    emp_title_id VARCHAR(10),
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex VARCHAR(1),
    hire_date DATE,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- View the employees table structure without the data
SELECT *
FROM employees;

-- Insert data into the employees table 

-- View the employees table
SELECT *
FROM employees;

-- Drop titles table if exists
DROP TABLE IF EXISTS titles;

-- Create new titles table
create table titles(
    title_id VARCHAR,
    title VARCHAR(25),
    PRIMARY KEY (title_id)
);

-- View the titles table structure without the data
SELECT *
FROM titles;

-- Insert data into the titles table 

-- View the titles table
SELECT *
FROM titles;

-- Drop dept_emp table if exists
DROP TABLE IF EXISTS dept_emp;

create table dept_emp(
    emp_no INT,
    dept_no VARCHAR(10),
	primary key (dept_no,emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- View the dept_emp table structure without the data
SELECT *
FROM dept_emp;

-- Insert data into the dept_emp table 

-- View the dept_emp table
SELECT *
FROM dept_emp;

-- Drop dept_managers table if exists
DROP TABLE IF EXISTS dept_managers;

create table dept_manager(
    dept_no VARCHAR(10),
    emp_no INT,
	primary key (dept_no,emp_no),
     FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- View the dept_managers table structure without the data
SELECT *
FROM dept_manager;

-- Insert data into the dept_managers table 

-- View the dept_managers table
SELECT *
FROM dept_manager;

-- Drop salaries table if exists
DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries(
	emp_no INT PRIMARY KEY NOT NULL,
	FOREIGN KEY (emp_no, emp_title_id) REFERENCES employees(emp_no, emp_title_id),
	salary INT
);

-- View the salaries table structure without the data
SELECT *
FROM salaries;

-- Insert data into the salaries table 

-- View the salaries table
SELECT *
FROM salaries;