/*VIEW*/
/*01*/
create or replace view empview
as select employee_id, last_name "Name", salary
from employees;

select * from empview;

/*02*/
create or replace view dept50
  as select first_name, last_name, job_id
    from employees
    where department_id = 50
  with check option constraint dept50_ck;
  
select * from dept50;

/*03*/
create or replace view salaryview
  as select e.last_name "Surname", 
            e.first_name "Name", 
            e.salary "Salary", 
            d.department_name "Department Name", 
            jg.grade_level "Grade Level"
  from employees e, departments d, job_grades jg
  where e.department_id = d.department_id and 
  e.salary between jg.lowest_sal and jg.highest_sal;
  
select * from salaryview;

/*04*/
create or replace view Signaletique
  as select e.first_name,
            e.last_name,
            l.street_address, 
            l.postal_code, 
            l.city, 
            c.country_name, 
            r.region_name
  from employees e, departments d, locations l, countries c, regions r
  where e.department_id = d.department_id and
        d.location_id = l.location_id and
        l.country_id = c.country_id and
        c.region_id = r.region_id;

select * from Signaletique;


/*SEQUENCES*/
/*05*/
create sequence Worker_PK
  start with 300
  increment by 10
  maxvalue 2000;
  
/*06*/
insert into worker (id, lastname, firstname, salary, benefitinkind, birthdate, hiredate)
values (Worker_PK.nextval,
        'Dany',
        'Daniellyson',
        1900,
        'carpackage',
        to_date('18/12/1990','DD/MM/YYYY'),
        to_date('01/02/2019','DD/MM/YYYY'));
        
select worker_pk.curval
from dual;


/*INDEXES*/
/*07*/
create index localite_index
  on personne(localite);













  
  
