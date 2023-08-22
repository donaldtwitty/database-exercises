SELECT departments.dept_name
    AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name)
    AS 'Department Manager'
FROM departments
    JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
    JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date = '9999-01-01';

SELECT departments.dept_name
    AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name)
    AS 'Department Manager'
FROM departments
    JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
    JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date = '9999-01-01' AND employees.gender = 'F';

SELECT titles.title, COUNT(titles.emp_no)
    AS 'Total'
FROM dept_emp
    JOIN employees ON dept_emp.emp_no = employees.emp_no
    JOIN titles ON employees.emp_no = titles.emp_no
    JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Customer Service'
    AND dept_emp.to_date = '9999-01-01' AND titles.to_date = '9999-01-01'
GROUP BY titles.title;

SELECT departments.dept_name
    AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name)
    AS 'Department Manager', salaries.salary
    AS 'Salary'
FROM departments
    JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
    JOIN employees ON dept_manager.emp_no = employees.emp_no
    JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date = '9999-01-01' AND salaries.to_date = '9999-01-01';

