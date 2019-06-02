/*
drop table SessionTravail;
drop table Pc;
drop table Salle;
drop table Utilisateur;
drop table Personne;
drop table Localite;
drop table Pays;
*/

/*Partie 1*/
/*01*/
create table Pays (
  Numero number(4) primary key,
  Nom varchar2(30) not null
);

/*02*/
create table Localite (
  NomLoc number(3) primary key,
  CodePostal number(4) not null,
  Libelle varchar2(50) not null,
  Pays number(4) not null references Pays(Numero)
);

/*03*/
create table Personne (
  NumCarteId number(20) primary key,
  NomPrenom varchar2(100) not null,
  NbEnfants number(2),
  Salaire number(6,2) not null,
  Localite number(3) not null references Localite(NomLoc)
);

/*04*/
alter table Personne
  add(Telephone varchar2(20));
  
/*Partie 2*/
/*01*/
create table Utilisateur (
  UserName varchar2(20) primary key,
  Nom varchar2(30) not null,
  Prenom varchar2(50) not null,
  Categorie varchar2(20) not null,
    check (Categorie in ('Etudiant','Professeur','Administrateur')),
  DateCreation Date not null,
  constraint Utilisateur_Unique unique(Nom, Prenom)
);
  
/*02*/
create table Salle (
  Etage number(1),
  Numero number(2),
  NbPlace number(3),
  constraint Salle_Pk primary key(Etage,Numero)
);

/*03*/
create table Pc (
  Matricule varchar2(10) primary key,
  Etage number(1) not null,
  Numero number(2) not null,
  constraint Salle_Pc foreign key(Etage,Numero) references Salle(Etage,Numero)
);

/*04*/
create table SessionTravail (
  Login varchar2(20) not null,
  Pc varchar2(10) not null,
  Debut Date not null,
  Fin Date,
  constraint Session_Pk primary key(Login, Pc, Debut),
  constraint Session_User foreign key(Login) references Utilisateur(UserName),
  constraint Session_Pc foreign key(Pc) references Pc(Matricule)
);
  
  
  
  
  
  
  
  
  


