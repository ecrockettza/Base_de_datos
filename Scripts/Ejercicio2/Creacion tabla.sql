create table ejercicio2.alumnos
(
id_alumno int not null PRIMARY KEY,
nombre varchar(50) not null,
numero_lista int UNIQUE,
nacionalidad varchar(20),
edad int default 18,
nota_media decimal(5,2)
);

