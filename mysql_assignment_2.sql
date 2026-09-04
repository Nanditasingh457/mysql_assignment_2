USE hr;
DESCRIBE employees ;
SELECT first_name AS 'first Name',
last_name AS 'last Name'
FROM employees;
SELECT DISTINCT department_id
FROM employees;
SELECT *
FROM employees
ORDER BY first_name DESC;
SELECT first_name, last_name, salary,
		salary *0.15 AS PF
FROM EMPLOYEES;
SELECT employee_id, first_name, last_name, salary 
FROM employees
ORDER BY salary ASC;
SELECT SUM(salary) AS total_salaries
FROM employees;
SELECT MAX(salary) AS maximum_salary,
		MIN(salary) AS minimum_salary
FROM employees;
SELECT ROUND(AVG(salary), 2) AS average_salary,
		COUNT(*) AS employees_count
FROM employees;
SELECT COUNT(*) AS number_of_employees
FROM employees;
SELECT COUNT(DISTINCT job_id) AS number_of_jobs
FROM employees;
SELECT UPPER(first_name) AS first_name_uppercase
FROM employees;
SELECT SUBSTRING(first_name, 1,3) AS first_three_characters
FROM employees;
SELECT 171 * 214 + 625 AS result;
SELECT CONCAT(first_name, '', last_name) AS employees_name
FROM employees;
SELECT TRIM(first_name) AS trimmed_first_name
FROM employees;
SELECT first_name, last_name,
		CHAR_LENGTH(first_name) AS first_name_lenth,
        CHAR_LENGTH(last_name) AS last_name_langth
FROM employees;
SELECT first_name,
	CASE
    WHEN first_name  REGEXP '[0-9]' THEN 'Contains number'
	ELSE 'NO number'
END AS number_check
FROM employees;
SELECT *
FROM employees
LIMIT 10;
SELECT employee_id, first_name, last_name,
	ROUND(salary / 12, 2) AS monthly_salary
FROM employees;