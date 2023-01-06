--Data Analysis
-------------------------------------------------------------------------------------------------------------------------------------
--1. List the employee number, last name, first name, sex, and salary of each employee.

SELECT employees.emp_no,employees.last_name,employees.first_name, employees.sex,salaries.salary
FROM employees 
LEFT JOIN salaries on employees.emp_no= salaries.emp_no
ORDER BY emp_no
-------------------------------------------------------------------------------------------------------------------------------------
--2. List the first name, last name, and hire date for the employees who were hired in 1986
SELECT * 
FROM employees
WHERE hire_date BETWEEN '1/01/1986' AND '12/31/1986'
ORDER BY emp_no
-------------------------------------------------------------------------------------------------------------------------------------

--3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM  dept_manager
JOIN departments on dept_manager.dept_no = departments.dept_no
JOIN employees on dept_manager.emp_no = employees.emp_no;
-------------------------------------------------------------------------------------------------------------------------------------

--4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name,
dept_emp.dept_no
FROM employees 
INNER JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON departments.dept_no=dept_emp.dept_no
ORDER BY emp_no;
--------------------------------------------------------------------------------------------------------------------------------------

--5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT e.first_name, e.last_name,e.sex
FROM employees as e
WHERE first_name ='Hercules' AND last_name like 'B_%'
--------------------------------------------------------------------------------------------------------------------------------------
--6. List each employee in the Sales department, including their employee number, last name, and first name.
SELECT employees.emp_no,departments.dept_name,employees.last_name,employees.first_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON departments.dept_no=dept_emp.dept_no
WHERE dept_name ='Sales'
ORDER BY emp_no;
--------------------------------------------------------------------------------------------------------------------------------------
--7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no,departments.dept_name,employees.last_name,employees.first_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON departments.dept_no=dept_emp.dept_no
WHERE dept_name in ('Sales','Development')
ORDER BY emp_no;
--------------------------------------------------------------------------------------------------------------------------------------
--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(*) AS freq_count
FROM employees
GROUP BY last_name
ORDER BY freq_count DESC;
--------------------------------------------------------------------------------------------------------------------------------------