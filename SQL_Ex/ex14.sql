
/* EX 14 */

-- 1
create or replace trigger InitCapWorkerName
before insert or update of lastName,firstName on worker
for each row
begin 
  :new.lastName := INITCAP(:new.lastName);
  :new.firstName :=INITCAP(:new.firstName);
end;
/

insert into worker 
values (1133,'LASTNAMEe','boB',1000.50,null,null,null);

select * from worker;

--   2

create or replace trigger MinSalary
before insert or update of salary on worker
for each row
when (new.salary < 1200)
begin
  :new.salary := 1200;
end;
/

--3
create table Etudiant(
idEtu  number(3) NOT NULL PRIMARY KEY,
nom varchar2(100) NOT NULL,
prenom  varchar2(100) NOT NULL,
pourcent number(5,2),
nbechecs number(2)
);

create table ReussiteSansDelibe(
id number(3) NOT NULL PRIMARY KEY,
nom varchar2(100) NOT NULL,
prenom  varchar2(100) NOT NULL
);

--4
create or replace trigger OKSansDeliberation
after insert or update of pourcent,nbechecs on Etudiant
for each row
when (new.pourcent >= 60 AND new.nbechecs IS NULL)
begin 
  insert into ReussiteSansDelibe values (:new.idEtu,:new.nom,:new.prenom);
end;
/

insert into Etudiant
values(163,'Tes','MAz',65,null);

select * from ReussiteSansDelibe;

select * from Etudiant;


