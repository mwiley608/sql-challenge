--Query the employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
INNER JOIN salaries as s
ON e.emp_no=s.emp_no;

--Query the first name, last name, and hire date for the employees hired in 1986
SELECT e.first_name, e.last_name, e.hire_date
FROM employees as e
WHERE hire_date BETWEEN '1986-1-1' AND '1986-12-31'
ORDER BY last_name ASC;

--Query the dept managers, their department number, department name, employee number, last name, and first name
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM departments as d
JOIN dept_managers as m
ON (d.dept_no=m.dept_no)
	JOIN employees as e
	ON (m.emp_no=e.emp_no);
	
--Query the department number for each employee, employee number, last name, first name, and department name 
SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as t
JOIN departments as d
ON (t.dept_no=d.dept_no)
	JOIN employees as e
	ON (t.emp_no=e.emp_no);
	
--Query first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT e.first_name, e.last_name, e.sex
FROM employees as e
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';

--Query each employee in the Sales department with employee number, last name, and first name
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_emp as t
JOIN departments as d
ON (t.dept_no=d.dept_no)
	JOIN employees as e
	ON (t.emp_no=e.emp_no)
	WHERE dept_name = 'Sales';

--Query employees in the Sales and Development departments with their employee number, last name, first name, and department name
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_emp as t
JOIN departments as d
ON (t.dept_no=d.dept_no)
	JOIN employees as e
	ON (t.emp_no=e.emp_no)
	WHERE dept_name = 'Sales'
	OR dept_name = 'Development';
	
--Query the frequency counts, in descending order, of all the employee last names
SELECT last_name, COUNT(last_name) AS count
FROM employees as e
GROUP BY last_name
ORDER BY count DESC;

