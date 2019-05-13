/*01*/
select employee_id , job_id
from employees
union
select employee_id , job_id
from job_history;

/*02*/
select employee_id , job_id
from employees
union all
select employee_id , job_id
from job_history;

/*03*/
select last_name, salary
from employees
union
select lastname, salary
from worker;

/*04*/
select department_id
from departments
minus
select department_id
from employees;

/*05*/
select employee_id, first_name, last_name, job_id
from employees
union
select employee_id, null, null, job_id
from job_history
order by employee_id;

/*06*/
select employee_id
from employees
minus
select employee_id
from job_history;

/*07*/
select first_name, last_name
from employees
where employee_id in (
  select employee_id
  from employees
  minus
  select employee_id
  from job_history
);

/*08*/
select employee_id, job_id
from employees
intersect
select employee_id, job_id
from job_history;


/*09*/
select first_name, last_name, job_id
from employees
where (employee_id, job_id) in (
  select employee_id, job_id
  from employees
  intersect
  select employee_id, job_id
  from job_history
);

/*10*/
select employee_id, job_id
from employees
minus
select employee_id, job_id
from job_history;

/*11*/
select first_name, last_name, job_id
from employees
where (employee_id, job_id) in (
  select employee_id, job_id
  from employees
  minus
  select employee_id, job_id
  from job_history
);






















