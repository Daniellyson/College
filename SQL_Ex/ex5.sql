/*01*/
select employee_id, last_name, hire_date
from employees
where job_id = 
      (select job_id
      from employees
      where employee_id = 103)
and employee_id <> 103;

/*02*/
select *
from employees
where department_id in
    (select department_id
    from employees
    where last_name like '%u%');
    
/*03*/
select last_name, salary
from employees
where manager_id in
    (select manager_id
    from employees
    where last_name = 'Mourgos')
and last_name <> 'Mourgos';

/*04*/
select last_name
from employees
where department_id in
    (select department_id
    from employees
    where last_name in ('Mourgos','Abel'))
and last_name <> 'Mourgos' and last_name <> 'Abel';

/*05*/
select *
from employees
where salary > all
    (select avg(salary)
    from employees)
order by salary;

/*06*/
select last_name, salary, manager_id
from employees
where manager_id in
    (select manager_id
    from employees
    where employee_id = 174)
and commission_pct >= 
    (select commission_pct
    from employees
    where employee_id = 149);

/*07*/
select *
from employees
where salary > all
    (select salary
    from employees
    where job_id = 'SA_MAN');

/*08*/
select *
from employees
where (department_id, manager_id) = 
    (select department_id, manager_id
    from employees
    where employee_id = 142);

/*09*/
select last_name, job_id, manager_id
from employees
where (job_id, manager_id) in
    (select job_id, manager_id
    from employees
    where department_id in (20,50));

/*10*/
select last_name
from employees
where hire_date < any
    (select hire_date
    from employees
    where department_id = 20);
    
/*11*/
select * 
from employees
where (department_id, salary) in 
    (select department_id, salary
    from employees
    where commission_pct is not null);
    
/*12*/
select last_name, first_name
from employees emp
where salary < 
    (select avg(salary)
    from employees
    where department_id = emp.department_id);

/*13*/
select emp.last_name, emp.first_name, dep.department_name, emp.hire_date
from employees emp, departments dep
where (salary, commission_pct) in 
    (select salary, commission_pct
    from employees
    where hire_date > to_date('1989','YYYY'))
and emp.department_id = dep.department_id;

/*STR_TO_DATE MYSQL*/

/*14*/
select *
from employees emp
where hire_date <
    (select hire_date
    from employees sup
    where sup.employee_id = emp.manager_id);








