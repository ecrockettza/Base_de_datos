create table if not exists Gimnasio (
Id INT PRIMARY KEY NOT NULL,
Nombre VARCHAR(30),
Localidad VARCHAR(58)
);

create table if not exists Cliente (
Id INT PRIMARY KEY NOT NULL,
Nombre VARCHAR(30),
Fecha_Nac date,
Id_Gym INT, FOREIGN KEY (Id_Gym) REFERENCES Gimnasio(Id)
);

create table if not exists Clase (
Codigo INT PRIMARY KEY NOT NULL,
Nombre VARCHAR(30)
);

create table if not exists Monitor (
Id INT PRIMARY KEY NOT NULL,
Nombre VARCHAR(30),
email VARCHAR(320),
Id_Gym INT, FOREIGN KEY (Id_Gym) REFERENCES Gimnasio(Id),
Codigo_Clase INT, FOREIGN KEY (Codigo_Clase) REFERENCES Clase(Codigo)
);

create table if not exists ClientClas (
Id_Alumno INT  NOT NULL, FOREIGN KEY (Id_Alumno) REFERENCES Cliente(Id),
Codigo_Clase INT  NOT NULL, FOREIGN KEY (Codigo_Clase) REFERENCES Clase(Codigo),
primary key (Id_alumno, Codigo_Clase)
);

create table if not exists ClasGym (
Codigo_Clase INT NOT NULL, FOREIGN KEY (Codigo_Clase) REFERENCES Clase(Codigo),
Id_Gym INT  NOT NULL, FOREIGN KEY (Id_Gym) REFERENCES Gimnasio(Id),
primary key (Codigo_Clase, Id_Gym)
);
