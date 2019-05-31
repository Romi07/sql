create table libros (
 id integer unsigned primary key unique auto_increment,
 título varchar(200) not null,
 genero varchar(200) default ''
 );
 
 alter table libros add column fecha_publicacion date;
 
 alter table libros modify column fecha_publicacion date not null;
 
 create database escuela;
 
 alter table libros drop column fecha_publicacion;
 
 drop table libros;
 
 drop table if exists libros;