/*DELETE TABLE*/
/*drop table worker;*/

/*01 CREATE*/
/*
create table worker
	(id number(4) primary key,
	lastname varchar2(50) not null,
	firstname varchar2(50),
	salary number(9,2),
        benefitinkind varchar2(20),
	birthdate date,
        hiredate date);
*/
        
/*02*/
/*ID 100*/
insert into worker (id, lastname, firstname, salary, benefitinkind, birthdate, hiredate)
values (100, 'Adams', 'Benoit', 1800, 'carpackage', 
to_date('15/05/1978','DD/MM/YYYY'), to_date('15/10/2005','DD/MM/YYYY'));

/*ID 110*/
insert into worker
values (110, 'Dubois', 'Alain', 1500, null, 
to_date('11/03/1985','DD/MM/YYYY'), to_date('02/02/2011','DD/MM/YYYY'));

/*ID 120*/
insert into worker (id, lastname, firstname, salary, birthdate)
values (120, 'Radu', 'Jean', 1500, 
to_date('25/10/1969','DD/MM/YYYY'));

/*ID 130*/
insert into worker (id, lastname, firstname, salary)
values (130, 'Trenet', 'Julien', 2000);

/*ID 140*/
insert into worker (id, lastname, firstname, birthdate)
values (140, 'VanRoos', 'Marie', to_date('01/04/1989','DD/MM/YYYY'));

/*ID 150*/
insert into worker
values (150, 'LastName', 'Renaud', null, null, 
to_date('21/11/1972','DD/MM/YYYY'), null);

/*ID 160*/
insert into worker
values (160, 'Ergot', null, 1650, null, null, sysdate);

/*ID 170*/
insert into worker (id, lastname, firstname)
values (170, 'Ramon', 'Pierre');

/*03*/
select * 
from worker;

/*04*/
/*ID 180*/
insert into worker(id, lastname, hiredate)
values(180, 'Poulet', sysdate);

/*ID 190*/
insert into worker(id, lastname, hiredate)
values(190, 'Dupont', to_date('21/11/1949','DD/MM/YYYY'));

/*05*/
  /*1*/
update worker
set benefitinkind = 'carpackage'
where hiredate between to_date('01/01/2011', 'DD/MM/YYYY') and to_date('31/12/2011', 'DD/MM/YYYY');

  /*2*/
update worker
set hiredate = sysdate
where hiredate is null;

  /*3*/
update worker
set salary = salary * 1.05
where salary < 1800;

  /*4*/
select *
from worker;

  /*5*/
update worker
set salary = 1200
where salary is null;

  /*6*/
update worker
set lastname = 'Radut',
    birthdate = to_date('25/10/1968','DD/MM/YYYY')
where id = 120;


/*06*/
  /*1*/
delete
from worker
where birthdate < to_date('01/01/1950','DD/MM/YYYY');

  /*2*/
delete
from worker
where id in (100,110,130);

  /*3*/
delete
from worker
where lastname like 'D%';

/*7 TESTS*/
select * from worker;





















