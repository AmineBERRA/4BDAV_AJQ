# 4BDAV_AJQ

Groupe Amine Juan-Lucas Quentin

## Préparation
1. Se connecter avec `sqlplus system/oracle`
2. Créer un utilisateur avec `CREATE USER nomdefamille IDENTIFIED BY password;`
3. Accorder tous les droits avec `GRANT ALL PRIVILEGES TO nomdefamille;`

## Exercice 1 : Création du schéma
1. Répo crée ici-même
2. Créer les relations de bases via le script `Database.sql`;
3. Oui il y a un ordre à respecter dans l'ordre de créations des tables car certaines dépendent d'autres comme la table Pro qui a besoin de la primary key de la table Fou à la création vu qu'elle est utilisé en tant que Foreign Key.
4. Résultats de desc
```
Table Cli
  Name   Null?    Type        
NUMCLI NOT NULL NUMBER     
NOMCLI NOT NULL VARCHAR2(50)
PAYS   NOT NULL VARCHAR2(50)
TEL             VARCHAR2(20)
VILLE           VARCHAR2(50)
DEPT            VARCHAR2(50)
NAT             VARCHAR2(50)

Table Com
Name      Null?    Type         
NUMCOM    NOT NULL NUMBER       
NUMCLI    NOT NULL NUMBER     
FRAISPORT NOT NULL VARCHAR2(50)
DATECOM   NOT NULL DATE      
PAYMENT   NOT NULL VARCHAR2(20)

Table Det 
Name   Null?    Type         
NUMCOM NOT NULL NUMBER       
NUMPRO NOT NULL NUMBER       
QTE    NOT NULL VARCHAR2(50)
REMISE NOT NULL VARCHAR2(50) 

Table Fou
Name   Null?    Type         
NUMFOU NOT NULL NUMBER       
NOMFOU NOT NULL VARCHAR2(50)
PAYS   NOT NULL VARCHAR2(50)
TEL             VARCHAR2(20) 
  
Table Pro 
Name     Null?    Type          
NUMPRO   NOT NULL NUMBER       
NUMFOU   NOT NULL NUMBER      
NOMPRO   NOT NULL VARCHAR2(50)
TYPEPRO  NOT NULL VARCHAR2(50) 
PRIXUNIT NOT NULL VARCHAR2(50)
```

5. Oui il y a un ordre à respecter, pour la même raison que celle précisé ci-dessus, étant donné qu'il y a des contraintes entre les tables.

## Exercice 2 : se familiariser avec le schéma HR d'Oracle
5. On peut voir dans le schéma HR les tables *Departments*, *Employees*, *Countries*, *Jobs*, *Job_History*, *Locations* et *Regions*.
6. Voir le fichier ddl.sql

## Exercice 3 : travailler avec le schéma HR d'Oracle


## Exercice 4 : Modélisation


## DAY 2

## Exercice 1

```
set serveroutput on;

DECLARE

ncountries INTEGER;

ndepartments INTEGER; 
nemployees INTEGER; 
njobhistory INTEGER; 
njobs INTEGER; 
nlocations INTEGER;
nregions INTEGER;
nmanager INTEGER; 
propmanagers INTEGER; 

BEGIN

SELECT COUNT(*) INTO ndepartments FROM departments;
SELECT COUNT(*) INTO nregions FROM regions;
SELECT COUNT(*) INTO ncountries FROM countries;
SELECT COUNT(*) INTO nlocations FROM locations;
SELECT COUNT(*) INTO nemployees FROM employees;
SELECT COUNT(*) INTO njobs FROM jobs;
SELECT COUNT(*) INTO njobhistory FROM job_history;


DBMS_OUTPUT.PUT_LINE('ncountries : '||ncountries||' ndepartments : '||ndepartments||' nemployees : '||nemployees||' njobhistory : '||njobhistory||' njobs : '||njobs||' nlocations : '||nlocations||' nregions : '||nregions);


SELECT COUNT(*) INTO nbmanager
FROM EMPLOYEES e
WHERE e.JOB_ID LIKE 'ST_MAN' OR e.JOB_ID LIKE 'SA_MAN' OR e.JOB_ID LIKE 'FI_MGR' OR e.JOB_ID LIKE 'AC_MGR' OR e.JOB_ID LIKE 'PU_MAN' OR e.JOB_ID LIKE 'MK_MAN';
propmanagers := 100 * nbmanager / nbemployees;



DBMS_OUTPUT.PUT_LINE('nb de managers = '||nmanager);
DBMS_OUTPUT.PUT_LINE('proportion de managers = '||propmanagers||'%');



END;
```

## Exercice 2

```
SELECT table_name,num_rows FROM all_tables WHERE owner = 'HR';
```

## Exercice 3

```
DECLARE
v Vol%ROWTYPE;
BEGIN
v.Idvol := 'BA270';
v.Date_heure_depart := to_date('01/06/2022 10:15', 'DD/MM/YYYY hh24:mi');
v.Date_heure_arrivee := to_date('01/06/2022 12:15', 'DD/MM/YYYY hh24:mi');
v.Ville_depart := 'Rome';
v.Ville_arrivee := 'Paris';
INSERT INTO vol VALUES v;
END;
```

##Day 4

##Exercice 

![image](https://user-images.githubusercontent.com/73899075/172580500-4d5fe790-d1e5-4483-bf16-2d83c08ee3d3.png)

