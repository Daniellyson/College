/*1*/
select last_name, first_name, department_id
from employees
order by department_id, last_name desc;

/*2*/
select last_name, salary * 1.02 "Indexed Salary"
from employees;

/*3*/
select *
from employees
where employee_id between 100 and 200;

/*4*/
select last_name, first_name, Phone_number
from employees
where Commission_pct is not null;

/*5*/
select *
from employees
where last_name in ('King', 'Ernst', 'Greenberg', 'Chen');

/*6*/
select distinct department_id, job_id
from employees;

/*7*/
select email, phone_number
from employees
where job_id = 'IT_PROG';

/*8*/
select last_name, first_name
from employees
where last_name like 'D%' or last_name like '_e%' or last_name like '_a%';

/*9*/
select *
from employees
where Manager_id in (100, 103, 124) and
      salary not between 2500 and 4000
order by manager_id, salary desc;

/*10*/
select employee_id
from employees
where department_id is null;

/*11*/
select *
from employees
where phone_number like '650%' or phone_number like '590%' and
      Commission_pct is null
order by salary;



