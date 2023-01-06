-- Drop departments table if exists
DROP TABLE IF EXISTS departments;

-- Create new departments table
CREATE TABLE departments (
    dept_no VARCHAR(10)  NOT NULL,
    dept_name VARCHAR(50)  NOT NULL,
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
    emp_no INT NOT NULL,
    emp_title_id VARCHAR(10) NOT NULL,
    birth_date VARCHAR NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date VARCHAR NOT NULL,
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
CREATE TABLE titles(
    title_id VARCHAR NOT NULL,
    title VARCHAR(25) NOT NULL,
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
    emp_no INT NOT NULL,
    dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
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

CREATE TABLE dept_manager(
    dept_no VARCHAR(10),
    emp_no INT,
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
    emp_no  INT NOT NULL,
    salary  BIGINT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
 

-- View the salaries table structure without the data
SELECT *
FROM salaries;

-- Insert data into the salaries table 

-- View the salaries table
SELECT *
FROM salaries;