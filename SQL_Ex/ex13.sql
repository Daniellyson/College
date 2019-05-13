--  EXERCICES 13

--1

SELECT LEVEL, first_name,last_name
FROM employees
START WITH manager_id IS NULL
CONNECT BY manager_id = PRIOR employee_id;
-- = CONNECT BY PRIOR employee_id = manager_id;

--2

SELECT LEVEL, first_name, last_name, salary
FROM employees
WHERE last_name  != 'Lorentz'
START WITH last_name = 'Lorentz'
CONNECT BY employee_id = PRIOR manager_id;

--3

SELECT LEVEL,first_name,last_name
FROM employees
WHERE last_name != 'De Haan'
START WITH manager_id IS NULL
CONNECT BY manager_id = PRIOR employee_id;

--4

SELECT LEVEL,first_name,last_name
FROM employees
START WITH manager_id IS NULL
CONNECT BY manager_id = PRIOR employee_id
AND last_name != 'De Haan';

--5

SELECT LEVEL, last_name
FROM employees
START WITH manager_id IS NULL
CONNECT BY manager_id = PRIOR employee_id
AND LEVEL <= 3;


--6

SELECT LPAD(last_name,LEVEL+LENGTH(last_name)-1,'-'),last_name
FROM employees
START WITH manager_id IS NULL
CONNECT BY manager_id = PRIOR employee_id;



