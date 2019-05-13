/*TEST LABO 3*/
select (count(*) - count(commission_pct)) "Commission NULL"
from employees;

select STDDEV(avg(salary))
from employees
group by employee_id;

/*01*/
select department_id, count(*), min(salary), max(salary)
from employees
group by department_id;

/*02*/
select job_id, count(distinct(salary))
from employees
group by job_id;

/*03*/
select department_id, avg(salary)
from employees
where hire_date > to_date('10 july 1988', 'dd month yyyy') and
      COMMISSION_PCT is null
group by department_id;

/*04*/
select department_id
from employees
group by department_id
having count(*) > 2;

/*05*/
select department_id, job_id, count(*)
from employees
group by department_id, job_id
order by department_id;

/*06*/
select manager_id, count(*)
from employees
group by manager_id
having count(*) < 5;

/*07*/
select department_id, avg(salary)
from employees
where hire_date > to_date('01 january 1980', 'dd month yyyy')
group by department_id
having avg(salary) between 4000 and 10000;

/*08*/
select department_id, max(salary) - min(salary) "Salary difference"
from employees
group by department_id;

/*09*/
select manager_id, avg(salary), to_char(avg(salary), '$99,999.99') "Moyenne"
from employees
where manager_id is not null
group by manager_id
having count(*) >= 2
order by avg(salary) desc;

/*10*/
select job_id, department_id, sum(salary)
from employees
group by job_id, department_id
having count(*) >= 2;















