DROP DATABASE mesas;

CREATE DATABASE mesas;

USE mesas;

CREATE TABLE Equipo(
	id int not null auto_increment primary key,
	nombre varchar(100),
	descripcion text
);

CREATE TABLE Constituyentes(
	id int not null auto_increment primary key,
	nombre varchar(100),
	apellidoPaterno varchar(100),
	apellidoMaterno varchar(100),
	fotoPersona varchar(100),
	equipo int
);

CREATE TABLE Mesas(
	id int not null auto_increment primary key,
	nombreMesa varchar(500),
	imagenMesa varchar(100),
	descripcion text,
	fechaFin date,
	status int,
	informeComision text,
	fechaAlta timestamp DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Mesas_Constituyentes(
	id int not null auto_increment primary key,
	idMesa int not null,
	idConstituyente int not null,
	cargoConstituyente varchar(50),
	fechaIngreso timestamp,
	FOREIGN KEY(idMesa) REFERENCES Mesas(id),
	FOREIGN KEY(idConstituyente) REFERENCES Constituyentes(id)
);

INSERT INTO Constituyentes values (null,'Saúl','Gómez','Navarrete','fotos/1.jpg',1);
INSERT INTO Constituyentes values (null,'Efren Odilón','Cruz','Cruz','fotos/2.jpg',1);
INSERT INTO Constituyentes values (null,'Marco Antonio','Morales','Lopez','fotos/2.jpg',1);
INSERT INTO Mesas values (null,'Mesa1','fotos/4.jpg','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2016-12-12',1,'Informeo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat',null
);	

INSERT INTO Mesas values (null,'Mesa2','fotos/5.jpg','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2016-12-13',1,' o
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat',null
);	

INSERT INTO Mesas values (null,'Mesa3','fotos/5.jpg','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2016-12-13',1,' o
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat',null
);	

INSERT INTO Mesas_Constituyentes values (null, 1,1,'Presidente',now());
INSERT INTO Mesas_Constituyentes values (null, 1,2,'Consejero',now());
INSERT INTO Mesas_Constituyentes values (null, 2,3,'Integrante',now());