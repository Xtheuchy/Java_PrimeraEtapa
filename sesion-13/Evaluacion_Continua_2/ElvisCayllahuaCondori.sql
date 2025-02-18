create database elviscayllahuacondori;
use elviscayllahuacondori;
create table Postulante(
id int unique primary key auto_increment not null,
Apellidos varchar(50) not null,
Nombre varchar(50) not null,
Genero varchar(20) not null,
Ocupacion varchar(50) not null,
Curriculo varchar(50) not null,
Edad int not null
);
insert into Postulante(Apellidos,Nombre,Genero,Ocupacion,Curriculo,Edad)
values
('Perez', 'Arnaldo', 'Masculino', 'Ingeniero', 'Estudios', 34),
('Castillo', 'Juana', 'Femenino', 'Administrador', 'Estudios', 40),
('Tellez', 'Jorge', 'Masculino', 'Doctor', 'Estudios', 22),
('Carranza', 'Benito', 'Masculino', 'Otro', 'Estudios', 34);
SELECT * FROM Postulante;


