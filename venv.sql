-- SELECT * FROM employees
-- WHERE employee_id = 144;

-- SELECT *
-- FROM employees
-- WHERE salary < (SELECT salary
-- 				FROM employees
--                 WHERE employee_id = 144);
USE dummydb;
-- SELECT employee_id , first_name , last_name , salary
-- FROM employees 
-- WHERE salary = (
-- SELECT DISTINCT salary 
-- FROM employees 
-- ORDER BY salary DESC
-- LIMIT 1 OFFSET 2
-- );

-- SELECT employee_id,first_name,last_name,salary
-- FROM employees
-- WHERE salary = (
-- SELECT DISTINCT salary
-- FROM employees
-- ORDER BY salary ASC
-- LIMIT 1 OFFSET 2
-- );

-- SELECT employee_id,first_name,last_name,hire_date
-- FROM employees
-- where hire_date > ANY
--      ( 
--       SELECT hire_date
-- 	  FROM employees
--       WHERE first_name = 'Steven'
-- 	 );
--        

-- WITH thirdmax AS (
--     SELECT DISTINCT salary 
--     FROM employees 
--     ORDER BY salary DESC 
--     LIMIT 1 OFFSET 2
-- )
-- SELECT employee_id , first_name , last_name , salary
-- FROM employees 
-- WHERE salary = ( SELECT salary from thirdmax);

-- SELECT employees.first_name , departments.department_name
-- FROM employees
-- JOIN departments ON employees.department_id = departments.department_id

-- SELECT first_name , (SELECT job_title FROM jobs WHERE jobs.job_id = employees.job_id) AS job_title
-- FROM employees;


-- SELECT first_name , job_title
-- FROM employees , jobs
-- WHERE employees.job_id = jobs.job_id;


-- SELECT first_name , job_title
-- FROM employees
-- JOIN jobs ON employees.job_id = jobs.job_id;


-- SELECT first_name , job_title 
-- FROM employees , jobs
-- WHERE employees.job_id = jobs.job_id AND salary = (SELECT MAX(salary) FROM employees);


-- SELECT first_name , job_title 
-- FROM employees 
-- JOIN jobs ON employees.job_id = jobs.job_id 
-- WHERE salary = (SELECT MAX(salary) FROM employees);


-- SELECT e.first_name AS employee_name , m.first_name AS manager_name
-- FROM employees e
-- JOIN employees m ON e.manager_id = m.employee_id;




-- SELECT employees.first_name , departments.department_name
-- FROM employees
-- INNER JOIN departments ON employees.department_id = departments.department_id

-- SELECT employees.first_name , departments.department_name
-- FROM employees
-- LEFT JOIN departments ON employees.department_id = departments.department_id

-- SELECT employees.first_name , departments.department_name
-- FROM employees
-- RIGHT JOIN departments ON employees.department_id = departments.department_id

-- SELECT employees.first_name , departments.department_name
-- FROM employees
-- CROSS JOIN departments ON employees.department_id = departments.department_id
-- WITH AVJ AS (
--   SELECT first_name,salary 
--   FROM employees
--   WHERE salary > (SELECT AVG(salary) FROM employees)
--   )
--   SELECT first_name , salary
--   FROM AVJ;

-- SELECT first_name , salary
-- FROM employees
-- WHERE salary < ( SELECT salary FROM employees WHERE employees.first_name = "Steven" AND employees.last_name = "King");

-- SELECT department_name,first_name
-- FROM departments
-- JOIN employees ON departments.manager_id = employees.employee_id


SELECT department_name,city
FROM departments
JOIN locations ON departments.location_id = locations.location_id;