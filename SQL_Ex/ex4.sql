/*
  IN -> = ANY
  NOT IN -> <> ALL
  < ANY -> < MAX()
  < ALL -> < MIN()
  > ANY -> > MIN()
  > ALL -> > MAX()
*/
/*01*/
select e.last_name, d.department_id, d.department_name
from employees e, departments d
where e.department_id = d.department_id;
/*01 SQL 1999*/
select e.last_name, d.department_id, d.department_name
from employees e join departments d
on e.department_id = d.department_id;

/*02*/
select e.last_name, j.job_title
from employees e, jobs j
where e.commission_pct is not null and e.job_id = j.job_id;
/*02 SQL 1999*/
select e.last_name, j.job_title
from employees e join jobs j
on e.job_id = j.job_id
where e.commission_pct is not null;

/*03*/
select e.email, d.location_id
from employees e, departments d
where e.department_id = d.department_id and
      e.department_id in (20,50,80);
/*03 SQL 1999*/
select e.email, d.location_id
from employees e join departments d
on e.department_id = d.department_id and
      e.department_id in (20,50,80);
      
/*04*/
select e.last_name, d.department_name, l.city
from employees e, departments d, locations l
where e.department_id = d.department_id and
      d.location_id = l.location_id;
/*04 SQL 1999*/
select e.last_name, d.department_name, l.city
from employees e join departments d
    on e.department_id = d.department_id
    join locations l
    on d.location_id = l.location_id;
    
/*05*/
  /*A*/
  select e.last_name, d.department_name
  from employees e left outer join departments d
  on e.department_id = d.department_id;
  /*B*/
  select e.last_name, d.department_name
  from employees e right outer join departments d
  on e.department_id = d.department_id;
  /*C*/
  select e.last_name, d.department_name
  from employees e full outer join departments d
  on e.department_id = d.department_id;
  
/*06*/
select e.last_name, l.city, j.job_title
from employees e, departments d, locations l, jobs j
where hire_date > to_date('31-12-1995','DD-MM-YYYY') and
      e.department_id = d.department_id and
      d.location_id = l.location_id and
      e.job_id = j.job_id;
/*06 SQL 1999*/
select e.last_name, l.city, j.job_title
from employees e join departments d
    on e.department_id = d.department_id
    join locations l
    on d.location_id = l.location_id
    join jobs j
    on e.job_id = j.job_id
    where hire_date > to_date('31-12-1995','DD-MM-YYYY');
    
/*07*/
  /*A*/
  select e.last_name "Nom de l'employé", e.first_name "Prénom de l'employé", 
  s.last_name "Nom du manager", s.job_id "Job du manager"
  from employees e, employees s
  where e.manager_id = s.employee_id;
  /*A SQL 1999*/
  select e.last_name "Nom de l'employé", e.first_name "Prénom de l'employé", 
  s.last_name "Nom du manager", s.job_id "Job du manager"
  from employees e join employees s
  on e.manager_id = s.employee_id; 
  
  /*B*/
  select e.last_name "Nom de l'employé", e.first_name "Prénom de l'employé", 
  s.last_name "Nom du manager", s.job_id "Job du manager"
  from employees e left outer join employees s
  on e.manager_id = s.employee_id;

/*08*/
select e.last_name
from employees e, departments d, locations l
where e.department_id = d.department_id and
      d.location_id = l.location_id and
      l.city in ('Toronto','Seattle');
/*08 SQL 1999*/
select e.last_name
from employees e join departments d
    on e.department_id = d.department_id
    join locations l
    on d.location_id = l.location_id
    where l.city in ('Toronto','Seattle');

/*09*/
  /*A*/
  select e.last_name, d.department_name, l.city, c.country_name, r.region_name
  from employees e, departments d, locations l, countries c, regions r
  where e.department_id = d.department_id
  and d.location_id = l.location_id
  and l.country_id = c.country_id
  and c.region_id = r.region_id;
  /*A SQL 1999*/
  select e.last_name, d.department_name, l.city, c.country_name, r.region_name
  from employees e join departments d
  on e.department_id = d.department_id
  join locations l
  on d.location_id = l.location_id
  join countries c
  on l.country_id = c.country_id
  join regions r
  on c.region_id = r.region_id;

  /*B*/
  select e.last_name, d.department_name, l.city, c.country_name, r.region_name
  from employees e left outer join departments d
  on e.department_id = d.department_id
  left outer join locations l
  on d.location_id = l.location_id
  left outer join countries c
  on l.country_id = c.country_id
  left outer join regions r
  on c.region_id = r.region_id;
  
/*10*/
select e.last_name "Nom de l’employé", e.hire_date "Date d’embauche de l’employé",
s.last_name "Nom du manager", s.hire_date "Date d’embauche du manager"
from employees e, employees s
where e.manager_id = s.employee_id and e.hire_date > s.hire_date;
/*10 SQL 1999*/
select e.last_name "Nom de l’employé", e.hire_date "Date d’embauche de l’employé",
s.last_name "Nom du manager", s.hire_date "Date d’embauche du manager"
from employees e join employees s
on e.manager_id = s.employee_id and e.hire_date > s.hire_date;










