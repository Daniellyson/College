/*DML Data Manipulation Language : il faut faire un COMMIT pour les activer

DDL Data Definition Language : 
DCL Data Controler Language :  DDL & DCL c'est le même niveau, automatique
COMMIT*/


select * from lempp.client;

select * from lempp.employees;/*revoked*/

select * from lempp.client2;

insert into lempp.client2(idClient, nom, prenom)
values(20, 'Dany', 'Teix');

select * from lempp.client2;

commit;


insert into lempp.client2(idClient, nom, prenom)
values(lempp.clientSeq.nextval, 'Henri', 'Pierre');

select * from LEMPP.CLIENT2;

commit;


