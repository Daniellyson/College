/*01*/
select upper(last_name), lower(first_name), to_char(salary, '$99,999')
from employees
where hire_date < to_date('12-OCT-1999','DD-MON-YYYY');

/*02*/
select last_name || to_char(hire_date, '"since the" ddspth "of" month yyyy') "Employee List"
from employees
where department_id in (10,20,50);

/*03*/
select department_id, first_name, last_name
from employees
where department_id is not null and 
      hire_date between to_date('01/01/1989','dd/mm/yyyy') and 
                        to_date('31/12/2001','dd/mm/yyyy')
order by department_id desc, last_name, first_name;

/*04*/
select *
from employees
where to_char(hire_date,'yyyy') = 1998;

/*05*/
select next_day(to_date('05/june/2013','dd/month/yyyy'), 'sunday')
from dual;

/*06*/
select to_char(hire_date,'DD/MM/YY'),
      to_char(hire_date,'fmDD MONTH YYYY'),
      to_char(hire_date,'DDSPTH MON YYYY'),
      to_char(hire_date,'DAY DD "of" MONTH'),
      to_char(hire_date,'YYYY-MM-DD')
from employees;

/*07*/
select last_name, round((sysdate - hire_date)/7)
from employees
where length(last_name) >= 5;

/*08*/
select first_name, last_name, nvl(commission_pct,0), department_id, nvl(job_id,'No job'), manager_id
from employees;

/*09*/
select employee_id, salary + salary * nvl(commission_pct,0)
from employees;

/*10*/
select last_name,
        decode(department_id, 50, 100,
                              20, 120,
                              80, 150,
                              50) "PRIME ANNUELLE"
from employees;

/*10*/
select last_name,
        case department_id
              when 50 then 100
              when 20 then 120
              when 80 then 150
              else 50 
        end "PRIME ANNUELLE"
from employees;




