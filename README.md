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
4. Résultats de desc:

**Table Cli**<br />
  Name   Null?    Type        
NUMCLI NOT NULL NUMBER     
NOMCLI NOT NULL VARCHAR2(50)<br/>
PAYS   NOT NULL VARCHAR2(50)<br/> 
TEL             VARCHAR2(20)<br/> 
VILLE           VARCHAR2(50)<br/> 
DEPT            VARCHAR2(50)<br/> 
NAT             VARCHAR2(50)<br/>

**Table Com**  
Name      Null?    Type         
NUMCOM    NOT NULL NUMBER       
NUMCLI    NOT NULL NUMBER     
FRAISPORT NOT NULL VARCHAR2(50)<br/> 
DATECOM   NOT NULL DATE      
PAYMENT   NOT NULL VARCHAR2(20)<br/> 

**Table Det**  
Name   Null?    Type         
NUMCOM NOT NULL NUMBER       
NUMPRO NOT NULL NUMBER       
QTE    NOT NULL VARCHAR2(50)<br/> 
REMISE NOT NULL VARCHAR2(50)<br/> 

**Table Fou**<br />
Name   Null?    Type         
NUMFOU NOT NULL NUMBER       
NOMFOU NOT NULL VARCHAR2(50)<br/> 
PAYS   NOT NULL VARCHAR2(50)<br/> 
TEL             VARCHAR2(20)<br/> 
  
**Table Pro**  
Name     Null?    Type          
NUMPRO   NOT NULL NUMBER       
NUMFOU   NOT NULL NUMBER      
NOMPRO   NOT NULL VARCHAR2(50)<br />
TYPEPRO  NOT NULL VARCHAR2(50)<br/> 
PRIXUNIT NOT NULL VARCHAR2(50)<br/> 

5. Oui il y a un ordre à respecter, pour la même raison que celle précisé ci-dessus, étant donné qu'il y a des contraintes entre les tables.

## Exercice 2 : se familiariser avec le schéma HR d'Oracle


## Exercice 3 : travailler avec le schéma HR d'Oracle


## Exercice 4 : Modélisation
