create database ejercicio1b;

create table productora (
 id integer unsigned primary key unique auto_increment,
 nombre varchar(50) not null,
 ranking tinyint unsigned unique,
 activo tinyint unsigned not null,
 fecha_creacion datetime
 );

alter table productora modify column activo tinyint unsigned not null default true; 

create table prueba (
 id integer unsigned primary key unique auto_increment,
 prueba varchar(50)
 );
 
 drop table prueba;
 
 alter table productora add column lenguaje_actor varchar(500);