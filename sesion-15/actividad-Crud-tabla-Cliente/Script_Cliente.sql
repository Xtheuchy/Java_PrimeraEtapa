use almacen2;
create table cliente(
id int primary key unique auto_increment,
nombres varchar(50),
dni  char(8) not null unique,
edad int 
);
INSERT INTO cliente (nombres,dni,edad)
VALUES ('Juan Pérez','45324525', 25),
('Maria Lopez','45324565', 24),
('Daniel Gomez','48334424', 15);



