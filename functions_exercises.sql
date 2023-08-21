USE employees;

/* Part One */
SELECT * FROM employees WHERE first_name IN ('Irene', 'Vidya', 'Maya');

SELECT * FROM employees WHERE last_name LIKE 'E%';

SELECT *FROM employees WHERE last_name LIKE '%q%';

/* Part Two */
SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';

SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT * FROM employees WHERE last_name LIKE 'E%E';

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

/* Order By */
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;

SELECT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no;
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' ORDER BY emp_no;

SELECT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no DESC;
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' ORDER BY emp_no DESC;

/*Functions Exercise*/
/*Number 1*/
SELECT concat(first_name, ' ', last_name) AS full_name FROM employees WHERE first_name LIKE 'E%' AND last_name LIKE '%e';

/*Number 2*/
SELECT * FROM employees WHERE MONTH(birth_date) = 12 AND DAYOFMONTH(birth_date) = 25;

/*Number 3*/
SELECT * FROM employees WHERE YEAR(hire_date) BETWEEN 1990 AND 1999 AND MONTH(birth_date) = 12 AND DAYOFMONTH(birth_date) = 25;

/*Number 4*/
SELECT * FROM employees WHERE YEAR(hire_date) BETWEEN 1990 AND 1999 AND MONTH(birth_date) = 12 AND DAYOFMONTH(birth_date) = 25 ORDER BY hire_date ASC, birth_date DESC, first_name ASC;

/*Number 5*/
SELECT *, datediff(now(), hire_date) AS days_working FROM employees WHERE YEAR(hire_date) BETWEEN 1990 AND 1999 AND MONTH(birth_date) = 12 AND DAYOFMONTH(birth_date) = 25 ORDER BY hire_date ASC, birth_date DESC, first_name ASC;