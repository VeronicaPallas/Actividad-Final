CREATE DATABASE Libros



Create table Titulo_del_libro(
Id char(8) primary key,
Nombre varchar(20) not null,
Apellido varchar(20) not null,
Fecha_edicion char(8)
);

Create table Autor(
Id char(8) primary key,
Nombre varchar(20) not null
);

Create table ISBN(
Id char(8) primary key,
Numero varchar(20) not null,

);

/* Creando tabla Inscripci�n con campos para llaves foraneas */

Create table Biblioteca(
Id char(8) primary key,
IdAutor char(8) not null,
IdTitulo_del_libro char(8) not null,
IdISBN char(8) not null,
Fecha char(8),
CONSTRAINT fk_Autor FOREIGN KEY (IdAutor) REFERENCES Autor (Id),
CONSTRAINT fk_Titulo_del_libro FOREIGN KEY (IdTitulo_del_libro) REFERENCES Titulo_del_libro (Id),
CONSTRAINT fk_ISBN FOREIGN KEY (IdISBN) REFERENCES ISBN (Id)