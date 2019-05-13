/*TOP N ANALYSES*/
/*01 rownum si faire automatiquement*/
select first_name, last_name, salary, rownum
from (select first_name, last_name, salary
  from employees
  where department_id = 50
  order by salary)
where rownum <= 2;

/*02*/
select first_name, last_name, rownum
from (select first_name, last_name
  from employees
  order by hire_date desc)
where rownum <=10;

/*ROLLUP ET CUBE*/
/*03*/
select manager_id, department_id, avg(salary)
from employees
where manager_id is not null and department_id is not null
group by (manager_id, department_id);

/*04*/
select manager_id, department_id, avg(salary)
from employees
where manager_id is not null and department_id is not null
group by rollup (manager_id, department_id);

/*05*/
select manager_id, department_id, avg(salary)
from employees
where manager_id is not null and department_id is not null
group by cube (manager_id, department_id);

















