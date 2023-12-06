--Question 1
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s ON e.emp_no = s.emp_no;
--Question 2
SELECT emp_no, last_name, first_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';
--Question 3
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
JOIN department AS d ON d.dept_no = dm.dept_no
JOIN employees AS e ON e.emp_no = dm.emp_no;
-- Question 4
SELECT e.emp_no, e.last_name, e.first_name, d.dept_no, d.dept_name
FROM employees AS e
JOIN dept_employee AS de ON de.emp_no = e.emp_no
JOIN department AS d ON d.dept_no = de.dept_no;
--Question 5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
--Question 6
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_employee AS de ON e.emp_no = de.emp_no 
JOIN department AS d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';
--Question 7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_employee AS de ON e.emp_no = de.emp_no 
JOIN department AS d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';
--Question 8
SELECT COUNT(last_name), last_name
FROM employees
GROUP BY last_name
ORDER BY 1 DESC;